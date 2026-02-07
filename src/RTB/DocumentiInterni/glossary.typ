#import "../../Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Glossario",
  stato: "Verificato",
  registro-modifiche: (
    (
      "0.2.0",
      "07/02/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      "Aggiunta termini tecnici incontrati nello sviluppo del PoC e inserimento introduzione al documento",
    ),
    (
      "0.1.3",
      "28/11/2025",
      "Alessandro Dinato",
      "Riccardo Graziani",
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
  htmlId: "RTB-DocumentiInterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-documento: "Glossario",
)

= Introduzione
Il presente documento ha lo scopo di fornire una raccolta di termini e definizioni utilizzati nell'ambito del *progetto didattico*.

Il glossario ha lo scopo di raccogliere termini teorici e tecnici nell'ambito SWE associandone una definizione chiara e concisa adottata da tutto il gruppo.

Il documento è destinato ad essere un riferimento per tutti i membri del gruppo, fissando concetti chiave e terminologia comune, al fine di facilitare la comunicazione e la comprensione all'interno del progetto.



#let glossary_terms = json("../../glossary.json")

#let group_by_letter(terms) = {
  let grouped = (:)

  for entry in terms {
    let first_letter = upper(entry.term.at(0))
    if first_letter not in grouped {
      grouped.insert(first_letter, ())
    }
    grouped.at(first_letter).push(entry)
  }

  for (letter, group) in grouped {
    grouped.at(letter) = group.sorted(key: t => t.term)
  }

  return grouped
}

#let grouped_terms = group_by_letter(glossary_terms)

#{
  for letter in grouped_terms.keys().sorted() {
    heading(level: 1)[#letter]
    v(0.5em)

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
