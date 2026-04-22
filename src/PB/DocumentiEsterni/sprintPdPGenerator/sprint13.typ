
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


	== Sprint 13 <sprint-13>
	Inizio: 18/03/2026 \
	Fine: 25/03/2026 \

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
			"Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
"Alessandro Dinato", "-", "6", "-", "-", "-", "4", [*10*],
"Michele Dioli", "-", "-", "-", "-", "5", "-", [*5*],
"Hossam Ezzemouri", "-", "-", "1", "-", "3", "2", [*6*],
"Riccardo Graziani", "-", "-", "-", "-", "6", "6", [*12*],
"Siria Salvalaio", "2", "-", "-", "-", "3", "2", [*7*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "5", "2", [*7*],
table.footer([*Totale*], [*2*], [*6*], [*1*], [*0*], [*22*], [*16*], [*47*]),
		),
		[Sprint 13 - Preventivo risorse da utilizzare],
		label-id: "spr13-prev-risorse",
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint13 = (
		
	("Responsabile", 2),
	("Amministratore", 6),
	("Analista", 1),
  	("Progettista", 0),
  	("Programmatore", 22),
  	("Verificatore", 16),
	
	)
	#graficoTorta("Sprint 13 - Ore produttive previste per ogni ruolo", orePrevSprint13)

	=== Compiti svolti
	Il gruppo ha svolto con successo i seguenti compiti: \
	Issue relative a sprint 13: \
	- CLOSED:
  - [Backend] Scrittura test unità servizio tenant (sprint 13) (#issue(33))
  - [Backend] Codifica backend/internal/user (sprint 13) (#issue(17))
  - [Frontend] Codifica Dashboard - Grafici real-time e storici (#issue(23))
  - [Frontend] Test di unità - Tenant e User (#issue(26))
  - [Backend] Test di unità backend/internal/user (sprint 13) (#issue(28))
  - Setup config. NATS (nsc, etc.) (#issue(4))
  - [TI]  Gateway (#issue(8))
  - [AdR] Aggiornamento metriche (RNF, RD) (#issue(461))
  - Setup Grafana, Prometheus, NATS Exporter (#issue(1))
  - [Backend] Codifica package backend/internal/auth (#issue(35))
  - [Frontend] Verifica Dashboard - Grafici real-time e storici (#issue(41))
  - [Frontend] Codifica Gateway/sensori (#issue(42))
  - [Frontend] Verifica Gateway/sensori (#issue(43))
  - [Backend] Codifica - Jaume (#issue(44))
  - Rendicontazione responsabile (Sprint 13) (#issue(463))
  - [TU]Aggiungere test unitari (#issue(9))
  - [Frontend] Modifiche pagination e file (#issue(48))
  - [Frontend] Sistemare dashboard super-admin (#issue(49))
  - [Dashboard] Implementazione infrastructure nel dashboard backend (#issue(54))
  - [Backend] TU backend/internal/auth (sprint 13) (#issue(83))

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
			"Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
"Alessandro Dinato", "-", "5 (-1)", "-", "-", "-", "4", [*9*],
"Michele Dioli", "-", "-", "-", "-", "5", "-", [*5*],
"Hossam Ezzemouri", "-", "-", "1", "-", "5 (+2)", "2", [*8*],
"Riccardo Graziani", "-", "-", "-", "-", "6", "6", [*12*],
"Siria Salvalaio", "2", "-", "-", "-", "4 (+1)", "5 (+3)", [*11*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "5", "3 (+1)", [*8*],
table.footer([*Totale*], [*2*], [*5*], [*1*], [*0*], [*25*], [*20*], [*53*]),
		),
		[Sprint 13 - Risorse utilizzate],
		label-id: "spr13-risorse-utiliz",
	)
	==== Grafico a torta della suddivisione oraria effettiva

	#let oreEffettiveSprint13 = (
		
	("Responsabile", 2),
	("Amministratore", 5),
	("Analista", 1),
  	("Progettista", 0),
  	("Programmatore", 25),
  	("Verificatore", 20),
	
	)
	#graficoTorta(
	"Sprint 13 - Ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint13,
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
			"Jaume Bernardi", "-", "4", "4", "1", "24", "25", [*58*],
"Alessandro Dinato", "-", "-1 (-5)", "-", "10", "4", "15 (-4)", [*28*],
"Michele Dioli", "-", "-1", "-", "7", "14 (-5)", "22", [*42*],
"Hossam Ezzemouri", "-", "-4", "-1 (-1)", "10", "18 (-5)", "13 (-2)", [*36*],
"Riccardo Graziani", "-", "4", "-", "5", "5 (-6)", "6 (-6)", [*20*],
"Siria Salvalaio", "-", "-2", "3", "18", "10 (-4)", "20 (-5)", [*49*],
"Elia Ernesto Stellin", "3", "-3", "-", "7", "12 (-5)", "16 (-3)", [*35*],
table.footer([*Totale*], [*3*], [*-3*], [*6*], [*58*], [*87*], [*117*], [*268*]),
		),
		[Sprint 13 - Aggiornamento ore rimanenti],
		label-id: "spr13-agg-ore-rim",
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
			"Responsabile", "3 (-2)" ,"30 €/h", "90 € (-60 €)",
"Amministratore", "-3 (-5)" ,"20 €/h", "-60 € (-100 €)",
"Analista", "6 (-1)" ,"25 €/h", "150 € (-25 €)",
"Progettista", "58 " ,"25 €/h", "1450 € ",
"Programmatore", "87 (-25)" ,"15 €/h", "1305 € (-375 €)",
"Verificatore", "117 (-20)" ,"15 €/h", "1755 € (-300 €)",
table.footer([*Totale*], [*268*], [-], [*4690 €*]),
		),
		[Sprint 13 - Aggiornamento costi],
		label-id: "spr13-agg-costi",
	)
	