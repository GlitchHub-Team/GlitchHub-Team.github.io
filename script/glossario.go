package main

import (
	"fmt"
	"io/fs"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strings"
)

const (
	GlossaryFile = "src/glossary.typ"
)

var TargetFolders = []string{
	"src/RTB",
	"src/Candidatura",
}

var FilesToIgnore = map[string]bool{
	"LetteraPresentazione.typ": true,
}

func main() {
	if _, err := os.Stat(GlossaryFile); os.IsNotExist(err) {
		fmt.Printf("No glossario in: %s\n", GlossaryFile)
		return
	}

	terms, err := extractTerms(GlossaryFile)
	if err != nil {
		fmt.Printf("Lett glossario: %v\n", err)
		return
	}

	for _, folder := range TargetFolders {
		err := filepath.WalkDir(folder, func(path string, d fs.DirEntry, err error) error {
			if err != nil {
				fmt.Printf("Errore in %s: %v\n", path, err)
				return filepath.SkipDir
			}

			if d.IsDir() {
				return nil
			}

			fileName := filepath.Base(path)

			if filepath.Ext(path) == ".typ" && !FilesToIgnore[fileName] {
				if filepath.Clean(path) == filepath.Clean(GlossaryFile) {
					return nil
				}

				processFile(path, terms)
			}
			return nil
		})

		if err != nil {
			fmt.Printf("Errore scansione %s: %v\n", folder, err)
		}
	}

	fmt.Println("\nFINE")
}

func extractTerms(path string) ([]string, error) {
	content, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}

	re := regexp.MustCompile(`term\s*:\s*"([^"]+)"`)
	matches := re.FindAllStringSubmatch(string(content), -1)

	var terms []string
	for _, match := range matches {
		if len(match) > 1 {
			terms = append(terms, match[1])
		}
	}

	// Ordina per lunghezza decrescente (termini più lunghi prima)
	sort.Slice(terms, func(i, j int) bool {
		return len(terms[i]) > len(terms[j])
	})

	return terms, nil
}

func processFile(path string, terms []string) {
	contentBytes, err := os.ReadFile(path)
	if err != nil {
		fmt.Printf("Impossibile leggere %s: %v\n", path, err)
		return
	}
	content := string(contentBytes)
	originalContent := content

	// Trova il table of contents e processa solo dopo
	tocIndex := findTableOfContents(content)
	if tocIndex == -1 {
		fmt.Printf("Warning: Table of contents non trovato in %s, processo tutto il file\n", path)
		tocIndex = 0
	}

	// Separa header e body
	header := content[:tocIndex]
	body := content[tocIndex:]

	// Mappa per tenere traccia delle posizioni già taggate
	tagged := make(map[int]bool)

	// Trova tutte le occorrenze di tutti i termini (solo nel body)
	type match struct {
		start     int
		end       int
		term      string
		termStart int    // posizione del termine senza marker
		termEnd   int    // fine del termine senza marker
		prefix    string // marker iniziali (_, *, ecc.)
		suffix    string // marker finali
	}
	var matches []match

	for _, term := range terms {
		escapedTerm := regexp.QuoteMeta(term)

		// Pattern che cattura marker di formattazione e il termine
		// (?i) rende la ricerca case-insensitive
		pattern := fmt.Sprintf(`(?i)([_*\x60]*)(%s)([_*\x60]*)`, escapedTerm)
		re := regexp.MustCompile(pattern)

		// Trova tutti i match
		allMatches := re.FindAllStringSubmatchIndex(body, -1)
		for _, loc := range allMatches {
			termStart := loc[4]
			termEnd := loc[5]
			matchStart := loc[0]
			matchEnd := loc[1]

			// Verifica word boundary manualmente
			// Controlla carattere prima del match
			if matchStart > 0 {
				prevChar := body[matchStart-1]
				if isWordChar(prevChar) {
					continue // Non è un word boundary
				}
			}

			// Controlla carattere dopo il match
			if matchEnd < len(body) {
				nextChar := body[matchEnd]
				if isWordChar(nextChar) {
					continue // Non è un word boundary
				}
			}

			// --- MODIFICA QUI ---
			// Ignora se inizia con @doc-
			// Controlliamo se ci sono abbastanza caratteri prima e se corrispondono
			if matchStart >= 5 {
				prefixCheck := body[matchStart-5 : matchStart]
				if prefixCheck == "@doc-" {
					continue
				}
			}
			// --------------------

			// Verifica che non sia già dentro un tag #gloss
			if !isInsideGloss(body, termStart) && !isInsideHeading(body, termStart) {
				// Usa il termine originale dal testo per preservare il case
				actualTerm := body[termStart:termEnd]
				matches = append(matches, match{
					start:     matchStart,
					end:       matchEnd,
					term:      actualTerm, // usa il case effettivo trovato nel testo
					termStart: termStart,
					termEnd:   termEnd,
					prefix:    body[loc[2]:loc[3]],
					suffix:    body[loc[6]:loc[7]],
				})
			}
		}
	}

	// Ordina i match per posizione
	sort.Slice(matches, func(i, j int) bool {
		return matches[i].start < matches[j].start
	})

	// Rimuovi overlap: se due match si sovrappongono, mantieni il più lungo
	var validMatches []match
	for i := 0; i < len(matches); i++ {
		current := matches[i]

		// Controlla se questa posizione è già stata taggata
		if tagged[current.termStart] {
			continue
		}

		// Controlla overlap con match successivi (basandosi sulla posizione effettiva del termine)
		hasOverlap := false
		for j := i + 1; j < len(matches) && matches[j].termStart < current.termEnd; j++ {
			// Se c'è overlap, favorisci il termine più lungo
			if len(matches[j].term) > len(current.term) {
				hasOverlap = true
				break
			}
		}

		if !hasOverlap {
			validMatches = append(validMatches, current)
			// Marca tutte le posizioni di questo match come taggate
			for pos := current.termStart; pos < current.termEnd; pos++ {
				tagged[pos] = true
			}
		}
	}

	// Applica i tag dal fondo verso l'inizio per non alterare gli indici
	for i := len(validMatches) - 1; i >= 0; i-- {
		m := validMatches[i]
		// Ricostruisci con i marker di formattazione
		replacement := fmt.Sprintf("%s#gloss[%s]%s", m.prefix, m.term, m.suffix)
		body = body[:m.start] + replacement + body[m.end:]
	}

	// Ricomponi header e body processato
	content = header + body

	if content != originalContent {
		err := os.WriteFile(path, []byte(content), 0644)
		if err != nil {
			fmt.Printf("Errore scrittura %s: %v\n", path, err)
		} else {
			fmt.Printf("Modificato: %s\n", path)
		}
	}
}

