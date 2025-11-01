#import "./Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Glossario",
  stato: "Bozza",
  versione: "0.0.2",
  registro-modifiche: (
    (
      "0.0.2",
      "1/11/2025",
      "Alessandro Dinato",
      "-",
      "Definizione termini tecnici glossario",
    ),
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

#let glossary_terms = (
  (
    term: "IoT",
    definition: [L'_Internet of Things_ è l'insieme di dispositivi fisici connessi a Internet (sensori, elettrodomestici, veicoli, wearable, macchinari industriali…) in grado di raccogliere, trasmettere e scambiare dati autonomamente.],
  ),
  (
    term: "Back-end",
    definition: [È la parte di un software che gestisce la logica applicativa, l'elaborazione dei dati e la comunicazione con database o servizi esterni. Inoltre gestisce l'autenticazione e l'autorizzazione dell'utente.],
  ),
  (
    term: "Cloud",
    definition: [Modello che permette di utilizzare risorse informatiche (server, database, servizi) tramite Internet senza gestire l'infrastruttura fisica.],
  ),
  (
    term: "Git",
    definition: [Sistema di _controllo di versione distribuito_ che permette di tracciare modifiche al codice e collaborare tra sviluppatori.],
  ),
  (
    term: "GitHub",
    definition: [Piattaforma online basata su *Git* per archiviare *repository*, collaborare sul codice e gestire progetti software.],
  ),
  (
    term: "GitHub Actions",
    definition: [Sistema di automazione integrato in *GitHub* che esegue pipeline *CI/CD*, test, build e deploy al verificarsi di eventi.],
  ),
  (
    term: "LLM",
    definition: [Un _Large Language Model_ è un modello di IA capace di comprendere e generare testo in linguaggio naturale, addestrato su grandi quantità di dati.],
  ),
  (
    term: "Bluetooth Low Energy (BLE)",
    definition: [Versione a basso consumo del Bluetooth, progettata per sensori e dispositivi *IoT* che richiedono comunicazioni energeticamente efficienti.],
  ),
  (
    term: "Tenant",
    definition: [In un sistema multi-tenant, è un cliente o gruppo di utenti che condivide la stessa piattaforma, ma con dati e accessi isolati dagli altri.],
  ),
  (
    term: "IoT Gateway",
    definition: [Sono hub a cui si collegano i dispositivi *IoT* per centralizzare le comunicazioni. Hanno il ruolo di comunicare con il cloud, pre-elaborare i dati, garantire sicurezza e integrità.],
  ),
  (
    term: "API",
    definition: [L'_Application Programming Interface_ è un'interfaccia che permette a due sistemi software di comunicare tramite richieste e risposte strutturate.],
  ),
  (
    term: "Google Cloud Platform",
    definition: [Piattaforma *cloud* di Google che fornisce servizi di computing, database, storage, machine learning, networking e molto altro.],
  ),
  (
    term: "Go",
    definition: [Linguaggio di programmazione ad alto livello, compilato e tipizzato staticamente. È utilizzato per applicazioni *back-end*, sistemi distribuiti e applicazioni ad alta concorrenza.],
  ),
  (
    term: "NATS",
    definition: [Sistema di messaggistica publish-subscribe ad alte prestazioni, leggero e distribuito, progettato per la comunicazione asincrona tra micro-servizi, applicazioni cloud-native e dispositivi IoT.],
  ),
  (
    term: "Apache Kafka",
    definition: [Piattaforma distribuita per lo streaming di dati progettata per elaborare flussi di eventi in tempo reale, basata su un modello publish-subscribe, con tolleranza ai guasti, scalabilità orizzontale e persistenza dei messaggi su disco.],
  ),
  (
    term: "Kubernetes",
    definition: [Orchestrator di container che automatizza deploy, scalabilità e gestione di applicazioni distribuite.],
  ),
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
  (
    term: "Typst",
    definition: [Linguaggio di markup moderno utilizzato per creare documenti in modo semplice e programmabile, simile a _LaTeX_ ma con sintassi più intuitiva.],
  ),
  (
    term: "Discord",
    definition: [Piattaforma di comunicazione che permette chat testuali, vocali e video, utilizzata spesso per la collaborazione tra gruppi di lavoro.],
  ),
  (
    term: "ClickUp",
    definition: [Strumento di project management che consente di organizzare task, documenti, obiettivi e comunicazione del team.],
  ),
  (
    term: "SemanticVersioning",
    definition: [Schema di versionamento software basato su tre numeri _MAJOR.MINOR.PATCH_ che indicano rispettivamente cambiamenti incompatibili, nuove funzionalità e correzioni di bug.],
  ),
  (
    term: "Pull Request",
    definition: [Richiesta formale di unire codice da un branch ad un altro in una repository *Git*, a seguito di una revisione.],
  ),
  (
    term: "GitHub Pages",
    definition: [Servizio di *GitHub* che permette di pubblicare siti web statici direttamente da una repository.],
  ),
  (
    term: "HTML",
    definition: [L'_HyperText Markup Language_ è il linguaggio usato per strutturare contenuti nelle pagine web.],
  ),
  (
    term: "Agile",
    definition: [Insieme di metodologie di sviluppo software basate su iterazioni brevi, collaborazione costante e adattamento continuo ai cambiamenti.],
  ),
  (
    term: "Scrum",
    definition: [Framework *Agile* che organizza il lavoro in *Sprint* e definisce ruoli ed eventi per migliorare la produttività del team.],
  ),
  (
    term: "Sprint",
    definition: [Periodo breve e definito a monte (solitamente 1-2 settimane) in cui il team sviluppa un incremento di prodotto, cercando di svuotare lo *Sprint Backlog*.],
  ),
  (
    term: "Sprint Backlog",
    definition: [Insieme di attività selezionate dal *Product Backlog* e pianificate per uno specifico *Sprint*.],
  ),
  (
    term: "Product Backlog",
    definition: [Lista ordinata delle funzionalità, requisiti e migliorie da implementare nel prodotto.],
  ),
  (
    term: "Sprint Planning",
    definition: [Riunione di inizio *Sprint* nella quale il team pianifica il lavoro da svolgere e gli obiettivi da raggiungere.],
  ),
  (
    term: "Sprint Review",
    definition: [Riunione di fine *Sprint* in cui il team mostra il lavoro svolto agli *stakeholder* e raccoglie feedback.],
  ),
  (
    term: "Sprint Retrospective",
    definition: [Riunione interna del team volta a migliorare il *way of working*. Durante l'incontro si analizza cosa non ha funzionato nello *Sprint* appena concluso e si discutono possibili azioni per migliorare il processo nei successivi.],
  ),
  (
    term: "Daily Scrum",
    definition: [Breve meeting quotidiano (circa 15 minuti) in cui il team sincronizza le attività e identifica eventuali impedimenti.],
  ),
  (
    term: "On-demand",
    definition: [Servizio o funzionalità disponibile su richiesta dell'utente e attivabile quando necessario.],
  ),
  (term: "Proof of Concept", definition: []),
  (term: "Minimum Viable Product", definition: []),
  (term: "Requirements and Technology Baseline", definition: []),
  (term: "Product Baseline", definition: []),
  (
    term: "Repository",
    definition: [Archivio di progetto che contiene codice, file e cronologia delle versioni, può essere gestito tramite un sistema di controllo versione come *Git*.],
  ),
  (
    term: "UI",
    definition: [La _User Interface_ è l'insieme degli elementi grafici e interattivi tramite cui l'utente interagisce con un'applicazione o un sito web.],
  ),
  (
    term: "UX",
    definition: [La _User Experience_ rappresenta l'esperienza complessiva dell'utente durante l'uso di un prodotto, considerando facilità d'uso, soddisfazione e percezione generale.],
  ),
  (
    term: "RabbitMQ",
    definition: [Message broker basato sul protocollo _AMQP_ (Advanced Message Queuing Protocol) che permette la comunicazione asincrona tra applicazioni o micro-servizi tramite code di messaggi.],
  ),
  (
    term: "Framework",
    definition: [Insieme di strumenti, librerie e regole che facilitano lo sviluppo software fornendo una struttura predefinita.],
  ),
  (
    term: "Architettura serverless",
    definition: [Modello di progettazione cloud in cui l'infrastruttura sottostante è completamente gestita dal provider. Permette esecuzione di funzioni on-demand, scalabilità automatica e fatturazione _pay-as-you-go_.],
  ),
  (
    term: "Requisiti funzionali",
    definition: [Specificano cosa il sistema deve fare: funzionalità, comportamenti e risposte a determinati input.],
  ),
  (
    term: "Requisiti non funzionali",
    definition: [Descrivono caratteristiche qualitative del sistema, come prestazioni, usabilità, sicurezza e affidabilità.],
  ),
  (
    term: "Requisiti di sicurezza",
    definition: [Vincoli e misure necessarie per garantire protezione dei dati, autenticazione, autorizzazione e continuità del servizio.],
  ),
  (
    term: "HTTPS",
    definition: [Protocollo di comunicazione sicura su Internet che estende HTTP tramite cifratura *TLS/SSL*, garantendo autenticità del server, integrità dei dati e riservatezza del traffico tra client e server.],
  ),
  (
    term: "MQTT",
    definition: [Protocollo di messaggistica leggero basato su publish-subscribe, ottimizzato per dispositivi *IoT* e reti con larghezza di banda limitata o instabili, con meccanismi di qualità del servizio (_QoS_) e mantenimento della connessione persistente.],
  ),
  (
    term: "SSL",
    definition: [Protocollo crittografico progettato per proteggere le comunicazioni online, oggi rimpiazzato dal *TLS*.],
  ),
  (
    term: "TLS",
    definition: [Protocollo crittografico che garantisce la sicurezza delle comunicazioni tra client e server su reti non sicure. Fornisce cifratura dei dati, integrità tramite checksum e autenticazione delle parti coinvolte.],
  ),
  (
    term: "GraphQL",
    definition: [Linguaggio di query per *API* che permette ai client di richiedere esattamente i dati necessari e ridurre l'_over-fetching_, ovvero la ricezione di dati non necessari],
  ),
  (
    term: "Node.js",
    definition: [Ambiente runtime *JavaScript* lato server, ottimizzato per applicazioni scalabili, event-driven e in tempo reale.],
  ),
  (
    term: "Nest.js",
    definition: [Framework modulare per *Node.js* che facilita la costruzione di applicazioni server robuste e scalabili con architettura strutturata.],
  ),
  (
    term: "Typescript",
    definition: [Linguaggio basato su *JavaScript* con tipizzazione statica, utile per ridurre errori e migliorare manutenzione del codice.],
  ),
  (
    term: "MongoDB",
    definition: [Database *NoSQL* orientato ai documenti, flessibile e adatto a grandi quantità di dati non strutturati.],
  ),
  (
    term: "PostgreSQL",
    definition: [Database relazionale open-source con supporto completo a transazioni _ACID_ e capacità di gestire grandi volumi di dati con elevata affidabilità e performance.],
  ),
  (
    term: "Redis",
    definition: [Database in-memory ad alte prestazioni utilizzato per caching, gestione delle sessioni e code di messaggi.],
  ),
  (
    term: "Angular",
    definition: [Framework front-end sviluppato da Google per creare applicazioni web complesse e modulari, è un framework opinionated.],
  ),
  (
    term: "SPA",
    definition: [Una _Single Page Application_ è un'applicazione web che carica una sola pagina e aggiorna dinamicamente i contenuti senza ricarichi completi.],
  ),
  (
    term: "Micro-servizio",
    definition: [Architettura in cui un'applicazione è suddivisa in servizi indipendenti che comunicano tramite *API* o messaggi.],
  ),
  (
    term: "Test di integrazione",
    definition: [Verificano che più componenti o servizi del sistema funzionino correttamente insieme.],
  ),
  (
    term: "Test multi-tenant",
    definition: [Test che verificano isolamento dei dati e corretto funzionamento di un sistema con più tenant.],
  ),
  (
    term: "Test di integrazione",
    definition: [Test che controllano interazioni tra moduli software, database o servizi esterni.],
  ),
  (
    term: "Test di sicurezza",
    definition: [Verificano che il sistema protegga dati e accessi da vulnerabilità o minacce.],
  ),
  (
    term: "Test di scalabilità e carico",
    definition: [Misurano come il sistema si comporta sotto traffico elevato e quanto riesce a scalare.],
  ),
  (
    term: "Test di sincronizzazione cloud",
    definition: [Controllano che i dati rimangano coerenti tra dispositivi, server e servizi cloud.],
  ),
  (term: "Unit test", definition: [Test che verificano singole funzioni o componenti in modo isolato.]),
  (
    term: "Code coverage",
    definition: [Percentuale di codice coperta dai test automatici, indica quanto è testata l'applicazione.],
  ),
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
  (
    term: "Docker",
    definition: [Piattaforma che permette di creare, distribuire e eseguire applicazioni all'interno di container isolati, garantendo portabilità tra diversi ambienti.],
  ),
  (
    term: "NoSQL",
    definition: [Categoria di database non relazionali progettati per archiviare e gestire grandi quantità di dati non strutturati o semi-strutturati.],
  ),
  (
    term: "JavaScript",
    definition: [Linguaggio di programmazione interpretato, usato principalmente per lo sviluppo web lato client e lato server, per rendere interattive le pagine e le applicazioni.],
  ),
  (
    term: "CI",
    definition: [La _Continuous Integration_ è una pratica di sviluppo software in cui le modifiche al codice vengono integrate frequentemente nel repository principale, eseguendo automaticamente build e test per individuare problemi precocemente.],
  ),
  (
    term: "CD",
    definition: [
      La _Continuous Delivery/Continuous Deployment_ è un insieme di pratiche che automatizzano il rilascio del software.
      - *Continuous Delivery*: il codice è sempre pronto per essere rilasciato in produzione, ma il deploy avviene manualmente.
      - *Continuous Deployment*: ogni modifica che passa i test automatici viene rilasciata automaticamente in produzione.
    ],
  ),
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
          #text(size: 10pt)[#entry.definition]
        ],
      )
    }
    v(1em)
  }
}
