package internal

import (
	"fmt"
	"strings"
)

const TEMPLATE = `
	#import "../../../../../Templates/templateDocumentiGenerici.typ": *
	#import "@preview/cetz:0.4.2"
	#import "@preview/cetz-plot:0.1.3": chart, plot

	#show table: it => block(breakable: false, it)

	#show: report.with(
	titolo: "Piano di Progetto",
	stato: "Verificato",
	versione: "0.1.1",
	registro-modifiche: (
		(
		"0.1.1",
		"24/11/2025",
		"Alessandro Dinato",
		"-",
		"Correzione piccoli errori",
		),
	),
	distribuzione: (
		"GlitchHub Team",
	),
	htmlId: "RTB-DocumentiEsterni",
	verificatore-interno: "",
	left-signature: "",
	tipo-documento: "Piano di Progetto",
	)

	#let tabella-paginata(contenuto, didascalia, label-id: none) = {
		[
			#show figure.caption: none
			#figure(
				kind: table,
				caption: didascalia,
				outlined: true,
				gap: 0em,
				[],
			)
			#if label-id != none { label(label-id) }
		]

		contenuto

		align(center)[
			#v(0.5em)
			#context [
				#let n = counter(figure.where(kind: table)).display()
				#text[Tabella #n: #didascalia]
			]
		]
	}


	= Consuntivo di periodo attuale
	#tabella-paginata(
		table(
			columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
			align: left,
			stroke: (x, y) => (
			top: if y == 0 { 0pt } else { 0.5pt + black },
			left: if x == 0 { 0pt } else { 0.5pt + black },
			),
			table.header([], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
			{{CONSUNTIVO_PERIODO_ATTUALE}}
		),
		[Consuntivo di periodo attuale],
		label-id: "consuntivo-periodo-attuale",
	)
	`

func predictedHours(hours int, symbol string) string {
	if hours == 0 {
		return " "
	}

	spacedSymbol := ""
	if symbol != "" {
		spacedSymbol = " " + symbol
	}

	if hours > 0 {
		return fmt.Sprintf("(+%d%s)", hours, spacedSymbol)
	}

	return fmt.Sprintf("(%d%s)", hours, spacedSymbol)
}

func printHours(hours int, symbol string) string {
	if hours == 0 {
		return " "
	}

	if symbol == "" {
		return fmt.Sprintf("%d", hours)
	}

	return fmt.Sprintf("%d %s", hours, symbol)
}

func buildConsuntivTableTypst(usage *map[string]map[string]int, roleTotals *map[string]int, assigneeTotals *map[string]int, predictedUsage *map[string]map[string]int, predictedRoleTotals *map[string]int, predictedAssigneeTotals *map[string]int) string {
	var rows []string
	for _, assignee := range orderedNames {
		row := fmt.Sprintf("[*%s*],", assignee)
		for _, role := range []string{"Responsabile", "Amministratore", "Analista", "Progettista", "Programmatore", "Verificatore"} {
			effWorkedHours := (*usage)[role][assignee]
			predWorkedHours := (*predictedUsage)[role][assignee]
			row += fmt.Sprintf(" [%s %s],", printHours(effWorkedHours, ""), predictedHours(predWorkedHours-effWorkedHours, ""))
		}
		effTotal := (*assigneeTotals)[assignee]
		predTotal := (*predictedAssigneeTotals)[assignee]
		row += fmt.Sprintf(" [%s %s]", printHours(effTotal, ""), predictedHours(predTotal-effTotal, ""))
		rows = append(rows, row)
	}

	totalRow := "[*Totale*],"
	totalUsage := 0
	totalPredUsage := 0
	for _, role := range orderedRoles {
		effTotal := (*roleTotals)[role]
		predTotal := (*predictedRoleTotals)[role]
		totalRow += fmt.Sprintf(" [*%s* %s],", printHours(effTotal, ""), predictedHours(predTotal-effTotal, ""))

		totalUsage += effTotal
		totalPredUsage += predTotal
	}
	totalRow += fmt.Sprintf(" [*%s* %s]", printHours(totalUsage, ""), predictedHours(totalPredUsage-totalUsage, "")) //todo vero totale
	rows = append(rows, totalRow)

	totalCostRow := "[*Costo totale*],"
	totalCost := 0
	predTotalCost := 0

	for _, role := range orderedRoles {
		effCost := (*roleTotals)[role] * costPerHourPerRole[role]
		predCost := (*predictedRoleTotals)[role] * costPerHourPerRole[role]
		totalCostRow += fmt.Sprintf(" [*%s* %s],", printHours(effCost, "€"), predictedHours(predCost-effCost, "€"))

		totalCost += effCost
		predTotalCost += predCost
	}
	totalCostRow += fmt.Sprintf(" [*%s* %s]", printHours(totalCost, "€"), predictedHours(predTotalCost-totalCost, "€"))
	rows = append(rows, totalCostRow)

	return strings.Join(rows, ",\n")
}

