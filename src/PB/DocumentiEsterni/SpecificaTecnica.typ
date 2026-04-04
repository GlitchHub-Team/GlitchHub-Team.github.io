#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline


#let tabella-paginata(contenuto, didascalia, label-id: none) = {
  [
    #show figure.caption: none
    #figure(
      kind: table,
      caption: didascalia,
      outlined: true,
      gap: 0em,
      [],
    )
    #if label-id != none { label(label-id) }
  ]

  align(center, contenuto)


  align(center)[
    #v(0.5em)
    #context [
      #let n = counter(figure.where(kind: table)).display()
      #text[Tabella #n: #didascalia]
    ]
  ]
}

#show: report.with(
  titolo: "Specifica Tecnica",
  stato: "Bozza",
  registro-modifiche: (
    (
      "0.5.0",
      "03/04/2026",
      "Alessandro Dinato",
      "-",
      [Code diagram del Data Consumer],
    ),
    (
      "0.4.1",
      "17/03/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Applicazione correzioni nate dalla verifica],
    ),
    (
      "0.4.0",
      "17/03/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Prima stesura aggiornamento tecnologie e versioni],
    ),
    (
      "0.3.1",
      "17/03/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Applicazione modifiche richieste in verifica],
    ),
    (
      "0.3.0",
      "16/03/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Prima stesura dei paragrafi di architettura System Context, Container, Component e Deployment],
    ),
    (
      "0.2.0",
      "03/03/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Inizio stesura sezione @design-pattern],
    ),
    (
      "0.1.0",
      "02/03/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Piccole modifiche suggerite dal verificatore e stesura sezione @archit-deploy],
    ),
    (
      "0.0.1",
      "01/03/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Bozza struttura documento, sezioni @introduzione, @riferimenti e inizio @tecnologie],
    ),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "PB-DocumentiEsterni",
  verificatore-interno: "Elia Ernesto Stellin",
  left-signature: "../assets/firme/firma_Elia_Ernesto_Stellin.jpg",
  tipo-documento: "Specifica tecnica",
)

#outline(
  title: "Indice delle tabelle",
  target: figure.where(kind: table),
)

#outline(
  title: "Indice delle figure",
  target: figure.where(kind: image),
)

#pagebreak()


= Introduzione <introduzione>
== Scopo del documento
Il presente documento definisce in modo analitico l'architettura del sistema software, offrendo una scomposizione accurata delle sue componenti, delle logiche di interazione e della loro distribuzione nel sistema. Esso è il sostegno progettuale per la fase di realizzazione, garantendo continuità con i risultati ottenuti nel #gloss("PoC") e introducendo accorgimenti necessari per elevare il grado di maturità e robustezza architetturale.

In particolare il documento si occupa di:
- *Architettura Logica e Deployment*: analisi delle componenti, delle loro interconnessioni e della loro collocazione in fase di esecuzione.
- *Pattern e Idiomi*: descrizione dei criteri di design utilizzati e delle soluzioni a basso livello scelte per ottimizzare il codice.
- *Dettaglio Progettuale*: approfondimento delle scelte tecniche volte a massimizzare la comprensione e la manutenibilità del sistema.

== Glossario
Il #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/glossary.pdf")[*glossario*] è un documento redatto dal gruppo e aggiornato nell'arco del progetto didattico, con lo scopo di fornire definizioni coerenti per i termini tecnici e quelli specifici relativi al corso di Ingegneria del Software.

Questo documento è fondamentale per garantire una comprensione uniforme della documentazione prodotta ai lettori esterni dal gruppo e per definire un riferimento interno al gruppo, riducendo possibili ambiguità interpretative.

Per indicare che la definizione di una parola o di un concetto è disponibile, si è deciso di utilizzare la seguente notazione:
#gloss[definizione nel glossario].

== Riferimenti <riferimenti>
=== Riferimenti normativi
- *Capitolato d'appalto C7*:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf",
    )[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf] \
  - *Ultimo accesso*: 01/03/2026
- *Norme di Progetto v1.3.0*:
  - #link(
      "https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf",
    )[https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf] \
  - *Ultimo accesso*: 01/03/2026

=== Riferimenti informativi
- *Modello C4*:
  - #link("https://c4model.com/")[https://c4model.com/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[Go]*:
  - #link("https://go.dev/doc/")[https://go.dev/doc/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[Typescript]*:
  - #link("https://www.typescriptlang.org/docs/")[https://www.typescriptlang.org/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[Gin]*:
  - #link("https://gin-gonic.com/en/docs/")[https://gin-gonic.com/en/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio TimescaleDB*:
  - #link("https://docs.timescale.com/")[https://docs.timescale.com/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[NATS]*:
  - #link("https://docs.nats.io/")[https://docs.nats.io/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[Docker]*:
  - #link("https://docs.docker.com/")[https://docs.docker.com/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[Grafana]*:
  - #link("https://grafana.com/docs/")[https://grafana.com/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio #gloss[Prometheus]*:
  - #link("https://prometheus.io/docs/introduction/overview/")[https://prometheus.io/docs/introduction/overview/]
  - *Ultimo accesso*: 01/03/2026
//altro?

#pagebreak()

= Tecnologie <tecnologie>
Per lo sviluppo del sistema abbiamo scelto uno stack tecnologico moderno e solido, selezionando ogni strumento con l'obiettivo di supportare bene un'architettura a microservizi che sia facile da gestire e capace di crescere nel tempo. Le nostre scelte sono state condotte dalla necessità di creare un'infrastruttura per la gestione dei dati IoT che funzioni bene anche sotto carico, garantendo che il flusso di informazioni dai sensori BLE sia sempre veloce e affidabile.

Di seguito si trovano l'elenco dei componenti scelti, con breve spiegazione delle loro caratteristiche principali.
//TODO aggiungere le versioni dei linguaggi
//TODO: aggiungere goroutine al glossario
== Linguaggi e ambienti di programmazione
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Go],
    [1.26.0],
    [#gloss[Go] è un linguaggio compilato e staticamente tipizzato che combina semplicità sintattica e prestazioni di alto livello in contesti distribuiti. La sua gestione nativa della concorrenza permette di eseguire numerosi processi simultanei con un consumo minimo di risorse hardware. Nel progetto viene utilizzato per realizzare il #gloss[Gateway] simulato, in cui diverse #gloss[goroutine] operano in parallelo per emulare il comportamento simultaneo dei sensori #gloss[BLE]. È inoltre impiegato per lo sviluppo del Data consumer, incaricato di processare i flussi dati in ingresso, e per il Backend della dashboard, garantendo velocità e scalabilità nella gestione delle richieste #gloss[API] del #gloss[Cloud] Layer.],

    [Typescript],
    [],
    [#gloss[TypeScript] è un superset tipizzato di #gloss[JavaScript] che introduce il controllo statico dei tipi, migliorando drasticamente la leggibilità e la manutenibilità del codice. Compila in #gloss[JavaScript] standard, garantendo piena compatibilità con l'ecosistema #gloss[Node.js] e i browser moderni. Viene adottato per lo sviluppo dei microservizi e del frontend #gloss[Angular], poiché permette di rilevare errori in fase di scrittura, assicurando la robustezza e la qualità del codice necessarie per superare i test di validazione richiesti dal capitolato],

    [Node.js],
    [20.19.0],
    [#gloss[Node.js] è un ambiente di runtime open-source e multipiattaforma basato sul motore V8 di Google, progettato per l'esecuzione di codice #gloss[JavaScript] lato server. Grazie al suo modello di I/O non bloccante e orientato agli eventi, garantisce un'elevata efficienza nella gestione di connessioni simultanee con un overhead minimo. Nel progetto viene utilizzato come base per l'esecuzione dei microservizi e per la gestione delle dipendenze tramite #gloss[npm], assicurando un ambiente stabile e scalabile per l'integrazione dei diversi componenti del sistema e la comunicazione con il #gloss[Cloud] Layer.],

    [npm],
    [10.8.2],
    [npm (Node Package Manager) è il gestore di pacchetti predefinito per l'ecosistema #gloss[Node.js]. Fornisce un registro pubblico di librerie e strumenti JavaScript e un client da riga di comando che permette di installare, aggiornare, pubblicare e gestire dipendenze all'interno di un progetto.],
  ),
  [Linguaggi e ambienti di programmazione.],
  label-id: "ling-progr",
)\

== Framework per la codifica per il backend della dashboard
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Gin],
    [1.11.0],
    [#gloss[Gin] è un framework web HTTP ad alte prestazioni per Go che sfrutta un router ottimizzato per garantire velocità di esecuzione superiori e un utilizzo ridotto di risorse. Offre funzionalità predefinite per la gestione di middleware e la validazione dei dati, accelerando lo sviluppo di interfacce affidabili. È stato scelto per implementare le #gloss[API] e la logica backend del #gloss[Cloud] Layer, assicurando risposte rapide alle richieste degli utenti e un'integrazione fluida tra i vari servizi del sistema.],
    //[fx?], [], [],
  ),
  [Framework per la codifica per il backend della dashboard.],
  label-id: "framework-codifica",
)\

== Framework per lo sviluppo del frontend
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Angular],
    [21.0],
    [#gloss[Angular] è un framework open-source per lo sviluppo di applicazioni web Single Page #gloss[SPA]. Utilizza un'architettura basata su componenti che garantisce modularità e manutenibilità del codice. Viene impiegato per la realizzazione dell'interfaccia utente della dashboard, permettendo la visualizzazione in tempo reale dei dati acquisiti dai sensori e la configurazione semplificata di nuovi gateway o sensori simulati.],
  ),
  [Framework per lo sviluppo del frontend.],
  label-id: "framework-frontend",
)\

