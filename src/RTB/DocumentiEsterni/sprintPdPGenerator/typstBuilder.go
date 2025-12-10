package main

import (
	"bytes"
	"fmt"
	"strconv"
	"strings"
	"time"
)

const (
	SPRINT_TEMPLATE = `
	#import "../../../Templates/templateDocumentiGenerici.typ": *
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
		(
		"0.1.0",
		"22/11/2025",
		"Alessandro Dinato",
		"Siria Salvalaio",
		"Compilazione Sprint 1, preventivo Sprint 2, pianificazione attività RTB",
		),
		("0.0.1", "17/11/2025", "Alessandro Dinato", "Siria Salvalaio", "Bozza Piano di Progetto"),
	),
	distribuzione: (
		"GlitchHub Team",
		"M31 S.r.L.",
		"Prof. Cardin Riccardo",
		"Prof. Vardanega Tullio",
	),
	htmlId: "RTB-DocumentiEsterni",
	verificatore-interno: "",
	left-signature: "",
	tipo-documento: "Piano di Progetto",
	)

	#let graficoTorta = (caption, data) => {
	align(center)[
		#figure.with(numbering: none)(
		caption: caption,
		)[
		#cetz.canvas({
			let colors = gradient.linear(
			rgb(153, 72, 188),
			rgb("#19e0d9"),
			rgb(84, 101, 255),
			)

			chart.piechart(
			data,
			value-key: 1,
			label-key: 0,
			radius: 2.5,
			stroke: none,
			slice-style: colors,
			inner-radius: 0.5,
			// Label interne con ore
			inner-label: (
				content: (value, label) => [#text(white, weight: "bold", str(value) + "h")],
				radius: 90%%,
			),
			// Label esterne con linee di connessione
			outer-label: (
				content: (value, label) => [
				#box(
					fill: white,
					outset: 3pt,
					radius: 3pt,
					stroke: 0.5pt + luma(200),
					text(black, size: 0.85em, weight: "medium", label),
				)
				],
				radius: 110%%,
			),
			// Abilita le linee di connessione
			outer-label-line: (
				stroke: 1pt + luma(150),
				mark: (end: ">", size: 0.15),
			),
			legend: (label: none),
			)
		})
		]
	]
	}

	== Sprint %d
	Inizio: %s \
	Fine: %s \

	Piccola introduzione sprint.

	=== Preventivo a finire
	==== Attività da svolgere
	Il gruppo ha individuato le seguenti attività da svolgere:
	- 
	-
	-

	==== Rischi attesi
	Descrivere i rischi attesi
	
	==== Preventivo risorse da utilizzare
	#table(
	  	columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
		align: left,
		stroke: (x, y) => (
		top: if y == 0 { 0pt } else { 0.5pt + black },
		left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
		{{EXPECTED_USAGE}}
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint%d = (
		{{CHART_EXPECTED_USAGE}}
	)
	#graficoTorta("Il grafico a torta contiene le ore produttive previste per ogni ruolo", orePrevSprint%d)

	=== Consuntivo di periodo

	==== Attività svolte
	Il gruppo ha svolto con successo le seguenti attività: \
	Issue relative a sprint %d: \
	{{GROUPED_BY_STATE_ISSUES}}
	- 
	-
	-

	==== Retrospettiva
	Raccontare retrospettiva

	==== Risorse utilizzate
	#table(
	  	columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
		align: left,
		stroke: (x, y) => (
		top: if y == 0 { 0pt } else { 0.5pt + black },
		left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
		{{EFFECTIVE_USAGE}}
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let oreEffettiveSprint%d = (
		{{CHART_EFFECTIVE_USAGE}}
	)
	#graficoTorta(
	"Il grafico a torta contiene le ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint%d,
	)

	==== Rischi occorsi
	Descrivere i rischi occorsi

	==== Aggiornamento ore rimanenti
	#table(
	  	columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
		align: left,
		stroke: (x, y) => (
		top: if y == 0 { 0pt } else { 0.5pt + black },
		left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
		{{UPDATED_RESOURCES}}
	)

	==== Aggiornamento costi
	#table(
		columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
		align: left,
		stroke: (x, y) => (
			top: if y == 0 { 0pt } else { 0.5pt + black },
			left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
		{{UPDATED_COSTS}}
	)
	`

	CHART_DATA_TEMPLATE = `
	("Responsabile", %d),
	("Amministratore", %d),
	("Analista", %d),
  	("Progettista", %d),
  	("Programmatore", %d),
  	("Verificatore", %d),
	`
)

var orderedRoles = []string{
	"Responsabile",
	"Amministratore",
	"Analista",
	"Progettista",
	"Programmatore",
	"Verificatore",
}

var orderedNames = []string{
	"Jaume Bernardi",
	"Alessandro Dinato",
	"Michele Dioli",
	"Hossam Ezzemouri",
	"Riccardo Graziani",
	"Siria Salvalaio",
	"Elia Ernesto Stellin",
}

var nameToUsername = map[string]string{
	"Jaume Bernardi":       "jaumebernardi",
	"Alessandro Dinato":    "aledinato",
	"Michele Dioli":        "MicheleDioli",
	"Hossam Ezzemouri":     "NotHoss",
	"Riccardo Graziani":    "Riccardo-Graziani-04",
	"Siria Salvalaio":      "SalvaSiria3",
	"Elia Ernesto Stellin": "elia-stellin-unipd",
}

func formatDate(t time.Time) string {
	if t.IsZero() {
		return ""
	}
	return t.Format("02/01/2006")
}

