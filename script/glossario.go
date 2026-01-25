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

	
	tocIndex := findTableOfContents(content)
	if tocIndex == -1 {
		fmt.Printf("Warning: Table of contents non trovato in %s, processo tutto il file\n", path)
		tocIndex = 0
	}

	
	header := content[:tocIndex]
	body := content[tocIndex:]

	
	tagged := make(map[int]bool)

	
	type match struct {
		start     int
		end       int
		term      string
		termStart int    
		termEnd   int    
		prefix    string 
		suffix    string 
	}
	var matches []match

	for _, term := range terms {
		escapedTerm := regexp.QuoteMeta(term)
		
		pattern := fmt.Sprintf(`(?i)([_*\x60]*)(%s)([_*\x60]*)`, escapedTerm)
		re := regexp.MustCompile(pattern)
		
		allMatches := re.FindAllStringSubmatchIndex(body, -1)
		for _, loc := range allMatches {
			termStart := loc[4]
			termEnd := loc[5]
			matchStart := loc[0]
			matchEnd := loc[1]
			
			if matchStart > 0 {
				prevChar := body[matchStart-1]
				if isWordChar(prevChar) {
					continue 
				}
			}

			
			if matchEnd < len(body) {
				nextChar := body[matchEnd]
				if isWordChar(nextChar) {
					continue 
				}
			}

			if matchStart > 0{
				searchStart:= matchStart -1

				for searchStart >=0 && (body[searchStart] == '-' || isWordChar(body[searchStart])){
					searchStart--
				}

				if searchStart >= 0 && body[searchStart] == '@'{
					continue
				}
			}
			
			if matchStart >= 5 {
				prefixCheck := body[matchStart-5 : matchStart]
				if prefixCheck == "@doc-" {
					continue
				}
			}
			
			if !isInsideGloss(body, termStart) && !isInsideHeading(body, termStart) {
				
				actualTerm := body[termStart:termEnd]
				matches = append(matches, match{
					start:     matchStart,
					end:       matchEnd,
					term:      actualTerm, 
					termStart: termStart,
					termEnd:   termEnd,
					prefix:    body[loc[2]:loc[3]],
					suffix:    body[loc[6]:loc[7]],
				})
			}
		}
	}

	
	sort.Slice(matches, func(i, j int) bool {
		return matches[i].start < matches[j].start
	})

	
	var validMatches []match
	for i := 0; i < len(matches); i++ {
		current := matches[i]

		if tagged[current.termStart] {
			continue
		}
		
		hasOverlap := false
		for j := i + 1; j < len(matches) && matches[j].termStart < current.termEnd; j++ {
			
			if len(matches[j].term) > len(current.term) {
				hasOverlap = true
				break
			}
		}

		if !hasOverlap {
			validMatches = append(validMatches, current)
			
			for pos := current.termStart; pos < current.termEnd; pos++ {
				tagged[pos] = true
			}
		}
	}

	
	for i := len(validMatches) - 1; i >= 0; i-- {
		m := validMatches[i]
		
		replacement := fmt.Sprintf("%s#gloss[%s]%s", m.prefix, m.term, m.suffix)
		body = body[:m.start] + replacement + body[m.end:]
	}

	
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


func findTableOfContents(content string) int {
	
	showIndex := strings.Index(content, "#show:")
	if showIndex != -1 {
		
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
						
						restContent := content[i+1:]
						headingIndex := strings.Index(restContent, "\n=")
						if headingIndex != -1 {
							return i + 1 + headingIndex + 1
						}
						
						return i + 1
					}
				}
			}
		}
	}

	
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


func isWordChar(c byte) bool {
	return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_'
}


func isInsideHeading(content string, pos int) bool {
	
	lineStart := pos
	for lineStart > 0 && content[lineStart-1] != '\n' {
		lineStart--
	}

	
	lineEnd := pos
	for lineEnd < len(content) && content[lineEnd] != '\n' {
		lineEnd++
	}

	
	line := strings.TrimSpace(content[lineStart:lineEnd])
	return strings.HasPrefix(line, "=")
}


func isInsideGloss(content string, pos int) bool {
	
	start := pos - 1
	depth := 0

	for start >= 0 {
		if content[start] == ']' {
			depth++
		} else if content[start] == '[' {
			depth--
			if depth < 0 {
				
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