== Tecnologie per la gestione di dati temporali
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [TimescaleDB],
    [2.25.2-pg18],
    [#gloss[TimescaleDB] è un database open-source per serie temporali costruito su #gloss[PostgreSQL], che ottimizza l'archiviazione e la velocità di interrogazione di dati indicizzati nel tempo. La sua architettura permette di gestire grandi volumi di informazioni mantenendo la piena compatibilità con il linguaggio SQL. È stato scelto per archiviare i dati provenienti dai sensori #gloss[BLE], garantendo l'ingestione rapida e la persistenza necessarie per il monitoraggio in tempo reale e le analisi storiche previste dal sistema.],

    [SQLite],
    [3.51.2],
    [SQLite è un motore di database relazionale leggero, autonomo e basato su file, progettato per essere incorporato direttamente nelle applicazioni senza richiedere un server esterno. Utilizza un singolo file come archivio dati e implementa gran parte dello standard SQL, offrendo un database transazionale, affidabile e altamente portabile.],

    [PostgreSQL],
    [18.3],
    [#gloss[PostgreSQL] è un sistema di gestione di database relazionali open‑source e progettato per garantire affidabilità, estensibilità e conformità ACID. È noto per la sua robustezza, la ricchezza delle funzionalità e la capacità di gestire carichi di lavoro complessi in ambienti enterprise, nonché dati complessi e query analitiche avanzate. Nel progetto viene utilizzato come motore di persistenza principale nel #gloss[Cloud] Layer, sfruttando la sua architettura robusta per garantire l'integrità dei dati e la scalabilità necessaria a gestire l'archiviazione a lungo termine delle informazioni.],
  ),
  [Tecnologie per la gestione di dati temporali.],
  label-id: "tecn-dati-temp",
)\

== Tecnologie per la comunicazione e messaggistica
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [NATS],
    [2.12.5],
    [#gloss[NATS] è un message broker e sistema di messaggistica distribuito ad alte prestazioni, progettato per lo scambio di dati rapido e affidabile tra servizi indipendenti. La sua architettura leggera supporta modelli di comunicazione asincrona, garantendo bassa latenza e alta scalabilità nel transito delle informazioni. È stato selezionato per orchestrare il flusso di dati tra i microservizi del #gloss[Cloud] Layer, assicurando uno smistamento efficiente dei pacchetti provenienti dai #gloss[gateway] verso i sistemi di persistenza e monitoraggio.],

    [nsc],
    [2.12.0],
    [nsc è lo strumento ufficiale per la gestione delle identità, delle autorizzazioni e delle configurazioni di sicurezza nell'ecosistema NATS. Permette di creare e amministrare operatori, account, utenti, chiavi e JWT utilizzati dal sistema di autenticazione e autorizzazione di NATS],
  ),
  [Tecnologie per la comunicazione e messaggistica.],
  label-id: "tecn-com-mess",
)\

== Tecnologie per la virtualizzazione e deployment
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Docker],
    [],
    [#gloss[Docker] è una piattaforma di containerizzazione che permette di pacchettizzare i microservizi e le loro dipendenze in unità isolate e portatili. Garantisce che il software funzioni in modo identico in ogni ambiente, eliminando i problemi di configurazione tra sviluppo e produzione. È stato scelto per semplificare il deployment dell'infrastruttura #gloss[Cloud] e facilitare l'orchestrazione dei servizi, assicurando la scalabilità e la manutenibilità richieste dal capitolato.],

    [Ubuntu],
    [24.04 LTS],
    [Ubuntu è una distribuzione #gloss[Linux] basata su Debian, scelta come immagine di base per la containerizzazione dei microservizi del sistema. Grazie al supporto a lungo termine, garantisce un ambiente di esecuzione estremamente stabile, sicuro e costantemente aggiornato. Nel progetto viene utilizzata per creare container leggeri e standardizzati, assicurando che i vari componenti operino su una base software coerente, riducendo le discrepanze tra l'ambiente di sviluppo locale e il deployment finale.],
  ),
  [Tecnologie per la virtualizzazione e deployment.],
  label-id: "tecn-virt-deploy",
)\

== Tecnologie per il monitoraggio dei microservizi
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Grafana],
    [],
    [#gloss[Grafana] è una piattaforma open-source per l'analisi e la visualizzazione di dati che permette di creare dashboard dinamiche e interattive. Supporta la rappresentazione grafica di metriche complesse attraverso pannelli altamente personalizzabili. È stata scelta per fornire agli utenti e agli amministratori uno strumento intuitivo per monitorare i dati raccolti dai sensori #gloss[BLE] in tempo reale. Consente di visualizzare immediatamente lo stato del sistema e identificare eventuali anomalie operative.],

    [Prometheus],
    [],
    [#gloss[Prometheus] è un sistema di monitoraggio e allerta specializzato nella raccolta di metriche sotto forma di serie temporali. Utilizza un modello di recupero dati ottimizzato per le architetture a microservizi e ambienti cloud. Viene adottato per osservare le prestazioni dell'infrastruttura e i volumi di traffico gestiti dai #gloss[gateway]. La sua integrazione permette di generare alert automatici qualora un componente o un gateway smetta di funzionare correttamente.],
  ),
  [Tecnologie per il monitoraggio dei microservizi.],
  label-id: "tecn-monit-micr",
)

