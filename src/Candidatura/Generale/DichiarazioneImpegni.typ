#import "../../Templates/templateDocumentiGenerici.typ": report
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show: report.with(
  titolo: "Dichiarazione impegni",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    ("0.0.1", "28/10/2025", "Alessandro Dinato", "-", "Bozza documento"),
  ),
  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "Candidatura-Generale",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Dichiarazione impegni",
)

= Introduzione
= Analisi dei ruoli
= Impegno individuale
== Tabella suddivisione ore per componente e ruolo
In questa tabella verranno utilizzati degli acronimi per descrivere i singoli ruoli.
- *Resp* = Responsabile
- *Amm* = Amministratore
- *Verif* = Verificatore
- *Analist* = Analista
- *Progett* = Progettista
- *Programm* = Programmatore
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "8", "7", "10", "21", "24", "23", [*93*],
  "Alessandro Dinato", "7", "8", "10", "21", "23", "24", [*93*],
  "Michele Dioli", "8", "7", "10", "21", "24", "23", [*93*],
  "Hossam Ezzemouri", "7", "8", "10", "20", "24", "24", [*93*],
  "Riccardo Graziani", "8", "8", "10", "20", "23", "24", [*93*],
  "Siria Salvalaio", "8", "8", "9", "21", "24", "23", [*93*],
  "Elia Ernesto Stellin", "8", "8", "9", "21", "23", "24", [*93*],
  table.footer([*Totale*], [*54*], [*54*], [*68*], [*145*], [*165*], [*165*], [*651*]),
)
== Grafico a torta della suddivisione oraria
#let costi = (
  ("Responsabile", 54),
  ("Amministratore", 54),
  ("Analista", 68),
  ("Progettista", 145),
  ("Programmatore", 165),
  ("Verificatore", 165),
)

#align(center)[
  #cetz.canvas({
    let colors = gradient.linear(
      rgb(153, 72, 188),
      rgb("#19e0d9"),
      rgb(84, 101, 255),
    )

    chart.piechart(
      costi,
      value-key: 1,
      label-key: 1,
      radius: 4,
      stroke: none,
      slice-style: colors,
      inner-radius: 0.7,
      inner-label: (content: (value, label) => [#text(white, str(value))], radius: 110%),
      outer-label: (content: (value, label) => [#text(black, str(label))], radius: 110%),
    )
  })
]
= Preventivo costi
== Tabella suddivisione ore e costi
#table(
  columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
  "Responsabile", "54", "30 €/h", "1620 €",
  "Amministratore", "54", "20 €/h", "1080 €",
  "Analista", "68", "25 €/h", "1700 €",
  "Progettista", "145", "25 €/h", "3625 €",
  "Programmatore", "165", "15 €/h", "2475 €",
  "Verificatore", "165", "15 €/h", "2475 €",
  table.footer([*Totale*], [*651*], [-], [*12975 €*]),
)
== Grafico a torta dei costi progettuali
#let costi = (
  ([Responsabile], 1620),
  ([Amministratore], 1080),
  ([Analista], 1700),
  ([Progettista], 3625),
  ([Programmatore], 2475),
  ([Verificatore], 2475),
)

#align(center)[
  #cetz.canvas({
    let colors = gradient.linear(
      rgb(153, 72, 188),
      rgb("#19e0d9"),
      rgb(84, 101, 255),
    )

    chart.piechart(
      costi,
      value-key: 1,
      label-key: 1,
      radius: 4,
      stroke: none,
      slice-style: colors,
      inner-radius: 1,
      inner-label: (content: (value, label) => [#text(white, str(value))], radius: 110%),
      outer-label: (content: "%", radius: 110%),
    )
  })
]

= Analisi dei rischi
= Costi
Il preventivo finale calcolato dai componenti del gruppo basandosi sulla suddivisione dei compiti e del costo orario dei vari ruoli è di *12975€*.
= Consegna
La data di consegna scelta dai membri del gruppo è stata fissata al *27 marzo 2026*, non sarà possibile avere ulteriori deroghe.