// Trova la posizione dopo il table of contents
func findTableOfContents(content string) int {
	// Prima cerca la fine del blocco #show: report.with(...)
	showIndex := strings.Index(content, "#show:")
	if showIndex != -1 {
		// Trova la parentesi chiusa corrispondente
		depth := 0
		inString := false
		escapeNext := false

		for i := showIndex; i < len(content); i++ {
			c := content[i]

			if escapeNext {
				escapeNext = false
				continue
			}

			if c == '\\' {
				escapeNext = true
				continue
			}

			if c == '"' {
				inString = !inString
				continue
			}

			if !inString {
				if c == '(' {
					depth++
				} else if c == ')' {
					depth--
					if depth == 0 {
						// Trova il primo heading (=) dopo il blocco #show
						restContent := content[i+1:]
						headingIndex := strings.Index(restContent, "\n=")
						if headingIndex != -1 {
							return i + 1 + headingIndex + 1
						}
						// Se non trova heading, inizia dopo il blocco #show
						return i + 1
					}
				}
			}
		}
	}

	// Pattern comuni per table of contents in Typst
	patterns := []string{
		`#outline\(\)`,
		`#outline\[`,
		`= Indice`,
		`= Table of Contents`,
		`== Indice`,
	}

	minIndex := -1

	for _, pattern := range patterns {
		re := regexp.MustCompile(pattern)
		loc := re.FindStringIndex(content)
		if loc != nil {
			// Trova la fine della riga dopo il pattern
			endOfLine := strings.Index(content[loc[1]:], "\n")
			if endOfLine != -1 {
				index := loc[1] + endOfLine + 1
				if minIndex == -1 || index < minIndex {
					minIndex = index
				}
			}
		}
	}

	return minIndex
}

// Verifica se un carattere è parte di una parola
func isWordChar(c byte) bool {
	return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_'
}

// Verifica se una posizione è dentro un heading (=, ==, ===, etc.)
func isInsideHeading(content string, pos int) bool {
	// Trova l'inizio della riga
	lineStart := pos
	for lineStart > 0 && content[lineStart-1] != '\n' {
		lineStart--
	}

	// Trova la fine della riga
	lineEnd := pos
	for lineEnd < len(content) && content[lineEnd] != '\n' {
		lineEnd++
	}

	// Verifica se la riga inizia con = (heading in Typst)
	line := strings.TrimSpace(content[lineStart:lineEnd])
	return strings.HasPrefix(line, "=")
}

// Verifica se una posizione è già dentro un tag #gloss[]
func isInsideGloss(content string, pos int) bool {
	// Cerca indietro per #gloss[
	start := pos - 1
	depth := 0

	for start >= 0 {
		if content[start] == ']' {
			depth++
		} else if content[start] == '[' {
			depth--
			if depth < 0 {
				// Trovata una [ non bilanciata, verifica se è preceduta da #gloss
				if start >= 6 && content[start-6:start] == "#gloss" {
					return true
				}
				return false
			}
		}
		start--
	}

	return false
}