func diffFormat(h int, hPrev int, unit string) string {
	diff := hPrev - h
	if diff > 0 {
		return "(" + "-" + strconv.Itoa(diff) + unit + ")"
	}
	if diff == 0 {
		return ""
	}
	return "(" + "+" + strconv.Itoa(diff*-1) + unit + ")"
}

func buildUsage(content string, usage *map[string]map[string]int, prevUsage *map[string]map[string]int, tablePlaceholder string, chartPlaceholder string) string {
	totals := map[string]int{
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

	var rows []string

	overallTotal := 0

	for _, name := range orderedNames {
		row := fmt.Sprintf("\"%s\"", name)

		for _, role := range orderedRoles {
			h := (*usage)[role][nameToUsername[name]]
			if h == 0 {
				row += ", \"-\""
			} else {
				if prevUsage != nil && (*prevUsage)[role][nameToUsername[name]]-h != 0 {
					row += fmt.Sprintf(", \"%d %s\"", h, diffFormat(h, (*prevUsage)[role][nameToUsername[name]], ""))
				} else {
					row += fmt.Sprintf(", \"%d\"", h)
				}
			}
			totals[role] += h
			assigneeTotals[name] += h
			overallTotal += h
		}

		row += fmt.Sprintf(", [*%d*],", assigneeTotals[name])
		rows = append(rows, row)
	}

	const templateFooter = "table.footer([*Totale*], [*%d*], [*%d*], [*%d*], [*%d*], [*%d*], [*%d*], [*%d*]),"
	rows = append(rows, fmt.Sprintf(templateFooter, totals["Responsabile"], totals["Amministratore"], totals["Analista"], totals["Progettista"], totals["Programmatore"], totals["Verificatore"], overallTotal))

	table := strings.Join(rows, "\n")

	if chartPlaceholder == "" {
		return strings.Replace(content, tablePlaceholder, table, 1)
	}

	chart := fmt.Sprintf(CHART_DATA_TEMPLATE, totals["Responsabile"], totals["Amministratore"], totals["Analista"], totals["Progettista"], totals["Programmatore"], totals["Verificatore"])

	return strings.Replace(strings.Replace(content, tablePlaceholder, table, 1), chartPlaceholder, chart, 1)
}

func buildSprintIssues(content string, issuesCodes *map[string][]int, placeholder string) string {
	sprintIssues := ""
	for state, codes := range *issuesCodes {
		sprintIssues += state + ": "
		for _, code := range codes {
			sprintIssues += fmt.Sprintf(`#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/%d")[\#%d], `, code, code)
		}
		sprintIssues += "\n"
	}
	return strings.Replace(content, placeholder, sprintIssues, 1)
}

func buildCosts(content string, resources *map[string]map[string]int, prevResources *map[string]map[string]int, placeholder string) string {
	table := ""
	totals := map[string]int{
		"Responsabile":   0,
		"Amministratore": 0,
		"Analista":       0,
		"Progettista":    0,
		"Programmatore":  0,
		"Verificatore":   0,
	}

	prevTotals := map[string]int{
		"Responsabile":   0,
		"Amministratore": 0,
		"Analista":       0,
		"Progettista":    0,
		"Programmatore":  0,
		"Verificatore":   0,
	}
	overall := 0
	costOverall := 0

	for role, roleResources := range *resources {
		for username, h := range roleResources {
			totals[role] += h
			prevTotals[role] += (*prevResources)[role][username]
			overall += h
		}
	}

	for _, role := range orderedRoles {
		costPerRole := totals[role] * costPerHourPerRole[role]
		costOverall += costPerRole
		table += fmt.Sprintf("\"%s\", \"%d %s\" ,\"%d €/h\", \"%d € %s\",\n", role, totals[role], diffFormat(totals[role], prevTotals[role], ""), costPerHourPerRole[role], costPerRole, diffFormat(totals[role]*costPerHourPerRole[role], prevTotals[role]*costPerHourPerRole[role], " €"))
	}

	table += fmt.Sprintf("table.footer([*Totale*], [*%d*], [-], [*%d €*]),", overall, costOverall)

	return strings.Replace(content, placeholder, table, 1)
}

func generateTypstContent(issues *[]Issue, sprint int, sprintStartDate time.Time, sprintEndDate time.Time) string {
	var buf bytes.Buffer

	var content = fmt.Sprintf(SPRINT_TEMPLATE, sprint, formatDate(sprintStartDate), formatDate(sprintEndDate), sprint, sprint, sprint, sprint, sprint)

	expSprintUsage := ResourceUsage(issues, sprint, Expected)
	effSprintUsage := ResourceUsage(issues, sprint, Effective)
	groupedIssuesByState := GroupIssuesByState(issues, sprint)
	updatedResources := UpdateResources(issues, sprint)
	updatedPrevResources := UpdateResources(issues, sprint-1)

	content = buildUsage(content, &expSprintUsage, nil, "{{EXPECTED_USAGE}}", "{{CHART_EXPECTED_USAGE}}")
	content = buildUsage(content, &effSprintUsage, &expSprintUsage, "{{EFFECTIVE_USAGE}}", "{{CHART_EFFECTIVE_USAGE}}")
	content = buildSprintIssues(content, &groupedIssuesByState, "{{GROUPED_BY_STATE_ISSUES}}")
	content = buildUsage(content, &updatedResources, &updatedPrevResources, "{{UPDATED_RESOURCES}}", "")
	content = buildCosts(content, &updatedResources, &updatedPrevResources, "{{UPDATED_COSTS}}")

	buf.WriteString(content)

	return buf.String()
}