== Librerie
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [gomock],
    [v0.6.0],
    [gomock è un framework di mocking per il linguaggio #gloss[Go], utilizzato per facilitare la scrittura di unit test isolati e affidabili. Permette di generare automaticamente implementazioni fittizie di interfacce complesse, consentendo agli sviluppatori di simulare e verificare le interazioni tra i diversi componenti del sistema, come la comunicazione tra il #gloss[Gateway] e i servizi di backend, senza la necessità di dipendenze esterne attive durante la fase di test.],

    [GORM],
    [1.31.1],
    [GORM è una libreria di ORM (Object-Relational Mapping) per il linguaggio #gloss[Go], progettata per astrarre e semplificare l'interazione tra il codice applicativo e i database relazionali. Fornisce un livello di astrazione sopra SQL, permettendo di definire modelli, eseguire query, gestire relazioni e operazioni CRUD attraverso un'API idiomatica e coerente con lo stile di Go.],

    [GORM PostgresSQL Driver],
    [1.6.0],
    [GORM PostgresSQL Driver è l'interfaccia tra il framework GORM e il database #gloss[PostgreSQL]. Nel progetto svolge il ruolo fondamentale di tradurre le operazioni definite nel codice #gloss[Go] in dialetto SQL compatibile con #gloss[TimescaleDB].],

    [jwt],
    [4.5.2],
    [jwt è una versione della libreria Go dedicata alla creazione, firma, validazione e gestione dei JSON Web Token. Fornisce un'implementazione conforme agli standard RFC 7519, permettendo di generare token sicuri per l'autenticazione e l'autorizzazione nelle applicazioni scritte in #gloss[Go].],

    [GoDotEnv],
    [1.5.1],
    [GoDotEnv è una libreria per il linguaggio #gloss[Go] che permette di caricare variabili d'ambiente da file .env all'interno dell'applicazione. Replica il comportamento del pacchetto dotenv diffuso in altri ecosistemi, facilitando la gestione di configurazioni esterne al codice sorgente.],

    [google/uuid],
    [1.6.0],
    [uuid è una libreria per il linguaggio #gloss[Go] che fornisce un'implementazione completa e conforme agli standard RFC 4122 per la gestione degli UUID (Universally Unique Identifier), ovvero identificatori univoci a livello globale. Può effettuare la loro generazione il parsing da stringa, la validazione, la serializzazione e la manipolazione in vari formati.],

    [Uber Fx],
    [1.24.0],
    [Fx è un framework di dependency injection per il linguaggio #gloss[Go], progettato fornire una struttura modulare e dichiarativa per inizializzare, configurare e orchestrare i diversi elementi di un'applicazione in modo sicuro, scalabile e facilmente testabile. Nel progetto viene utilizzato per orchestrare l'avvio e lo spegnimento dei vari servizi del backend, come il server #gloss[Gin], la connessione a #gloss[TimescaleDB] e il client #gloss[NATS].],

    [Uber Zap],
    [1.27.1],
    [Zap è una libreria di logging ad alte prestazioni per applicazioni scritte in #gloss[Go]. È progettata per offrire log strutturati, veloci e a basso overhead, rendendola particolarmente adatta a sistemi ad alta scalabilità, microservizi e applicazioni con requisiti di osservabilità rigorosi.],

    [NATS Client],
    [1.49.0],
    [NATS Client è la libreria ufficiale per il linguaggio #gloss[Go] che permette l'interazione tra i servizi applicativi e il sistema di messaggistica #gloss[NATS]. Nel progetto viene impiegata per implementare i pattern di comunicazione asincrona, permettendo al #gloss[Gateway] simulato di pubblicare i dati dei sensori e al Data consumer di sottoscriversi ai flussi in ingresso.],
  ),
  [Librerie.],
  label-id: "librerie",
)\

== Tecnologie per analisi statica
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Golangci-lint],
    [2.10.1],
    [Golangci-lint è un aggregatore di #gloss[linter] per il linguaggio #gloss[Go], progettato per analizzare il codice sorgente alla ricerca di errori sintattici, problemi di stile e potenziali bug logici. Tra le altre funzionalità, aiuta anche nell'identificare tempestivamente porzioni di codice inefficienti o non sicure.],

    [gofumpt],
    [0.9.2],
    [gofumpt è uno strumento di formattazione del codice per il linguaggio #gloss[Go], progettato come una versione più rigorosa e coerente di gofmt. Applica regole aggiuntive di stile e formattazione per garantire un codice più uniforme, leggibile e conforme a linee guida più restrittive rispetto allo standard. Rimane pienamente compatibile con gofmt.],

    [Gopls],
    [0.21.1],
    [Gopls è il language server ufficiale per il linguaggio #gloss[Go], sviluppato dal team Go per fornire funzionalità avanzate agli editor tramite il protocollo LSP (Language Server Protocol). Offre servizi come autocompletamento, navigazione del codice, refactoring, analisi statica, suggerimenti in tempo reale e gestione intelligente dei moduli Go.],
  ),
  [Tecnologie per analisi statica.],
  label-id: "tecn-anal-stat",
)\

== Tecnologie per analisi dinamica
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Delve],
    [1.26.0],
    [Delve è il debugger ufficiale per il linguaggio #gloss[Go] progettato per fornire un'ispezione profonda dello stato interno delle applicazioni durante la loro esecuzione. A differenza dei debugger generici, è ottimizzato per comprendere le strutture dati native di #gloss[Go], come le #gloss[goroutine], i canali e le mappe.],

    [NATS CLI],
    [2.12.0],
    [NATS Command Line Interface è lo strumento da riga di comando ufficiale per interagire con un server o un cluster NATS. Permette di gestire connessioni, pubblicare e ricevere messaggi, amministrare account e utenti, monitorare lo stato del sistema e lavorare con funzionalità avanzate.],
  ),
  [Tecnologie per analisi dinamica.],
  label-id: "tecn-anal-din",
)\


= Architettura <architettura>
L'architettura del sistema è basata su un modello a *microservizi*, in cui ogni componente funzionale viene eseguito come un'unità indipendente e isolata per garantire la massima resilienza dell'intero ecosistema.
== Architettura logica <archit-log>
L'architettura logica del sistema è documentata seguendo il modello C4, utile per descrivere il software su diversi livelli di astrazione e da molteplici punti di vista fornendo la scomposizione dell'applicativo in container, componenti, relazioni tra gli elementi e tra gli utenti.
=== Context <system-context>
L'analisi dell'architettura logica inizia con il diagramma di System Context, che definisce il perimetro del progetto. In questa fase, definita dal livello di astrazione più alto, non si analizzano le tecnologie interne o implementative ma ci si focalizza esclusivamente sulle interazioni tra i componenti interni del sistema e le interazioni coi componenti esterni e utenti umani.

#figure(
  image("../../assets/c4/system_context.svg", width: 80%),
  caption: [System Context diagram],
)

Il Sistema Cloud è il fulcro dell'intero ambiente in quanto principale fornitore dei servizi del software, quali la ricezione e memorizzazione dei dati di qualsiasi natura (nel database più opportuno) e il loro invio verso la dashboard, nonché la definizione dei perimetri di sicurezza e correlata autenticazione degli utenti.
ed interagisce con tutti gli altri utenti ed elementi presenti, ovvero:
- Super Admin, tipo di utente con poteri di amministrazione globale su tutti i tenant che hanno accettato la clausola d'impersonificazione.
- Admin generico, opera all'interno del perimetro di un singolo tenant, gestendo gli utenti finali e coordinando la comunicazione con i gateway assegnati.
- Utente generico, abilitato alla consultazione dei dati storici e in tempo reale e alla ricezione degli alert. Non può quindi influenzare l'ambiente ma ha solo i permessi per osservarne una porzione.
- API Client, un attore non umano che interagisce con il sistema tramite interfacce REST per uno scambio di informazioni automatizzato.
- Sistema observability, un componente esterno dedicato alla raccolta di metriche e log provenienti dal Cloud, che permette al Super Admin di verificare che lo stato di salute e le prestazioni del sistema siano nei parametri ottimali.
- Gateway simulato, entità che simula il flusso di dati proveniente dai sensori, generandoli internamente e riportandoli al Cloud. Rimane inoltre in ascolto per ricevere comandi.
=== Container <container>
In questo contesto, un container è inteso come una parte del sistema o data store (ad esempio un database) che necessita di rimanere in esecuzione perché l'ecosistema complessivo funzioni correttamente. Un diagramma di questo tipo mostra l'architettura del software ad alto livello, definendo anche la distribuzione delle responsabilità, le scelte tecnologiche infrastrutturali principali e le scelte relative alla comunicazione tra i container.

#figure(
  image("../../assets/c4/container.svg", width: 100%),
  caption: [Container diagram],
)

Qui viene definito con più dettaglio il contenuto di alcuni componenti presenti nel Context, il livello di astrazione precedente.
==== Sistema Cloud
Sono ora rappresentati:
- due database, il IoT Data DB e il CloudDB, il primo per i dati prodotti dai sensori simulati e il secondo per tutte le altre informazioni utili, ad esempio dati di tenant o API keys.
- il frontend dell'applicazione, ovvero UI Dashboard (in Angular), con il compito di fornire un'interfaccia per le funzionalità offerte dal Cloud Backend ad utenti umani.
- Message Broker, che permette una corretta gestione del flusso di dati IoT e comandi destinati al gateway.
- Data Consumer ha il compito di ricevere i valori generati dai sensori, leggerli e formattarli prima di inserirli nel database.
- Cloud Backend (in Go e Gin) che rimane il fulcro dell'applicazione. Come riportato sopra, emette i principali servizi del software.
==== Il Sistema observability
Ora presenta un container NATS Exporter che raccoglie le metriche di sistema e le inoltra a Observability DB (Prometheus) per il monitoraggio, con visualizzazione finale fornita tramite Observability Dashboard (Grafana).
==== Il Gateway simulato
Comprende un database a scopo di buffer. Interagisce con il Message Broker del Sistema Cloud tramite protocolli NATS per inviare i dati prodotti e ricevere e rispondere a comandi.
=== Component <component>
Un diagramma Component rappresenta l'ultimo livello di astrazione dell'architettura logica prima di scendere nel dettaglio del codice sorgente. Un componente è inteso come un raggruppamento di funzionalità correlate esposte tramite un'interfaccia definita, che risiede all'interno di un container. Rispetto al livello precedente del modello C4, in questo strato si descrivono le responsabilità interne, le dipendenze e le scelte implementative dei container principali che orchestrano il sistema.

I container principali descritti in questa sezione sono:
- Gateway simulato
- Data Consumer
- Angular SPA
- Cloud Backend

==== Gateway <comp-gateway>
#figure(
  image("../../assets/c4/component_gateway.svg", width: 100%),
  caption: [Gateway Component diagram],
)

Come riportato sopra, questa parte del software ha il compito di simulare più gateway e i sensori ad essi associati, gestendo, per entrambi, le variabili di configurazione e condividendo i dati quando richiesto.
Ogni Simulated Sensor genera dati specifici che vengono salvati temporaneamente in un Gateway Internal Buffer per prevenire perdite in caso di disconnessione o altri casi eccezionali.
Il Gateway Manager orchestra le istanze dei gateway simulati tramite #gloss[goroutine], mentre il Gateway Agent coordina l'avvio dei sensori in base alla configurazione gestita dal Config Manager, ascolta i comandi ricevuti dal Gateway Command Receiver e inizia a inviare i dati del singolo gateway simulato verso il Message Broker, il cui onere ricade sul Buffered Data Sender.

==== Data Consumer <comp-data>
#figure(
  image("../../assets/c4/component_data_consumer.svg", width: 100%),
  caption: [Data Consumer Component diagram],
)

Il #gloss[Data Consumer] è un *microservizio* specializzato con l'unico scopo di richiedere un batch di dati IoT dal message broker (#gloss[NATS]), raggrupparli per tenant di appartenenza e assicurarne la persistenza su #gloss[TimescaleDB].
Il processo inizia con l'*IoT Data Subscriber*, un client NATS che si iscrive in modalità Pull sui dati prodotti dai gateway. Da qui il *Data Partitioner* riceve i dati grezzi e li aggrega per tenant, attraverso una struttura dati apposita.
L'*IoT Data Writer* riceve la struttura generata e scrive i dati aggregati nel database #gloss[TimescaleDB], inviando un segnale di conferma (ACK) al broker per confermare la corretta scrittura degli stessi.

==== Angular <comp-angular>
#figure(
  image("../../assets/c4/component_angular.svg", width: 100%),
  caption: [Angular Component diagram],
)

Il componente Angular SPA ha lo scopo di fornire un'interfaccia visiva che permette di visualizzare i dati raccolti dai gateway e i relativi alert e gestire tenant, gateway, sensori e chiavi API di accesso.
Il cuore della navigazione è affidato all'Angular Router, che coordina il caricamento dei componenti in base all'URL e permette all'utente di autenticarsi tramite il componente Autenthication Management. La sicurezza è garantita dal Role Guard, che verifica i privilegi dell'utente (Admin o utente generico) prima di inizializzare il layout.
Dall'Angular Router, il container si dirama in vari componenti che rappresentano ciascuno un unico tipo di servizio, e che a loro volta si collegano con i rispettivi elementi all'interno dell'infrastruttura API adibiti alla comunicazione con il backend.

