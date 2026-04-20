#import "../../Templates/templateDocumentiGenerici.typ": *
#import "@preview/cmarker:0.1.2"

#show: report.with(
  titolo: "Manuale Utente",
  stato: "Verificato",
  registro-modifiche: (
    (
      "1.0.0",
      "20/04/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      [Approvazione versione stabile del documento],
    ),
    (
      "0.7.0",
      "20/04/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Stesura guida Dashboard Frontend (@dashboard-frontend)],
    ),
    (
      "0.6.1",
      "19/04/2026",
      "Alessandro Dinato",
      "Elia Ernesto Stellin",
      [Correzioni richieste in revisione: coerenza termini, aggiunta esecuzione test sistema e correzione Dashboard Backend in Cloud Backend],
    ),
    (
      "0.6.0",
      "16/04/2026",
      "Alessandro Dinato",
      "Elia Ernesto Stellin",
      [Stesura guida Dashboard Backend (@dashboard-backend)],
    ),
    (
      "0.5.0",
      "16/04/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Stesura sezione Guide Observability: Metriche del backend, Metriche di NATS, Metriche di JetStream],
    ),
    (
      "0.4.0",
      "15/04/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [Stesura sezione Glossario (@glossary), Introduzione, Preparazione del Sistema (@preparazione-sistema)],
    ),
    (
      "0.3.0",
      "14/04/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [Stesura sezione Esecuzione test (@esecuzione-test)],
    ),
    (
      "0.2.0",
      "12/04/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [Stesura sezione Concetti, Guide per microservizi Gateway e Data Consumer],
    ),
    (
      "0.1.0",
      "09/04/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Prima Stesura],
    ),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "PB-DocumentiEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-documento: "Manuale Utente",
)

#let is-inside-raw-typst(content, position) = {
  let i = 0
  while true {
    let start_rel = content.slice(i).position("<!--raw-typst")
    if start_rel == none {
      return false
    }
    let start = i + start_rel

    let end_rel = content.slice(start).position("-->")
    if end_rel == none {
      return false
    }
    let end = start + end_rel + 3 // -->

    if start < position and position < end {
      return true
    }

    i = end
    if i >= content.len() {
      return false
    }
  }
}

#let wrap-replacer(content, replacer) = {
  return match => if is-inside-raw-typst(content, match.start) {
    match.text
  } else {
    replacer(match)
  }
}

#let render(filepath, level) = {
  let base = ("../ManualeUtente/" + filepath).split("/").slice(0, -1).join("/")
  let content = read("../ManualeUtente/" + filepath)

  content = content
    .replace(regex(`(?m)^(#+.*)<([\w:\.]+)>\n`.text), match => (
      match.captures.first() + "<!--raw-typst <" + match.captures.at(1) + ">-->"
    ))
    .replace(regex(`\[([^\]]+)\]\(https://glitchhub-team\.github\.io/glossary\.html#[^\)]+\)`.text), match => (
      "#gloss(\"" + match.captures.at(0) + "\")"
    ))
    .replace(regex(`([^\s]+)\{\{\s*gloss\s*\}\}`.text), match => "#gloss(\"" + match.captures.at(0) + "\")")
    .replace(regex(`[^\s<]+<!--gloss\[[^\]]+\]-->`.text), match => {
      let text = match.text
      let open = text.position("<!--gloss[")
      let close = text.position("]-->")
      let inner = text.slice(open + 10, close)
      "#gloss(\"" + inner + "\")"
    })
    .replace(regex(`#gloss\[[^\]]+\]`.text), wrap-replacer(content, match => "<!--raw-typst " + match.text + "-->"))
    .replace(regex(`#gloss\("([^"]+)"\)`.text), wrap-replacer(content, match => "<!--raw-typst " + match.text + "-->"))

  cmarker.render(
    content,
    scope: (
      gloss: gloss,
      image: (path, width: 90%, height: auto, alt: none) => align(
        center,
        image(base + "/" + path, alt: alt, width: width, fit: "contain"),
      ),
    ),
    h1-level: level,
  )
}

#let walk_nav(data, level) = {
  for item in data {
    let value = item.values().at(0)
    if type(value) == str {
      render(value, level)
    } else {
      [
        #heading(item.keys().at(0), level: level)
        #label(lower(item.keys().at(0)))
      ]
      walk_nav(value, level + 1)
    }
  }
}

#walk_nav(yaml("../../../mkdocs.yml").nav, 1)
