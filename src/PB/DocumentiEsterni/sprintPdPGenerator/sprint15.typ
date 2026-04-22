
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


	== Sprint 15 <sprint-15>
	Inizio: 01/04/2026 \
	Fine: 08/04/2026 \

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
			"Jaume Bernardi", "1", "-", "-", "8", "-", "-", [*9*],
"Alessandro Dinato", "-", "2", "-", "2", "1", "-", [*5*],
"Michele Dioli", "-", "-", "-", "-", "8", "8", [*16*],
"Hossam Ezzemouri", "-", "-", "-", "-", "4", "3", [*7*],
"Riccardo Graziani", "-", "-", "-", "9", "6", "-", [*15*],
"Siria Salvalaio", "-", "-", "-", "8", "3", "-", [*11*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "1", "6", [*7*],
table.footer([*Totale*], [*1*], [*2*], [*0*], [*27*], [*23*], [*17*], [*70*]),
		),
		[Sprint 15 - Preventivo risorse da utilizzare],
		label-id: "spr15-prev-risorse",
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint15 = (
		
	("Responsabile", 1),
	("Amministratore", 2),
	("Analista", 0),
  	("Progettista", 27),
  	("Programmatore", 23),
  	("Verificatore", 17),
	
	)
	#graficoTorta("Sprint 15 - Ore produttive previste per ogni ruolo", orePrevSprint15)

	=== Compiti svolti
	Il gruppo ha svolto con successo i seguenti compiti: \
	Issue relative a sprint 15: \
	- OPEN:
  - [Backend] Codifica package backend/internal/gateway (#issue(39))
  - [ST] Completamento Specifica Tecnica per frontend (#issue(495))
  - [PdQ] Aggiornare metriche (#issue(496))
  - [Frontend] Integrazione con Cloud (#issue(100))
  - [ST] Architettura di dettaglio frontend - Riccardo (#issue(503))
- CLOSED:
  - [ST] Architettura hexagonal (#issue(475))
  - [Backend] Verifica package backend/internal/gateway (#issue(40))
  - [Backend] TI backend/internal/auth (#issue(69))
  - [Backend] TI backend/internal/user (#issue(71))
  - [Frontend] Modificare Modello C4 sul codice attuale (#issue(94))
  - [ST] Aggiornamento librerie frontend (#issue(491))
  - [ST] Scrittura parte gateway e data consumer (#issue(493))
  - [MVP] Setup sistema (#issue(1))
  - [ST] Descrizione pattern frontend (#issue(494))
  - [Obs] Implementazione metriche (#issue(2))
  - [Backend] TI historical_data (rendicontazione sprint 15) (#issue(101))
  - [Backend] modifica codice historical_data (#issue(102))
  - Rendicontazione ore responsabile sprint 15 (#issue(497))
  - [MU] Inizio stesura Manuale Utente (#issue(501))
  - [Dashboard] Aggiunta middleware metriche Gin per Prometheus (#issue(112))
  - [Frontend] Modifica sezione di Historical Data e Real Time Data (#issue(114))
  - [Backend] Codifica backend/internal/real_time_data (sprint 15) (#issue(115))

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
			"Jaume Bernardi", "1", "-", "-", "8", "-", "-", [*9*],
"Alessandro Dinato", "-", "2", "-", "3 (+1)", "1", "-", [*6*],
"Michele Dioli", "-", "-", "-", "-", "12 (+4)", "-", [*12*],
"Hossam Ezzemouri", "-", "-", "-", "-", "7 (+3)", "3", [*10*],
"Riccardo Graziani", "-", "-", "-", "1 (-8)", "3 (-3)", "-", [*4*],
"Siria Salvalaio", "-", "-", "-", "8", "-", "-", [*8*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "1", "10 (+4)", [*11*],
table.footer([*Totale*], [*1*], [*2*], [*0*], [*20*], [*24*], [*13*], [*60*]),
		),
		[Sprint 15 - Risorse utilizzate],
		label-id: "spr15-risorse-utiliz",
	)
	==== Grafico a torta della suddivisione oraria effettiva

	#let oreEffettiveSprint15 = (
		
	("Responsabile", 1),
	("Amministratore", 2),
	("Analista", 0),
  	("Progettista", 20),
  	("Programmatore", 24),
  	("Verificatore", 13),
	
	)
	#graficoTorta(
	"Sprint 15 - Ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint15,
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
			"Jaume Bernardi", "-1 (-1)", "4", "4", "-7 (-8)", "11", "19", [*30*],
"Alessandro Dinato", "-", "-3 (-2)", "-", "7 (-3)", "-2 (-1)", "10", [*12*],
"Michele Dioli", "-", "-1", "-", "7", "2 (-12)", "22", [*30*],
"Hossam Ezzemouri", "-", "-4", "-1", "10", "5 (-7)", "3 (-3)", [*13*],
"Riccardo Graziani", "-", "4", "-", "4 (-1)", "-", "5", [*13*],
"Siria Salvalaio", "-2", "-2", "3", "10 (-8)", "2", "15", [*26*],
"Elia Ernesto Stellin", "3", "-3", "-", "7", "6 (-1)", "-1 (-10)", [*12*],
table.footer([*Totale*], [*0*], [*-5*], [*6*], [*38*], [*24*], [*73*], [*136*]),
		),
		[Sprint 15 - Aggiornamento ore rimanenti],
		label-id: "spr15-agg-ore-rim",
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
			"Responsabile", "0 (-1)" ,"30 €/h", "0 € (-30 €)",
"Amministratore", "-5 (-2)" ,"20 €/h", "-100 € (-40 €)",
"Analista", "6 " ,"25 €/h", "150 € ",
"Progettista", "38 (-20)" ,"25 €/h", "950 € (-500 €)",
"Programmatore", "24 (-24)" ,"15 €/h", "360 € (-360 €)",
"Verificatore", "73 (-13)" ,"15 €/h", "1095 € (-195 €)",
table.footer([*Totale*], [*136*], [-], [*2455 €*]),
		),
		[Sprint 15 - Aggiornamento costi],
		label-id: "spr15-agg-costi",
	)
	