==== Backend <comp-backend>
#figure(
  image("../../assets/c4/component_backend.svg", width: 100%),
  caption: [Backend Component diagram],
)

Il Cloud Backend (Control & Management Layer) rappresenta il motore decisionale e l'orchestratore del sistema. Sviluppato in Go usando il framework Gin, è progettato per gestire un carico elevato di richieste contemporanee. Il suo scopo è esporre le #gloss[API] per la consultazione dei dati e la gestione del sistema, tramite un sistema di controllo degli accessi gerarchico. Questi servizi vengono forniti agli utenti finali tramite l'interfaccia front-end descritta prima, la quale ha la responsabilità di chiamare e gestire le risposte del componente presente.

La comunicazione tra i microservizi è mediata da NATS, che funge da #gloss[message broker] asincrono, permettendo un disaccoppiamento efficace tra la fase di ricezione dei dati e quella di elaborazione. Infine, il sistema prevede la segregazione logica dei dati per supportare una gestione multi-tenant, assicurando che ogni cliente possa accedere esclusivamente alle proprie risorse.

Le componenti interne possono essere suddivise in macro-aree funzionali:

===== Gestione degli accessi <comp-back-accessi>
Questa area gestisce il ciclo di vita degli utenti, il loro accesso alla piattaforma, la creazione di nuovi profili e la configurazione dei tenant, garantendo che ogni operazione sia isolata nel perimetro del cliente corretto.
Vi sono component dedicati alla generazione e alla validazione di chiavi di accesso per gli API Client esterni, il che permette l'integrazione sicura di sistemi terzi che possono consultare i dati senza passare dall'interfaccia web.

===== Gestione dati e flussi real-time <comp-back-dati>
Il backend si posiziona come strato di mediazione tra il frontend e i database di persistenza. Ciò include sia la capacità di estrarre i dati storici dei sensori dal database IoT Data DB per rispondere alle query di visualizzazione di dati, servendoli in formato JSON tramite HTTPS, sia la capacità di ricevere i dati appena pubblicati dal Message Broker e inoltrarli in tempo reale ai client connessi via WebSocket, minimizzando la latenza di visualizzazione.
Il NATS Command Server è il componente utile ad inviare comandi ricevuti dagli utenti verso un gateway o sensore specifico, tramite il Message Broker.

===== Servizi di background <comp-back-background>
Sono inoltre presenti componenti che operano indipendentemente dalle richieste dirette degli utenti per mantenere l'integrità e la sicurezza del sistema, ad esempio:
- Alert Detection Component, utilizzato per rilevare l'assenza di dati durante la comunicazione con un gateway o sensore specifico.
- Audit Log Writer, che registra ogni operazione critica (modifica utenti, invio comandi, login, etc.) sul Cloud DB attraverso l'Audit Log API, garantendo la tracciabilità completa delle azioni amministrative.

Questa scelta progettuale garantisce un'elevata scalabilità orizzontale, permettendo di potenziare o aggiornare singole parti del sistema senza compromettere la stabilità dell'intera infrastruttura. Ogni microservizio è containerizzato tramite #gloss[Docker], assicurando la portabilità tra i diversi ambienti di esecuzione e semplificando le procedure di manutenzione.

== Architettura di dettaglio <archit-dett>
In ogni microservizio è stata applicata un'*architettura esagonale* per garantire un elevato isolamento della logica di business e garantire una facile sostituibilità dei componenti esterni, come il database o il message broker, senza dover modificare la logica centrale del servizio.\

Inoltre ai diversi microservizi è stato applicato un pattern di #gloss[Dependency Injection] tramite il framework #gloss[Uber Fx] o #gloss[Angular], che permette di iniettare le dipendenze necessarie (ad esempio la connessione al database) in modo semplice, sicuro e testabile, garantendo una maggiore modularità e manutenibilità del codice.\
Infatti la maggior parte delle componenti di ogni microservizio ha le dipendenze iniettate tramite costruttore, le dipendenze di tipo *composition* e *aggregation* sono raramente utilizzate.

=== Gateway
La seguente sezione ha lo scopo di descrivere il #gloss[Code Diagram] del microservizio *Gateway*.

È stata scelta un'*architettura esagonale* per garantire un elevato isolamento della logica di business e garantire una facile sostituibilità dei componenti esterni, come i database o il message broker, senza dover modificare la logica centrale del servizio.\

Il microservizio è *multithreaded*, in quanto è necessario simulare più gateway e sensori contemporaneamente, e per questo motivo è stato scelto di utilizzare le #gloss[goroutine] di Go per gestire la concorrenza, le quali permettono di eseguire centinaia di migliaia di gateway o sensori simulati in parallelo senza sovraccaricare il sistema.\

==== Command controllers
La seguente sezione ha lo scopo di descrivere i controller che si occupano di ricevere i comandi dei gateway o sensori simulati, i quali vengono inviati tramite *NATS*.

Ogni controller è specializzato in un comando specifico, ha il compito di ricevere i comandi e trasformarli in dati pronti per la business logic, la quale eseguirà il comando.

In ognuno di essi è presente:
- *natsConnection*: riferimento alla connessione NATS (iniettata tramite dependency injection) per ricevere i comandi e rispondere con l'esito dell'operazione. I comandi sono inviati tramite il meccanismo *Request-Reply* di NATS.
- *subject*: stringa che rappresenta il subject NATS a cui il controller si iscrive per ricevere i comandi, anch'esso iniettato tramite dependency injection.
- *useCase*: riferimento all'inbound port dello strato di business logic che si occupa di eseguire il comando ricevuto. I controller una volta eseguito il parsing del comando invieranno alla inbound port i dati necessari per eseguire il comando, e riceveranno da essa una *Response* che conterrà l'esito dell'operazione e un eventuale messaggio.

#figure(
  image("../../assets/c4/gateway/GatewayControllersCodeDiagram.drawio.svg", width: 100%),
  caption: [Code Diagram dei command controllers del microservizio Gateway],
)

===== NATSAddSensorController
Ha lo scopo di ricevere il comando di aggiunta di un nuovo sensore simulato.\
Il subject su cui il controller rimane in ascolto è *commands.addsensor*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway a cui associare il nuovo sensore.
- *SensorId*: UUID del nuovo sensore.
- *Profile*: profile BLE del nuovo sensore da aggiungere, il quale definisce il tipo di dati che il sensore genererà.
- *Interval*: intervallo di tempo in ms tra una generazione di dati e l'altra del nuovo sensore.

===== NATSCommissionGatewayController
Ha lo scopo di ricevere il comando di commissioning di un gateway simulato, associandolo al tenant corretto e impostando il token di commissioning (JWT basato sulla public key del gateway).\
Il subject su cui il controller rimane in ascolto è *commands.commissiongateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da commissionare.
- *TenantId*: UUID del tenant a cui associare il gateway.
- *CommissionedToken*: token di commissioning assegnato al gateway per consentirne l'invio di dati IoT.

===== NATSCreateGatewayController
Ha lo scopo di ricevere il comando di creazione di un nuovo gateway simulato.\
Il subject su cui il controller rimane in ascolto è *commands.creategateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del nuovo gateway da creare.
- *Interval*: intervallo di tempo in ms con cui il gateway svuota il buffer interno dai dati generati dai sensori simulati associati ad esso.

===== NATSDecommissionGatewayController
Ha lo scopo di ricevere il comando di decommissioning di un gateway simulato.\
Il subject su cui il controller rimane in ascolto è *commands.decommissiongateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da decommissionare.

===== NATSDeleteGatewayController
Ha lo scopo di ricevere il comando di eliminazione di un gateway simulato.\
Il subject su cui il controller rimane in ascolto è *commands.deletegateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da eliminare.

===== NATSDeleteSensorController
Ha lo scopo di ricevere il comando di eliminazione di un sensore simulato associato a un gateway.\
Il subject su cui il controller rimane in ascolto è *commands.deletesensor*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway a cui il sensore è associato.
- *SensorId*: UUID del sensore da eliminare.

===== NATSInterruptGatewayController
Ha lo scopo di ricevere il comando di interruzione temporanea di un gateway simulato.\
Il subject su cui il controller rimane in ascolto è *commands.interruptgateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da interrompere.

===== NATSResumeGatewayController
Ha lo scopo di ricevere il comando di ripresa delle attività di un gateway simulato precedentemente interrotto.\
Il subject su cui il controller rimane in ascolto è *commands.resumegateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da riattivare.

===== NATSInterruptSensorController
Ha lo scopo di ricevere il comando di interruzione temporanea di un sensore simulato.\
Il subject su cui il controller rimane in ascolto è *commands.interruptsensor*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway a cui il sensore è associato.
- *SensorId*: UUID del sensore da interrompere.

===== NATSResumeSensorController
Ha lo scopo di ricevere il comando di ripresa delle attività di un sensore simulato precedentemente interrotto.\
Il subject su cui il controller rimane in ascolto è *commands.resumesensor*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway a cui il sensore è associato.
- *SensorId*: UUID del sensore da riattivare.

===== NATSRebootGatewayController
Ha lo scopo di ricevere il comando di riavvio di un gateway simulato.\
Il subject su cui il controller rimane in ascolto è *commands.rebootgateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da riavviare.

===== NATSResetGatewayController
Ha lo scopo di ricevere il comando di reset di un gateway simulato.\
Il subject su cui il controller rimane in ascolto è *commands.resetgateway*.\
Il *dto* su cui avverrà il marshalling del comando ricevuto via NATS è composto dai seguenti campi:
- *GatewayId*: UUID del gateway da resettare.

