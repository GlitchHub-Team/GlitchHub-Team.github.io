#import "./Templates/templateDocumentiGenerici.typ": report

#let glossary_terms = (
  (term: "IoT", definition: []),
  (term: "Back-end", definition: []),
  (term: "Cloud", definition: []),
  (term: "Git", definition: []),
  (term: "GitHub", definition: []),
  (term: "GitHub Actions", definition: []),
  (term: "LLM", definition: []),
  (term: "Bluetooth Low Energy (BLE)", definition: []),
  (term: "Tenant", definition: []),
  (term: "IoT Gateway", definition: []),
  (term: "API", definition: []),
  (term: "Google Cloud Platform", definition: []),
  (term: "Go", definition: []),
  (term: "NATS", definition: []),
  (term: "Apache Kafka", definition: []),
  (term: "Kubernetes", definition: []),
  (term: "Requisito", definition: []),
  (term: "Requisito utente", definition: []),
  (term: "Requisito software", definition: []),
  (term: "Committente", definition: []),
  (term: "Proponente", definition: []),
  (term: "Fornitore", definition: []),
  (term: "Dichiarazione degli impegni", definition: []),
  (term: "Lettera di candidatura", definition: []),
  (term: "Valutazione capitolati", definition: []),
  (term: "Capitolato d'appalto", definition: []),
  (term: "Analisi dei rischi", definition: []),
  (term: "Way of working", definition: []),
  (term: "Typst", definition: []),
  (term: "Way of working", definition: []),
  (term: "Discord", definition: []),
  (term: "ClickUp", definition: []),
  (term: "SemanticVersioning", definition: []),
  (term: "Pull Request", definition: []),
  (term: "GitHub Pages", definition: []),
  (term: "HTML", definition: []),
  (term: "Agile", definition: []),
  (term: "Scrum", definition: []),
  (term: "Sprint", definition: []),
  (term: "Sprint Backlog", definition: []),
  (term: "Product Backlog", definition: []),
  (term: "Sprint Planning", definition: []),
  (term: "Sprint Review", definition: []),
  (term: "Sprint Retrospective", definition: []),
  (term: "Daily Scrum", definition: []),
  (term: "On demand", definition: []),
  (term: "Proof of Concept", definition: []),
  (term: "Minimum Viable Product", definition: []),
  (term: "Requirements and Technology Baseline", definition: []),
  (term: "Product Baseline", definition: []),
  (term: "Repository", definition: []),
  (term: "UI", definition: []),
  (term: "UX", definition: []),
  (term: "RabbitMQ", definition: []),
  (term: "Framework", definition: []),
  (term: "Architettura serverless", definition: []),
  (term: "Requisiti funzionali", definition: []),
  (term: "Requisiti non funzionali", definition: []),
  (term: "Requisiti di sicurezza", definition: []),
  (term: "HTTPS", definition: []),
  (term: "MQTT", definition: []),
  (term: "SSL", definition: []),
  (term: "TLS", definition: []),
  (term: "GraphQL", definition: []),
  (term: "Node.js", definition: []),
  (term: "Nest.js", definition: []),
  (term: "Typescript", definition: []),
  (term: "MongoDB", definition: []),
  (term: "PostgreSQL", definition: []),
  (term: "Redis", definition: []),
  (term: "Angular", definition: []),
  (term: "SPA", definition: []),
  (term: "Micro-servizio", definition: []),
  (term: "CI/CD", definition: []),
  (term: "Test di integrazione", definition: []),
  (term: "Test multi-tenant", definition: []),
  (term: "Test di integrazione", definition: []),
  (term: "Test di sicurezza", definition: []),
  (term: "Test di scalabilità e carico", definition: []),
  (term: "Test di sincronizzazione cloud", definition: []),
  (term: "Unit test", definition: []),
  (term: "Code coverage", definition: []),
  (term: "Analisi dei requisiti", definition: []),
  (term: "Piano di progetto", definition: []),
  (term: "Piano di qualifica", definition: []),
  (term: "Architettura/Design", definition: []),
  (term: "Stakeholder", definition: []),
  (term: "Efficacia", definition: []),
  (term: "Efficienza", definition: []),
  (term: "Economicità", definition: []),
  (term: "Ciclo di vita", definition: []),
  (term: "Processo di ciclo di vita", definition: []),
  (term: "Modello di ciclo di vita", definition: []),
  (term: "Controllo di versione", definition: []),
  (term: "ISO/IEC 12207:1995", definition: []),
  (term: "PDSA Cycle", definition: []),
  (term: "Iterazione", definition: []),
  (term: "Incremento", definition: []),
  (term: "Prototipo", definition: []),
  (term: "Riuso", definition: []),
  (term: "Debito tecnico", definition: []),
  (term: "User story", definition: []),
  (term: "Milestone", definition: []),
  (term: "Baseline", definition: []),
  (term: "Consuntivo di periodo", definition: []),
  (term: "Consuntivo a finire", definition: []),
  (term: "Slack time", definition: []),
  (term: "Diagramma dei casi d'uso", definition: []),
  (term: "Diagramma delle classi", definition: []),
  (term: "Test Driven Development", definition: []),
  (term: "Verifica", definition: []),
  (term: "Validazione", definition: []),
  (term: "Norme di progetto", definition: []),
)

#show link: underline
#show: report.with(
  titolo: "Glossario",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1",
      "31/10/2025",
      "Alessandro Dinato",
      "-",
      "Creazione glossario",
    ),
  ),
  distribuzione: (
    "Pubblica",
  ),
  htmlId: "Glossario",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Glossario",
)

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
          #text(size: 11pt)[#entry.definition]
        ],
      )
    }
    v(1em)
  }
}
