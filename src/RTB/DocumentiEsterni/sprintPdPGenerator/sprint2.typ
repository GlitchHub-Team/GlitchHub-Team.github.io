
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

	== Sprint 2
	Inizio: 19/11/2025 \
	Fine: 26/11/2025 \

	Piccola introduzione sprint.

	=== Consuntivo di periodo
	==== Attività da svolgere
	Il gruppo ha individuato le seguenti attività da svolgere:
	- 
	-
	-
	==== Preventivo risorse da utilizzare
	#table(
	  	columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
		align: left,
		stroke: (x, y) => (
		top: if y == 0 { 0pt } else { 0.5pt + black },
		left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
		"Jaume Bernardi", "-", "-", "2", "-", "-", "-", [*2*],
"Alessandro Dinato", "-", "-", "3", "-", "-", "-", [*3*],
"Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
"Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
"Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
"Siria Salvalaio", "-", "-", "3", "-", "-", "-", [*3*],
"Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
table.footer([*Totale*], [*0*], [*0*], [*10*], [*0*], [*0*], [*0*], [*10*]),
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint2 = (
		
	("Responsabile", 0),
	("Amministratore", 0),
	("Analista", 10),
  	("Progettista", 0),
  	("Programmatore", 0),
  	("Verificatore", 0),
	
	)
	#graficoTorta("Il grafico a torta contiene le ore produttive previste per ogni ruolo", orePrevSprint2)

	==== Attività svolte
	Il gruppo ha svolto con successo le seguenti attività: \
	Issue relative a sprint 2: \
	OPEN: #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/42")[\#42], #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/39")[\#39], #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/40")[\#40], 
CLOSED: #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/41")[\#41], 

	- 
	-
	-
	==== Risorse utilizzate
	#table(
	  	columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
		align: left,
		stroke: (x, y) => (
		top: if y == 0 { 0pt } else { 0.5pt + black },
		left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
		"Jaume Bernardi", "-", "-", "2", "-", "-", "-", [*2*],
"Alessandro Dinato", "-", "-", "4 (+1)", "-", "-", "-", [*4*],
"Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
"Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
"Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
"Siria Salvalaio", "-", "-", "4 (+1)", "-", "-", "-", [*4*],
"Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
table.footer([*Totale*], [*0*], [*0*], [*12*], [*0*], [*0*], [*0*], [*12*]),
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let oreEffettiveSprint2 = (
		
	("Responsabile", 0),
	("Amministratore", 0),
	("Analista", 12),
  	("Progettista", 0),
  	("Programmatore", 0),
  	("Verificatore", 0),
	
	)
	#graficoTorta(
	"Il grafico a torta contiene le ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint2,
	)

	==== Rischi occorsi
	Descrivere i rischi occorsi

	=== Preventivo a finire

	==== Retrospettiva
	Raccontare retrospettiva


	==== Aggiornamento ore rimanenti
	#table(
	  	columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
		align: left,
		stroke: (x, y) => (
		top: if y == 0 { 0pt } else { 0.5pt + black },
		left: if x == 0 { 0pt } else { 0.5pt + black },
		),
		table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
		"Jaume Bernardi", "8", "7", "8 (-2)", "21", "24", "23", [*91*],
"Alessandro Dinato", "7", "8", "6 (-4)", "21", "23", "24", [*89*],
"Michele Dioli", "8", "7", "10", "21", "24", "23", [*93*],
"Hossam Ezzemouri", "7", "8", "10", "20", "24", "24", [*93*],
"Riccardo Graziani", "8", "8", "10", "20", "23", "24", [*93*],
"Siria Salvalaio", "8", "8", "5 (-4)", "21", "24", "23", [*89*],
"Elia Ernesto Stellin", "8", "8", "7 (-2)", "21", "23", "24", [*91*],
table.footer([*Totale*], [*54*], [*54*], [*56*], [*145*], [*165*], [*165*], [*639*]),
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
		"Responsabile", "54 " ,"30 €/h", "1620 € ",
"Amministratore", "54 " ,"20 €/h", "1080 € ",
"Analista", "56 (-12)" ,"25 €/h", "1400 € (-300 €)",
"Progettista", "145 " ,"25 €/h", "3625 € ",
"Programmatore", "165 " ,"15 €/h", "2475 € ",
"Verificatore", "165 " ,"15 €/h", "2475 € ",
table.footer([*Totale*], [*639*], [-], [*12675 €*]),
	)
	