==== GatewayManagerService
Il *GatewayManagerService* è il componente centrale del microservizio, in quanto ha lo scopo di orchestrare le istanze dei gateway e dei sensori simulati, creando e distribuendo i comandi in entrata verso il corretto destinatario.
#figure(
  image("../../assets/c4/gateway/GatewayManagerGatewayCodeDiagram.drawio.svg", width: 100%),
  caption: [Code Diagram del GatewayManagerService],
)

È l'implementazione delle seguenti interfacce:
- *CreateGatewayUseCase*
- *DeleteGatewayUseCase*
- *CommissionGatewayUseCase*
- *DecommissionGatewayUseCase*
- *RebootGatewayUseCase*
- *ResetGatewayUseCase*
- *ResumeGatewayUseCase*
- *InterruptGatewayUseCase*
- *AddSensorUseCase*
- *DeleteSensorUseCase*
- *ResumeSensorUseCase*
- *InterruptSensorUseCase*
- *GatewaysLoader*

Esso presenta i seguenti metodi e attributi:
- *gateways*: struttura dati che contiene:
  - Una *mappa dei gateway simulati* di tipo *map[uuid.UUID]GatewayWorker*, dove la chiave è l'UUID del gateway e il valore è una struct contenente l'istanza del gateway simulato, il canale per inviare comandi al gateway e il canale per ricevere gli errori del gateway.
  - Un *mutex* di tipo *sync.RWMutex* per garantire la sicurezza in caso di accessi concorrenti alla mappa dei gateway.
- *sensors*: struttura dati che contiene:
  - Una *mappa dei sensori simulati* di tipo *map[uuid.UUID]map[uuid.UUID]SensorWorker*, dove la prima chiave è l'UUID del gateway, la seconda chiave è l'UUID del sensore e il valore è una struct contenente l'istanza del sensore simulato, il canale per inviare comandi al sensore e il canale per ricevere gli errori del sensore.
  - Un *mutex* di tipo *sync.RWMutex* per garantire la sicurezza in caso di accessi concorrenti alla mappa dei sensori.
- *saveSensorDataPort*: riferimento all'interfaccia *SaveSensorDataPort*, utile a salvare i dati generati dai sensori simulati nel buffer interno del gateway, in modo da prevenire perdite di dati in caso di disconnessione o altri casi eccezionali.
- *bufferedDataPort*: riferimento all'interfaccia *BufferedDataPort*, utile ad ottenere i dati all'interno del buffer per un gateway specifico.
- *sendSensorDataPortFactory*: riferimento all'interfaccia *SendSensorDataPortFactory*, utile a creare una nuova istanza di tipo *SendSensorDataPort* per ogni gateway simulato, in modo che tutti i gateway abbiano un'istanza dedicata per inviare eventualmente i dati via NATS con credenziali che cambiano a runtime.
- *configPort*: riferimento all'interfaccia *ConfigPort*, la quale è la composizione di tante sotto interfacce più singolari. È fondamentale per passare ai comandi le interfacce con meno metodi disponibili possibili (Interface Segregation Principle). Essa ha lo scopo di gestire la configurazione dei gateway e dei sensori simulati nel sistema di persistenza, così da mantenere lo stato anche al riavvio del microservizio.
- *AddSensor(cmdData \*AddSensor) Response*: implementazione dell'interfaccia *AddSensorUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista e che il *sensorId* non sia già associato a quel gateway, in caso contrario restituisce un errore.
  - Crea il comando *AddSensorCmd* e lo esegue, facendo partire il sensore simulato.
  - All'esecuzione positiva del comando il nuovo sensore viene aggiunto alla struttura dati del *GatewayManagerService*.
  - Invia la *Response* in base alla presenza di errori o no.
- *CommissionGateway(cmdData \*CommissionGateway) Response*: implementazione dell'interfaccia *CommissionGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *CommissionGatewayCmd* e lo invia al gateway simulato.
  - Attende l'esito del comando e invia la *Response*.
- *CreateGateway(cmdData \*CreateGateway) Response*: implementazione dell'interfaccia *CreateGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gatewayId* non sia già associato a un gateway simulato.
  - Genera una coppia di chiavi pubblica-privata per il nuovo gateway simulato.
  - Crea il comando *CreateGatewayCmd* e lo esegue, facendo partire il gateway simulato.
  - All'esecuzione positiva del comando il nuovo gateway viene aggiunto alla struttura dati del *GatewayManagerService*.
  - Invia la *Response* in base alla presenza di errori o no.
- *DecommissionGateway(cmdData \*DecommissionGateway) Response*: implementazione dell'interfaccia *DecommissionGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *DecommissionGatewayCmd* e lo invia al gateway simulato.
  - Attende l'esito del comando e invia la *Response*.
- *DeleteGateway(cmdData \*DeleteGateway) Response*: implementazione dell'interfaccia *DeleteGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *DeleteGatewayCmd* e lo esegue, facendo terminare il gateway simulato.
  - Attende l'esito del comando, se positivo rimuove il gateway e i sensori associati dalla struttura dati del *GatewayManagerService*, inoltre interrompe permanentemente l'esecuzione dei sensori associati al gateway in questione.
  - Invia la *Response* in base alla presenza di errori o no.
- *DeleteSensor(cmdData \*DeleteSensor) Response*: implementazione dell'interfaccia *DeleteSensorUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* e il *sensor* esistano.
  - Crea il comando *DeleteSensorCmd* e lo esegue, facendo terminare il sensore simulato.
  - Attende l'esito del comando, se positivo rimuove il sensore dalla struttura dati del *GatewayManagerService*.
  - Invia la *Response* in base alla presenza di errori o no.
- *InterruptGateway(cmdData \*InterruptGateway) Response*: implementazione dell'interfaccia *InterruptGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *InterruptGatewayCmd* e lo invia al gateway simulato.
  - Attende l'esito del comando e invia la *Response*.
- *ResumeGateway(cmdData \*ResumeGateway) Response*: implementazione dell'interfaccia *ResumeGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *ResumeGatewayCmd* e lo invia al gateway simulato.
  - Attende l'esito del comando e invia la *Response*.
- *InterruptSensor(cmdData \*InterruptSensor) Response*: implementazione dell'interfaccia *InterruptSensorUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* e il *sensor* esistano.
  - Crea il comando *InterruptSensorCmd* e lo invia al sensore simulato.
  - Attende l'esito del comando e invia la *Response*.
- *ResumeSensor(cmdData \*ResumeSensor) Response*: implementazione dell'interfaccia *ResumeSensorUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* e il *sensor* esistano.
  - Crea il comando *ResumeSensorCmd* e lo invia al sensore simulato.
  - Attende l'esito del comando e invia la *Response*.
- *RebootGateway(cmdData \*RebootGateway) Response*: implementazione dell'interfaccia *RebootGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *RebootGatewayCmd* e lo invia al gateway simulato.
  - Attende l'esito del comando e invia la *Response*.
- *ResetGateway(cmdData \*ResetGateway) Response*: implementazione dell'interfaccia *ResetGatewayUseCase*, riceve i dati del comando dall'outbound adapter ed esegue i seguenti passi:
  - Verifica che il *gateway* esista.
  - Crea il comando *ResetGatewayCmd* e lo invia al gateway simulato.
  - Attende l'esito del comando e invia la *Response*.
- *LoadGatewayWorkers() error*: implementazione dell'interfaccia *GatewaysLoader*, è il metodo che viene eseguito all'avvio del microservizio per caricare i gateway e i sensori simulati presenti nel sistema di persistenza, in modo da mantenere lo stato anche al riavvio del microservizio. Ogni gateway e sensore simulato viene caricato nelle strutture dati del *GatewayManagerService* e viene fatto partire, in modo da ripristinare lo stato precedente al riavvio del servizio.

==== Comandi dei gateway e dei sensori simulati
Come abbiamo visto nella sezione precedente il *GatewayManagerService* riceve i dati dei comandi dai controller ed ha il compito di creare l'istanza del comando attraverso un'interfaccia comune *BaseCommand*, ciò per permettere di inviare ogni comando attraverso il *channel* specifico del *Gateway Worker* o *Sensor Worker* destinatario.

Ogni comando ha un'implementazione specifica, ma tutti condividono la stessa interfaccia *BaseCommand* che prevede un unico metodo *Execute() error*, il quale esegue il comando e restituisce un eventuale errore.\

Essi vengono eseguiti tutti nel gateway simulato o nel sensore simulato destinatario del comando, così da garantire l'esecuzione di un comando alla volta per componente. Eccezione fatta per i comandi *CreateGatewayCmd* e *AddSensorCmd* che vengono eseguiti direttamente dal *GatewayManagerService* per poter aggiungere il nuovo gateway o sensore alle strutture dati del servizio e far partire l'esecuzione dello stesso.

#figure(
  image("../../assets/c4/gateway/CommandsCodeDiagram.drawio.svg", width: 100%),
  caption: [Code Diagram dei comandi dei gateway e dei sensori simulati],
)

