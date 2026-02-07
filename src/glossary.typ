#import "./Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Glossario",
  stato: "Da verificare",
  versione: "0.1.3",
  registro-modifiche: (
    (
      "0.1.3",
      "28/11/2025",
      "Alessandro Dinato",
      "-",
      "Correzione consuntivo di periodo e preventivo a finire",
    ),
    (
      "0.1.2",
      "28/11/2025",
      "Siria Salvalaio",
      "Hossam Ezzemouri",
      "Aggiunta definizione",
    ),
    (
      "0.1.1",
      "4/11/2025",
      "Michele Dioli",
      "Alessandro Dinato",
      "Sistemate alcune definizioni",
    ),
    (
      "0.1.0",
      "3/11/2025",
      "Alessandro Dinato",
      "Michele Dioli",
      "Definizione termini specificati a lezione",
    ),
    (
      "0.0.2",
      "1/11/2025",
      "Alessandro Dinato",
      "Michele Dioli",
      "Definizione termini tecnici glossario",
    ),
    (
      "0.0.1",
      "31/10/2025",
      "Alessandro Dinato",
      "Michele Dioli",
      "Creazione glossario",
    ),
  ),
  distribuzione: (
    "Pubblica",
  ),
  htmlId: "Glossario",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-documento: "Glossario",
)

#let glossary_terms = json("glossary.json")

// Function to group terms by first letter
#let group_by_letter(terms) = {
  let grouped = (:)

  for entry in terms {
    let first_letter = upper(entry.term.at(0))
    if first_letter not in grouped {
      grouped.insert(first_letter, ())
    }
    grouped.at(first_letter).push(entry)
  }

  // Sort terms within each group
  for (letter, group) in grouped {
    grouped.at(letter) = group.sorted(key: t => t.term)
  }

  return grouped
}

#let grouped_terms = group_by_letter(glossary_terms)

// Display glossary grouped by letter
#{
  for letter in grouped_terms.keys().sorted() {
    // Letter heading
    heading(level: 1)[#letter]
    v(0.5em)

    // Terms under this letter
    for entry in grouped_terms.at(letter) {
      block(
        inset: (left: 1.5em, bottom: 0.8em),
        [
          *#entry.term* \
          #text(size: 10pt)[#entry.definition]
        ],
      )
    }
    v(1em)
  }
}
