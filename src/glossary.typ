#import "./Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Glossario",
  stato: "Da verificare",
  versione: "0.1.2",
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
  (
    term: "Requisito",
    definition: [Una capacità di cui un _utente_ ha bisogno per raggiungere un _obiettivo_ (lato bisogno), oppure una capacità che un _sistema_ deve possedere per rispondere ad un'_aspettativa_(lato soluzione).],
  ),
  (
    term: "Requisito utente",
    definition: [Una capacità di cui un _utente_ ha bisogno per raggiungere un _obiettivo_ (lato bisogno). Il capitolato specifica le aspettative del *proponente* fissate nella fase di studio del problema.],
  ),
  (
    term: "Requisito software",
    definition: [Una capacità che un _sistema_ deve possedere per rispondere ad un'_aspettativa_ (lato soluzione). L'*analisi dei requisiti* esplora il punto di vista lato soluzione, ovvero ciò che il prodotto deve fare per soddisfare i bisogni.],
  ),
  (
    term: "Committente",
    definition: [Nel _Progetto Didattico_ lo sono i docenti ed hanno lo scopo di: misurare il progresso con due revisioni, regolare il Progetto Didattico e valutarlo],
  ),
  (
    term: "Proponente",
    definition: [È l'azienda che presenta un capitolato e richiede lo sviluppo di un prodotto software. Definisce aspettative, requisiti, e funzionalità. Segue e aiuta nel processo di sviluppo (offre chiarimenti, supporto tecnico e feedback).],
  ),
  (
    term: "Fornitore",
    definition: [È il singolo gruppo che si aggiudica il capitolato. Il suo obiettivo è rispettare vincoli e aspettative del progetto producendo la documentazione necessaria e il prodotto software richiesto dal *proponente*.],
  ),
  (
    term: "Dichiarazione degli impegni",
    definition: [Documento redatto in fase di candidatura del gruppo presso un *capitolato d'appalto*. Contiene l'analisi dei ruoli e dei rischi, la divisione delle risorse e il preventivo costi.],
  ),
  (
    term: "Lettera di candidatura",
    definition: [Lettera formale rivolta ai committenti, in cui il gruppo dichiara ufficialmente la candidatura verso un *capitolato d'appalto* specifico.],
  ),
  (
    term: "Valutazione capitolati",
    definition: [Documento in cui il gruppo, secondo i pareri dei diversi componenti, elabora un pensiero comune riguardo ogni *capitolato d'appalto*],
  ),
  (
    term: "Capitolato d'appalto",
    definition: [Documento redatto dai *proponenti* con lo scopo di esporre il prodotto richiesto. Esso contiene vincoli, suggerimenti e aspettative (*requisiti utente*)],
  ),
  (
    term: "Way of working",
    definition: [Rappresenta l'insieme di pratiche volte a rendere l'organizzazione delle attività di progetto _il più professionale possibile_. Deve essere incrementale nel tempo e includere sempre le nuove attività nelle norme prima della loro attuazione.],
  ),
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
  (
    term: "Proof of Concept",
    definition: [Artefatto realizzato ad inizio progetto con lo scopo di valutare la _fattibilità tecnologica_ del prodotto atteso. Deve rappresentare le richieste principali del capitolato.],
  ),
  (
    term: "MVP",
    definition: [Il _Minimum Viable Product_ è un'approssimazione del prodotto atteso dal *proponente*, dotata di funzionalità minime ma sufficienti a essere testata e valutare la bontà della visione iniziale.],
  ),
  (
    term: "RTB",
    definition: [La _Requirements and Technology Baseline_ è una fase del *Progetto Didattico* che fissa in modo stabile i requisiti da soddisfare, concordati con il proponente, e motiva le tecnologie, i framework e le librerie scelti. È supportata dal *Proof of Concept*.],
  ),
  (
    term: "PB",
    definition: [La _Product Baseline_ valuta la maturità della baseline architetturale del software e la sua realizzazione, includendo il design definitivo nel documento di *Specifica Tecnica*. È presente un avanzamento sostanziale del prodotto software che viene sottoposto al proponente(come *MVP*) per valutarne qualità e adeguatezza.],
  ),
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
  (
    term: "Analisi dei requisiti",
    definition: [È l'attività che studia i bisogni dell'utente e del dominio d'uso per definire che cosa il prodotto software deve fare per soddisfarli, senza descrivere come sarà realizzato. Produce una specifica _completa_, _verificabile_ e _tracciabile_ dei requisiti del sistema(lato soluzione).],
  ),
  (
    term: "Piano di progetto",
    definition: [Documento gestionale che pianifica tempi, costi, risorse e rischi del progetto. Serve a monitorare l'avanzamento confrontando *preventivo* e *consuntivo*, e a ricalibrare le attività in corso d'opera.],
  ),
  (
    term: "Piano di qualifica",
    definition: [Documento gestionale che descrive come verranno svolte *Verifica* e *Validazione*, fissando gli obiettivi di qualità, le metriche e gli strumenti di controllo.],
  ),
  (
    term: "Architettura/Design",
    definition: [Descrive come il sistema è organizzato internamente: componenti, interazioni e tecnologia scelta. Indica come verranno soddisfatti i requisiti software. Ne è responsabile il _progettista_],
  ),
  (
    term: "Stakeholder",
    definition: [Chiunque abbia interesse nel progetto: committente, proponente, utenti finali, fornitore e figure che influenzano requisiti e valutazioni.],
  ),
  (
    term: "Efficacia",
    definition: [Misura della capacità di un prodotto o processo di raggiungere gli obiettivi prefissati.],
  ),
  (
    term: "Efficienza",
    definition: [Misura di capacità di ottenere un risultato usando il minor numero possibile di risorse.],
  ),
  (
    term: "Economicità",
    definition: [È la combinazione tra *efficacia* e *efficienza*, ovvero l'equilibrio tra costi sostenuti, risorse impiegate e risultati ottenuti, con l'obiettivo di minimizzare sprechi o spese inutili.],
  ),
  (
    term: "Ciclo di vita",
    definition: [Insieme delle fasi attraversate da un prodotto software: _concezione_, _sviluppo_, _utilizzo_ e _ritiro_.],
  ),
  (
    term: "Processo di ciclo di vita",
    definition: [Sono l'insieme di attività che guidano, secondo best practice, un cambio di fase all'interno di un prodotto software(es: concezione -> sviluppo). Un processo è composto da attività _correlate_ e _coese_ che trasformano _bisogni_ in _prodotti_ , secondo _regole definite_, consumando _risorse_ nel farlo],
  ),
  (
    term: "Modello di ciclo di vita",
    definition: [Descrivono gli stati e le transizioni che caratterizzano lo sviluppo di un prodotto software, indicando quali processi devono essere attivati. Permettono di pianificare, organizzare ed eseguire il lavoro in modo strutturato, aiutando a studiare, comprendere, misurare e trasformare il sistema in sviluppo.],
  ),
  (
    term: "Controllo di versione (VCS)",
    definition: [Sistema che registra la storia delle modifiche ai file, permettendo collaborazione, tracciamento e ripristino di versioni precedenti.],
  ),
  (
    term: "ISO/IEC 12207:1995",
    definition: [Standard internazionale che definisce i processi primari del ciclo di vita del software: _analisi_, _progettazione_, _realizzazione_ e _manutenzione_.],
  ),
  (
    term: "PDSA Cycle",
    definition: [Ciclo _Plan-Do-Study-Act_: modello iterativo di miglioramento continuo basato su pianificazione, esecuzione, studio dei risultati ed eventuale correzione iterando nuovamente. A seguito dello studio dei risultati può esserci l'adozione o l'abbandono della misura messa in atto.],
  ),
  (
    term: "Iterazione",
    definition: [Passaggio che comprende raffinamenti o rivisitazioni a scopo _distruttivo_, tornando indietro nell'avanzamento del progetto.],
  ),
  (
    term: "Incremento",
    definition: [Aggiunta rilasciabile che estende il prodotto rispetto alla versione precedente(scopo _costruttivo_).],
  ),
  (
    term: "Prototipo",
    definition: [Versione semplificata del sistema o di una funzionalità con lo scopo di aiutare la scelta delle soluzioni da adottare nel prodotto finale.],
  ),
  (
    term: "Riuso",
    definition: [Pratica che consiste nell'impiegare componenti, codice o documenti già esistenti per ridurre tempi di sviluppo e rischi. Quanto più basso è il _costo di adozione_ e l'impatto sul workflow maggiore è la frequenza di riuso.],
  ),
  (
    term: "Debito tecnico",
    definition: [Conseguenza di scelte di sviluppo o di design che privilegiano la velocità iniziale a scapito della qualità, richiedendo iterazioni future per correggerle.],
  ),
  (
    term: "User story",
    definition: [Breve descrizione di una funzionalità significativa dal punto di vista dell'utente finale, che specifica _cosa_ l'utente vuole ottenere con la funzionalità e _perché_.],
  ),
  (
    term: "Milestone",
    definition: [Traguardo intermedio o punto di controllo in un progetto, che segna il completamento di una fase importante del lavoro. Il raggiungimento di una _milestone_ è generalmente associato alla realizzazione di una *baseline* che soddisfa i requisiti previsti fino a quel punto.],
  ),
  (
    term: "Baseline",
    definition: [Versione approvata di un prodotto (software, documentazione o loro insieme) che può essere modificata solo tramite procedure formali di controllo delle modifiche. Ogni _baseline_ è sottoposta a controllo di versione e di configurazione e serve come riferimento stabile per il progresso del progetto.],
  ),
  (
    term: "Consuntivo di periodo",
    definition: [
      È una sezione nel *Piano di Progetto* nel quale viene analizzato lo sprint appena terminato, riportando le attività svolte, gli eventuali scostamenti e i rischi occorsi, con il relativo impatto e le azioni di mitigazione adottate.
      L'analisi generica dello sprint appena svolto si chiama *retrospettiva di periodo*.
    ],
  ),
  (
    term: "Retrospettiva",
    definition: [
      Riunione interna al team con valutazione _qualitativa_. Durante l'incontro si analizza cosa è andato bene o male e si discutono possibili correzioni.
    ],
  ),
  (
    term: "Preventivo a finire",
    definition: [È una sezione del *Piano di Progetto* nel quale si descrivono le attività pianificate per lo sprint successivo e la stima delle risorse necessarie.],
  ),
  (
    term: "Slack time",
    definition: [Margine di ritardo tollerabile senza compromettere scadenze successive.],
  ),
  (
    term: "Diagramma dei casi d'uso",
    definition: [Diagramma UML che descrive le interazioni tra _attori_ e _sistema_ evidenziando cosa può essere richiesto al software.],
  ),
  (
    term: "Diagramma delle classi",
    definition: [Diagramma UML che mostra le classi del sistema, attributi, metodi e relazioni strutturali.],
  ),
  (
    term: "Test Driven Development",
    definition: [Tecnica di sviluppo in cui prima si scrivono i test, poi il codice necessario a soddisfarli ed infine si ristruttura il codice. Garantisce verificabilità e qualità],
  ),
  (
    term: "Verifica",
    definition: [Accertamento che lo sviluppo non introduca errori e rispetti i *requisiti software*. Pratica che si svolge lungo tutto il periodo di progetto.],
  ),
  (
    term: "Validazione",
    definition: [Accertamento che il prodotto finale soddisfi le attese degli *stakeholder*. Il fornitore dimostra che tutti i *requisiti utente* siano soddisfatti con il collaudo del prodotto.],
  ),
  (
    term: "Norme di progetto",
    definition: [Documento esecutivo interno al gruppo che definisce procedure, regole e strumenti per organizzare il lavoro in modo professionale e ripetibile.],
  ),
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
  (
    term: "Documento incrementale",
    definition: [Documento che viene redatto e aggiornato progressivamente insieme all'avanzamento del progetto. Può contenere inizialmente sezioni vuote e incomplete e ogni versione stabile include solo le parti effettivamente compilate e verificate. Viene pubblicato man mano tramite versioni aggiornate],
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