===== AddSensorCmd
Il comando *AddSensorCmd* ha lo scopo di avviare un nuovo sensore simulato e salvare la sua configurazione nel sistema di persistenza.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *AddSensor* contenente i dati necessari per l'esecuzione del comando, ovvero *GatewayId*, *SensorId*, *Profile* e *Interval*.
- *sensorAdder*: riferimento all'interfaccia *SensorAdderPort*, ovvero l'outbound port per l'aggiunta del sensore nel sistema di persistenza.
- *sensorStarter*: riferimento all'interfaccia *SensorStarter*, ovvero l'interfaccia responsabile di avviare l'esecuzione del sensore simulato.
- *status*: enum di tipo *SensorStatus*, rappresenta lo stato che deve avere il sensore all'avvio. Gli stati possibili sono: *Active*, *Inactive* e *Stopped*
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Salva la configurazione del nuovo sensore nel sistema di persistenza tramite il metodo *AddSensor(cmd \*AddSensor, status SensorStatus)* dell'interfaccia *SensorAdderPort*.
  - Avvia l'esecuzione del nuovo sensore simulato con una *goroutine* attraverso il metodo *Start()* dell'interfaccia *SensorStarter*.

===== CommissionGatewayCmd
Il comando *CommissionGatewayCmd* ha lo scopo di commissionare un gateway simulato, associandolo ad un tenant e impostando il nuovo token ricevuto (JWT basato sulla public key del gateway).
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *CommissionGateway* contenente i dati necessari per l'esecuzione del comando, ovvero *GatewayId*, *TenantId* e *CommissionedToken* (di tipo string).
- *configService*: riferimento all'interfaccia *GatewayCommissionerPort*, la quale rappresenta l'outbound port per il salvataggio delle informazioni di commissioning all'interno del sistema di persistenza.
- *commissioner*: riferimento all'interfaccia *DataSenderCommissioner*, la quale ha il compito di aggiornare le credenziali del gateway e di associarlo al nuovo tenant.
- *status*: enum di tipo *GatewayStatus*, rappresenta lo stato che deve avere il gateway dopo il commissioning. Gli stati possibili sono: *Active*, *Inactive*, *Decommissioned* e *Stopped*.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Salva le informazioni di commissioning del gateway nel sistema di persistenza tramite il metodo *CommissionGateway(cmd \*CommissionGateway, status GatewayStatus)* dell'interfaccia *GatewayCommissionerPort*.
  - Aggiorna le credenziali del gateway e lo associa al nuovo tenant tramite il metodo *Commission(gatewayId uuid.UUID, tenantId uuid.UUID, token string)* dell'interfaccia *DataSenderCommissioner*.

===== CreateGatewayCmd
Il comando *CreateGatewayCmd* ha lo scopo di creare un nuovo gateway simulato e salvarne la configurazione nel sistema di persistenza.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *CreateGateway* contenente i dati necessari per l'esecuzione del comando, ovvero *GatewayId* e *Interval*.
- *configPort*: riferimento all'interfaccia *GatewayCreatorPort*, ovvero l'outbound port per la creazione del gateway nel sistema di persistenza.
- *starter*: riferimento all'interfaccia *DataSenderStarter*, ovvero l'interfaccia responsabile di avviare l'esecuzione del gateway simulato.
- *greeter*: riferimento all'interfaccia *GatewayGreeter*, ovvero l'outbound port con il compito di inviare un messaggio di hello dal nuovo gateway simulato tramite NATS comunicando il proprio *gatewayId* e la propria *chiave pubblica*.
- *credentials*: struct contenente la coppia chiave pubblica-privata generata per il nuovo gateway simulato, utile per il salvataggio sul sistema di persistenza.
- *status*: enum di tipo *GatewayStatus*, rappresenta lo stato che deve avere il gateway all'avvio.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Salva la configurazione del nuovo gateway nel sistema di persistenza tramite il metodo *CreateGateway(cmdData \*CreateGateway, credentials Credentials, status GatewayStatus)* dell'interfaccia *GatewayCreatorPort*.
  - Invia un messaggio di hello dal nuovo gateway simulato tramite NATS comunicando il proprio *gatewayId* e la propria *chiave pubblica* attraverso il metodo *Hello()*. dell'interfaccia *GatewayGreeter*.
  - Avvia l'esecuzione del nuovo gateway simulato con una *goroutine* attraverso il metodo *Start()* dell'interfaccia *DataSenderStarter*.

===== DecommissionGatewayCmd
Il comando *DecommissionGatewayCmd* ha lo scopo di decommissionare un gateway simulato, modificandone lo stato e impedendogli di inviare dati IoT.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo
- *configService*: riferimento all'interfaccia *GatewayDecommissionerPort*, la quale rappresenta l'outbound port per aggiornare il gateway nel sistema di persistenza dopo il decommissioning.
- *decommissioner*: riferimento all'interfaccia *DataSenderDecommissioner*, la quale ha il compito di aggiornare le credenziali e lo stato del gateway per impedirgli di inviare dati IoT.
- *greeter*: riferimento all'interfaccia *GatewayGreeter*, ovvero l'outbound port con il compito di inviare un messaggio di hello dal gateway decommissionato tramite NATS comunicando il proprio *gatewayId* e la propria *chiave pubblica*.
- *status*: enum di tipo *GatewayStatus*, rappresenta lo stato che deve avere il gateway dopo il decommissioning.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Aggiorna le informazioni del gateway nel sistema di persistenza tramite il metodo *DecommissionGateway(cmdData \*DecommissionGateway, status GatewayStatus)* dell'interfaccia *GatewayDecommissionerPort*.
  - Aggiorna le credenziali e lo stato del gateway per impedirgli di inviare dati IoT tramite il metodo *Decommission()* dell'interfaccia *DataSenderDecommissioner*.
  - Invia un messaggio di hello dal gateway decommissionato tramite NATS comunicando il proprio *gatewayId* e la propria *chiave pubblica* attraverso il metodo *Hello()*. dell'interfaccia *GatewayGreeter*.

===== DeleteGatewayCmd
Il comando *DeleteGatewayCmd* ha lo scopo di eliminare un gateway simulato e i sensori simulati associati.
La struct ha i seguenti attributi e metodi:
- *cmddata*: riferimento alla struct di tipo *DeleteGateway* contenente il *gatewayId* del gateway da eliminare.
- *configService*: riferimento all'interfaccia *GatewayDeleterPort*, la quale rappresenta l'outbound port per eliminare il gateway nel sistema di persistenza.
- *senderStopper*: riferimento all'interfaccia *DataSenderStopper*, la quale ha il compito di interrompere permanentemente l'esecuzione del gateway simulato.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Elimina il gateway nel sistema di persistenza tramite il metodo *DeleteGateway(cmddata \*DeleteGateway)* dell'interfaccia *GatewayDeleterPort*.
  - Interrompe permanentemente l'esecuzione del gateway simulato tramite il metodo *Stop()* dell'interfaccia *DataSenderStopper*.


===== DeleteSensorCmd
Il comando *DeleteSensorCmd* ha lo scopo di eliminare un sensore simulato.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *DeleteSensor* contenente il *sensorId* e il *gatewayId* del sensore da eliminare.
- *configService*: riferimento all'interfaccia *SensorDeleterPort*, la quale rappresenta l'outbound port per eliminare il sensore nel sistema di persistenza.
- *sensorStopper*: riferimento all'interfaccia *SensorStopper*, la quale ha il compito di interrompere permanentemente l'esecuzione del sensore simulato.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Elimina il sensore nel sistema di persistenza tramite il metodo *DeleteSensor(cmdData \*DeleteSensor)* dell'interfaccia *SensorDeleterPort*.
  - Interrompe permanentemente l'esecuzione del sensore simulato tramite il metodo *Stop()* dell'interfaccia *SensorStopper*.

===== InterruptGatewayCmd
Il comando *InterruptGatewayCmd* ha lo scopo di interrompere temporaneamente l'esecuzione di un gateway simulato, mettendolo in uno stato in cui non invia dati IoT ma può essere riattivato successivamente.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *InterruptGateway* contenente il *gatewayId* del gateway da interrompere.
- *gatewayInterrupterPort*: riferimento all'interfaccia *GatewayInterrupterPort*, la quale rappresenta l'outbound port per interrompere il gateway nel sistema di persistenza.
- *sender*: riferimento all'interfaccia *DataSenderInterrupter*, la quale ha il compito di interrompere temporaneamente l'invio di dati IoT.
- *status*: enum di tipo *GatewayStatus*, rappresenta lo stato che deve avere il gateway dopo l'interruzione.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Aggiorna le informazioni del gateway nel sistema di persistenza tramite il metodo *InterruptGateway(cmdData \*InterruptGateway, status GatewayStatus)* dell'interfaccia *GatewayInterrupterPort*.
  - Interrompe temporaneamente l'invio di dati IoT tramite il metodo *Interrupt()* dell'interfaccia *DataSenderInterrupter*.

===== InterruptSensorCmd
Il comando *InterruptSensorCmd* ha lo scopo di interrompere temporaneamente l'esecuzione di un sensore simulato, mettendolo in uno stato in cui non genera dati IoT ma può essere riattivato successivamente.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *InterruptSensor* contenente il *sensorId* e il *gatewayId* del sensore da interrompere.
- *sensorInterrupterPort*: riferimento all'interfaccia *SensorInterrupterPort*, la quale rappresenta l'outbound port per interrompere il sensore nel sistema di persistenza.
- *simulatedSensor*: riferimento all'interfaccia di tipo *SensorInterrupter* che ha il compito di interrompere temporaneamente la generazione di dati IoT nel sensore simulato.
- *status*: enum di tipo *SensorStatus*, rappresenta lo stato che deve avere il sensore dopo l'interruzione.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Aggiorna le informazioni del sensore nel sistema di persistenza tramite il metodo *InterruptSensor(cmdData \*InterruptSensor, status SensorStatus)* dell'interfaccia *SensorInterrupterPort*.
  - Interrompe temporaneamente la generazione di dati IoT tramite il metodo *Interrupt()* dell'interfaccia *SensorInterrupter*.

