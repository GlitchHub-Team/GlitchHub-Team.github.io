
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


	== Sprint 16 <sprint-16>
	Inizio: 08/04/2026 \
	Fine: 15/04/2026 \

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
			"Jaume Bernardi", "1", "-", "-", "-", "-", "-", [*1*],
"Alessandro Dinato", "-", "-", "-", "4", "2", "1", [*7*],
"Michele Dioli", "-", "-", "-", "7", "1", "-", [*8*],
"Hossam Ezzemouri", "-", "-", "-", "1", "2", "-", [*3*],
"Riccardo Graziani", "-", "-", "-", "7", "-", "1", [*8*],
"Siria Salvalaio", "-", "-", "-", "7", "-", "-", [*7*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "5", "7", [*12*],
table.footer([*Totale*], [*1*], [*0*], [*0*], [*26*], [*10*], [*9*], [*46*]),
		),
		[Sprint 16 - Preventivo risorse da utilizzare],
		label-id: "spr16-prev-risorse",
	)
	==== Grafico a torta della suddivisione oraria prevista

	#let orePrevSprint16 = (
		
	("Responsabile", 1),
	("Amministratore", 0),
	("Analista", 0),
  	("Progettista", 26),
  	("Programmatore", 10),
  	("Verificatore", 9),
	
	)
	#graficoTorta("Sprint 16 - Ore produttive previste per ogni ruolo", orePrevSprint16)

	=== Compiti svolti
	Il gruppo ha svolto con successo i seguenti compiti: \
	Issue relative a sprint 16: \
	- CLOSED:
  - [Backend] TI backend/internal/real_time_data (#issue(78))
  - [Backend] TU backend/internal/real_time_data (#issue(77))
  - [Backend] Codifica backend/internal/real_time_data (#issue(76))
  - [Backend] TI backend/internal/email (#issue(70))
  - [ST] Architettura di dettaglio frontend - Riccardo (#issue(503))
  - [ST] Architettura di dettaglio frontend - Siria (#issue(504))
  - [MU] Definizione di altri file (#issue(513))
  - Rendicontazione ore responsabile sprint 16 (#issue(516))
  - [TB] Stesura infrastruttura del Test Book (#issue(518))
  - [TB] Controllo test singoli del test book nel sistema reale (#issue(519))
  - [MU] Perfezionamento manuale utente Gateway, Data Consumer (#issue(520))
  - [AdR] Controllo coerenza AdR e eventuali correzioni (#issue(521))
  - Definizione metriche Gin-Prometheus (#issue(3))
  - [MU] Perfezionamento sezione Observability (#issue(528))
  - [Backend] Fix bug per login su utente inesistente (#issue(121))
  - [Backend] recupero files gateway (#issue(124))
  - [Backend] Fix monitoring (#issue(126))
  - [Backend] Fix backend modulo gateway (#issue(128))
  - [Backend] Review backend/internal/tenant (#issue(129))
  - [Backend] Fix backend gateway (#issue(130))
  - [Backend] Aggiunta tag ?impersonable in get_tenants (#issue(532))
  - [Backend] Fix logica per gestione Tenant Admin (#issue(136))
  - [Backend] Fix token conferma account (#issue(138))
  - [Backend] Fix crea schema in sensor_db (#issue(139))
  - [Backend] Fix GetTenant dovrebbe fare bind su URI params (#issue(141))
  - [Backend] Fix Reset password per tenant members (#issue(145))
  - [Backend] Fix invio dati al front-end (real_time_data) (#issue(148))
  - [Frontend] Fix stile e UI (#issue(149))
  - [Frontend] Fix grafici e aggiunta colonna interval a gateway e sensori (#issue(152))
  - [Backend] Sistemare posizionamento package (#issue(156))
- OPEN:
  - Test Book (#issue(517))
  - [ST] Stesura tracciamento requisiti - Michele (#issue(527))
  - [Backend] Togliere requester check da GetTenantList (#issue(120))
  - [backend] creazione test get gateway (#issue(143))
  - Risolvere problema di scraping delle metrice gin (#issue(6))
  - [Backend] Fixare scraping metriche gin  (#issue(153))

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
			"Jaume Bernardi", "1", "-", "-", "-", "-", "-", [*1*],
"Alessandro Dinato", "-", "-", "-", "4", "2", "1", [*7*],
"Michele Dioli", "-", "-", "-", "3 (-4)", "-", "-", [*3*],
"Hossam Ezzemouri", "-", "-", "-", "3 (+2)", "2", "-", [*5*],
"Riccardo Graziani", "-", "-", "-", "7", "-", "1", [*8*],
"Siria Salvalaio", "-", "-", "-", "9 (+2)", "-", "-", [*9*],
"Elia Ernesto Stellin", "-", "-", "-", "-", "4 (-1)", "7", [*11*],
table.footer([*Totale*], [*1*], [*0*], [*0*], [*26*], [*8*], [*9*], [*44*]),
		),
		[Sprint 16 - Risorse utilizzate],
		label-id: "spr16-risorse-utiliz",
	)
	==== Grafico a torta della suddivisione oraria effettiva

	#let oreEffettiveSprint16 = (
		
	("Responsabile", 1),
	("Amministratore", 0),
	("Analista", 0),
  	("Progettista", 26),
  	("Programmatore", 8),
  	("Verificatore", 9),
	
	)
	#graficoTorta(
	"Sprint 16 - Ore produttive complessive ed effettive per ogni ruolo",
	oreEffettiveSprint16,
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
			"Jaume Bernardi", "-2 (-1)", "4", "4", "-7", "11", "19", [*29*],
"Alessandro Dinato", "-", "-3", "-", "3 (-4)", "-4 (-2)", "9 (-1)", [*5*],
"Michele Dioli", "-", "-1", "-", "4 (-3)", "2", "22", [*27*],
"Hossam Ezzemouri", "-", "-4", "-1", "7 (-3)", "3 (-2)", "3", [*8*],
"Riccardo Graziani", "-", "4", "-", "-4 (-7)", "-2", "4 (-1)", [*2*],
"Siria Salvalaio", "-2", "-2", "3", "-", "-", "15", [*14*],
"Elia Ernesto Stellin", "3", "-3", "-", "7", "2 (-4)", "-1 (-7)", [*8*],
table.footer([*Totale*], [*-1*], [*-5*], [*6*], [*10*], [*12*], [*71*], [*93*]),
		),
		[Sprint 16 - Aggiornamento ore rimanenti],
		label-id: "spr16-agg-ore-rim",
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
			"Responsabile", "-1 (-1)" ,"30 €/h", "-30 € (-30 €)",
"Amministratore", "-5 " ,"20 €/h", "-100 € ",
"Analista", "6 " ,"25 €/h", "150 € ",
"Progettista", "10 (-26)" ,"25 €/h", "250 € (-650 €)",
"Programmatore", "12 (-8)" ,"15 €/h", "180 € (-120 €)",
"Verificatore", "71 (-9)" ,"15 €/h", "1065 € (-135 €)",
table.footer([*Totale*], [*93*], [-], [*1515 €*]),
		),
		[Sprint 16 - Aggiornamento costi],
		label-id: "spr16-agg-costi",
	)
	