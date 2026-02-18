#import "../../Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Glossario",
  stato: "Verificato",
  registro-modifiche: (
    (
      "0.3.1",
      "08/02/2026",
      "Elia Ernesto Stellin",
      "-",
      [Reinserimento dei collegamenti intra-documento e aggiunta di collegamenti vari]
    ),
    (
      "0.3.0",
      "07/02/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      "Aggiunta termini tecnici incontrati nello sviluppo del PoC e inserimento introduzione al documento",
    ),
    (
      "0.2.1",
      "23/01/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Sistemate alcune definizioni per compatibilità con automazione],
    ),
    (
      "0.2.0",
      "15/01/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Aggiunti termini relativi a GitHub, termini relativi a UC / Attori, termini relativi a gateway e termini relativi a sensori; Impostati link intra-documento],
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

/**
 * Crea un link intra-documento a un altro termine del glossario.
 * Parametri:
 *   term: il termine com'è scritto nella definizione del termine, case INSENSITIVE
 *   display: cosa mostrare al posto del termine esatto (può essere utile in caso di plurali o di leggere declinazioni della parola)
 */
#let ref-term = (term, display: none) => {
  if display == none { display = term }
  link(label(lower(term)), [*#display*])
}

= Introduzione
Il presente documento ha lo scopo di fornire una raccolta di termini e definizioni utilizzati nell'ambito del *progetto didattico*.

Il glossario ha lo scopo di raccogliere termini teorici e tecnici nell'ambito SWE associandone una definizione chiara e concisa adottata da tutto il gruppo.

Il documento è destinato ad essere un riferimento per tutti i membri del gruppo, fissando concetti chiave e terminologia comune, al fine di facilitare la comunicazione e la comprensione all'interno del progetto.

/**
 * NOTA: Per scrivere il glossario, modificare solamente il file src/glossary.json!!!
 * Non inserirli più qua, ma modificare solo il registro modifiche!
*/
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
    grouped.at(letter) = group.sorted(key: t => lower(t.term))
  }

  return grouped
}

#let grouped_terms = group_by_letter(glossary_terms)

#let parse_glossary_typst = (string) => {
  string = string.replace(
    regex("@\\{([^\\}]+)\\}\\{([^\\}]+)\\}"),
    (match) => "#ref-term(\"" + match.captures.at(0) + "\", display: \"" + match.captures.at(1)  + "\")"
  )
  .replace(
    regex("@\\{([^\\}]+)\\}"), 
    (match) => "#ref-term(\"" + match.captures.at(0) + "\")"
  )
  
  eval(string, mode: "markup", scope: (ref-term: ref-term))
}

#{
  for letter in grouped_terms.keys().sorted() {
    heading(level: 1)[#letter]
    v(0.5em)

    for entry in grouped_terms.at(letter) {
      block(
        inset: (left: 1.5em, bottom: 0.8em),
        [
          #heading(entry.term, outlined: false, depth: 2, numbering: none) #label(lower(entry.term))
          #text(size: 10pt)[#parse_glossary_typst(entry.definition)]
        ],
      )
    }
    v(1em)
  }
}