===== RebootGatewayCmd
Il comando *RebootGatewayCmd* ha lo scopo di simulare un riavvio del gateway simulato, in realtà invia solamente un nuovo messaggio di hello.
La struct ha i seguenti attributi e metodi:
- *greeter*: riferimento all'interfaccia *GatewayGreeter*, ovvero l'outbound port con il compito di inviare un messaggio di hello dal gateway simulato tramite NATS comunicando il proprio *gatewayId* e la propria *chiave pubblica*.
- *Execute() error*: è il metodo che esegue il comando inviando un messaggio di hello dal gateway simulato attraverso il metodo *Hello()*. dell'interfaccia *GatewayGreeter*.

===== ResetGatewayCmd
Il comando *ResetGatewayCmd* ha lo scopo di simulare un reset del gateway simulato riportando le sue configurazioni alle impostazioni di default. Ciò che fa è resettare solamente l'intervallo di invio dei dati al valore di default (5 secondi).
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *ResetGateway* contenente il *gatewayId* del gateway da resettare.
- *gatewayResetterPort*: riferimento all'interfaccia *GatewayResetterPort*, la quale rappresenta l'outbound port per resettare la configurazione del gateway nel sistema di persistenza.
- *sender*: riferimento all'interfaccia *DataSenderResetter*, la quale ha il compito di resettare la configurazione del gateway simulato.
- *Execute(): error*: è il metodo che esegue il comando svolgendo i seguenti passi:
- Resetta la configurazione del gateway nel sistema di persistenza tramite il metodo *ResetGateway(cmdData \*ResetGateway, defaultInterval time.Duration)* dell'interfaccia *GatewayResetterPort*.
- Resetta l'intervallo di invio del gateway simulato tramite il metodo *Reset(defaultInterval time.Duration)* dell'interfaccia *DataSenderResetter*.

===== ResumeGatewayCmd
Il comando *ResumeGatewayCmd* ha lo scopo di riattivare un gateway simulato precedentemente interrotto, permettendogli di inviare nuovamente dati IoT.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *ResumeGateway* contenente il *gatewayId* del gateway da riattivare.
- *resumerPort*: riferimento all'interfaccia *GatewayResumerPort*, la quale rappresenta l'outbound port per riattivare il gateway nel sistema di persistenza.
- *sender*: riferimento all'interfaccia *DataSenderResumer*, la quale ha il compito di riattivare l'invio di dati IoT.
- *status*: enum di tipo *GatewayStatus*, rappresenta lo stato che deve avere il gateway dopo la riattivazione.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Aggiorna le informazioni del gateway nel sistema di persistenza tramite il metodo *ResumeGateway(cmdData \*ResumeGateway, status GatewayStatus)* dell'interfaccia *GatewayResumerPort*.
  - Riattiva l'invio di dati IoT tramite il metodo *Resume()* dell'interfaccia *DataSenderResumer*.

===== ResumeSensorCmd
Il comando *ResumeSensorCmd* ha lo scopo di riattivare un sensore simulato precedentemente interrotto, permettendogli di generare nuovamente dati IoT.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *ResumeSensor* contenente il *sensorId* e il *gatewayId* del sensore da riattivare.
- *resumerPort*: riferimento all'interfaccia *SensorResumerPort*, la quale rappresenta l'outbound port per riattivare il sensore nel sistema di persistenza.
- *simulatedSensor*: riferimento all'interfaccia di tipo *SensorResumer* che ha il compito di riattivare la generazione di dati IoT nel sensore simulato.
- *status*: enum di tipo *SensorStatus*, rappresenta lo stato che deve avere il sensore dopo la riattivazione.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Aggiorna le informazioni del sensore nel sistema di persistenza tramite il metodo *ResumeSensor(cmdData \*ResumeSensor, status SensorStatus)* dell'interfaccia *SensorResumerPort*.
  - Riattiva la generazione di dati IoT tramite il metodo *Resume()* dell'interfaccia *SensorResumer*.

===== StopSensorCmd
Il comando *StopSensorCmd* ha lo scopo di interrompere permanentemente un sensore simulato, mettendolo in uno stato in cui non genera più dati IoT e non può essere riattivato successivamente.
La struct ha i seguenti attributi e metodi:
- *sensorStopper*: riferimento all'interfaccia *SensorStopperPort*, la quale rappresenta l'outbound port per interrompere permanentemente l'invio dei dati IoT da parte del sensore simulato
- *Execute() error*: è il metodo che esegue il comando interrompendo permanentemente l'invio dei dati IoT tramite il metodo *Stop()* dell'interfaccia *SensorStopper*.

==== Gateway simulato
#figure(
  image("../../assets/c4/gateway/GatewayCodeDiagram.drawio.svg", width: 100%),
  caption: [Code Diagram del gateway simulato],
)


==== Sensore simulato
#figure(
  image("../../assets/c4/gateway/SensorCodeDiagram.drawio.svg", width: 100%),
  caption: [Code Diagram del sensore simulato],
)

==== Sistema persistenza dei gateway e dei sensori simulati
#figure(
  image("../../assets/c4/gateway/ConfigCodeDiagram.drawio.svg", width: 100%),
  caption: [Code Diagram sistema di persistenza dei gateway e dei sensori simulati],
)



=== Data Consumer
La seguente sezione ha lo scopo di descrivere il #gloss[Code Diagram] del microservizio *Data Consumer*.\

Il microservizio è *stateless* il che lo rende facilmente scalabile orizzontalmente, poiché non mantiene alcuna informazione tra le richieste. Perciò è possibile eseguire più istanze del servizio in parallelo, per aumentare la capacità di *consuming* dei dati IoT.\
Inoltre ogni istanza ha due parametri all'avvio che ne definiscono il comportamento, ovvero:
- *Batch size*: definisce la dimensione del batch che il consumer richiede a NATS, un batch più grande ottimizza gli inserimenti su TimescaleDB ma aumenta la latenza di visualizzazione dei dati, viceversa un batch più piccolo permette di visualizzare i dati quasi in tempo reale ma aumenta il carico sul database.
- *Subject*: definisce il subject NATS a cui il consumer si iscrive per ricevere i dati, più il subject è specifico più il carico sul consumer è ridotto, viceversa un subject più generico permette di ricevere più dati ma aumenta il carico sul consumer e sul database. È possibile così configurare i data consumer in base al carico di ogni sensore, gateway o addirittura tenant.

#figure(
  image("../../assets/c4/DataConsumerCodeDiagram.drawio.svg", width: 100%),
  caption: [Code diagram del microservizio Data Consumer],
)

==== NATSDataSubscriberController
Il *NATSDataSubscriberController* è l'inbound adapter del microservizio, il quale si occupa di fare *pull subscription* di N dati dal subject NATS specificato all'avvio.
La struct in questione ha i seguenti attributi e metodi:
- *processor*: riferimento all'interfaccia *BatchProcessor* che ha lo scopo una volta ricevuto il *MessageBatch* di processarlo ed inviarlo allo strato di business logic.
- *consumer*: riferimento all'interfaccia *jetstream.Consumer*, rappresenta il *Consumer* di #gloss[NATS JetStream]. Per crearlo è necessario fornire il contesto JetStream e il subject a cui iscriversi. Inoltre come policy di ACK è stato scelto *AckExplicit* per garantire che i messaggi vengano rimossi dalla coda solo dopo che sono stati salvati correttamente a database, evitando così perdite di dati in caso di errori o crash del servizio.
- *batchSize*: rappresenta la dimensione del batch in numero di messaggi che il consumer richiede a NATS ad ogni ciclo di consumo, è un parametro configurabile all'avvio del servizio.
- *logger*: riferimento alla struct *zap.Logger* per la gestione dei log del servizio.
- *Listen()*: è il metodo che ascolta costantemente i messaggi in arrivo da NATS, quando riceve un batch sufficientemente grande o quando scade un timeout, chiama il metodo *ProcessBatch* per processare il batch ricevuto e salvarli a database.

==== NATSBatchProcessor
Il *NATSBatchProcessor* è il componente che si occupa di processare i batch di messaggi ricevuti dal *NATSDataSubscriberController* ed è l'implementazione dell'interfaccia *BatchProcessor*.
Il suo scopo è quello di raggruppare i dati per tenant di appartenenza, in modo da poter fare un inserimento massivo su TimescaleDB per tenant. In caso di inserimento andato a buon fine ha lo scopo di inviare un ACK per ogni messaggio del batch.

La struct in questione ha i seguenti attributi e metodi:
- *StoreDataUseCase*: riferimento all'interfaccia *StoreDataUseCase* che rappresenta l'inbound port dello strato di business logic, il quale si occupa di salvare i dati a database.
- *ProcessBatch(batch jetstream.MessageBatch)*: è il metodo che processa il batch di messaggi ricevuto. Per ogni *tenant* crea un array di *SensorData*, struttura rappresentante il dato IoT, e un array di *jetstream.Msg*, interfaccia utile per inviare l'ACK a NATS. Una volta suddivisi i dati per tenant, il metodo chiama lo *StoreDataUseCase* inviando l'array di *SensorData* un tenant alla volta, se l'inserimento a database va a buon fine, invia un ACK per ogni messaggio del batch, altrimenti logga l'errore e non invia l'ACK, in modo da permettere a NATS JetStream di ritentare la consegna dei messaggi non processati.

