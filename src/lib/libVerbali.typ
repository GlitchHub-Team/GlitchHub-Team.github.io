#let hwr(
  language: "en",
  main-font: "Poppins",
  // Main Metadata for the title page
  metadata: (
    paper_type: [],
    title: [PTB Template],
    version: none,
    university: none,
    odg: (),
    uni-logo: none,
    company-logo: none,
  ),
  custom-entries: (),
  tipo-verbale: "",
  verificatore-interno: "",
  label-signature-left: [],
  left-signature: "",
  verificatore-esterno: "",
  label-signature-right: [],
  right-signature: "",
  body,
) = {
  set page(numbering: none, number-align: center)
  set text(font: main-font, lang: language)

  // SETUP Title page
  let equal-spacing = 4.5em
  set align(center)

  // Logo settings
  v(equal-spacing)
  if metadata.at("uni-logo", default: none) != none and metadata.at("company-logo", default: none) != none {
    grid(
      columns: (1fr, 1fr),
      rows: auto,
      grid.cell(
        colspan: 1,
        align: center,
        metadata.uni-logo,
      ),
      grid.cell(
        colspan: 1,
        align: center,
        metadata.company-logo,
      ),
    )
  } else if metadata.at("company-logo", default: none) != none {
    grid(
      columns: 0.5fr,
      rows: auto,
      column-gutter: 100pt,
      row-gutter: 7pt,
      grid.cell(
        colspan: 1,
        align: center,
        metadata.company-logo,
      )
    )
  } else {
    grid(
      columns: 0.5fr,
      rows: auto,
      column-gutter: 100pt,
      row-gutter: 7pt,
      grid.cell(
        colspan: 1,
        align: center,
        metadata.at("uni-logo", default: image("template/images/header_logo.png", width: 46%)),
      ),
    )
  }
  v(equal-spacing)

  // Title settings
  let line-length = 90%
  text(1em, weight: 700, baseline: -13.5pt, metadata.at("paper_type", default: []))
  line(length: line-length)
  text(2em, weight: 900, metadata.title)
  line(length: line-length)

  // Author information.
  pad(
    top: 2.9em,
    text(
      1.3em,
      strong("Ordine del giorno"),
    ),
  )

  let odg = metadata.at("odg")
  align(center, block[
    #set align(left)
    #enum(..odg)
  ])

  v(0.6em, weak: true)
  $circle.filled.small$
  v(0.6em, weak: true)
  metadata.at("version", default: "Versione 1.0.0")
  v(0.6em, weak: true)
  metadata.at("university", default: "")

  v(equal-spacing)

  let merge-entries(defaults, customs) = {
    let base = defaults
    for entry in customs {
      let idx = entry.at("index", default: base.len())
      base.insert(idx, (entry.key, entry.value))
    }
    base
  }


  {
    let default-entries = ()

    let final-entries = merge-entries(default-entries, custom-entries)

    show table.cell.where(x: 0): strong
    table(
      columns: 2,
      stroke: none,
      inset: 10pt,
      align: (x, y) => (
        if x == 0 { right } else { left }
      ),
      column-gutter: 5%,
      ..final-entries.flatten()
    )
  }


  v(3 * equal-spacing)

  v(equal-spacing)

  set align(left)
  // END OF TITLE PAGE

  body

  pagebreak()

  table(
    columns: (50%, 50%),
    stroke: none,
    inset: (x: 20pt, y: 0pt),
    align: left,
    if left-signature != "" [
      #text(weight: "bold")[#verificatore-interno]
      #image(left-signature, height: 1.5cm),
    ],
    if right-signature != "" and tipo-verbale == "Esterno" [
      #text(weight: "bold")[#verificatore-esterno]
      #image(right-signature, height: 1.5cm),
    ],

    [#line(length: 100%)#label-signature-left],
    if tipo-verbale == "Esterno" [
      #line(length: 100%)#label-signature-right
    ],
  )
}
