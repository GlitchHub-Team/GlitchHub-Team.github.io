package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
	"sort"
	"strings"
	"unicode"
)

type GlossaryTerm struct {
	Term       string `json:"term"`
	Definition string `json:"definition"`
}

func main() {
	jsonPath := "../src/glossary.json"
	htmlTemplatePath := "../website/glossary.html"
	htmlOutputPath := "../website/glossary.html"

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

	fmt.Println("✓ Glossario HTML generato con successo!")
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

		html.WriteString(fmt.Sprintf("            <div class=\"letter-section\" id=\"letter-%s\">\n", letterLower))
		html.WriteString(fmt.Sprintf("                <h2>%s</h2>\n", letter))
		html.WriteString("                <dl class=\"glossary-terms\">\n")

		for _, term := range terms {
			html.WriteString(fmt.Sprintf("                    <dt>%s</dt>\n", escapeHTML(term.Term)))
			html.WriteString(fmt.Sprintf("                    <dd>%s</dd>\n\n", escapeHTML(term.Definition)))
		}

		html.WriteString("                </dl>\n")
		html.WriteString("            </div>\n\n")
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