func BuildConsuntivoPeriodoAttuale(issues *[]Issue, sprintLimit int) string {
	totals := map[string]int{
		"Responsabile":   0,
		"Amministratore": 0,
		"Analista":       0,
		"Progettista":    0,
		"Programmatore":  0,
		"Verificatore":   0,
	}

	predictedTotals := map[string]int{
		"Responsabile":   0,
		"Amministratore": 0,
		"Analista":       0,
		"Progettista":    0,
		"Programmatore":  0,
		"Verificatore":   0,
	}

	assigneeTotals := map[string]int{
		"Jaume Bernardi":       0,
		"Alessandro Dinato":    0,
		"Michele Dioli":        0,
		"Hossam Ezzemouri":     0,
		"Riccardo Graziani":    0,
		"Siria Salvalaio":      0,
		"Elia Ernesto Stellin": 0,
	}

	predictedAssigneeTotals := map[string]int{
		"Jaume Bernardi":       0,
		"Alessandro Dinato":    0,
		"Michele Dioli":        0,
		"Hossam Ezzemouri":     0,
		"Riccardo Graziani":    0,
		"Siria Salvalaio":      0,
		"Elia Ernesto Stellin": 0,
	}

	issuesFiltered := removeTaskPalestraIssues(issues)

	var totalUsage = map[string]map[string]int{}

	var predictedUsage = map[string]map[string]int{}

	for _, issue := range issuesFiltered {
		if issue.SprintRole != "" {

			for _, assignee := range issue.Assignees {
				if assignee != "glitchhubteam" && issue.Sprint < sprintLimit {
					assigneeTotals[usernameToName[assignee]] += issue.WorkedHours
					predictedAssigneeTotals[usernameToName[assignee]] += issue.ExpectedWorkedHours

					totals[issue.SprintRole] += issue.WorkedHours
					predictedTotals[issue.SprintRole] += issue.ExpectedWorkedHours

					if _, ok := totalUsage[issue.SprintRole]; !ok {
						totalUsage[issue.SprintRole] = make(map[string]int)
					}
					totalUsage[issue.SprintRole][usernameToName[assignee]] += issue.WorkedHours

					if _, ok := predictedUsage[issue.SprintRole]; !ok {
						predictedUsage[issue.SprintRole] = make(map[string]int)
					}
					predictedUsage[issue.SprintRole][usernameToName[assignee]] += issue.ExpectedWorkedHours
				}
			}
		}
	}

	fmt.Printf("Totali per ruolo: %v\n", totals)
	fmt.Printf("Totali previsti per ruolo: %v\n", predictedTotals)
	fmt.Printf("Totali per assegnatario: %v\n", assigneeTotals)
	fmt.Printf("Totali previsti per assegnatario: %v\n", predictedAssigneeTotals)

	content := buildConsuntivTableTypst(&totalUsage, &totals, &assigneeTotals, &predictedUsage, &predictedTotals, &predictedAssigneeTotals)
	return strings.Replace(TEMPLATE, "{{CONSUNTIVO_PERIODO_ATTUALE}}", content, 1)
}
