
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


	== Sprint 14 <sprint-14>
	Inizio: 25/03/2026 \
	Fine: 01/04/2026 \

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
			"Jaume Bernardi", "-", "-", "-", "-", "4", "4", [*8*],
"Alessandro Dinato", "-", "-", "-", "-", "4", "6", [*10*],
"Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
"Hossam Ezzemouri", "-", "-", "-", "-", "4", "6", [*10*],
"Riccardo Graziani", "-", "-", "-", "-", "4", "2", [*6*],
"Siria Salvalaio", "2", "-", "-", "-", "7", "3", [*12*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "5", "6", [*11*],
table.footer([*Totale*], [*2*], [*0*], [*0*], [*0*], [*28*], [*27*], [*57*]),
		),
		[Sprint 14 - Preventivo risorse da utilizzare],
		label-id: "spr14-prev-risorse",
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint14 = (
		
	("Responsabile", 2),
	("Amministratore", 0),
	("Analista", 0),
  	("Progettista", 0),
  	("Programmatore", 28),
  	("Verificatore", 27),
	
	)
	#graficoTorta("Sprint 14 - Ore produttive previste per ogni ruolo", orePrevSprint14)

	=== Compiti svolti
	Il gruppo ha svolto con successo i seguenti compiti: \
	Issue relative a sprint 14: \
	- OPEN:
  - Codifica - Dina (#issue(72))
- CLOSED:
  - [Backend] Verifica TU package backend/internal/auth (#issue(36))
  - [Backend] Codifica package backend/internal/email (#issue(37))
  - [Backend] Verifica TU package backend/internal/email (#issue(38))
  - [Backend] Codifica componente hello (#issue(45))
  - [Backend] Verifica componente hello (#issue(46))
  - Rendicontazione responsabile sprint 14 (#issue(471))
  - [Frontend] Cambiare lingua (italiano) e migliorare CSS (#issue(59))
  - [Frontend] Controllare endpoint con i model (#issue(60))
  - [Frontend] Aggiungere sezione SUPER ADMIN MANAGEMENT (#issue(61))
  - [Frontend] TENANT USER MANAGEMENT (e raggruppare con dashboard in basso alla Side bar) (#issue(62))
  - [Frontend] Aggiornare sezione di autenticazione (#issue(63))
  - [Frontend] Verificare gestione enums tra frontend/backend (#issue(64))
  - [Frontend] Scrittura TU per la cartella adapters (#issue(65))
  - [Backend] Aggiornamento logica eliminazione super admin / tenant admin (#issue(66))
  - [Backend] TU backend/internal/user/adapters.go (#issue(67))
  - [Dashboard] Aggiornare endpoint su API dog relativamente a gateway commissioning (#issue(68))
  - [Backend] Codifica backend/internal/sensor (#issue(73))
  - [Backend] TU backend/internal/sensor (#issue(74))
  - [Backend] TI backend/internal/sensor (#issue(75))
  - Codifica - Hoss (#issue(79))
  - [Backend] Codifica backend/internal/historical_data (#issue(80))
  - [Backend] TU backend/internal/historical_data (#issue(81))
  - [Backend] TI backend/internal/historical_data (#issue(82))
  - [Backend] Refactoring in issue #67 (#issue(87))
  - [Frontend] Test vari (#issue(92))
  - [Backend] Aggiornamento go_coverage.sh (#issue(95))

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
			"Jaume Bernardi", "-", "-", "-", "-", "13 (+9)", "6 (+2)", [*19*],
"Alessandro Dinato", "-", "-", "-", "-", "5 (+1)", "5 (-1)", [*10*],
"Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
"Hossam Ezzemouri", "-", "-", "-", "-", "6 (+2)", "7 (+1)", [*13*],
"Riccardo Graziani", "-", "-", "-", "-", "2 (-2)", "1 (-1)", [*3*],
"Siria Salvalaio", "2", "-", "-", "-", "8 (+1)", "5 (+2)", [*15*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "5", "7 (+1)", [*12*],
table.footer([*Totale*], [*2*], [*0*], [*0*], [*0*], [*39*], [*31*], [*72*]),
		),
		[Sprint 14 - Risorse utilizzate],
		label-id: "spr14-risorse-utiliz",
	)
	==== Grafico a torta della suddivisione oraria effettiva

	#let oreEffettiveSprint14 = (
		
	("Responsabile", 2),
	("Amministratore", 0),
	("Analista", 0),
  	("Progettista", 0),
  	("Programmatore", 39),
  	("Verificatore", 31),
	
	)
	#graficoTorta(
	"Sprint 14 - Ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint14,
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
			"Jaume Bernardi", "-", "4", "4", "1", "11 (-13)", "19 (-6)", [*39*],
"Alessandro Dinato", "-", "-1", "-", "10", "-1 (-5)", "10 (-5)", [*18*],
"Michele Dioli", "-", "-1", "-", "7", "14", "22", [*42*],
"Hossam Ezzemouri", "-", "-4", "-1", "10", "12 (-6)", "6 (-7)", [*23*],
"Riccardo Graziani", "-", "4", "-", "5", "3 (-2)", "5 (-1)", [*17*],
"Siria Salvalaio", "-2 (-2)", "-2", "3", "18", "2 (-8)", "15 (-5)", [*34*],
"Elia Ernesto Stellin", "3", "-3", "-", "7", "7 (-5)", "9 (-7)", [*23*],
table.footer([*Totale*], [*1*], [*-3*], [*6*], [*58*], [*48*], [*86*], [*196*]),
		),
		[Sprint 14 - Aggiornamento ore rimanenti],
		label-id: "spr14-agg-ore-rim",
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
			"Responsabile", "1 (-2)" ,"30 €/h", "30 € (-60 €)",
"Amministratore", "-3 " ,"20 €/h", "-60 € ",
"Analista", "6 " ,"25 €/h", "150 € ",
"Progettista", "58 " ,"25 €/h", "1450 € ",
"Programmatore", "48 (-39)" ,"15 €/h", "720 € (-585 €)",
"Verificatore", "86 (-31)" ,"15 €/h", "1290 € (-465 €)",
table.footer([*Totale*], [*196*], [-], [*3580 €*]),
		),
		[Sprint 14 - Aggiornamento costi],
		label-id: "spr14-agg-costi",
	)
	