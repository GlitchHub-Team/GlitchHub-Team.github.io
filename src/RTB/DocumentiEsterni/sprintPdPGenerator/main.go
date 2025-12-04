package main

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

func main() {
	var sprint int = 1
	for i, arg := range os.Args {
		if arg == "-sprint" && i+1 < len(os.Args) {
			fmt.Sscanf(os.Args[i+1], "%d", &sprint)
		}
	}
	godotenv.Load()
	token := os.Getenv("PDP_GITHUB_TOKEN")
	owner := "GlitchHub-Team"
	projectNumber := 2
	isOrganization := true

	if token == "" {
		fmt.Println("Errore: PDP_GITHUB_TOKEN non impostato")
		fmt.Println("Esporta la variabile: export PDP_GITHUB_TOKEN=ghp_xxx")
		os.Exit(1)
	}

	fmt.Printf("Recupero issue dal project #%d di %s...\n", projectNumber, owner)

	issues, sprintStartDate, sprintEndDate, err := fetchProjectIssues(token, owner, projectNumber, isOrganization, sprint)
	if err != nil {
		fmt.Printf("Errore: %v\n", err)
		os.Exit(1)
	}

	content := generateTypstContent(&issues, sprint, sprintStartDate, sprintEndDate)

	outputFile := fmt.Sprintf("sprint%d.typ", sprint)

	if err := os.WriteFile(outputFile, []byte(content), 0644); err != nil {
		fmt.Printf("Errore scrittura file: %v\n", err)
		os.Exit(1)
	}

	fmt.Printf("File Typst generato: %s\n", outputFile)
	fmt.Println("Compila con: typst compile " + outputFile)

}