==== SensorData
La struct *SensorData* rappresenta la singola misurazione IoT che viene salvata a database, è composta dai seguenti campi:
- *SensorId*: rappresenta lo UUID del sensore che ha generato il dato;
- *GatewayId*: rappresenta lo UUID del gateway a cui il sensore era collegato al momento della generazione del dato;
- *TenantId*: rappresenta lo UUID del tenant a cui il gateway appartiene;
- *Profile*: rappresenta il profilo BLE del sensore che ha generato. I profili supportati sono: *Ecg*, *Environmental Sensing*, *Health Thermometer*, *Heart Rate* e *Pulse Oximeter*;
- *Timestamp*: rappresenta il timestamp di generazione del dato ed ha una precisione al millisecondo;
- *Value*: rappresenta il valore della misurazione, è un array di byte in quanto ogni profilo BLE ha un formato di dato diverso, ad esempio il profilo *Ecg* genera un array di interi che rappresenta un tracciato ECG, mentre il profilo *Health Thermometer* genera un array di byte che rappresenta la temperatura corporea.

==== DataConsumerService
Il *DataConsumerService* è la parte di business logic del microservizio, è l'implementazione dell'interfaccia *StoreDataUseCase* e si occupa di inoltrare l'array di *SensorData* ricevuto dal *NATSBatchProcessor* all'outbound port *WriteDataPort*.\
Non ha un ruolo fondamentale, tuttavia è stato implementato per rispettare l'architettura esagonale e permettere di implementare ulteriore logica di business in futuro, ad esempio la validazione dei dati o l'invio di alert in caso di valori anomali.

==== TimescaleWriteDataRepository
Il *TimescaleWriteDataRepository* è l'outbound adapter del microservizio, è l'implementazione dell'interfaccia *WriteDataPort* e si occupa di scrivere i dati a database tramite *bulk insert* per sfruttare al meglio le potenzialità di TimescaleDB.\

La struct in questione ha i seguenti attributi e metodi:
- *dbConnection*: riferimento alla connessione a #gloss[TimescaleDB] di tipo *sql.DB*, utile per eseguire la query di inserimento massivo dei dati a database.
- *WriteData(data []\*SensorData, tenantId uuid.UUID) error*: metodo che si occupa dell'inserimento massivo dei dati a database, riceve un array di *SensorData* e il *tenantId* di appartenenza, costruisce una query di inserimento massivo e la esegue tramite la connessione a database, se l'inserimento va a buon fine restituisce nil, altrimenti restituisce l'errore riscontrato.



=== Frontend
=== Cloud Backend

== Architettura di deployment <archit-deploy>
=== Diagramma di deployment <deploy-diagram>
Il Deployment Diagram illustra come le istanze dei container siano effettivamente distribuite sull'infrastruttura fisica o virtuale all'interno di un determinato ambiente. Questo livello permette di mappare i componenti logici su nodi di deployment, i quali rappresentano le risorse computazionali dove il software viene eseguito, quali infrastrutture fisiche, macchine virtuali, container Docker o ambienti di esecuzione specifici (come database server o browser web).

#figure(
  image("../../assets/c4/deployment.svg", width: 100%),
  caption: [Deployment diagram],
)

Le responsabilità sono separate tra l'Edge Node, il Cloud e l'interfaccia utente (User Device).
Nel primo risiede l'istanza del Gateway Simulator, che viene rappresentata come un'entità autonoma al di fuori del nodo centrale, in modo da rappresentare in modo più realistico l'infrastruttura su cui si dovrebbe basare il sistema. Qualora si decidesse di implementare quest'ultima in una successiva iterazione del progetto, ciò impedirebbe di causare modifiche a cascata obbligatorie verso altre aree dell'architettura.
L'infrastruttura Cloud rimane l'ambiente di esecuzione principale dove vivono i diversi *microservizi*, per lo più in nodi indipendenti. Oltre ai database per la persistenza dei dati e al nodo di monitoraggio (che ospita Prometheus e Grafana), sono presenti nodi con componenti multi-istanza, ovvero:
- Message Broker, che ospita istanze di NATS JetStream.
- API Backend e Data Consumer, dedicati all'esecuzione dei container di business logic.
User Device rappresenta l'ambiente di esecuzione lato client. Qui il nodo è il Web Browser, all'interno del quale viene distribuita ed eseguita l'istanza della Dashboard Angular.


== Design Pattern <design-pattern>
I design pattern sono stati selezionati per garantire che l'architettura a microservizi sia flessibile e scalabile, rispettando gli obiettivi di manutenibilità definiti nel capitolato.

=== Strategy
==== Descrizione
Il pattern Strategy è un design pattern comportamentale che permette di definire una famiglia di algoritmi, incapsularli in strutture separate e renderli intercambiabili a runtime. Questo approccio consente di variare il comportamento di un componente senza modificarne la logica di controllo principale.

==== Motivi per la scelta
Nel nostro sistema, il #gloss[Gateway] simulato deve gestire l'invio di dati #gloss[IoT] provenienti da sensori con caratteristiche profondamente diverse. L'uso dello Strategy permette di isolare la logica di generazione del dato di ogni specifico sensore, rendendo il gateway scalabile e pronto a supportare nuovi profili BLE senza dover riscrivere il core del simulatore.

==== Utilizzo nel progetto
//TODO: più avanti quando l'architettura è più stabile

=== Command
==== Descrizione
Il pattern _Command_ è un design pattern comportamentale che incapsula una richiesta come un oggetto, permettendo così di parametrizzare i client con diverse richieste, instradarle o metterle in coda. Questo approccio separa l'oggetto che invoca l'operazione da quello che sa come eseguirla, facilitando la gestione di operazioni complesse e asincrone.

==== Motivi per la scelta
La scelta del pattern _Command_ è fondamentale per gestire la comunicazione tra il #gloss[Cloud] Layer e l'Edge Layer. Poiché l'invio di istruzioni ai gateway avviene tramite un Message broker (NATS) in modalità asincrona, il pattern permette di trattare ogni comando come un'entità autonoma. Ciò garantisce la tracciabilità delle operazioni, la possibilità di gestire i log degli esiti e assicura che il Cloud Backend rimanga reattivo senza dover attendere l'esecuzione immediata sul gateway fisico o simulato.

==== Utilizzo nel progetto
//TODO: più avanti quando l'architettura è più stabile

=== Adapter
==== Descrizione
L'Adapter è un design pattern strutturale che funge da intermediario tra due componenti con interfacce incompatibili. Agisce come un wrapper (involucro) che traduce i dati o le chiamate di un "fornitore" nel formato atteso dal "ricevente", permettendo loro di collaborare senza dover modificare il codice originale delle parti coinvolte.

==== Motivi per la scelta
La scelta di questo pattern è dettata dalla necessità di gestire l'eterogeneità dei sensori fisici simulati. Poiché ogni sensore può esporre dati secondo profili #gloss[BLE] differenti o protocolli specifici, l'Adapter permette di uniformare queste informazioni prima che entrino nel cuore del sistema. Questo garantisce che il #gloss[Cloud] Layer sia completamente agnostico rispetto alla sorgente fisica del dato, semplificando la manutenzione e l'aggiunta di nuovi dispositivi.

==== Utilizzo nel progetto
//TODO: più avanti quando l'architettura è più stabile

=== Dependency injection
==== Descrizione
Il pattern Dependency InjectionG è un design pattern strutturale che consente di rendere
esplicite le dipendenze di un oggetto.
Invece di creare direttamente le dipendenze all'interno delle classi o dei componenti, queste
possono essere fornite dall'esterno: in questo modo, un componente dichiara le sue
dipendenze senza doversi preoccupare di istanziarle, permettendo dunque una maggiore
modularità tra i diversi componenti del Sistema. Esistono principalmente due tipi di
dependency injectionG:
• Constructor Injection: le dipendenze vengono passate attraverso il costruttore;
• Setter Injection: le dipendenze vengono impostate tramite metodi setter.
Nel progetto viene utilizzata la Constructor Injection.


La _Dependency injection_ è un design pattern che permette di rendere esplicite le dipendenze di un oggetto, favorendo l'inversione del controllo (IoC). Invece di creare e gestire le dipendenze internamente a una classe o a un componente, queste vengono fornite dall'esterno. In questo modo, un modulo dichiara semplicemente "cosa gli serve" per funzionare, senza doversi occupare di come istanziarlo o configurarlo, garantendo un elevato grado di modularità e disaccoppiamento tra le componenti del sistema.

Esistono principalmente due modalità di implementazione:
- *Constructor Injection*: le dipendenze vengono passate attraverso il costruttore al momento della creazione dell'oggetto.
- *Setter Injection*: le dipendenze vengono impostate tramite metodi specifici (setter) dopo l'istanziazione.

Nel progetto è stato usato il ... .

==== Motivi per la scelta
//TODO: questo non lo so

==== Utilizzo nel progetto
//TODO: più avanti quando l'architettura è più stabile




=== Altro Pattern
==== Descrizione

==== Motivi per la scelta

==== Utilizzo nel progetto



= Stato dei requisiti funzionali
== Stato per requisito <stato-requisito>

== Grafici riassuntivi <grafici>
