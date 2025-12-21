#import "../lib/libVerbali.typ": *

#let primary = rgb("#9948bc")
#let secondary = rgb("#000")
#let gray-dark = rgb("#2c3e50")

#let gloss(content) = [*#content#sub[G]*]

#let report(
  titolo: none,
  stato: none,
  versione: none,
  partecipanti: none,
  distribuzione: none,
  htmlId: none,
  index: "0",
  odg: none,
  registro-modifiche: (),
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Interno",
  body,
) = [
  #show link: underline
  #set document(
    title: titolo,
    author: "GlitchHub Team",
    keywords: (htmlId, versione, index),
  )

  #set page(
    paper: "a4",
    margin: (
      top: 2cm,
      bottom: 2cm,
      left: 2.5cm,
      right: 2.5cm,
    ),
  )

  #set heading(numbering: "1.")

  #set par(
    justify: true,
    leading: 0.75em,
    spacing: 1.2em,
  )

  #show: hwr.with(
    language: "it",
    main-font: "PT Sans",

    metadata: (
      title: titolo,
      odg: odg,
      version: "Versione " + text(weight: "bold")[#versione],
      company-logo: image("../assets/loghi/GlitchHub-Team_LogoG.png", width: 75%),
      uni-logo: image("../assets/loghi/logo_unipd_scritta.jpg", width: 51%),
    ),

    custom-entries: (
      (key: "Stato", value: stato, index: 0),
      (
        key: "Partecipanti",
        value: for p in partecipanti {
          p + "\n"
        },
        index: 1,
      ),
      (
        key: "Distribuzione",
        value: for d in distribuzione {
          d + "\n"
        },
        index: 2,
      ),
    ),
    tipo-verbale: tipo-verbale,
    verificatore-interno: verificatore-interno,
    label-signature-left: [Firma del revisore interno],
    left-signature: left-signature,
    verificatore-esterno: verificatore-esterno,
    label-signature-right: [Firma del revisore esterno],
    right-signature: right-signature,
  )


  #pagebreak()
  #counter(page).update(1)

  #set page(
    header: [
      #set text(11pt, fill: secondary)
      #grid(
        columns: (1fr, 1fr),
        align(left)[
          #move(dy: 2pt)[
            #image("../assets/loghi/GlitchHub-Team_LogoP.png", height: 15pt)
          ]
        ],
        align(right)[
          #text(size: 12pt)[
            #titolo
          ]
        ],
      )
      #line(length: 100%, stroke: 0.5pt)
    ],
    footer: [
      #set text(12pt)
      #line(length: 100%)
      #v(0.5em)
      #align(center)[
        #context [
          Pagina #counter(page).display() di #counter(page).final().at(0)
        ]
      ]
    ],
  )

  #let nRegModifiche = registro-modifiche.len()
  #show table.cell.where(y: 0): strong
  #set table(
    align: (x, y) => (
      if x > 0 { center } else { left }
    ),
  )

  #block()[
    #text(size: 12pt, weight: "bold")[
      #h(0.5em)
      #heading(outlined: false, numbering: none)[Registro Modifiche]
      #h(0.5em)
    ]

    #table(
      columns: (0.1fr, 0.14fr, 0.22fr, 0.22fr, 0.32fr),
      align: left,
      stroke: (x, y) => (
        bottom: if y == 0 { 1pt + black } else { 0.8pt + black },
      ),
      table.header([*Ver.*], [*Data*], [*Autore*], [*Verificatore*], [*Descrizione*]),
      ..for (ver, data, autore, verificatore, descrizione) in registro-modifiche {
        ([#ver], [#data], [#autore], [#verificatore], [#descrizione])
      },
    )

  ]

  #pagebreak()

  #v(1em)
  #outline(indent: 1em)

  #pagebreak()

  #body
]
