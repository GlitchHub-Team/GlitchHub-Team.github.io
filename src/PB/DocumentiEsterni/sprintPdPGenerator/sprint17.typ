
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
				radius: 90%,
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
				radius: 110%,
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


	== Sprint 17 <sprint-17>
	Inizio: 15/04/2026 \
	Fine: 22/04/2026 \

	Piccola introduzione sprint.

	=== Compiti da svolgere
	Il gruppo ha individuato i seguenti compiti da svolgere:
	- 
	-
	-

	=== Rischi attesi
	Descrivere i rischi attesi
	
	=== Preventivo
	==== Preventivo risorse da utilizzare
	#tabella-paginata(
		table(
			columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
			align: left,
			stroke: (x, y) => (
			top: if y == 0 { 0pt } else { 0.5pt + black },
			left: if x == 0 { 0pt } else { 0.5pt + black },
			),
			table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
			"Jaume Bernardi", "1", "2", "-", "-", "-", "3", [*6*],
"Alessandro Dinato", "-", "-", "-", "-", "-", "4", [*4*],
"Michele Dioli", "-", "-", "-", "1", "-", "11", [*12*],
"Hossam Ezzemouri", "-", "-", "-", "3", "3", "-", [*6*],
"Riccardo Graziani", "-", "-", "-", "3", "4", "-", [*7*],
"Siria Salvalaio", "-", "-", "1", "3", "6", "2", [*12*],
"Elia Ernesto Stellin", "-", "-", "-", "7", "-", "-", [*7*],
table.footer([*Totale*], [*1*], [*2*], [*1*], [*17*], [*13*], [*20*], [*54*]),
		),
		[Sprint 17 - Preventivo risorse da utilizzare],
		label-id: "spr17-prev-risorse",
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint17 = (
		
	("Responsabile", 1),
	("Amministratore", 2),
	("Analista", 1),
  	("Progettista", 17),
  	("Programmatore", 13),
  	("Verificatore", 20),
	
	)
	#graficoTorta("Sprint 17 - Ore produttive previste per ogni ruolo", orePrevSprint17)

	=== Compiti svolti
	Il gruppo ha svolto con successo i seguenti compiti: \
	Issue relative a sprint 17: \
	- OPEN:
  - [PdQ] Aggiornare metriche (#issue(496))
  - [ST] Cloud Backend (#issue(522))
  - [Backend] Togliere requester check da GetTenantList (#issue(120))
  - Risolvere problema di scraping delle metrice gin (#issue(6))
  - [Backend] Fixare scraping metriche gin  (#issue(153))
  - Test di Sistema (#issue(158))
  - [LP] Lettera di Presentazione PB (#issue(580))
  - [PdP] Aggiungere parte di rendicontazione nuove, ricalcolo ore e lettura prima parte di testo (#issue(590))
- CLOSED:
  - [ST] Stesura Cloud Backend - Elia (#issue(523))
  - [ST] Tracciamento requisiti (#issue(525))
  - [ST] Stesura tracciamento requisiti - Elia (#issue(526))
  - [ST] Stesura tracciamento requisiti - Michele (#issue(527))
  - Implementazione Test di Sistema - Elia (#issue(160))
  - Implementazione Test di Sistema - Michele (#issue(161))
  - [AdR] Revisione (#issue(543))
  - Implementazione Test di Sistema - Siria (#issue(162))
  - Implementazione Test di Sistema - Riccardo (#issue(163))
  - Rendicontazione ore responsabile sprint 17 (#issue(545))
  - [MU] Perfezionamento manuale utente observability (#issue(548))
  - [MU] Sezione frontend (#issue(549))
  - [PdQ] Rendicontare test di unità/integrazione (#issue(550))
  - [ST] Sezione su Cloud DB (#issue(559))
  - [MVP] Test sistema da TS137 a TS281 (#issue(2))
  - [website] fix header PB (#issue(586))
  - [PdQ] Aggiunte test di unità/integrazione (#issue(592))

	- 
	-
	-

	=== Retrospettiva
	Raccontare retrospettiva

	=== Rischi occorsi
	Descrivere i rischi occorsi

	=== Consuntivo di periodo
	==== Risorse utilizzate
	#tabella-paginata(
  	table(
		columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
			align: left,
			stroke: (x, y) => (
			top: if y == 0 { 0pt } else { 0.5pt + black },
			left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
			"Jaume Bernardi", "1", "2", "-", "-", "-", "4 (+1)", [*7*],
"Alessandro Dinato", "-", "-", "-", "-", "-", "3 (-1)", [*3*],
"Michele Dioli", "-", "-", "-", "1", "-", "11", [*12*],
"Hossam Ezzemouri", "-", "-", "-", "3", "3", "-", [*6*],
"Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
"Siria Salvalaio", "-", "-", "1", "-", "2 (-4)", "3 (+1)", [*6*],
"Elia Ernesto Stellin", "-", "-", "-", "3 (-4)", "-", "-", [*3*],
table.footer([*Totale*], [*1*], [*2*], [*1*], [*7*], [*5*], [*21*], [*37*]),
		),
		[Sprint 17 - Risorse utilizzate],
		label-id: "spr17-risorse-utiliz",
	)
	==== Grafico a torta della suddivisione oraria effettiva

	#let oreEffettiveSprint17 = (
		
	("Responsabile", 1),
	("Amministratore", 2),
	("Analista", 1),
  	("Progettista", 7),
  	("Programmatore", 5),
  	("Verificatore", 21),
	
	)
	#graficoTorta(
	"Sprint 17 - Ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint17,
	)

	=== Preventivo a finire
	==== Aggiornamento ore rimanenti
	#tabella-paginata(
  	table(
		columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
			align: left,
			stroke: (x, y) => (
			top: if y == 0 { 0pt } else { 0.5pt + black },
			left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
			"Jaume Bernardi", "-3 (-1)", "2 (-2)", "4", "1", "10", "5 (-4)", [*19*],
"Alessandro Dinato", "-", "-3", "-", "3", "-4", "6 (-3)", [*2*],
"Michele Dioli", "-", "-1", "-", "2 (-1)", "-1", "4 (-11)", [*4*],
"Hossam Ezzemouri", "-", "-4", "-1", "7 (-3)", "-", "-", [*2*],
"Riccardo Graziani", "-", "3", "-", "-3", "-2", "3", [*1*],
"Siria Salvalaio", "-2", "-2", "5 (-1)", "1", "-2 (-2)", "5 (-3)", [*5*],
"Elia Ernesto Stellin", "3", "-3", "-", "4 (-3)", "2", "-1", [*5*],
table.footer([*Totale*], [*-2*], [*-8*], [*8*], [*15*], [*3*], [*22*], [*38*]),
		),
		[Sprint 17 - Aggiornamento ore rimanenti],
		label-id: "spr17-agg-ore-rim",
	)

	==== Aggiornamento costi
	#tabella-paginata(
	table(
		columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
			align: left,
			stroke: (x, y) => (
			top: if y == 0 { 0pt } else { 0.5pt + black },
			left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
			"Responsabile", "-2 (-1)" ,"30 €/h", "-60 € (-30 €)",
"Amministratore", "-8 (-2)" ,"20 €/h", "-160 € (-40 €)",
"Analista", "8 (-1)" ,"25 €/h", "200 € (-25 €)",
"Progettista", "15 (-7)" ,"25 €/h", "375 € (-175 €)",
"Programmatore", "3 (-5)" ,"15 €/h", "45 € (-75 €)",
"Verificatore", "22 (-21)" ,"15 €/h", "330 € (-315 €)",
table.footer([*Totale*], [*38*], [-], [*730 €*]),
		),
		[Sprint 17 - Aggiornamento costi],
		label-id: "spr17-agg-costi",
	)
	