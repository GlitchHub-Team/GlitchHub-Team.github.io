/*
Script creazione Glossario online:

Prendendo in input il file src/glossary.json crea una risorsa web interattiva.
*/
package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"regexp"
	"sort"
	"strings"
	"unicode"
)

type GlossaryTerm struct {
	Term       string `json:"term"`
	Definition string `json:"definition"`
}

func main() {
	jsonPath := "../../src/glossary.json"
	htmlTemplatePath := "./glossaryTemplate.html"
	htmlOutputPath := "../../website/glossary.html"

	jsonData, err := os.ReadFile(jsonPath)
	if err != nil {
		log.Fatalf("Errore nella lettura del file JSON: %v", err)
	}

	var terms []GlossaryTerm
	if err := json.Unmarshal(jsonData, &terms); err != nil {
		log.Fatalf("Errore nel parsing del JSON: %v", err)
	}

	groupedTerms := groupByLetter(terms)

	alphabetLinks := generateAlphabetLinks(groupedTerms)

	letterDefinitionsHTML := generateLetterDefinitions(groupedTerms)

	htmlTemplate, err := os.ReadFile(htmlTemplatePath)
	if err != nil {
		log.Fatalf("Errore nella lettura del template HTML: %v", err)
	}

	htmlContent := string(htmlTemplate)

	startMarker := "{{letterDefinitions}}"
	endMarker := "</div>\n\n    </section>"

	startIdx := strings.Index(htmlContent, startMarker)
	endIdx := strings.Index(htmlContent, endMarker)

	if startIdx != -1 && endIdx != -1 {
		before := htmlContent[:startIdx]
		after := htmlContent[endIdx:]
		htmlContent = before + letterDefinitionsHTML + "\n        " + after
	} else {
		htmlContent = strings.Replace(htmlContent, "{{letterDefinitions}}", letterDefinitionsHTML, 1)
	}

	htmlContent = strings.Replace(htmlContent, "{{letters}}", alphabetLinks, 1)

	if err := os.WriteFile(htmlOutputPath, []byte(htmlContent), 0644); err != nil {
		log.Fatalf("Errore nella scrittura del file HTML: %v", err)
	}

	fmt.Println("✓ Glossario HTML generato con successo! Bella raga")
	fmt.Printf("  - Termini processati: %d\n", len(terms))
	fmt.Printf("  - Lettere con termini: %d\n", len(groupedTerms))
}

func groupByLetter(terms []GlossaryTerm) map[string][]GlossaryTerm {
	grouped := make(map[string][]GlossaryTerm)

	for _, term := range terms {
		if term.Term == "" {
			continue
		}

		firstRune := []rune(strings.ToUpper(term.Term))[0]
		letter := string(firstRune)

		if !unicode.IsLetter(firstRune) {
			letter = "#"
		}

		grouped[letter] = append(grouped[letter], term)
	}

	for letter := range grouped {
		sort.Slice(grouped[letter], func(i, j int) bool {
			return strings.ToLower(grouped[letter][i].Term) < strings.ToLower(grouped[letter][j].Term)
		})
	}

	return grouped
}

func generateAlphabetLinks(groupedTerms map[string][]GlossaryTerm) string {
	var links strings.Builder

	var letters []string
	for letter := range groupedTerms {
		letters = append(letters, letter)
	}
	sort.Strings(letters)

	for _, letter := range letters {
		letterLower := strings.ToLower(letter)
		links.WriteString(fmt.Sprintf("            <a href=\"#letter-%s\">%s</a>\n", letterLower, letter))
	}

	return links.String()
}

func generateLetterDefinitions(groupedTerms map[string][]GlossaryTerm) string {
	var html strings.Builder

	var letters []string
	for letter := range groupedTerms {
		letters = append(letters, letter)
	}
	sort.Strings(letters)

	for _, letter := range letters {
		terms := groupedTerms[letter]
		if len(terms) == 0 {
			continue
		}

		letterLower := strings.ToLower(letter)

		fmt.Fprintf(&html, `
            <div class="letter-section" id="letter-%s">
                <h2>%s</h2>
                <dl class="glossary-terms">`,
			letterLower, letter,
		)

		for _, term := range terms {
			fmt.Fprintf(&html, `
                    <dt id="%s">%s</dt>
                    <dd>%s</dd>`,
				normStringToHtmlId(term.Term),
				term.Term,
				jsonTextToHtml(term.Definition),
			)
		}

		fmt.Fprintf(&html, `
                </dl>
            </div>        
        `)
	}

	return html.String()
}

func escapeHTML(s string) string {
	s = strings.ReplaceAll(s, "&", "&amp;")
	s = strings.ReplaceAll(s, "<", "&lt;")
	s = strings.ReplaceAll(s, ">", "&gt;")
	s = strings.ReplaceAll(s, "\"", "&quot;")
	s = strings.ReplaceAll(s, "'", "&#39;")
	return s
}

func normStringToHtmlId(s string) string {
	s = strings.ReplaceAll(s, "à", "a")
	s = strings.ReplaceAll(s, "è", "e")
	s = strings.ReplaceAll(s, "é", "e")
	s = strings.ReplaceAll(s, "ì", "i")
	s = strings.ReplaceAll(s, "ò", "o")
	s = strings.ReplaceAll(s, "ù", "u")

	normRegex := regexp.MustCompile(`[^\w\d ']`)
	s = normRegex.ReplaceAllString(s, "")

	spaceRegex := regexp.MustCompile(`\s|'`)
	s = spaceRegex.ReplaceAllString(s, "-")

	return strings.ToLower(s)
}

func jsonTextToHtml(str string) string {

    // Rileva italics
	italicRegex := regexp.MustCompile(`(^|[^\\])_(([^_]*)([^\\]))_`)
	str = italicRegex.ReplaceAllString(str, `$1<em>$2</em>`)

    // Sostituisci \_ (underscore escaped)
    str = strings.ReplaceAll(str, `\_`, "_")

    // Rileva bold
	boldRegex := regexp.MustCompile(`(^|[^\\])\*(([^*]*)([^\\]))\*`)
	str = boldRegex.ReplaceAllString(str, `$1<strong>$2</strong>`)

    // Sostituisci \* (asterisco escaped)
    str = strings.ReplaceAll(str, `\*`, "*")

    // Sostituisci @{}{}
	refTermDoubleRegex := regexp.MustCompile(`@\{([^\}]+)\}\{([^\}]+)\}`)
    str = refTermDoubleRegex.ReplaceAllString(str, `<a href="#$1">$2</a>`)

    // Sostituisci @{}
    refTermSingleRegex := regexp.MustCompile(`@\{([^\}]+)\}`)
    str = refTermSingleRegex.ReplaceAllString(str, `<a href="#$1">$1</a>`)

    hrefNormalizeRegex := regexp.MustCompile(`<a href="#([^"]+)">`)
    matches := hrefNormalizeRegex.FindAllStringSubmatch(str, -1)
    for _, groups := range matches {
        old := groups[0]
        href := groups[1]
        str = strings.ReplaceAll(str, old, fmt.Sprintf(`<a href="#%v">`, normStringToHtmlId(href)))
    }

    // Sostituisci simboli comuni di Typst
    str = strings.ReplaceAll(str, "---", "&mdash;")
    str = strings.ReplaceAll(str, "--", "&ndash;")

    // Newline
    str = strings.ReplaceAll(str, "\n", "<br>")
	fmt.Println(str)

	return str
}
