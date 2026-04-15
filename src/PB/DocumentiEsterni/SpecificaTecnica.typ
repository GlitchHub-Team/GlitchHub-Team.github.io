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
      "0.7.2",
      "14/04/2026",
      "Elia Ernesto Stellin",
      "-",
      [Tracciate nuove librerie usate lato backend; Inserimento versioni mancanti per tecnologie esistenti],
    ),
    (
      "0.7.1",
      "07/04/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Applicazione verifica su architettura esagonale],
    ),
    (
      "0.7.0",
      "03/04/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [Code diagram del Data Consumer e Gateway, database design],
    ),
    (
      "0.6.0",
      "02/04/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Aggiunto paragrafo per Architettura Esagonale],
    ),
    (
      "0.5.0",
      "02/04/2026",
      "Riccardo Graziani",
      "Jaume Bernardi",
      [Aggiornamento tecnologie frontend, descrizione pattern frontend, ampliata @comp-angular],
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
      [Inizio stesura sezione @design-patterns],
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
- *Documentazione #gloss[Angular]*:
  - #link("https://angular.dev/overview")[https://angular.dev/overview]
  - *Ultimo accesso*: 02/04/2026
- *Documentazione #gloss[Gin]*:
  - #link("https://gin-gonic.com/en/docs/")[https://gin-gonic.com/en/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione TimescaleDB*:
  - #link("https://docs.timescale.com/")[https://docs.timescale.com/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione #gloss[NATS]*:
  - #link("https://docs.nats.io/")[https://docs.nats.io/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione #gloss[Docker]*:
  - #link("https://docs.docker.com/")[https://docs.docker.com/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione #gloss[Grafana]*:
  - #link("https://grafana.com/docs/")[https://grafana.com/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione #gloss[Prometheus]*:
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
    [5.9.2],
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
    [21.1.0],
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
    [Latest#footnote[
      Docker consente di replicare gli ambienti di sviluppo su qualunque sistema a prescindere dalla versione _minor_, per cui è importante che tutti gli sviluppatori del progetto ne utilizzino l'ultima versione disponibile.
    ]],
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
    [12.4.1],
    [#gloss[Grafana] è una piattaforma open-source per l'analisi e la visualizzazione di dati che permette di creare dashboard dinamiche e interattive. Supporta la rappresentazione grafica di metriche complesse attraverso pannelli altamente personalizzabili. È stata scelta per fornire agli utenti e agli amministratori uno strumento intuitivo per monitorare i dati raccolti dai sensori #gloss[BLE] in tempo reale. Consente di visualizzare immediatamente lo stato del sistema e identificare eventuali anomalie operative.],

    [Prometheus],
    [3.10.0],
    [#gloss[Prometheus] è un sistema di monitoraggio e allerta specializzato nella raccolta di metriche sotto forma di serie temporali. Utilizza un modello di recupero dati ottimizzato per le architetture a microservizi e ambienti cloud. Viene adottato per osservare le prestazioni dell'infrastruttura e i volumi di traffico gestiti dai #gloss[gateway]. La sua integrazione permette di generare alert automatici qualora un componente o un gateway smetta di funzionare correttamente.],
  ),
  [Tecnologie per il monitoraggio dei microservizi.],
  label-id: "tecn-monit-micr",
)

== Librerie
=== Librerie backend
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Nome*], [*Versione*], [*Descrizione*],

    [gomock],
    [0.6.0],
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
    [NATS Client è la libreria ufficiale per il linguaggio #gloss[Go] che permette l'interazione tra i servizi applicativi e il sistema di messaggistica #gloss[NATS]. Nel progetto viene impiegata per implementare i pattern di comunicazione asincrona, permettendo al #gloss[gateway] simulato di pubblicare i dati dei sensori e al data consumer di sottoscriversi ai flussi in ingresso.],

    [gomail],
    [2.3.1],
    [gomail è una libreria che permette di interagire facilmente con qualunque server #gloss[SMTP] per l'invio di messaggi di posta elettronica. Nel progetto, viene utilizzata per l'invio di email per la conferma account e il cambio della password dimenticata.],

    [go-smtp-mock],
    [2.5.4],
    [go-smtp-mock è una libreria per istanziare server #gloss[SMTP] locali di test. Nel contesto del progetto, è utilizzato nei #gloss[test d'integrazione] per verificare il corretto invio delle email da parte del backend della piattaforma #gloss[Cloud].],

    [go-gin-prometheus],
    [1.0.3],
    [go-gin-prometheus è una libreria utilizzata per esporre le metriche di un qualunque web server in un formato leggibile da #gloss[Prometheus]. Nel contesto del progetto, viene utilizzata per esporre le metriche del Cloud backend, in modo tale che siano visibili sulla dashboard #gloss[Grafana].]
  ),
  [Librerie backend],
  label-id: "librerie-backend",
)\

=== Librerie frontend
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Nome*], [*Versione*], [*Descrizione*],
    
    [RxJS],
    [7.8.0],
    [RxJS è una libreria per la programmazione reattiva in #gloss[JavaScript] e #gloss[TypeScript], che consente di gestire flussi di dati asincroni e basati su eventi attraverso l'uso di _Observable_. Nel progetto viene utilizzata principalmente nel frontend #gloss[Angular] per orchestrare la gestione dei dati in tempo reale provenienti dai sensori #gloss[BLE], facilitando la sincronizzazione tra le interfacce utente e i servizi backend.],

    [Angular Material],
    [21.2.1],
    [Angular Material è una libreria di componenti UI per #gloss[Angular] che implementa le linee guida di design _Material Design_ di Google. Fornisce una vasta gamma di componenti predefiniti, come bottoni, form, tabelle e layout, che permettono di creare interfacce utente moderne, responsive e accessibili in modo rapido e coerente. Nel progetto viene utilizzata per costruire la dashboard, garantendo un aspetto professionale e una user experience intuitiva.],

    [tslib],
    [2.3.0],
    [tslib è una libreria per il linguaggio #gloss[TypeScript] che fornisce helper runtime per le funzionalità del linguaggio, come l'estensione delle classi, la gestione dei decoratori e altre operazioni comuni. Nel progetto viene utilizzata per ottimizzare il codice #gloss[TypeScript] compilato e ridurre la duplicazione di codice tra i moduli.],

    [Chart.js],
    [4.5.1],
    [Chart.js è una libreria #gloss[JavaScript] per la creazione di grafici interattivi e personalizzabili. Nel progetto viene utilizzata nel frontend #gloss[Angular] per visualizzare i dati dei sensori in tempo reale e storici attraverso grafici dinamici e intuitivi.],

    [ng2-charts],
    [10.0.0],
    [ng2-charts è una libreria _wrapper_ che fornisce componenti per integrare Chart.js nelle applicazioni #gloss[Angular], facilitando la creazione di grafici reattivi e personalizzabili.],

    [jsdom],
    [27.1.0],
    [jsdom è una libreria #gloss[JavaScript] che fornisce un'implementazione del DOM e di altre API web standard in ambiente #gloss[Node.js], permettendo di eseguire test e manipolazioni del DOM senza la necessità di un browser reale. Nel progetto viene utilizzata principalmente nei test di unità del frontend #gloss[Angular] per simulare l'ambiente del browser e verificare il comportamento dei componenti che interagiscono con il DOM.],
  ),
  [Librerie frontend],
  label-id: "librerie-frontend",
)

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

    [ESLint],
    [10.0.2],
    [ESLint è uno strumento di analisi statica per il linguaggio #gloss[JavaScript] e #gloss[TypeScript], progettato per identificare e correggere problemi di stile, errori di sintassi e potenziali bug nel codice.],

    [Prettier],
    [3.8.1],
    [Prettier è un formattatore di codice per #gloss[JavaScript], #gloss[TypeScript] e altri linguaggi, progettato per applicare uno stile di codifica coerente e uniforme. Automatizza la formattazione del codice secondo regole predefinite, migliorando la leggibilità e riducendo le discussioni sullo stile all'interno del team di sviluppo.],
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

    [Vitest],
    [4.0.8],
    [Vitest è un framework di test per #gloss[JavaScript] e #gloss[TypeScript], progettato per essere veloce e leggero, con supporto per test unitari, test di integrazione e test end-to-end. Offre funzionalità come il mocking, la copertura del codice e l'esecuzione parallela dei test, rendendolo adatto a progetti di qualsiasi dimensione. Nel progetto viene utilizzato principalmente per i test del frontend #gloss[Angular], garantendo la qualità e l'affidabilità del codice che gestisce l'interfaccia utente e le interazioni con i servizi backend.],
  ),
  [Tecnologie per analisi dinamica.],
  label-id: "tecn-anal-din",
)\


= Architettura <architettura>
L'architettura del sistema è basata su un modello a *microservizi*, in cui ogni componente funzionale viene eseguito come un'unità indipendente e isolata per garantire la massima resilienza dell'intero ecosistema.


== Design Patterns <design-patterns>
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
Il pattern #gloss[Dependency Injection] è un design pattern strutturale che consente di rendere
esplicite le dipendenze di un oggetto.
Invece di creare direttamente le dipendenze all'interno delle classi o dei componenti, queste
possono essere fornite dall'esterno: in questo modo, un componente dichiara le sue
dipendenze senza doversi preoccupare di istanziarle, permettendo dunque una maggiore
modularità tra i diversi componenti del Sistema.

Esistono principalmente due modalità di implementazione:
- *Constructor Injection*: le dipendenze vengono passate attraverso il costruttore al momento della creazione dell'oggetto.
- *Setter Injection*: le dipendenze vengono impostate tramite metodi specifici (setter) dopo l'istanziazione.

Nel progetto è stato usato il ... .

==== Motivi per la scelta
//TODO: questo non lo so
Per quanto riguarda il *frontend*, #gloss[Angular] offre un sistema di _dependency injection_ integrato e altamente efficiente, che consente di gestire le dipendenze tra i componenti in modo dichiarativo e modulare, evitando la necessità di istanziare manualmente i servizi o di gestire le dipendenze in modo esplicito all'interno dei componenti.

==== Utilizzo nel progetto
//TODO: più avanti quando l'architettura è più stabile
Nel *frontend* #gloss[Angular], la _dependency injection_ è utilizzata per gestire le dipendenze tra i componenti, i servizi e altri elementi dell'applicazione. Tramite il metodo `inject()` è infatti possibile iniettare le dipendenze necessarie direttamente nei componenti. Ad esempio, i servizi che gestiscono la comunicazione con il backend o la gestione dello stato dell'applicazione vengono iniettati nei componenti che ne hanno bisogno, garantendo un'architettura modulare e facilmente testabile.

=== Observer
==== Descrizione
Il pattern _Observer_ è un design pattern comportamentale che definisce una relazione di dipendenza uno-a-molti tra oggetti, in cui un oggetto (il _subject_) mantiene una lista di dipendenti (_observers_) e notifica loro automaticamente ogni cambiamento di stato. Questo approccio consente di implementare un sistema di comunicazione efficiente e flessibile, in cui i componenti possono reagire dinamicamente agli eventi senza essere strettamente accoppiati.

==== Motivi per la scelta
I *signals* di #gloss[Angular] sono stati scelti per implementare il pattern _Observer_ all'interno del frontend poiché offrono un meccanismo reattivo e performante per gestire lo stato dell'applicazione. Questo pattern è particolarmente utile per sincronizzare la visualizzazione dei dati dai _services_ ai _components_, garantendo che ogni cambiamento nei dati venga automaticamente riflesso nell'interfaccia utente senza la necessità di interventi manuali o di gestione complessa dello stato.

==== Utilizzo nel progetto
Nel progetto, il pattern _Observer_ è implementato principalmente attraverso i _signals_ di #gloss[Angular], che permettono ai componenti di sottoscriversi a flussi di dati provenienti dai servizi. Tutti i dati provenienti dal backend (come ad esempio i dati dei sensori, l'elenco dei gateway/sensori, i dati storici, etc.) vengono salvati e gestiti attraverso _signals_, creati con il metodo `signal()`. Tali dati sono poi esposti dai servizi attraverso relative istanze _readonly_.

I componenti dell'interfaccia utente possono quindi sottoscriversi a tale istanze per ricevere aggiornamenti in tempo reale, garantendo una sincronizzazione efficiente e reattiva tra il backend e la visualizzazione dei dati.

=== Altro Pattern
==== Descrizione

==== Motivi per la scelta

==== Utilizzo nel progetto

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
Il cuore della navigazione è affidato all'Angular Router, che coordina il caricamento dei componenti in base all'URL e permette all'utente di autenticarsi tramite il componente Authentication Management. La sicurezza è garantita dal Role Guard, che verifica i privilegi dell'utente (Admin o utente generico) prima di inizializzare il layout.
La struttura del frontend è organizzata in moduli funzionali, ognuno dedicato a una specifica area di funzionalità:

===== Dashboard <comp-angular-dashboard>
Il modulo dashboard rappresenta la schermata principale della SPA Angular, in cui l'utente può visualizzare:
- dati in tempo reale: grafici dinamici che mostrano i valori dei sensori aggiornati in tempo reale, grazie alla sottoscrizione a flussi di dati via webSocket;
- dati storici: grafici e tabelle che permettono di esplorare i dati raccolti nel tempo, con filtri per intervalli temporali, tipi di sensori e gateway specifici;
- elenco dei gateway e dei sensori: una panoramica dei dispositivi attivi, con la possibilità di visualizzare dettagli specifici e lo stato di salute di ciascuno.

===== Gestione utenti <comp-angular-utenti>
Il modulo gestione utenti consente agli amministratori di creare, modificare e cancellare utenti, assegnare loro ruoli e gestire i tenant. Include funzionalità per:
- creazione di nuovi utenti con specifici privilegi;
- eliminazione di utenti esistenti.

===== Gestione tenant <comp-angular-tenant>
Il modulo gestione tenant permette agli amministratori di creare e configurare nuovi tenant e assegnare gateway e sensori a ciascun tenant. Le funzionalità includono:
- creazione di nuovi tenant con configurazioni personalizzate;
- assegnazione di gateway e sensori a tenant specifici.

===== Gestione gateway e sensori <comp-angular-gateway>
Il modulo gestione gateway e sensori consente agli amministratori di configurare i gateway e i sensori simulati, definendo le caratteristiche dei dati generati e le modalità di comunicazione. Le funzionalità includono:
- configurazione dei gateway simulati, inclusa la definizione dei sensori associati e delle caratteristiche dei dati generati.
- possibilità di inviare comandi specifici ai gateway simulati, ad esempio per riavviare o reimpostare tali gateway.

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
=== Architettura esagonale <architettura-esagonale>
L'architettura esagonale è un modello architetturale che separa nettamente la logica di dominio dal codice infrastrutturale correlato, definendo un nucleo applicativo indipendente da dettagli tecnici quali protocolli di comunicazione, database o framework. Il nucleo, infatti, comunica con tali componenti esterni tramite delle interfacce dette _ports_, implementate da oggetti concreti detti _adapters_ che permettono alla _business logic_ dell'applicazione di comunicare con le componenti esterne usando un linguaggio disaccoppiato dalle specifiche infrastrutturale delle componenti esterne.

In questo modo la logica di business rimane testabile e disaccoppiata dal resto, consentendo di progettare e sviluppare la logica fondamentale dell'applicativo in maniera pura e indipendente dalle tecnologie infrastrutturale scelte, le quali diventano potenzialmente sostituibili in futuro.

Questa strategia si traduce in componenti applicativi facilmente intercambiabili come database, UX e componenti di servizio, che possono essere testati in modo indipendente.

Il sistema sviluppato sfrutta i principi sopra menzionati per disaccoppiarne le parti in maniera coerente con il component diagram, isolando ad esempio la logica di aggregazione dalla logica di persistenza e dal codice che comunica con il message broker. Tra i vantaggi di questo approccio si possono sottolineare:
- Una maggiore semplicità nello scrivere test unitari in modo isolato per ogni componente ad ogni strato, tramite l'uso dei _mock_ per i relativi input e output;
- La stessa logica di dominio è riutilizzabile da più tipi di client grazie all'interscambiabilità di porte e adapter, che isolano il core dalle specifiche interfacce;
- Eventuali aggiornamenti alle tecnologie non influiscono sulla logica di business dell'applicazione.

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
  image("../../assets/c4/gateway/GatewayControllersCodeDiagram.pdf", width: 100%),
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
  image("../../assets/c4/gateway/GatewayManagerCodeDiagram.pdf", width: 100%),
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

===== GatewayWorker <gateway-worker>
Il *GatewayWorker* è la struct che rappresenta un singolo gateway simulato dal punto di vista del *GatewayManagerService*.

Contiene i seguenti campi:
- *Sender*: riferimento all'interfaccia *DataSender*, contiene tutti i metodi che il gateway simulato può eseguire, tuttavia viene utilizzato per passare ai comandi un'interfaccia con meno metodi disponibili (Interface Segregation Principle). Un esempio può essere quando si passa *DataSender* al comando *CommissionGatewayCmd*, il quale per eseguire il commissioning del gateway ha bisogno solo del metodo *Commission()*, infatti *DataSender* è contiene l'interfaccia *DataSenderCommissioner* la quale possiede solo quel metodo.
- *CmdChannel*: canale di tipo *chan BaseCommand* per comunicare o ricevere i comandi da eseguire.
- *ErrChannel*: canale di tipo *chan error* per ascoltare o inviare eventuali errori avvenuti durante l'esecuzione dei comandi.

===== SensorWorker <sensor-worker>
Il *SensorWorker* è la struct che rappresenta un singolo sensore simulato dal punto di vista del *GatewayManagerService*.

Contiene i seguenti campi:
- *SimulatedSensor*: riferimento all'interfaccia *SimulatedSensor*, contiene tutti i metodi che il sensore simulato può eseguire e viene utilizzato con lo stesso principio di *Sender* in *GatewayWorker*.
- *CmdChannel*: canale di tipo *chan BaseCommand* per comunicare o ricevere i comandi da eseguire.
- *ErrChannel*: canale di tipo *chan error* per ascoltare o inviare eventuali errori avvenuti durante l'esecuzione dei comandi.

==== Comandi dei gateway e dei sensori simulati
Come abbiamo visto nella sezione precedente il *GatewayManagerService* riceve i dati dei comandi dai controller ed ha il compito di creare l'istanza del comando attraverso un'interfaccia comune *BaseCommand*, ciò per permettere di inviare ogni comando attraverso il *channel* specifico del *Gateway Worker* o *Sensor Worker* destinatario.

Ogni comando ha un'implementazione specifica, ma tutti condividono la stessa interfaccia *BaseCommand* che prevede un unico metodo *Execute() error*, il quale esegue il comando e restituisce un eventuale errore.\

Essi vengono eseguiti tutti nel gateway simulato o nel sensore simulato destinatario del comando, così da garantire l'esecuzione di un comando alla volta per componente. Eccezione fatta per i comandi *CreateGatewayCmd* e *AddSensorCmd* che vengono eseguiti direttamente dal *GatewayManagerService* per poter aggiungere il nuovo gateway o sensore alle strutture dati del servizio e far partire l'esecuzione dello stesso.

#figure(
  image("../../assets/c4/gateway/CommandsCodeDiagram.pdf", width: 100%),
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
  - Salva la configurazione del nuovo gateway nel sistema di persistenza tramite il metodo *CreateGateway(cmdData \*CreateGateway, credentials \*Credentials, status GatewayStatus)* dell'interfaccia *GatewayCreatorPort*.
  - Invia un messaggio di hello dal nuovo gateway simulato tramite NATS comunicando il proprio *gatewayId* e la propria *chiave pubblica* attraverso il metodo *Hello()*. dell'interfaccia *GatewayGreeter*.
  - Avvia l'esecuzione del nuovo gateway simulato con una *goroutine* attraverso il metodo *Start()* dell'interfaccia *DataSenderStarter*.

===== DecommissionGatewayCmd
Il comando *DecommissionGatewayCmd* ha lo scopo di decommissionare un gateway simulato, modificandone lo stato e impedendogli di inviare dati IoT.
La struct ha i seguenti attributi e metodi:
- *cmdData*: riferimento alla struct di tipo *DecommissionGateway* contenente il *gatewayId* del gateway da decommissionare.
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
- *cmdData*: riferimento alla struct di tipo *DeleteGateway* contenente il *gatewayId* del gateway da eliminare.
- *configService*: riferimento all'interfaccia *GatewayDeleterPort*, la quale rappresenta l'outbound port per eliminare il gateway nel sistema di persistenza.
- *senderStopper*: riferimento all'interfaccia *DataSenderStopper*, la quale ha il compito di interrompere permanentemente l'esecuzione del gateway simulato.
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
  - Elimina il gateway nel sistema di persistenza tramite il metodo *DeleteGateway(cmdData \*DeleteGateway)* dell'interfaccia *GatewayDeleterPort*.
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
- *Execute() error*: è il metodo che esegue il comando svolgendo i seguenti passi:
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
Il gateway simulato è un insieme di componenti che ha lo scopo di simulare il comportamento di un gateway IoT reale, ascoltando comandi in ingresso e di svuotare periodicamente un buffer interno di dati generati dai sensori simulati associati, inviandoli via #gloss[NATS JetStream].

Il gateway simulato è fatto partire dal comando *CreateGatewayCmd* come una *goroutine* separata, in modo da eseguire ogni gateway simulato in parallelo e garantire l'esecuzione di un comando alla volta per gateway.\

Ogni gateway simulato ha due *channel*: uno per ricevere i comandi di tipo *BaseCommand* e uno per inviare eventuali errori al *GatewayManagerService* in caso di problemi durante l'esecuzione dei comandi.


#figure(
  image("../../assets/c4/gateway/GatewayCodeDiagram.pdf", width: 100%),
  caption: [Code Diagram del gateway simulato],
)

===== BufferedDataSenderService
Il *BufferedDataSenderService* è il componente che rappresenta l'effettivo gateway simulato e le azioni che può eseguire. È l'implementazione dell'interfaccia *DataSender* la quale ha incorporato le seguenti interfacce: *DataSenderStarter*, *DataSenderStopper*,*DataSenderInterrupter*, *DataSenderResumer*, *DataSenderResetter*, *DataSenderCommissioner*, *DataSenderDecommissioner* e *DataSenderGreeter*, le quali rappresentano le azioni che si possono eseguire sul gateway simulato per modificarne il comportamento.

La struct ha i seguenti attributi e metodi:
- *gateway*: è una struct di tipo *Gateway* che contiene la configurazione del gateway simulato (@gateway-struct).
- *sendDataPort*: riferimento all'interfaccia *SendSensorDataPort*, la quale rappresenta l'outbound port per inviare i dati generati dai sensori simulati e il messaggio di hello associati al gateway tramite NATS JetStream.
- *sendSensorDataPortFactory*: riferimento all'interfaccia *SendSensorDataPortFactory*, utile a creare una nuova istanza di tipo *SendSensorDataPort* per ogni gateway simulato, in modo che tutti i gateway abbiano un'istanza dedicata per inviare eventualmente i dati via NATS con credenziali che cambiano a runtime.
- *bufferedDataPort*: riferimento all'interfaccia *BufferedDataPort*, utile ad ottenere i dati all'interno del buffer per il gateway simulato, in modo da svuotarlo periodicamente inviando i dati generati dai sensori simulati associati tramite NATS JetStream.
- *cmdChannel*: canale di tipo *chan BaseCommand* per ricevere i comandi da eseguire sul gateway simulato.
- *errChannel*: canale di tipo *chan error* per inviare eventuali errori al *GatewayManagerService* in caso di problemi durante l'esecuzione dei comandi.
- *ticker*: riferimento ad una struct di tipo *time.Ticker* per gestire l'intervallo di tempo tra gli invii dei dati generati dai sensori simulati associati al gateway.
- *Start()*: è il metodo che avvia l'esecuzione del gateway simulato. Ascolta costantemente i comandi in arrivo dal *cmdChannel* e li esegue, inoltre svuota periodicamente il buffer interno secondo il *ticker* definito inviando i dati tramite l'interfaccia *SendSensorDataPort*.
- *Hello()*: è il metodo che invia un messaggio di hello tramite il metodo *Hello(gatewayId uuid.UUID, publicIdentifier string)* dell'interfaccia *SendSensorDataPort*.
- *Decommission()*: è il metodo che decommissiona il gateway simulato, cambia lo stato del gateway, pulisce il buffer interno e reimposta le credenziali di base.
- *Commission(tenantId uuid.UUID, commissionedToken string)*: è il metodo che commissiona il gateway simulato. Dato un *tenantId* e un *commissionedToken* (JWT basato sulla public key del gateway), aggiorna le credenziali del gateway simulato e lo associa al nuovo tenant.
- *Reset()*: è il metodo che resetta la configurazione del gateway simulato, in questo caso resetta l'intervallo di invio dei dati al valore di default (5 secondi) e svuota il buffer interno.
- *Interrupt()*: è il metodo che interrompe temporaneamente l'esecuzione del gateway simulato, cambia lo stato del gateway in *inactive*.
- *Resume()*: è il metodo che riattiva un gateway simulato precedentemente interrotto, cambia lo stato del gateway in *active*.
- *Stop()*: è il metodo che interrompe permanentemente l'esecuzione del gateway simulato, cambia lo stato del gateway in *stopped*.

===== Gateway <gateway-struct>
La struct *Gateway* rappresenta la configurazione del gateway simulato, contiene i seguenti campi:
- *Id*: UUID del gateway simulato.
- *TenantId*: eventuale UUID del tenant a cui è associato il gateway simulato (in caso di gateway commissionato).
- *Sensors*: mappa dei sensori associati al gateway con chiave UUID e valore di tipo *Sensor* che contiene la configurazione del sensore (@sensor-struct).
- *Status*: enum di tipo *GatewayStatus* rappresentante lo stato corrente del gateway.
- *Interval*: intervallo di tempo tra gli invii di dati.
- *PublicIdentifier*: stringa rappresentante la chiave pubblica del gateway.
- *SecretKey*: stringa rappresentante la chiave privata del gateway.
- *Token*: stringa rappresentante il token (JWT) di autenticazione del gateway.

===== GatewayStatus <gateway-status-enum>
L'enum *GatewayStatus* rappresenta lo stato del gateway simulato, i possibili stati sono:
- *Active*: il gateway simulato è attivo e può inviare regolarmente dati IoT.
- *Inactive*: il gateway simulato è interrotto temporaneamente e non invia dati IoT, ma può essere riattivato successivamente.
- *Decommissioned*: il gateway simulato è decommissionato, ovvero non è associato a nessun tenant. Inoltre non invia dati IoT, ma può ricevere comandi, come ad esempio il comando di commissioning per essere associato ad un tenant e tornare attivo.
- *Stopped*: il gateway simulato è interrotto permanentemente, non invia dati IoT e non può essere riattivato successivamente.

#figure(
  image("../../assets/c4/gateway/GatewayStatus.pdf", width: 100%),
  caption: [Workflow dei possibili stati del gateway simulato],
)

===== NATSDataPublisherFactory
Il *NATSDataPublisherFactory* è l'implementazione dell'interfaccia *SendSensorDataPortFactory* che ha lo scopo di creare una nuova istanza di tipo *SendSensorDataPort* per ogni gateway simulato, in modo che tutti i gateway abbiano un'istanza dedicata per inviare eventualmente i dati via NATS con credenziali che cambiano a runtime.\
La struct ha i seguenti attributi e metodi:
- *nc*: riferimento a *nats.Conn* rappresentante la connessione a NATS. Viene passata la connessione di base (permette messaggi di hello e ricezione comandi) via #gloss[dependency injection] al momento della creazione della *NATSDataPublisherFactory*.
- *js*: riferimento a *jetstream.JetStream* che rappresenta il contesto JetStream per l'invio dei dati tramite #gloss[NATS JetStream]. Viene creato a partire dalla connessione a NATS.
- *caPemPath*: stringa rappresentante il percorso del certificato CA in formato *.pem* per la connessione via *TLS* con NATS.
- *address*: stringa rappresentante l'indirizzo del server NATS.
- *port*: stringa rappresentante la porta del server NATS.
- *Create() SendSensorDataPort*: è il metodo che crea e restituisce una nuova istanza di tipo *SendSensorDataPort* (ovvero *NATSDataPublisherRepository*) con le credenziali di base, utile per inviare i messaggi di hello e per l'ascolto di comandi per i gateway o sensori simulati.
- *Reload(token string, seed string) (SendSensorDataPort, error)*: è il metodo che dato il nuovo token (JWT basato sulla public key del gateway) e la chiave privata del gateway, crea e restituisce una nuova istanza di tipo *SendSensorDataPort* (ovvero *NATSDataPublisherRepository*) con le nuove credenziali.

===== NATSDataPublisherRepository
La struct *NATSDataPublisherRepository* è l'implementazione dell'interfaccia *SendSensorDataPort* che ha lo scopo di inviare i dati IoT e i messaggi di hello tramite *NATS JetStream*.

La struct ha i seguenti attributi e metodi:
- *nc*: riferimento a *nats.Conn* rappresentante la connessione a NATS.
- *js*: riferimento a *jetstream.JetStream* la quale rappresenta il contesto JetStream per l'invio dei dati tramite #gloss[NATS JetStream].
- *Send(d \*sensorData, tenantId uuid.UUID) error*: è il metodo che, data una misurazione IoT di tipo *sensorData* (vedi @sensor-data-struct), la invia tramite *NATS* al subject specifico per il tenant di appartenenza del gateway simulato.
- *Hello(gatewayId uuid.UUID, publicIdentifier string) error*: è il metodo che invia un messaggio di hello tramite *NATS JetStream* al subject specifico per i messaggi di hello, comunicando il *gatewayId* e la *chiave pubblica* del gateway simulato.

===== BufferedDataRepository
La struct *BufferedDataRepository* è l'implementazione dell'interfaccia *BufferedDataPort* che ha lo scopo di gestire un buffer interno di dati generati dai sensori simulati associati al gateway, in modo da ottenerne i dati e svuotarlo periodicamente.

La struct ha i seguenti attributi e metodi:
- *dbConnection*: riferimento a *BufferDbConnection*, rappresentante la connessione al database per il buffer interno dei dati generati dai sensori simulati associati al gateway.
- *GetOrderedBufferedData(gatewayId uuid.UUID) ([]\*sensorData, error)*: è il metodo che dato un *gatewayId* restituisce un array ordinato di *sensorData* rappresentante i dati presenti nel buffer interno del gateway simulato.
- *CleanBufferedData(data []\*sensorData) error*: è il metodo che dato un array di *sensorData* li elimina dal database del buffer interno.
- *CleanWholeBuffer(gatewayId uuid.UUID) error*: è il metodo che dato un *gatewayId* elimina tutti i dati presenti nel buffer interno del gateway simulato.

===== SensorData <sensor-data-struct>
La struct *sensorData* rappresenta la misurazione IoT generata da un sensore simulato, contiene i seguenti campi:
- *SensorId*: UUID del sensore simulato che ha generato la misurazione
- *GatewayId*: UUID del gateway simulato a cui è associato il sensore che ha generato la misurazione.
- *Timestamp*: timestamp rappresentante il momento in cui è stata generata la misurazione.
- *Profile*: stringa rappresentante il profilo del sensore simulato che ha generato la misurazione, utile per identificare il tipo di dato generato.
- *Value*: array di byte rappresentante il o i valori della misurazione generata, è un array di byte per permettere di rappresentare qualsiasi tipo di dato.

==== Sensore simulato
Il sensore simulato è un insieme di componenti che ha lo scopo di simulare il comportamento di un sensore IoT reale, generando periodicamente delle misurazioni IoT e salvandole nel buffer interno del gateway simulato.

Il sensore simulato è fatto partire dal comando *AddSensorCmd* come una *goroutine* separata, in modo da eseguire ogni sensore simulato in parallelo.

Ogni sensore simulato ha due channel: uno per ricevere i comandi di tipo *BaseCommand* e uno per inviare eventuali errori al *GatewayManagerService* in caso di problemi durante l'esecuzione dei comandi.

#figure(
  image("../../assets/c4/gateway/SensorCodeDiagram.pdf", width: 100%),
  caption: [Code Diagram del sensore simulato],
)

===== SensorService
Il *SensorService* è l'implementazione dell'interfaccia *SimulatedSensor* la quale definisce le azioni che un sensore simulato può eseguire per modificare il proprio comportamento.\

La struct ha i seguenti attributi e metodi:
- *sensor*: è una struct di tipo *Sensor* che contiene la configurazione del sensore simulato (@sensor-struct).
- *bufferedDataPort*: riferimento all'interfaccia *SaveSensorDataPort*, la quale rappresenta l'outbound port per salvare i dati generati dal sensore simulato nel buffer interno del gateway simulato.
- *cmdChannel*: riferimento al canale di tipo *chan BaseCommand* per ricevere i comandi.
- *errChannel*: riferimento al canale di tipo *chan error* per inviare eventuali errori in caso di problemi durante l'esecuzione dei comandi.
- *Start()*: è il metodo che avvia l'esecuzione del sensore simulato. Genera periodicamente delle misurazioni IoT secondo la configurazione del sensore e le salva nel buffer interno del gateway simulato tramite l'interfaccia *SaveSensorDataPort*. Inoltre ascolta costantemente i comandi in arrivo dal *cmdChannel* e li esegue.
- *Stop()*: è il metodo che interrompe permanentemente l'esecuzione del sensore simulato cambiando lo stato del sensore in *stopped*.
- *Interrupt()*: è il metodo che interrompe temporaneamente l'esecuzione del sensore simulato cambiando lo stato del sensore in *inactive*.
- *Resume()*: è il metodo che riattiva un sensore simulato precedentemente interrotto cambiando lo stato del sensore in *active*.

===== Sensor <sensor-struct>
La struct *Sensor* rappresenta la configurazione del sensore simulato, contiene i seguenti campi:
- *Id*: UUID del sensore simulato.
- *GatewayId*: UUID del gateway simulato a cui è associato il sensore.
- *Profile*: interfaccia rappresentante il profilo del sensore simulato, utile per identificare il tipo di dato generato e per la generazione delle misurazioni (vedi @sensor-profile).
- *Interval*: intervallo di tempo in millisecondi tra la generazione di due misurazioni consecutive.
- *Status*: enum di tipo *SensorStatus* (vedi @sensor-status-enum) rappresentante lo stato corrente del sensore.

===== SensorStatus <sensor-status-enum>
L'enum *SensorStatus* rappresenta lo stato del sensore simulato, i possibili stati sono:
- *Active*: il sensore simulato è attivo e può generare misurazioni IoT. È lo stato di default alla creazione
- *Inactive*: il sensore simulato è interrotto temporaneamente e non può generare misurazioni IoT, ma può essere riattivato successivamente.
- *Stopped*: il sensore simulato è interrotto permanentemente, non può generare misurazioni IoT e non può essere riattivato successivamente.

===== SensorProfile <sensor-profile>
L'interfaccia *SensorProfile* rappresenta il profilo del sensore simulato e definisce il metodo *Generate() \*GeneratedSensorData*, che produce una nuova misurazione in base al profilo selezionato.\
Espone inoltre il metodo *String() string* per ottenere il nome del profilo in forma testuale, utile per identificare in modo univoco il tipo di dato generato.

I profili supportati sono i seguenti:
- *ECG*: genera un tracciato elettrocardiografico simulato, rappresentato da un array di interi che rappresentano i valori del tracciato in *uV*.
- *EnvironmentalSensing*: genera misure ambientali, come temperatura, umidità e pressione atmosferica. Le rispettive unità di misura sono: temperatura in *°C*, umidità in *%* e pressione atmosferica in *Pascal*.
- *HealthThermometer*: genera la temperatura corporea e specifica l'unità di misura per differenziare eventuali formati di misura.
- *HeartRate*: genera la frequenza cardiaca in *bpm*.
- *PulseOximeter*: genera saturazione di ossigeno (*SpO2*) e frequenza cardiaca.

Ogni profilo implementa il metodo *Generate()* in modo da ritornare una struct di tipo *GeneratedSensorData* (vedi @generated-sensor-data).

===== GeneratedSensorData <generated-sensor-data>
La struct *GeneratedSensorData* rappresenta il contenitore comune di una misurazione prodotta da qualunque profilo sensore.
Contiene i seguenti campi:
- *SensorId*: UUID del sensore simulato che ha generato la misurazione.
- *Timestamp*: istante di generazione della misurazione.
- *Profile*: nome del profilo che ha prodotto il dato.
- *Data*: payload della misurazione, tipizzato come interfaccia *SerializableData* (vedi @serializable-data).

===== SerializableData <serializable-data>
L'interfaccia *SerializableData* definisce il contratto di serializzazione dei dati di misura tramite il metodo *Serialize() ([]byte, error)*.
Ogni struttura dati specifica di profilo implementa questo metodo serializzando il contenuto in formato JSON, così da ottenere una rappresentazione uniforme e trasportabile indipendentemente dal tipo concreto della misurazione.

===== SQLiteSaveSensorDataRepository
La struct *SQLiteSaveSensorDataRepository* è l'implementazione dell'interfaccia *SaveSensorDataPort* che ha lo scopo di salvare i dati generati dai sensori simulati nel buffer interno del gateway simulato, utilizzando un database SQLite come sistema di persistenza per il buffer interno.

La struct ha i seguenti attributi e metodi:
- *dbConnection*: riferimento a *BufferDbConnection*, rappresentante la connessione al database per il buffer interno dei dati generati dai sensori simulati associati al gateway.
- *Save(data \*GeneratedSensorData, gatewayId uuid.UUID) error*: è il metodo che data una misurazione di tipo *GeneratedSensorData* e un *gatewayId*, lo salva nel database del buffer interno serializzando il campo *Data* della struct tramite il metodo *Serialize()* dell'interfaccia *SerializableData*.



==== Configurazione persistente dei gateway e dei sensori simulati
Il *GatewayManagerService* utilizza un sistema di persistenza per salvare la configurazione dei gateway e dei sensori simulati, in modo da poterla recuperare in caso di riavvio del servizio o di crash.\

Il sistema di persistenza si basa sulla definizione di un'interfaccia *ConfigPort* che aggrega interfacce più specifiche, in questo modo il *GatewayManagerService* passa *ConfigPort* ai comandi per operare sul database di configurazione, mentre ciascun comando dipende solo dall'interfaccia specifica di cui ha bisogno, nel rispetto dell'Interface Segregation Principle.

#figure(
  image("../../assets/c4/gateway/ConfigCodeDiagram.pdf", width: 100%),
  caption: [Code Diagram della configurazione persistente dei gateway e dei sensori simulati],
)

===== SQLiteConfigRepository
La struct *SQLiteConfigRepository* è l'implementazione dell'interfaccia *ConfigPort* la quale contiene le seguenti interfacce:
- *GatewaysFetcherPort*:
- *GatewayCommissionerPort*:
- *GatewayCreatorPort*
- *GatewayDecommissionerPort*
- *GatewayDeleterPort*
- *GatewayInterrupterPort*
- *GatewayResetterPort*
- *GatewayResumerPort*
- *SensorInterrupterPort*
- *SensorResumerPort*
- *SensorAdderPort*
- *SensorDeleterPort*

Contiene i seguenti attributi e metodi:
- *dbConnection*: riferimento a *ConfigDbConnection*, rappresentante la connessione al database per la configurazione dei gateway e dei sensori simulati.
- *AddSensor(cmdData \*AddSensor, status SensorStatus) error*: è il metodo che salva la configurazione di un nuovo sensore nel database. Implementazione dell'interfaccia *SensorAdderPort*.
- *DeleteSensor(cmdData \*DeleteSensor) error*: è il metodo che elimina il sensore dal database. Implementazione dell'interfaccia *SensorDeleterPort*.
- *InterruptSensor(cmdData \*InterruptSensor, status SensorStatus) error*: è il metodo che aggiorna lo stato del sensore nel database dopo un'interruzione temporanea (vedi @sensor-status-enum). Implementazione dell'interfaccia *SensorInterrupterPort*.
- *ResumeSensor(cmdData \*ResumeSensor, status SensorStatus) error*: è il metodo che aggiorna lo stato del sensore nel database dopo una riattivazione (vedi @sensor-status-enum). Implementazione dell'interfaccia *SensorResumerPort*.
- *CommissionGateway(cmdData \*CommissionGateway, status GatewayStatus) error*: è il metodo che salva le informazioni di commissioning di un gateway nel database (vedi @gateway-status-enum). Implementazione dell'interfaccia *GatewayCommissionerPort*.
- *CreateGateway(cmdData \*CreateGateway, credentials \*Credentials, status GatewayStatus) error*: è il metodo che salva la configurazione di un nuovo gateway e le sue credenziali nel database (vedi @gateway-struct). Implementazione dell'interfaccia *GatewayCreatorPort*.
- *DecommissionGateway(cmdData \*DecommissionGateway, status GatewayStatus) error*: è il metodo che decommissiona un gateway nel database, ovvero lo disassocia dal tenant (vedi @gateway-status-enum). Implementazione dell'interfaccia *GatewayDecommissionerPort*.
- *DeleteGateway(cmdData \*DeleteGateway) error*: è il metodo che elimina un gateway dal database. Implementazione dell'interfaccia *GatewayDeleterPort*.
- *InterruptGateway(cmdData \*InterruptGateway, status GatewayStatus) error*: è il metodo che aggiorna lo stato del gateway nel database dopo un'interruzione temporanea (vedi @gateway-status-enum). Implementazione dell'interfaccia *GatewayInterrupterPort*.
- *ResetGateway(cmdData \*ResetGateway, defaultInterval time.Duration) error*: è il metodo che resetta la configurazione del gateway nel database, in questo caso resetta l'intervallo di invio dei dati al valore di default. Implementazione dell'interfaccia *GatewayResetterPort*.
- *ResumeGateway(cmdData \*ResumeGateway, status GatewayStatus) error*: è il metodo che aggiorna lo stato del gateway nel database dopo una riattivazione (vedi @gateway-status-enum). Implementazione dell'interfaccia *GatewayResumerPort*.
- *GetAllGateways() (map[uuid.UUID]\*Gateway, error)*: è il metodo che recupera tutti i gateway salvati nel database e li restituisce come mappa indicizzata per *gatewayId* (vedi @gateway-struct). Implementazione dell'interfaccia *GatewaysFetcherPort*.

=== Data Consumer
La seguente sezione ha lo scopo di descrivere il #gloss[Code Diagram] del microservizio *Data Consumer*, in continuità con il livello Component (vedi @comp-data).\

Il microservizio è *stateless* il che lo rende facilmente scalabile orizzontalmente, poiché non mantiene alcuna informazione tra le richieste. Perciò è possibile eseguire più istanze del servizio in parallelo, per aumentare la capacità di *consuming* dei dati IoT.\
Inoltre ogni istanza ha due parametri all'avvio che ne definiscono il comportamento, ovvero:
- *Batch size*: definisce la dimensione del batch che il consumer richiede a NATS, un batch più grande ottimizza gli inserimenti su TimescaleDB ma aumenta la latenza di visualizzazione dei dati, viceversa un batch più piccolo permette di visualizzare i dati quasi in tempo reale ma aumenta il carico sul database.
- *Subject*: definisce il subject NATS a cui il consumer si iscrive per ricevere i dati, più il subject è specifico più il carico sul consumer è ridotto, viceversa un subject più generico permette di ricevere più dati ma aumenta il carico sul consumer e sul database. È possibile così configurare i data consumer in base al carico di ogni sensore, gateway o addirittura tenant.

#figure(
  image("../../assets/c4/DataConsumerCodeDiagram.pdf", width: 100%),
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

==== SensorData <dc-sensor-data>
La struct *SensorData* rappresenta la singola misurazione IoT che viene salvata a database, è composta dai seguenti campi:
- *SensorId*: rappresenta lo UUID del sensore che ha generato il dato;
- *GatewayId*: rappresenta lo UUID del gateway a cui il sensore era collegato al momento della generazione del dato;
- *TenantId*: rappresenta lo UUID del tenant a cui il gateway appartiene;
- *Profile*: rappresenta il profilo BLE del sensore che ha generato il dato. I valori supportati sono: *ECG*, *EnvironmentalSensing*, *HealthThermometer*, *HeartRate* e *PulseOximeter* (in coerenza con @sensor-profile);
- *Timestamp*: rappresenta il timestamp di generazione del dato ed ha una precisione al millisecondo;
- *Value*: rappresenta il valore della misurazione, è un array di byte in quanto ogni profilo BLE ha un formato di dato diverso, ad esempio il profilo *ECG* genera un array di interi che rappresenta un tracciato ECG, mentre il profilo *HealthThermometer* genera un array di byte che rappresenta la temperatura corporea.

==== DataConsumerService
Il *DataConsumerService* è la parte di business logic del microservizio, è l'implementazione dell'interfaccia *StoreDataUseCase* e si occupa di inoltrare l'array di *SensorData* (vedi @dc-sensor-data) ricevuto dal *NATSBatchProcessor* all'outbound port *WriteDataPort*.\
Non ha un ruolo fondamentale, tuttavia è stato implementato per rispettare l'architettura esagonale e permettere di implementare ulteriore logica di business in futuro, ad esempio la validazione dei dati o l'invio di alert in caso di valori anomali.

==== TimescaleWriteDataRepository
Il *TimescaleWriteDataRepository* è l'outbound adapter del microservizio, è l'implementazione dell'interfaccia *WriteDataPort* e si occupa di scrivere i dati a database tramite *bulk insert* per sfruttare al meglio le potenzialità di TimescaleDB.\

La struct in questione ha i seguenti attributi e metodi:
- *dbConnection*: riferimento alla connessione a #gloss[TimescaleDB] di tipo *sql.DB*, utile per eseguire la query di inserimento massivo dei dati a database.
- *WriteData(data []\*SensorData, tenantId uuid.UUID) error*: metodo che si occupa dell'inserimento massivo dei dati a database, riceve un array di *SensorData* e il *tenantId* di appartenenza, costruisce una query di inserimento massivo e la esegue tramite la connessione a database, se l'inserimento va a buon fine restituisce nil, altrimenti restituisce l'errore riscontrato.



=== Frontend
La seguente sezione descrive in dettaglio il #gloss[Code Diagram] del frontend #gloss[Angular], che rappresenta l'interfaccia utente del sistema.

L'architettura logica scelta è la *Layered Architecture*, composta da tre livelli orizzontali a _dipendenza unidirezionale_: le dipendenze scorrono dalla *Presentation* verso il *Domain*, e dal *Domain* verso l'*Infrastructure*, senza mai invertirsi, garantendo che i livelli superiori rimangano indipendenti dai dettagli implementativi di quelli inferiori.

- *Presentation Layer*: comprende le _pages_ e i _components_ di Angular, che si affidano esclusivamente ai servizi del livello *Domain* per accedere allo stato dell'applicazione e invocare operazioni. All'interno di questo livello l'architettura segue il pattern *MVVM*: i servizi del livello *Domain* fungono da _ViewModel_, mantenendo lo stato dell'interfaccia tramite _Angular Signals_ (`signal()`, `computed()`, `asReadonly()`) e traducendolo in una superficie reattiva che i componenti consumano direttamente nel _template_, senza contenere logica propria. Il _Model_ è rappresentato dai modelli di dominio e dallo stato incapsulato nei segnali dei servizi, mentre la _View_ corrisponde ai _template_ dei componenti Angular, che si limitano a leggere i segnali esposti dal _ViewModel_ e a inoltrare gli eventi utente ai relativi metodi — senza mai accedere direttamente ai modelli né invocare servizi di livello inferiore.

- *Domain Layer*: costituisce il nucleo dell'applicazione. Contiene i _modelli_ di dominio, che rappresentano le entità del sistema indipendentemente dal formato di trasporto, e i _services_ applicativi, che orchestrano le operazioni e mantengono lo stato condiviso. Il livello definisce inoltre, tramite classi _adapter_ astratte, i contratti che l'*Infrastructure* deve rispettare per la trasformazione dei dati, disaccoppiando così la logica applicativa da qualsiasi dettaglio implementativo legato al backend.

- *Infrastructure Layer*: racchiude tutta la comunicazione con il backend. I _services_ HTTP e WebSocket inviano le richieste e restituiscono i dati nel formato _raw_ del backend, mentre gli _adapter_ concreti implementano i contratti definiti nel *Domain*, traducendo i modelli backend nei modelli di dominio. Il cablaggio tra contratti e implementazioni avviene interamente in `app.config.ts`.

==== Modelli dati
La robustezza del frontend Angular è garantita da un sistema di tipizzazione rigoroso che utilizza interfacce, tipi personalizzati ed enumerazioni per rappresentare le entità del sistema. I modelli dati sono organizzati per separare le utilità trasversali (modelli comuni) dalle entità specifiche delle aree funzionali (modelli di dominio).

===== Modelli Comuni e Globali
In questa sezione vengono descritti i modelli utilizzati trasversalmente in diverse parti dell'applicazione per standardizzare le risposte del server, gestire gli errori e definire stati operativi condivisi.

====== *`Permission`* (enum)<angular-permission-model>
Stabilisce i permessi granulari disponibili nel sistema. Ogni voce dell'enum è associata a una stringa descrittiva (`label`) utilizzata nell'interfaccia utente per mostrare all'utente le capacità associate al proprio ruolo. Include permessi per l'accesso alla dashboard, la gestione dei gateway, dei sensori, degli utenti (Super Admin, Tenant Admin, Tenant User), dei tenant e delle API Key (quest'ultimo non implementato).

====== *`GatewayStatus`* e *`SensorStatus`* (enum)<angular-status-model>
Definiscono lo stato operativo dei dispositivi.
  - `GatewayStatus` prevede gli stati `ACTIVE` (attivo), `INACTIVE` (inattivo) e `DECOMMISSIONED` (decommissionato) per i gateway.
  - `SensorStatus` prevede gli stati `ACTIVE` (attivo), `INACTIVE` (inattivo) per i sensori.

====== *`PaginatedResponse`* (interface)<angular-paginatedresponse-model>
Rappresenta l'interfaccia base per tutte le risposte API che supportano la paginazione. Contiene i campi `count` (numero di elementi nella pagina corrente) e `total` (numero totale di elementi presenti sul database), permettendo ai componenti tabella di gestire correttamente i controlli di navigazione.

====== *`ApiError`* (interface)<angular-apierror-model>
Standardizza la struttura degli errori restituiti dal backend. Include il codice di stato HTTP (`status`) e un messaggio opzionale (`message`) per facilitare la gestione delle notifiche di errore all'utente.

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliComuni.pdf", width: 85%),
  caption: [Modelli Dati - Modelli Comuni e Globali],
)
\

===== Modelli di Dominio: Auth
I modelli di autenticazione strutturano lo scambio di informazioni necessario per identificare gli utenti e gestire i flussi di sicurezza del sistema.

====== *`LoginRequest`* (interface)<angular-loginrequest-model>
Rappresenta il pacchetto di dati inviato dall'utente per richiedere l'accesso al sistema.
  - `email: string`: l'indirizzo email dell'utente che effettua il tentativo di accesso.
  - `password: string`: la password associata all'account.
  - `tenantId?: string`: proprietà opzionale utilizzata per identificare il contesto organizzativo (_tenant_) di appartenenza dell'utente.

====== *`AuthResponse`* (interface)<angular-authresponse-model>
Definisce la struttura della risposta restituita dal backend a seguito di un'autenticazione avvenuta con successo.
  - `jwt: string`: il token JSON Web Token necessario per autenticare e autorizzare le successive chiamate API del frontend. Contiene codificate all'interno del payload le seguenti informazioni:
    - `uid: string`: rappresenta l'identificativo univoco dell'utente;
    - `tid: string`: rappresenta l'identificativo del tenant dell'utente;
    - `rol: string`: rappresenta il ruolo dell'utente;

====== *`UserSession`* (interface)<angular-usersession-model>
Rappresenta la struttura dati utilizzata internamente al frontend per mantenere lo stato e le informazioni essenziali dell'utente attualmente autenticato.
  - `userId: string`: l'identificativo univoco dell'utente in sessione.
  - `tenantId?: string`: l'identificativo del tenant a cui l'utente appartiene, se applicabile.
  - `role: UserRole`: il ruolo operativo dell'utente (@angular-userrole-model), che determina i permessi all'interno dell'applicazione.

====== *`ForgotPasswordRequest`* (interface)<angular-forgotpasswordrequest-model>
Modello utilizzato per avviare la procedura di recupero delle credenziali di accesso.
  - `email: string`: l'indirizzo email a cui inviare le istruzioni per il ripristino della password.
  - `tenantId?: string`: identificativo opzionale del tenant per circoscrivere la ricerca dell'utente.

====== *`ForgotPasswordResponse`* (interface)<angular-forgotpasswordresponse-model>
Modello per la finalizzazione del reset della password tramite token di sicurezza.
  - `token: string`: il codice di verifica univoco ricevuto dall'utente (solitamente via email).
  - `newPassword: string`: la nuova password che l'utente intende impostare per il proprio account.
  - `tenantId?: string`: riferimento opzionale al tenant per la convalida dell'operazione.

====== *`ConfirmAccountResponse`* (interface)<angular-confirmaccountresponse-model>
Interfaccia dedicata alla conferma dell'attivazione di un nuovo account di sistema.
  - `token: string`: l token di attivazione necessario per validare l'identità dell'utente.
  - `newPassword: string`: la password definita dall'utente in fase di primo accesso o attivazione.
  - `tenantId?: string`: identificativo opzionale del tenant di appartenenza.
====== *`PasswordChange`* (interface)<angular-passwordchange-model>
Rappresenta il modello per l'aggiornamento volontario della password da parte di un utente già autenticato.
  - `oldPassword: string`: la password corrente dell'utente, richiesta per motivi di sicurezza prima di procedere alla modifica.
  - `newPassword: string`: la nuova stringa segreta da impostare come password di accesso.

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioAuth.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: Auth],
)
\


===== Modelli di Dominio: Chart
I modelli dell'area _Chart_ permettono di orchestrare la richiesta di dati storici e in tempo reale, definendo al contempo le modalità di rappresentazione visiva dei segnali biometrici.

====== `ChartType` (enum)<angular-charttype-model>
Definisce le modalità di visualizzazione dei dati supportate dal sistema.
  - `HISTORIC`: indica la modalità di visualizzazione dei dati storici memorizzati nel database.
  - `REALTIME`: indica la modalità di visualizzazione in tempo reale tramite stream continuo.

====== *`TimeInterval`* (interface)<angular-timeinterval-model>
Rappresenta l'intervallo temporale utilizzato per filtrare le letture dei sensori.
  - `from: Date`: data e ora di inizio dell'intervallo richiesto.
  - `to: Date`: data e ora di fine dell'intervallo richiesto.

====== *`ChartRequest`* (interface)<angular-chartrequest-model>
Modello utilizzato per inoltrare una richiesta completa di generazione o aggiornamento di un grafico.
  - `sensor: Sensor`: l'oggetto contenente le informazioni del sensor (@angular-sensor-model) di cui si vogliono visualizzare i dati.
  - `chartType: ChartType`: la modalità di grafico richiesta (storica o real-time @angular-charttype-model).
  - `tenantId?: string`: identificativo opzionale del tenant per il controllo dell'accesso ai dati.
  - `dataPointsCounter?: number`: proprietà opzionale per limitare il numero di campioni da recuperare o visualizzare.
  - `timeInterval?: TimeInterval`: l'intervallo temporale specifico per le query storiche (@angular-timeinterval-model).

====== *`SensorProfileDisplay`* (interface)<angular-sensorprofiledisplay-model>
Definisce le proprietà estetiche e le unità di misura per la rappresentazione dei dati di un profilo sensore.
  - `label: string`: l'etichetta testuale visualizzata nel grafico (es. "Heart Rate").
  - `unit: string`: l'unità di misura associata al valore del sensore.

In questo file sono definiti anche:
  - `SENSOR_PROFILE_MAP`: Una costante di tipo `Record` che mappa ogni profilo sensore (`SensorProfiles` @angular-sensorprofiles-model) alla propria configurazione di etichetta e unità di misura.
  - `getSensorProfileDisplay(profile): SensorProfileDisplay`: Una funzione che restituisce l'oggetto `SensorProfileDisplay` corrispondente al profilo richiesto; include una logica di protezione che restituisce il nome del profilo e una stringa vuota come unità qualora il profilo non sia presente nella mappa.

====== *`SENSOR_VISIBLE_POINTS`* e *`SENSOR_MAX_LIVE_READINGS`* (constant)<angular-sensorcostants-model>
Record di configurazione che stabiliscono i limiti di campionamento per l'interfaccia utente al fine di ottimizzare le performance di rendering.
  - Definiscono il numero massimo di punti visibili simultaneamente (es. 50 per la frequenza cardiaca, 250 per l'ECG) e la dimensione del buffer per le letture live (fino a 625 campioni per il segnale ECG).

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioChart.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: Chart],
)
\

===== Modelli di Dominio: Gateway
I modelli dell'area _Gateway_ definiscono la struttura dei dispositivi centrali del sistema, gestendo sia la rappresentazione interna del frontend che il formato di scambio dati con il backend.
====== *`Gateway`* (interface)<angular-gateway-model>
Rappresenta il modello principale dell'entità gateway utilizzato all'interno dell'applicazione.
  - `id: string`: identificativo univoco del gateway.
  - `tenantId?: string`: identificativo opzionale del tenant a cui è assegnato il gateway.
  - `name: string`: nome descrittivo assegnato al gateway.
  - `status: GatewayStatus`: stato operativo del gateway (es. attivo, inattivo), tipizzato tramite l'enum `GatewayStatus` (@angular-status-model).
  - `interval: number`: frequenza di comunicazione espressa in secondi.
  - `publicIdentifier?: string`: identificativo pubblico opzionale del dispositivo.

====== *`GatewayBackend`* (interface)<angular-gatewaybackend-model>
Definisce il formato del Data Transfer Object (DTO) ricevuto dal backend.
  - `gateway_id: string`: mappa l'identificativo del gateway nel formato snake_case del database.
  - `tenant_id?: string`: identificativo del tenant nel formato backend.
  - `name: string`: nome del dispositivo.
  - `status: string`: stato del dispositivo rappresentato come stringa grezza.
  - `interval: number`: intervallo di comunicazione.
  - `public_identifier?: string`: identificativo pubblico opzionale nel formato backend.

====== *`GatewayConfig`* (interface)<angular-gatewayconfig-model>
Modello utilizzato per le operazioni di configurazione o aggiornamento dei parametri di un gateway.
  - `name: string`: nuovo nome da assegnare al dispositivo.
  - `interval: number`: nuovo intervallo di comunicazione da impostare.

====== *`CommandRequest`* (interface)<angular-commandrequest-model>
Rappresenta la struttura dati necessaria per inoltrare comandi operativi a un gateway specifico.
  - `gateway: Gateway`: l'oggetto gateway destinatario del comando ( @angular-gateway-model).
  - `command: string`: la stringa rappresentante il comando da eseguire sul dispositivo.

====== *`PaginatedGatewayResponse<T>`* (interface)<angular-paginatedgatewayresponse-model>
Estende l'interfaccia `PaginatedResponse` per gestire liste di gateway ottenute tramite query filtrate o paginate.
  - `gateways: T[]`: array di elementi di tipo generico `T` contenente i record della pagina corrente.
\

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioGateway.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: Gateway],
)
\

===== Modelli di Dominio: Nav Items
I modelli dell'area _Nav Items_ permettono di definire l'architettura della navigazione laterale (sidebar), integrando logiche di controllo degli accessi e raggruppamento visuale delle funzionalità.

====== *`NavItem`* (interface)<angular-navitem-model>
Definisce la struttura di una singola voce all'interno del menu di navigazione.
  - `label: string`: l'etichetta testuale visualizzata nel menu (es. "Gestione Gateway", "Dashboard").
  - `route: string`: il percorso di navigazione associato alla voce di menu.
  - `icon: string`: il nome dell'icona (solitamente riferita alla libreria Material Icons) da affiancare all'etichetta.
  - `permission?: Permission | Permission[]`: proprietà opzionale che specifica i permessi necessari per visualizzare la voce. Può essere un singolo valore dell'enum `Permission` (@angular-permission-model) o un array di permessi.
  - `separator?: boolean`: flag opzionale che, se impostato a true, inserisce un separatore visivo prima della voce di menu.
  - `sectionTitle?: string`: titolo opzionale utilizzato per raggruppare le voci sotto una categoria testuale.
  - `tenantSectionTitle?: string`: titolo di sezione specifico utilizzato nei contesti di impersonificazione o visualizzazione legata al tenant.

====== *`NAV_ITEMS (NavConfig)`* (constant)<angular-navitems-constant>
Rappresenta la configurazione statica globale del menu di navigazione dell'applicazione.
  - È un array di oggetti _NavItem_ che mappa tutte le funzionalità principali del sistema, incluse le aree di gestione (Gateway, Tenant, User) e la Dashboard operativa.
  - Ogni elemento dell'array è configurato con il relativo requisito di sicurezza tramite la proprietà permission, garantendo che l'utente visualizzi solo le rotte per le quali è effettivamente autorizzato.

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioNavItems.pdf", width: 70%),
  caption: [Modelli Dati - Modelli di Dominio: Nav Items],
)
\

===== Modelli di Dominio: Sensor
I modelli dell'area Sensor definiscono l'identità e le capacità operative di ogni dispositivo di rilevamento collegato ai gateway, gestendo la traduzione tra i formati di comunicazione grezzi e le tipizzazioni forti del frontend.

====== *`Sensor`* (interface) <angular-sensor-model>
Rappresenta il modello principale dell'entità sensore utilizzato per la logica di business e la visualizzazione nel frontend.
  - `id: string`: identificativo univoco del sensore.
  - `gatewayId: string`: identificativo del gateway a cui il sensore è associato.
  - `name: string`: nome descrittivo assegnato al dispositivo.
  - `profile: SensorProfiles`: il profilo tecnologico del sensore, tipizzato tramite l'enum `SensorProfiles`(@angular-sensorprofiles-model).
  - `status: SensorStatus`: lo stato operativo corrente (es. attivo o inattivo), tipizzato tramite l'enum `SensorStatus` (@angular-status-model).
  - `dataInterval: number`: la frequenza di campionamento dei dati espressa in secondi.

====== *`SensorProfiles`* (enum) <angular-sensorprofiles-model>
Stabilisce i profili tecnologici supportati dal sistema, mappando ogni servizio Bluetooth/Backend a una categoria specifica.
  - `HEART_RATE_SERVICE`: "heart rate".
  - `PULSE_OXIMETER_SERVICE`: "pulse oximeter".
  - `CUSTOM_ECG_SERVICE`: "custom ecg".
  - `HEALTH_THERMOMETER_SERVICE`: "health thermometer".
  - `ENVIRONMENTAL_SENSING_SERVICE`: "environmental sensing".

====== *`SensorConfig`* (interface) <angular-sensorconfig-model>
Modello utilizzato per la creazione o la riconfigurazione dei parametri di un sensore.
  - `name: string`: nome da assegnare o aggiornare.
  - `dataInterval: number`: intervallo dati da impostare.
  - `gatewayId: string`: riferimento al gateway ospite.
  - `profile: string`: profilo tecnologico selezionato.

====== *`SensorBackend`* (interface) <angular-sensorbackend-model>
Definisce il formato del Data Transfer Object (DTO) ricevuto dalle API del backend, caratterizzato dall'utilizzo della convenzione snake_case.
  - `sensor_id: string`: mappa l'identificativo del sensore.
  - `gateway_id: string`: mappa l'identificativo del gateway di appartenenza.
  - `sensor_name: string`: nome del dispositivo nel database.
  - `status: string`: stato del dispositivo rappresentato come stringa.
  - `profile: string`: identificativo testuale del profilo tecnologico.
  - `data_interval: number`: intervallo di invio dati.

====== *`PaginatedSensorResponse<T>`* (interface)<angular-paginatedsensorresponse-model>
Estensione dell'interfaccia di paginazione dedicata specificamente alla gestione di liste di sensori.
  - `sensors: T[]`: array di elementi di tipo generico `T` che popolano la pagina corrente della visualizzazione.

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioSensor.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: Sensor],
)
\

===== Modelli di Dominio: Sensor Data
I modelli dell'area _Sensor Data_ gestiscono la complessità delle letture grezze provenienti dal backend e le organizzano in strutture leggibili per i componenti grafici dell'interfaccia utente.

====== *`FieldDescriptor`* (interface)<angular-fielddescriptor-model>
Rappresenta un metadato che descrive come interpretare e visualizzare un singolo valore all'interno di una lettura del sensore.
  - `key: string`: la chiave tecnica del dato (es. "bpm", "temperature") utilizzata per estrarre il valore dall'oggetto della lettura.
  - `label: string`: l'etichetta testuale descrittiva per la UI (es. "Battito cardiaco", "Umidità").
  - `unit: string`: l'unità di misura associata al dato (es. "bpm", "°C", "%").

====== *`SensorReading`* (interface)<angular-sensorreading-model>
Definisce il modello atomico di una singola lettura sensoriale processata dal frontend.
  - `timestamp: string`: l'istante temporale a cui si riferisce la misurazione.
  - `value: Record<string, number>`: un oggetto contenente uno o più valori numerici associati a chiavi specifiche (es. `{ "bpm": 72 }` o `{ "temperature": 22.5, "humidity": 60 }`).

====== *`HistoricResponse`* e *`HistoricSample`* (interfaces)<angular-historicresponse-model>
Rappresentano il formato dei dati storici così come vengono trasmessi dal backend (Data Transfer Objects).
  - `HistoricResponse`: contiene il conteggio totale dei campioni (`count`) e l'array di dati effettivi (`samples`).
  - `HistoricSample`: rappresenta il singolo pacchetto di dati grezzi. Include informazioni come `sensor_id`, `gateway_id`, `tenant_id`, `timestamp`, `profile` e l'oggetto `data` contenente i valori grezzi in formato chiave-valore.

====== *`HistoricReadings`* (interface)<angular-historicreadings-model>
Modello strutturato utilizzato dal frontend per aggregare le letture storiche da visualizzare nei grafici.
  - `dataCount: number`: il numero totale di letture contenute nell'oggetto.
  - `readings: SensorReading[]`: l'elenco delle letture trasformate e pronte per il rendering (@angular-sensorreading-model).
  - `fields: FieldDescriptor[]`: l'elenco dei descrittori di campo che indicano quali dati sono presenti e come visualizzarli (@angular-fielddescriptor-model).
  - `samplesPerPacket?: number`: proprietà opzionale utilizzata principalmente per il segnale ECG per indicare la densità di campionamento.

====== *`RealTimeReading`* (interface)<angular-realtimereading-model>
Descrive la struttura dei dati ricevuti in tempo reale tramite stream.
  - `timestamp: string`: il timestamp della lettura live.
  - `profile: string`: il profilo del sensore sorgente.
  - `data: Record<string, any>`: i dati grezzi ricevuti in tempo reale.

====== Costanti di Configurazione Campi (*`HEART_RATE_FIELDS`*, *`ECG_FIELDS`*, etc.) <angular-constantsfields-constant>
Definizioni statiche basate su `FieldDescriptor` che pre-configurano la visualizzazione per ogni tipologia di sensore.
   - Ad esempio, `ENVIRONMENTAL_FIELDS` configura i campi "Temperatura" (°C) e "Umidità" (%), mentre `PULSE_OXIMETER_FIELDS` configura "Ossigeno nel sangue" (%) e "Frequenza cardiaca" (bpm).

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioSensorData.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: Sensor Data],
)
\

===== Modelli di Dominio: Tenant
I modelli dell'area _Tenant_ definiscono le entità organizzative del sistema, permettendo la gestione separata dei dati e la configurazione di funzionalità avanzate come l'impersonificazione.

====== *`Tenant (interface)`* <angular-tenant-model>
Rappresenta il modello principale dell'entità tenant utilizzato all'interno della logica applicativa del frontend.
  - `id: string`: identificativo univoco del tenant.
  - `name: string`: nome descrittivo assegnato al tenant.
  - `canImpersonate: boolean`: flag che indica se il tenant ha l'autorizzazione per eseguire operazioni di impersonificazione all'interno del sistema.

====== *`TenantConfig (interface)`* <angular-tenantconfig-model>
Rappresenta il modello utilizzato per le operazioni di creazione o aggiornamento dei dati di un tenant.
  - `name: string`: il nome da assegnare o aggiornare per l'organizzazione.
  - `canImpersonate: boolean`: la configurazione del permesso di impersonificazione da salvare nel sistema.

====== *`TenantBackend (interface)`* <angular-tenantbackend-model>
Definisce il formato del Data Transfer Object (DTO) così come viene restituito dalle API del backend, utilizzando la convenzione di naming snake_case.
  - `tenant_id: string`: mappa l'identificativo univoco del tenant nel backend.
  - `can_impersonate: boolean`: indica nel formato backend la capacità di impersonificazione associata al tenant.

====== *`PaginatedTenantResponse<T>`* (interface) <angular-paginatedtenantresponse-model>
Estende l'interfaccia base di paginazione per gestire liste di tenant provenienti da interrogazioni del database.
  - `tenants: T[]`: array di elementi di tipo generico `T` che costituiscono il set di dati della pagina corrente.

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioTenant.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: Tenant],
)
\

===== Modelli di Dominio: User
I modelli dell'area _User_ strutturano le informazioni relative agli account utente, garantendo una gestione tipizzata dei profili e dei relativi permessi operativi.

====== *`UserRole`* (enum) <angular-userrole-model>
Stabilisce i ruoli gerarchici disponibili nel sistema, utilizzati per determinare i permessi di accesso alle diverse funzionalità.
  - `TENANT_USER`: rappresenta l'utente finale associato a un tenant specifico.
  - `TENANT_ADMIN`: rappresenta l'amministratore di un tenant, con permessi di gestione locale.
  - `SUPER_ADMIN`: rappresenta l'amministratore globale del sistema con permessi illimitati.

====== *`User`* (interface)<angular-user-model>
Rappresenta il modello principale dell'entità utente utilizzato nella logica di business del frontend.
  - `id: string`: identificativo univoco dell'utente (normalizzato come stringa nel frontend).
  - `username: string`: nome utente utilizzato per l'identificazione e la visualizzazione.
  - `email: string`: indirizzo email associato all'account.
  - `role: UserRole`: il ruolo assegnato all'utente, tipizzato tramite l'enum `UserRole`(@angular-userrole-model).
  - `tenantId?: string`: identificativo opzionale del tenant di appartenenza.

====== *`UserBackend`* (interface)<angular-userbackend-model>
Definisce il formato del Data Transfer Object (DTO) ricevuto dalle API del backend.
  - `user_id: number`: identificativo numerico dell'utente nel database.
  - `username: string`: nome utente memorizzato nel backend.
  - `email: string`: indirizzo email dell'utente.
  - `user_role: string`: ruolo dell'utente trasmesso come stringa grezza.
  - `tenant_id?: string`: riferimento al tenant nel formato backend.

====== *`UserConfig`* (interface)<angular-userconfig-model>
Modello semplificato utilizzato per le operazioni di creazione o configurazione iniziale del profilo utente.
  - `email: string`: indirizzo email da assegnare all'account.
  - `username: string`: nome utente desiderato per la configurazione.

====== *`PaginatedUserResponse<T>`* (interface)<angular-paginateduserresponse-model>
Estende l'interfaccia di paginazione per gestire collezioni di utenti.
  - `users: T[]`: array di elementi di tipo generico `T` che popolano la pagina corrente della visualizzazione.

#figure(
  image("../../assets/c4/frontend/modelliDati/frontend-modelliDominioUser.pdf", width: 100%),
  caption: [Modelli Dati - Modelli di Dominio: User],
)
\


==== Adapters e utils
Questa sezione approfondisce lo strato di astrazione dedicato alla trasformazione e normalizzazione dei dati, posizionato tra i servizi di comunicazione API e la logica di business dei componenti. L'obiettivo primario di questo layer è garantire il disaccoppiamento tra il modello dati del backend (spesso soggetto a convenzioni di naming diverse come lo _snake_case_) e il modello dati interno del frontend, ottimizzato per la tipizzazione _TypeScript_ e l'utilizzo nei componenti _Angular_.

===== Utility di mappatura (enumMapper) <angular-enummapper>
Per la gestione coerente delle enumerazioni e delle costanti di sistema, è stata implementata una classe di utility generica denominata `EnumMapper<TFrontend, TBackend>`. Questa classe risolve il problema della discordanza tra i valori letterali utilizzati nelle API e le `definizioni` di tipo nel frontend.
- *Funzinamento Core*: la classe accetta nel costruttore un oggetto di mappatura e un valore di _fallback_. Internamente, genera automaticamente una mappa inversa (`toFrontendMap`) per supportare la conversione bidirezionale.
- *Gestione Errori*: il metodo `fromBackend` include una logica di protezione che restituisce il valore di _fallback_ predefinito qualora il backend invii un valore non censito, garantendo la resilienza dell'interfaccia.

Sulla base di questa utility, sono stati definiti i seguenti mappatori specializzati:
- *`statusMapper`*: gestisce la conversione dello stato dei dispositivi (attivo/inattivo) utilizzando l'enum `Status`.
- *`sensorProfilesMapper`*: mappa le stringhe identificative dei servizi backend (es. _heart_rate_) nelle definizioni `SensorProfiles` (@angular-sensorprofiles-model) utilizzate per la logica di visualizzazione.
- *`userRoleMapper`*: Utilizzato per la gestione utenti, mappando ruoli come _super_admin_, _tenant_admin_ o _tenant_user_.
- *`userRoleMapperJWT`*: una versione specifica per la decodifica dei token #gloss("JWT"), dove i ruoli sono rappresentati da sigle contratte (`sa` per super admin, `ta` per tenant admin e `tu` per tenant user) nel payload del token.

===== Architettura degli adapter API
L'architettura degli adapter si basa su un pattern a due livelli: uno *strato astratto* che definisce il contratto formale e uno *strato concreto* (`ApiAdapter`) che implementa la logica di mappatura specifica.

====== Definizione dei Contratti (_Abstract Adapters_)
Le classi astratte fungono da "interfacce robuste" che assicurano che ogni trasformatore di dati esponga la medesima firma, indipendentemente dalla sorgente dati (API reali, mock o database locali). Gli adapters principali sono:
- *`GatewayAdapter`*: definisce il contratto per la gestione dei _gateway_ di sistema. Impone l'implementazione del metodo `fromDTO(dto: GatewayBackend)`, che trasforma un singolo oggetto backend nel modello `Gateway` (@angular-gateway-model), e del metodo `fromPaginatedDTO`, che gestisce la conversione di intere collezioni preservando i metadati di paginazione.
- *`SensorAdapter`*: stabilisce le firme per la trasformazione dell'anagrafica dei _sensori_. Richiede l'implementazione di logiche per mappare il DTO `SensorBackend` (@angular-sensorbackend-model) nell'interfaccia `Sensor`, assicurando una gestione coerente di ID, nomi e riferimenti ai gateway.
- *`UserAdapter`* : definisce i criteri per il processamento delle entità _utente_. Il contratto garantisce che ogni implementazione sia in grado di trasformare i dati `UserBackend` nel modello `User` (@angular-user-model), includendo la gestione delle risposte paginate.
- *`TenantAdapter`*: prescrive i metodi per la mappatura delle entità _tenant_. Impone la trasformazione dell'oggetto `TenantBackend` nel modello `Tenant` (@angular-tenant-model) utilizzato dal frontend per gestire le organizzazioni e i relativi permessi.

In aggiunta agli adapter per le entità principali, il sistema prevede contratti specifici per l'elaborazione dei dati biometrici e ambientali, necessari per supportare l'eterogeneità dei sensori:
- *`SensorHistoricAdapter`*: un'astrazione dedicata alla gestione dei dati storici. Obbliga ogni sottoclasse a definire una proprietà `fields` di tipo `FieldDescriptor[]` (@angular-fielddescriptor-model) (per la descrizione dei metadati della lettura) e a implementare il metodo `fromResponse(response: HistoricResponse): HistoricReadings` (@angular-historicresponse-model e @angular-historicreadings-model) per convertire i pacchetti di campionamento in letture storiche tipizzate.
- *`SensorLiveReadingAdapter`*: definisce il contratto per l'elaborazione dei flussi dati in tempo reale. Analogamente all'adapter storico, richiede la definizione dei campi (`fields`), ma si focalizza sul metodo `fromDTO(dto: RealTimeReading)` (@angular-realtimereading-model), che deve restituire un array di letture normalizzate (`SensorReading[]` (@angular-sensorreading-model)) pronte per lo streaming sui grafici live.

====== Implementazioni Concrete (_Api Adapters_)
Gli adapter API estendono i contratti sopra citati e iniettano la logica necessaria per normalizzare i DTO del backend. Gli adapter API sono:
- *`GatewayApiAdapter`*: gestisce l'entità _gateway_. È responsabile della conversione delle proprietà del DTO `GatewayBackend` nel modello gateway, mappando l'ID del dispositivo, il nome, l'intervallo di comunicazione e il tenant ID. Utilizza lo `statusMapper` (@angular-enummapper) per convertire la stringa di stato in un valore dell'enum `Status`.
- *`SensorApiAdapter`*: converte i dati dei sensori medicali e ambientali. Oltre alla mappatura dei campi base (ID, nome, gateway ID e l'intervallo dei dati), applica il `sensorProfilesMapper` (@angular-enummapper) per interpretare correttamente il tipo di profilo e lo `statusMapper` per lo stato operativo.
- *`UserApiAdapter`*: si occupa della gestione dell'entità _utente_. Oltre ad applicare la mappatura dei campi di base come username, email e tenant ID, esegue il casting dell'ID utente in stringa e utilizza `userRoleMapper`  (@angular-enummapper) per tradurre il ruolo ricevuto dal backend nel formato interno `UserRole` (@angular-userrole-model).
- *`TenantApiAdapter`*: gestisce la trasformazione dei dati dei tenant, mappando l'ID, il nome e la flag di impersonificazione.

Ogni adapter implementa inoltre il metodo `fromPaginatedDTO`, che estende la trasformazione a risposte contenenti liste paginate, preservando i metadati di conteggio totale.

#figure(
  image("../../assets/c4/frontend/adapters/frontend-adapters.pdf", width: 100%),
  caption: [Adapters - Abstract Adapters e Api Adapters],
)
\

===== Gestione avanzata dei dati sensore (Historic e Real-time)
Oltre alla gestione dell'anagrafica, il sistema richiede un processamento specialistico per le letture (misurazioni) prodotte dai sensori. Queste letture variano drasticamente in base al profilo medico o ambientale.

Ogni adapter di questa categoria definisce una proprietà `fields` (`FieldDescriptor[]` (@angular-fielddescriptor-model)) che funge da metadato per istruire i componenti UI (grafici e tabelle) su quali unità di misura e label visualizzare.
- *`EcgHistoricAdapter`*: gestisce segnali ad alta frequenza. Poiché i dati arrivano come array di campioni (`waveform`), l'adapter ricostruisce la serie temporale calcolando il timestamp esatto per ogni punto tramite interpolazione:
$ "timestamp"_"i" = T_"base" + (i times "1000" / "waveform.length") $
- *`EnvironmentalHistoricAdapter`*: estrae simultaneamente valori di temperatura e umidità dalla mappa dati.
- *`PulseOximeterHistoricAdapter`*: mappa i parametri vitali di saturazione ossigeno (`spo2`) e frequenza del polso (`pulseRate`).
- *`HeartRateHistoricAdapter`* e  *`HealthThermometerHistoricAdapter`*: gestiscono rispettivamente la frequenza cardiaca e la temperatura corporea, mappando i valori ricevuti nei formati attesi dai componenti di visualizzazione.

Analogamente, per i flussi in tempo reale, vengono utilizzati adapter basati sulla classe astratta `SensorLiveReadingAdapter` che processano i dati in arrivo tramite WebSocket.

#figure(
  image("../../assets/c4/frontend/adapters/frontend-adaptersSensorsHistoricLive.pdf", width: 100%),
  caption: [Adapters - Abstract Adapters e Api Adapters],
)
\

===== Sensor Adapter Factory
Per orchestrare dinamicamente l'utilizzo di questi adapter senza appesantire i componenti con logiche condizionali, è stato implementato il `SensorAdapterFactory`.
Questo servizio utilizza un _Pattern Registry_ per mappare ogni `SensorProfiles` (@angular-sensorprofiles-model) alla propria istanza di adapter:
- *Registrazione*: mantiene registri interni (_historicAdapters_ e _liveAdapters_) che associano i profili (ECG, Heart Rate, etc.) alle relative classi adapter.
- *Creazione Dinamica*: espone i metodi `createHistoricAdapter(profile)` e `createLiveAdapter(profile)`. Se un profilo richiesto non è registrato, il factory solleva un errore esplicito, garantendo la sicurezza del sistema durante l'estensione con nuovi dispositivi.

Questa architettura centralizzata permette alla Dashboard di gestire qualsiasi tipo di sensore in modo trasparente, garantendo che la logica di decodifica specifica di ogni dispositivo sia isolata e facilmente estensibile.

#figure(
  image("../../assets/c4/frontend/adapters/frontend-adaptersSensorFactory.pdf", width: 100%),
  caption: [Adapters - Abstract Adapters e Api Adapters],
)
\


==== Services
In questa sezione vengono descritti in dettaglio tutti i _services_ sviluppati per il frontend, con particolare attenzione alla loro responsabilità e al loro ruolo all'interno dell'architettura dell'applicazione.\
Per ogni servizio viene fornita una descrizione dettagliata dei suoi metodi, attributi e funzionalità. Verranno descritti prima i servizi che non presentano dipendenze verso altri servizi, per poi descrivere quelli che invece dipendono da altri.

===== TokenStorageService <angular-token-storage-service>
#figure(
  image("../../assets/c4/frontend/services/TokenStorageService.pdf", width: 40%),
  caption: [Code diagram del TokenStorageService],
)
Il `TokenStorageService` è un servizio dedicato alla gestione del token JWT. Si occupa di salvare, recuperare e rimuovere il token JWT utilizzando il `sessionStorage` del browser, garantendone così la persistenza durante la sessione.\

Il servizio presenta i seguenti attributi:
- `_isValid` e `isValid`: `_isValid` è il signal _privato_ che tiene traccia della validità del token JWT (presenza e scadenza), mentre `isValid` è la sua controparte _readonly_ pubblica.

Il servizio presenta i seguenti metodi pubblici:
- `saveToken(token: string): void`: salva il token JWT nel `sessionStorage` e aggiorna lo stato di validità del token.
- `getToken(): string | null`: recupera il token JWT dal `sessionStorage`.
- `clearToken(): void`: rimuove il token JWT dal `sessionStorage` e aggiorna lo stato di validità del token.
- `isTokenValid(): boolean`: verifica se il token JWT è presente e non è scaduto.

===== UserSessionService <angular-user-session-service>
#figure(
  image("../../assets/c4/frontend/services/UserSessionService.pdf", width: 50%),
  caption: [Code diagram del UserSessionService],
)
Lo `UserSessionService` è un servizio dedicato alla gestione della sessione dell'utente. Si occupa di mantenere lo stato della sessione, inclusi i dati dell'utente autenticato, e di fornire un'interfaccia semplice per accedere a queste informazioni.\

Il servizio presenta i seguenti attributi:
- `_currentUser` e `currentUser`: `_currentUser` è il signal _privato_ che tiene traccia dello stato della sessione dell'utente autenticato (se presente e quali sono i suoi dati), mentre `currentUser` è la sua controparte _readonly_ pubblica.

Il servizio presenta i seguenti metodi pubblici:
- `initSession(token: string): void`: inizializza la sessione dell'utente decodificando il token JWT, salvando i dati estratti nella variabile `_currentUser` e nel `sessionStorage`.
- `clearSession(): void`: termina la sessione dell'utente, rimuovendo i dati dalla variabile `_currentUser` e dal `sessionStorage`.

Il servizio presenta i seguenti metodi privati:
- `restoreSession(): void`: ripristina la sessione dell'utente, se presente, pescando i dati dal `sessionStorage`, altrimenti ripristina la sessione decodificando il token JWT presente nel `TokenStorageService`.
- `decodeToken(token: string): UserSession | null`: decodifica il token JWT, estraendo l'ID dell'utente, il suo ruolo e l'eventuale _tenant_ di appartenenza e li restituisce come `UserSession`, oppure `null` se il token non è valido.

===== PermissionService <angular-permission-service>
#figure(
  image("../../assets/c4/frontend/services/PermissionService.pdf", width: 75%),
  caption: [Code diagram del PermissionService]
)
Il `PermissionService` è un servizio dedicato alla verifica dei permessi dell'utente. Si occupa di verificare se l'utente autenticato ha i permessi necessari per accedere a determinate funzionalità dell'applicazione.\

Il servizio inietta tramite _dependency injection_:
- `UserSessionService`: per verificare il ruolo dell'utente autenticato.

Il servizio presenta i seguenti attributi:
- `ROLE_PERMISSIONS`: un `Record<UserRole, Permission[]>` che mappa ogni ruolo utente ad un array di permessi associati a quel ruolo, ad esempio il ruolo `SUPER_ADMIN` ha tutti i permessi, mentre il ruolo `TENANT_USER` ha solo il permesso di visualizzazione dashboard.

Il servizio presenta i seguenti metodi pubblici:
- `can(permission: Permission): boolean`: verifica se l'utente autenticato ha il permesso specificato, restituendo `true` se il permesso è presente, altrimenti restituisce `false`.
- `canAny(permissions: Permission[]): boolean`: verifica se l'utente autenticato ha almeno uno dei permessi specificati, restituendo `true` se almeno un permesso è presente, altrimenti restituisce `false`.
- `canAll(permissions: Permission[]): boolean`: verifica se l'utente autenticato ha tutti i permessi specificati, restituendo `true` se tutti i permessi sono presenti, altrimenti restituisce `false`.

===== AuthApiClientService <angular-auth-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/AuthApiClientService.pdf", width: 60%),
  caption: [Code diagram del AuthApiClientService]
)
L'`AuthApiClientService` è un servizio dedicato alla comunicazione con le API di autenticazione del backend. Si occupa di inviare le richieste _HTTP_ per effettuare il login, il logout e altre operazioni correlate all'autenticazione, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `login(req: LoginRequest): Observable<AuthResponse>`: invia la richiesta di login al backend, mappando il contenuto di `LoginRequest` nel formato atteso dal backend.
- `logout(): Observable<void>`: invia la richiesta di logout al backend.
- `verifyForgotPasswordToken(token: string, tenantId?: string): Observable<void>`: verifica la validità del token per il reset della password.
- `forgotPasswordRequest(req: ForgotPasswordRequest): Observable<void>`: invia la richiesta di reset della password al backend, mappando il contenuto di `ForgotPasswordRequest` nel formato atteso dal backend.
- `confirmPasswordReset(req: ForgotPasswordResponse): Observable<void>`: invia la conferma del reset della password al backend, mappando il contenuto di `ForgotPasswordResponse` nel formato atteso dal backend.
- `confirmPasswordChange(req: PasswordChange): Observable<void>`: invia la conferma del cambio della password al backend, mappando il contenuto di `PasswordChange` nel formato atteso dal backend.
- `verifyAccountToken(token: string, tenantId?: string): Observable<void>`: verifica la validità del token per la creazione dell'account.
- `confirmAccountCreation(req: ConfirmAccountResponse): Observable<AuthResponse>`: invia la conferma della creazione dell'account al backend, mappando il contenuto di `ConfirmAccountResponse` nel formato atteso dal backend.

===== AuthSessionService <angular-auth-session-service>
#figure(
  image("../../assets/c4/frontend/services/AuthSessionService.pdf", width: 70%),
  caption: [Code diagram del AuthSessionService]
)
L'`AuthSessionService` è un servizio dedicato alla gestione della sessione di autenticazione dell'utente. Si occupa di coordinare le operazioni di login e logout, gestire lo stato della sessione dell'utente e fornire un'interfaccia semplice per accedere a queste funzionalità.\

Il servizio inietta tramite _dependency injection_:
- `AuthApiClientService`: per comunicare con le API di autenticazione del backend.
- `TokenStorageService`: per gestire il ciclo di vita del token di autenticazione.
- `UserSessionService`: per gestire lo stato della sessione dell'utente autenticato.
- `Router`: servizio di Angular per gestire la navigazione tra le pagine dell'applicazione.

Il servizio presenta i seguenti attributi:
- `_loading` e `loading`: `_loading` è il _signal_ privato che tiene traccia dello stato di caricamento delle operazioni di autenticazione, mentre `loading` è la sua controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato che tiene traccia dello stato di errore delle operazioni di autenticazione, mentre `error` è la sua controparte _readonly_ pubblica.
- `isAuthenticated`: rappresenta lo stato di autenticazione dell'utente, restituisce `true` se è presente un token valido e una sessione utente attiva, altrimenti restituisce `false`.

Il servizio presenta i seguenti metodi pubblici:
- `login(req: LoginRequest): Observable<AuthResponse>`: gestisce l'operazione di login, chiamando il metodo `login` dell'`AuthApiClientService` e gestendo il risultato dell'operazione, inizializzando la sessione utente tramite lo `UserSessionService` e salvando il token JWT tramite il `TokenStorageService` in caso di successo, impostando lo stato di errore in caso di fallimento.
- `logout(): void`: cancella il token JWT tramite il `TokenStorageService`, termina la sessione utente tramite il `UserSessionService` e reindirizza l'utente alla pagina di login.
- `clearError(): void`: cancella lo stato di errore delle operazioni di autenticazione.

Il servizio presenta i seguenti metodi privati:
- `setLoadingState(): void`: imposta lo stato di caricamento a `true` e ripulisce eventuali errori precedenti, utilizzato in tutti i metodi del service.
- `clearAndRedirect(): void`: metodo ausiliario che pulisce la sessione utente e il token di autenticazione e reindirizza l'utente alla pagina di login.

===== AuthActionsService <angular-auth-actions-service>
#figure(
  image("../../assets/c4/frontend/services/AuthActionsService.pdf", width: 70%),
  caption: [Code diagram del AuthActionsService]
)
L'`AuthActionsService` è un servizio dedicato alla gestione delle azioni di autenticazione dell'utente. Si occupa di fornire un'interfaccia semplice per eseguire operazioni come il cambio/reset della password e la conferma della creazione dell'account, coordinando le chiamate ai servizi necessari per completare queste operazioni.\

Il servizio inietta tramite _dependency injection_:
- `AuthApiClientService`: per comunicare con le API di autenticazione del backend.
- `TokenStorageService`: per gestire il ciclo di vita del token di autenticazione.
- `UserSessionService`: per accedere ai dati della sessione dell'utente autenticato.

Il servizio presenta i seguenti attributi:
- `_loading` e `loading`: `_loading` è il _signal_ privato che tiene traccia dello stato di caricamento delle operazioni di autenticazione, mentre `loading` è la sua controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato che tiene traccia dello stato di errore delle operazioni di autenticazione, mentre `error` è la sua controparte _readonly_ pubblica.
- `_passwordChangeResult` e `passwordChangeResult`: `_passwordChangeResult` è il _signal_ privato che tiene traccia dell'esito dell'operazione di cambio password, mentre `passwordChangeResult` è la sua controparte _readonly_ pubblica.

Il servizio presenta i seguenti metodi pubblici:
- `forgotPassword(req: ForgotPasswordRequest): Observable<void>`: gestisce la richiesta di reset della password, chiamando il metodo `forgotPasswordRequest` dell'`AuthApiClientService` e riportando il risultato dell'operazione.
- `confirmPasswordChange(req: PasswordChange): Observable<void>`: gestisce la conferma del cambio password, chiamando il metodo `confirmPasswordChange` dell'`AuthApiClientService` e riportando il risultato dell'operazione, impostando `passwordChangeResult` come `true` in caso di successo, `false` in caso di errore.
- `confirmPasswordReset(req: ForgotPasswordResponse): Observable<void>`: gestisce la conferma del reset della password, chiamando il metodo `verifyForgotPasswordToken` e `confirmPasswordReset` dell'`AuthApiClientService` e riportando il risultato dell'operazione, impostando `passwordChangeResult` come `true` in caso di successo.
- `confirmAccount(req: ConfirmAccountResponse): Observable<AuthResponse>`: gestisce la conferma della creazione dell'account, chiamando il metodo `verifyAccountToken` e `confirmAccountCreation` dell'`AuthApiClientService` e riportando il risultato dell'operazione, inizializzando la sessione dell'utente e salvando il JWT in caso di successo.
- `clearMessages(): void`: cancella i messaggi di errore e di successo delle operazioni di autenticazione.

Il servizio presenta i seguenti metodi privati:
- `setLoadingState(): void`: imposta lo stato di caricamento a `true` e ripulisce eventuali errori precedenti, utilizzato in tutti i metodi del service.

===== TenantApiClientService <angular-tenant-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/TenantApiClientService.pdf", width: 70%),
  caption: [Code diagram del TenantApiClientService]
)
Il `TenantApiClientService` è un servizio dedicato alla comunicazione con le API di gestione dei tenant del backend. Si occupa di inviare le richieste _HTTP_ per effettuare operazioni di creazione, eliminazione e recupero dei tenant, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `getTenant(id: string): Observable<TenantBackend>`: invia la richiesta di recupero di un tenant specifico.
- `getTenants(page: number, limit: number): 
Observable<PaginatedTenantResponse<TenantBackend>>`: invia la richiesta di recupero della lista paginata di tenant dal backend, impostando _page_ e _limit_ come _query parameters_.
- `getAllTenants(): Observable<TenantBackend[]>`: invia la richiesta di recupero della lista completa di tenant dal backend.
- `createTenant(config: TenantConfig): Observable<TenantBackend>`: invia la richiesta di creazione di un nuovo tenant, mappando i campi del `TenantConfig` al formato richiesto dal backend.
- `deleteTenant(id: string): Observable<void>`: invia la richiesta di eliminazione di un tenant specifico.

===== TenantService <angular-tenant-service>
#figure(
  image("../../assets/c4/frontend/services/TenantService.pdf", width: 70%),
  caption: [Code diagram del TenantService]
)
Il `TenantService` è un servizio dedicato alla gestione dello stato dei tenant. Si occupa di mantenere lo stato dei tenant recuperati dal backend, di fornire un'interfaccia semplice per accedere a queste informazioni e di coordinare le operazioni relative ai tenant.\

Il servizio inietta tramite _dependency injection_:
- `TenantApiClientService`: per comunicare con le API di gestione dei tenant del backend.
- `TenantApiAdapter`: per adattare i dati dei tenant restituiti dal backend al formato utilizzato all'interno del frontend.

Il servizio presenta i seguenti attributi:
- `_loading` e `loading`: `_loading` è il _signal_ privato dello stato di caricamento, `loading` è la controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato dello stato di errore, `error` è la controparte _readonly_ pubblica.
- `_tenantList` e `tenantList`: `_tenantList` è il _signal_ privato della lista tenant, `tenantList` è la controparte _readonly_ pubblica.
- `_total` e `total`: `_total` è il _signal_ privato del totale tenant per la paginazione, `total` è la controparte _readonly_ pubblica.
- `_pageIndex` e `pageIndex`: `_pageIndex` è il _signal_ privato dell'indice di pagina corrente, `pageIndex` è la controparte _readonly_ pubblica.
- `_limit` e `limit`: `_limit` è il _signal_ privato del numero di tenant per pagina, `limit` è la controparte _readonly_ pubblica.

Il servizio presenta i seguenti metodi pubblici:
- `getTenant(id: string): Observable<Tenant>`: recupera un tenant per ID tramite `TenantApiClientService`, adatta la risposta con `TenantApiAdapter` e restituisce `Observable<Tenant>`, in caso di problemi imposta lo stato di errore interno.
- `getAllTenants(): Observable<Tenant[]>`: recupera la lista completa dei tenant tramite `TenantApiClientService`, adatta la risposta con `TenantApiAdapter` e restituisce `Observable<Tenant[]>`, in caso di problemi imposta lo stato di errore interno.
- `retrieveTenants(): void`: recupera la lista paginata dei tenant, adatta la risposta con `TenantApiAdapter` e aggiorna lo stato interno.
- `changePage(pageIndex: number, limit: number): void`: aggiorna i parametri di paginazione e richiama `retrieveTenants`.
- `addNewTenant(config: TenantConfig): Observable<Tenant>`: crea un tenant tramite `TenantApiClientService`, adatta la risposta e restituisce `Observable<Tenant>`.
- `removeTenant(id: string): Observable<void>`: elimina un tenant per ID tramite `TenantApiClientService` e restituisce `Observable<void>`, in caso di problemi imposta lo stato di errore interno.

Il servizio presenta i seguenti metodi privati:
- `refetchCurrentPage(): void`: ricarica la pagina corrente dei tenant.
- `setGettingTenantsState(): void`: imposta lo stato interno per il recupero della lista tenant.
- `setLoadingState(): void`: imposta lo stato interno di caricamento e pulisce eventuali errori.

===== UserApiClientService <angular-user-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/UserApiClientService.pdf", width: 70%),
  caption: [Code diagram del UserApiClientService]
)
Lo `UserApiClientService` è un servizio dedicato alla comunicazione con le API di gestione degli utenti del backend. Si occupa di inviare le richieste _HTTP_ per effettuare operazioni di creazione, eliminazione e recupero degli utenti, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti metodi pubblici:
- `getUser(id: string, role: UserRole, tenantId?: string): Observable<UserBackend>`: invia la richiesta di recupero di un utente specifico costruendo l'URL tramite `getBaseUrl()`.
- `getUsers(role: UserRole, page: number, limit: number, tenantId?: string): Observable<PaginatedUserResponse<UserBackend>>`: invia la richiesta di recupero di una lista paginata di utenti costruendo l'URL tramite `getBaseUrl()`.
- `createUser(config: UserConfig, role: UserRole, tenantId?: string): Observable<UserBackend>`: invia la richiesta di creazione di un nuovo utente costruendo l'URL tramite `getBaseUrl()`, mappando i dati di `UserConfig` nel formato richiesto dal backend.
- `deleteUser(id: string, role: UserRole, tenantId?: string): Observable<void>`: invia la richiesta di eliminazione di un utente specifico costruendo l'URL tramite `getBaseUrl()`.

Il servizio presenta i seguenti metodi privati:
- `getBaseUrl(role: UserRole, tenantId?: string, isPlural = false): string`: metodo ausiliario che costruisce l'URL base delle richieste in base a ruolo, tenant ed endpoint singolare/plurale (per recupero singolo/paginato).

===== UserService <angular-user-service>
#figure(
  image("../../assets/c4/frontend/services/UserService.pdf", width: 70%),
  caption: [Code diagram del UserService]
)
Lo `UserService` è un servizio dedicato alla gestione dello stato degli utenti. Si occupa di mantenere lo stato degli utenti recuperati dal backend, di fornire un'interfaccia semplice per accedere a queste informazioni e di coordinare le operazioni relative agli utenti.\

Il servizio inietta tramite _dependency injection_:
- `UserApiClientService`: per comunicare con le API di gestione degli utenti del backend.
- `UserApiAdapter`: per adattare i dati degli utenti restituiti dal backend al formato utilizzato all'interno del frontend.

Il servizio presenta i seguenti attributi:
- `_loading` e `loading`: `_loading` è il _signal_ privato dello stato di caricamento, `loading` è la controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato dello stato di errore, `error` è la controparte _readonly_ pubblica.
- `_userList` e `userList`: `_userList` è il _signal_ privato della lista utenti, `userList` è la controparte _readonly_ pubblica.
- `_total` e `total`: `_total` è il _signal_ privato del totale utenti per la paginazione, `total` è la controparte _readonly_ pubblica.
- `_pageIndex` e `pageIndex`: `_pageIndex` è il _signal_ privato dell'indice di pagina corrente, `pageIndex` è la controparte _readonly_ pubblica.
- `_limit` e `limit`: `_limit` è il _signal_ privato del numero di utenti per pagina, `limit` è la controparte _readonly_ pubblica.

Il servizio presenta i seguenti metodi pubblici:
- `getUser(id: string, role: UserRole, tenantId?: string): Observable<User>`: recupera un utente tramite `UserApiClientService`, adatta la risposta con `UserApiAdapter` e restituisce `Observable<User>`, in caso di problemi imposta lo stato di errore interno.
- `retrieveUsers(role: UserRole, tenantId?: string): void`: recupera la lista utenti tramite `UserApiClientService`, adatta la risposta con `UserApiAdapter` e aggiorna lo stato interno, in caso di problemi imposta lo stato di errore interno.
- `changePage(pageIndex: number, limit: number, role: UserRole, tenantId?: string): void`: aggiorna i parametri di paginazione e richiama `retrieveUsers`.
- `addNewUser(config: UserConfig, role: UserRole, tenantId?: string): Observable<User>`: crea un utente tramite `UserApiClientService`, adatta la risposta e restituisce `Observable<User>`.
- `removeUser(user: User): Observable<void>`: elimina un utente tramite `UserApiClientService` usando i dati dell'utente passato e restituisce `Observable<void>`, in caso di problemi imposta lo stato di errore interno.

Il servizio presenta i seguenti metodi privati:
- `refetchCurrentPage(role: UserRole, tenantId?: string): void`: ricarica la pagina corrente degli utenti.
- `setGettingUsersState(): void`: imposta lo stato interno per il recupero della lista utenti.
- `setLoadingState(): void`: imposta lo stato interno di caricamento e pulisce eventuali errori.

===== GatewayApiClientService <angular-gateway-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/GatewayApiClientService.pdf", width: 70%),
  caption: [Code diagram del GatewayApiClientService]
)
Il `GatewayApiClientService` è un servizio dedicato alla comunicazione con le API di gestione dei gateway del backend. Si occupa di inviare le richieste _HTTP_ per effettuare operazioni di creazione, eliminazione e recupero dei gateway, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `getGatewayListByTenant(tenantId: string, page: number, limit: number): Observable<PaginatedGatewayResponse<GatewayBackend>>`: recupera la lista paginata dei gateway associati a uno specifico tenant.
- `getGatewayList(page: number, limit: number): Observable<PaginatedGatewayResponse<GatewayBackend>>`: recupera la lista paginata di tutti i gateway.
- `addNewGateway(config: GatewayConfig): Observable<GatewayBackend>`: invia la richiesta di creazione di un nuovo gateway, mappando i dati di `GatewayConfig` nel formato richiesto dal backend.
- `deleteGateway(gatewayId: string): Observable<void>`: invia la richiesta di eliminazione di un gateway specifico.

===== GatewayCommandApiClientService <angular-gateway-command-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/GatewayCommandApiClientService.pdf", width: 70%),
  caption: [Code diagram del GatewayCommandApiClientService]
)
Il `GatewayCommandApiClientService` è un servizio dedicato alla comunicazione con le API di gestione dei comandi dei gateway del backend. Si occupa di inviare le richieste _HTTP_ per effettuare operazioni di invio di comandi ai gateway, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `commissionGateway(gatewayId: string, tenantId: string, token: string): Observable<GatewayBackend>`: invia la richiesta di commissionamento di un gateway, mappando i parametri nel formato richiesto dal backend.
- `decommissionGateway(gatewayId: string): Observable<void>`: invia la richiesta di decommissionamento di un gateway.
- `resetGateway(gatewayId: string): Observable<void>`: invia la richiesta di reset di un gateway.
- `rebootGateway(gatewayId: string): Observable<void>`: invia la richiesta di riavvio di un gateway.
- `interruptGateway(gatewayId: string): Observable<void>`: invia la richiesta di interruzione di un gateway.
- `resumeGateway(gatewayId: string): Observable<void>`: invia la richiesta di ripresa di un gateway.

===== GatewayService <angular-gateway-service>
#figure(
  image("../../assets/c4/frontend/services/GatewayService.pdf", width: 70%),
  caption: [Code diagram del GatewayService]
)
Il `GatewayService` è un servizio dedicato alla gestione dello stato dei gateway. Si occupa di mantenere lo stato dei gateway recuperati dal backend, di fornire un'interfaccia semplice per accedere a queste informazioni e di coordinare le operazioni relative ai gateway.\
Il servizio inietta tramite _dependency injection_:
- `GatewayApiClientService`: per comunicare con le API di gestione dei gateway del backend.
- `GatewayCommandApiClientService`: per comunicare con le API di gestione dei comandi dei gateway del backend.
- `GatewayApiAdapter`: per adattare i dati dei gateway restituiti dal backend al formato utilizzato all'interno del frontend.

Il servizio presenta i seguenti attributi:
- `_gatewayList` e `gatewayList`: `_gatewayList` è il _signal_ privato della lista gateway, `gatewayList` è la controparte _readonly_ pubblica.
- `_total` e `total`: `_total` è il _signal_ privato del totale gateway per la paginazione, `total` è la controparte _readonly_ pubblica.
- `_pageIndex` e `pageIndex`: `_pageIndex` è il _signal_ privato dell'indice di pagina corrente, `pageIndex` è la controparte _readonly_ pubblica.
- `_limit` e `limit`: `_limit` è il _signal_ privato del numero di gateway per pagina, `limit` è la controparte _readonly_ pubblica.
- `_loading` e `loading`: `_loading` è il _signal_ privato dello stato di caricamento, `loading` è la controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato dello stato di errore, `error` è la controparte _readonly_ pubblica.
- `_currentTenantId`: identificativo del tenant selezionato usato per filtrare i gateway.

Il servizio presenta i seguenti metodi pubblici:
- `getGatewaysByTenant(tenantId: string, page: number, limit: number): void`: recupera la lista paginata dei gateway di un tenant, adatta i dati tramite `GatewayApiAdapter` e aggiorna lo stato interno.
- `getGateways(page: number, limit: number): void`: recupera la lista paginata di tutti i gateway, adatta i dati tramite `GatewayApiAdapter` e aggiorna lo stato interno.
- `addNewGateway(config: GatewayConfig): Observable<Gateway>`: crea un gateway tramite `GatewayApiClientService`, adatta la risposta tramite `GatewayApiAdapter` e restituisce il gateway creato in caso di successo.
- `deleteGateway(id: string): Observable<void>`: elimina un gateway tramite `GatewayApiClientService`.
- `commissionGateway(id: string, tenantId: string, token: string): Observable<Gateway>`: commissiona un gateway tramite `GatewayCommandApiClientService`, adatta la risposta tramite `GatewayApiAdapter` e restituisce il gateway commissionato in caso di successo.
- `decommissionGateway(id: string): Observable<void>`: decommissiona un gateway tramite `GatewayCommandApiClientService` e ricarica la lista dei gateway.
- `resetGateway(id: string): Observable<void>`: resetta un gateway tramite `GatewayCommandApiClientService`.
- `rebootGateway(id: string): Observable<void>`: riavvia un gateway tramite `GatewayCommandApiClientService`.
- `interruptGateway(id: string): Observable<void>`: interrompe un gateway tramite `GatewayCommandApiClientService` e ricarica la lista dei gateway.
- `resumeGateway(id: string): Observable<void>`: riattiva un gateway tramite `GatewayCommandApiClientService` e ricarica la lista dei gateway.
- `changePage(page: number, limit: number): void`: ricarica la pagina corrente dei gateway in base al tenant selezionato.

Il servizio presenta i seguenti metodi privati:
- `refetchCurrentPage(): void`: ricarica la pagina corrente dei gateway in base al tenant selezionato.
- `setGettingGatewaysState(): void`: imposta lo stato interno per il recupero della lista gateway.
- `setLoadingState(): void`: imposta lo stato interno di caricamento e pulisce eventuali errori.

===== SensorApiClientService <angular-sensor-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/SensorApiClientService.pdf", width: 70%),
  caption: [Code diagram del SensorApiClientService]
)
Il `SensorApiClientService` è un servizio dedicato alla comunicazione con le API di gestione dei sensori del backend. Si occupa di inviare le richieste _HTTP_ per effettuare operazioni di creazione, eliminazione e recupero dei sensori, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `getSensorListByGateway(gatewayId: string, page: number, limit: number): Observable<PaginatedSensorResponse<SensorBackend>>`: recupera la lista paginata dei sensori associati a uno specifico gateway.
- `getSensorListByTenant(tenantId: string, page: number, limit: number): Observable<PaginatedSensorResponse<SensorBackend>>`: recupera la lista paginata dei sensori associati a un tenant specifico.
- `addNewSensor(config: SensorConfig): Observable<SensorBackend>`: invia la richiesta di creazione di un nuovo sensore, mappando i dati di `SensorConfig` al formato richiesto dal backend.
- `deleteSensor(id: string): Observable<void>`: invia la richiesta di eliminazione di un sensore specifico.

===== SensorCommandApiClientService <angular-sensor-command-api-client-service>
#figure(
  image("../../assets/c4/frontend/services/SensorCommandApiClientService.pdf", width: 70%),
  caption: [Code diagram del SensorCommandApiClientService]
)
Il `SensorCommandApiClientService` è un servizio dedicato alla comunicazione con le API di gestione dei comandi dei sensori del backend. Si occupa di inviare le richieste _HTTP_ al backend per effettuare operazioni di invio di comandi ai sensori, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `interruptSensor(sensorId: string): Observable<void>`: invia la richiesta di interruzione di un sensore.
- `resumeSensor(sensorId: string): Observable<void>`: invia la richiesta di ripresa di un sensore.

===== SensorService <angular-sensor-service>
#figure(
  image("../../assets/c4/frontend/services/SensorService.pdf", width: 70%),
  caption: [Code diagram del SensorService]
)
Il `SensorService` è un servizio dedicato alla gestione dello stato dei sensori. Si occupa di mantenere lo stato dei sensori recuperati dal backend, di fornire un'interfaccia semplice per accedere a queste informazioni e di coordinare le operazioni relative ai sensori.\

Il servizio inietta tramite _dependency injection_:
- `SensorApiClientService`: per comunicare con le API di gestione dei sensori del backend.
- `SensorCommandApiClientService`: per comunicare con le API di gestione dei comandi dei sensori del backend.
- `SensorApiAdapter`: per adattare i dati dei sensori restituiti dal backend al formato utilizzato all'interno del frontend.

Il servizio presenta i seguenti attributi:
- `_sensorList` e `sensorList`: `_sensorList` è il _signal_ privato della lista sensori, `sensorList` è  la controparte _readonly_ pubblica.
- `_total` e `total`: `_total` è il _signal_ privato del totale sensori per la paginazione, `total` è la controparte _readonly_ pubblica.
- `_pageIndex` e `pageIndex`: `_pageIndex` è il _signal_ privato dell'indice di pagina corrente, `pageIndex` è la controparte _readonly_ pubblica.
- `_limit` e `limit`: `_limit` è il _signal_ privato del numero di sensori per pagina, `limit` è la controparte _readonly_ pubblica.
- `_loading` e `loading`: `_loading` è il _signal_ privato dello stato di caricamento, `loading` è la controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato dello stato di errore, `error` è la controparte _readonly_ pubblica.
- `_currentGatewayId`: identificativo del gateway selezionato usato per filtrare i sensori.
- `_currentTenantId`: identificativo del tenant selezionato usato per filtrare i sensori.

Il servizio presenta i seguenti metodi pubblici:
- `getSensorsByGateway(gatewayId: string, page: number, limit: number): void`: recupera la lista paginata dei sensori di un gateway, adatta i dati tramite `SensorApiAdapter` e aggiorna lo stato interno.
- `getSensorsByTenant(tenantId: string, page: number, limit: number): void`: recupera la lista paginata dei sensori di un tenant, adatta i dati tramite `SensorApiAdapter` e aggiorna lo stato interno.
- `addNewSensor(config: SensorConfig): Observable<Sensor>`: crea un sensore tramite `SensorApiClientService`, adatta la risposta tramite `SensorApiAdapter` e restituisce il sensore appena creato.
- `deleteSensor(id: string): Observable<void>`: elimina un sensore tramite `SensorApiClientService`.
- `interruptSensor(sensorId: string): Observable<void>`: interrompe un sensore tramite `SensorCommandApiClientService`.
- `resumeSensor(sensorId: string): Observable<void>`: riattiva un sensore tramite `SensorCommandApiClientService`.
- `clearSensors(): void`: metodo ausiliario che pulisce la lista dei sensori e i parametri di paginazione.
- `changePage(page: number, limit: number): void`: ricarica la pagina corrente dei sensori in base al gateway o tenant selezionato.

Il servizio presenta i seguenti metodi privati:
- `refetchCurrentPage(): void`: ricarica la pagina corrente dei sensori in base al gateway o tenant selezionato.
- `setGettingSensorsState(): void`: imposta lo stato interno per il recupero della lista sensori.
- `setLoadingState(): void`: imposta lo stato interno di caricamento e pulisce eventuali errori.

===== SensorLiveReadingsApiService <angular-sensor-live-readings-api-service>
#figure(
  image("../../assets/c4/frontend/services/SensorLiveReadingsApiService.pdf", width: 70%),
  caption: [Code diagram del SensorLiveReadingsApiService]
)
Il `SensorLiveReadingsApiService` è un servizio dedicato alla comunicazione tramite _WebSocket_ con il backend. Si occupa aprire la connessione al backend per recuperare le letture in tempo reale dei sensori.\

Il servizio inietta tramite _dependency injection_:
- `tokenService`: per accedere al token di autenticazione necessario per autenticare la richiesta e stabilire la connessione con il backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.
- `socket$`: è un _WebSocketSubject_ utilizzato per gestire la comunicazione in tempo reale con il backend.
- `disconnect$`: è un _Subject_ utilizzato per gestire la disconnessione dal backend.

Il servizio presenta i seguenti metodi pubblici:
- `connect(req: ChartRequest): Observable<RealTimeReading>`: stabilisce la connessione con il backend, autenticando la richiesta tramite il token _JWT_ e costruendo il _WebSocket_ tramite `createWebSocket` e ritornando le letture ricevute dal backend.
- `disconnect(): void`: chiude la connessione con il backend emettendo un evento sul `disconnect$` che viene ascoltato dal `socket$` per chiudere la connessione.

Il servizio presenta i seguenti metodi privati:
- `createWebSocket(url: string): WebSocketSubject<RealTimeReading>`: metodo ausiliario che costruisce il _WebSocketSubject_ tramite il metodo `webSocket`.

===== SensorHistoricApiService <angular-sensor-historic-api-service>
#figure(
  image("../../assets/c4/frontend/services/SensorHistoricApiService.pdf", width: 70%),
  caption: [Code diagram del SensorHistoricApiService]
)
Il `SensorHistoricApiService` è un servizio dedicato alla comunicazione con le API di gestione delle letture storiche dei sensori del backend. Si occupa di inviare le richieste _HTTP_ per recuperare le letture storiche dei sensori, e di riportare le risposte o gli errori ricevuti tramite _Observables_.\

Il servizio inietta tramite _dependency injection_:
- `HttpClient`: servizio di Angular per inviare richieste HTTP al backend.

Il servizio presenta i seguenti attributi:
- `apiUrl`: rappresenta l'URL base utilizzato dagli endpoint esposti dal backend, viene recuperato dalla variabile d'ambiente `environment.ts`.

Il servizio presenta i seguenti metodi pubblici:
- `getHistoricData(req: ChartRequest): Observable<HistoricResponse>`: invia la richiesta di recupero delle letture storiche dei sensori, costruendo l'URL con i parametri della richiesta, e restituisce `Observable<HistoricResponse>` con i dati delle letture.

===== SensorChartService <angular-sensor-chart-service>
#figure(
  image("../../assets/c4/frontend/services/SensorChartService.pdf", width: 70%),
  caption: [Code diagram del SensorChartService]
)
Il `SensorChartService` è un servizio dedicato alla gestione dello stato dei dati dei sensori necessari per la visualizzazione dei grafici. Si occupa di coordinare le operazioni di recupero dei dati in tempo reale e storici dei sensori, di adattare i dati ricevuti dal backend al formato necessario e di mantenere lo stato di questi dati per renderli accessibili ai componenti dell'applicazione.\

Il servizio inietta tramite _dependency injection_:
- `SensorLiveReadingsApiService`: per comunicare con il backend e recuperare le letture in tempo reale dei sensori.
- `SensorHistoricApiService`: per comunicare con il backend e recuperare le letture storiche dei sensori.
- `SensorAdapterFactory`: factory utilizzata per istanziare il corretto tipo di adapter in base al tipo di sensore.
- `maxLiveReadings`: numero massimo di letture live mantenute in memoria per il grafico corrente.
- `isEcgLive`: flag interno che indica se il grafico live corrente appartiene a un sensore ECG.
- `subscription`: riferimento alla subscription corrente usata per gestire il flusso dati live o storico.

Il servizio presenta i seguenti attributi:
- `_historicReadings` e `historicReadings`: `_historicReadings` è il _signal_ privato dei dati storici dei sensori, `historicReadings` è la controparte _readonly_ pubblica.
- `_liveReadings` e `liveReadings`: `_liveReadings` è il _signal_ privato dei dati in tempo reale dei sensori, `liveReadings` è la controparte _readonly_ pubblica.
- `_loading` e `loading`: `_loading` è il _signal_ privato dello stato di caricamento, `loading` è la controparte _readonly_ pubblica.
- `_error` e `error`: `_error` è il _signal_ privato dello stato di errore, `error` è la controparte _readonly_ pubblica.
- `_connectionStatus` e `connectionStatus`: `_connectionStatus` è il _signal_ privato dello stato della connessione (che può assumere valori: `connected`, `disconnected`, `connecting`, `reconnecting`), `connectionStatus` è la controparte _readonly_ pubblica.
- `_fields` e `fields`: `_fields` è il _signal_ privato stabilisce l'unità di misura e il nome del valore letto per ogni tipo di sensore, `fields` è la controparte _readonly_ pubblica.
- `_samplesPerPacket` e `samplesPerPacket`: `_samplesPerPacket` è il _signal_ privato del numero di campioni per pacchetto (utilizzato nel caso di sensori `ECG_CUSTOM`), `samplesPerPacket` è la controparte _readonly_ pubblica.
- `historicAdapter`: riferimento alla classe astratta usata per definire gli adapters delle risposte storiche, specializzate in base al tipo di sensore.
- `liveAdapter`: riferimento alla classe astratta usata per definire gli adapters delle risposte in tempo reale, specializzate in base al tipo di sensore.

Il servizio presenta i seguenti metodi pubblici:
- `startChart(req: ChartRequest): void`: avvia il processo di recupero dei dati dei sensori, sia in tempo reale che storici, istanziando il corretto adapter in base al tipo di sensore e avviando il chart richiesto.
- `stopChart(): void`: interrompe il processo di recupero dei dati dei sensori, annullando la subscription corrente, chiudendo la connessione live e impostando lo stato della connessione come `disconnected`.

Il servizio presenta i seguenti metodi privati:
- `startHistoricChart(req: ChartRequest): void`: avvia il processo di recupero dei dati storici dei sensori, adattando i dati ricevuti dal backend e aggiornando lo stato interno.
- `startLiveReadingsChart(req: ChartRequest): void`: avvia il processo di recupero dei dati in tempo reale dei sensori, adattando i dati ricevuti dal backend e aggiornando lo stato interno, gestendo anche lo stato della connessione.
- `reset(): void`: metodo ausiliario che pulisce i dati storici e in tempo reale dei sensori, reimposta campi e numero di campioni per pacchetto ai valori di default e interrompe eventuali stream attivi.

===== DashboardService <angular-dashboard-service>
#figure(
  image("../../assets/c4/frontend/services/DashboardService.pdf", width: 70%),
  caption: [Code diagram del DashboardService]
)
Il `DashboardService` è un servizio dedicato alla gestione dello stato dei dati e delle informazioni visualizzate nella dashboard. Si occupa di coordinare le operazioni di recupero dei dati necessari per la visualizzazione della dashboard, di adattarli e di mantenere lo stato di questi ultimi per renderli accessibili ai componenti dell'applicazione.
Offre un interfaccia unificata per la pagina `DashboardPage` che può così accedere ai dati relativi ai sensori e ai gateway in modo semplice e coerente.\

Il servizio inietta tramite _dependency injection_:
- `GatewayService`: per accedere alle informazioni sui gateway e sui sensori associati.
- `SensorService`: per accedere alle informazioni sui sensori.
- `PermissionService`: per determinare se l'utente ha il permesso di inviare comandi ai gateway.

Il servizio presenta i seguenti attributi:
- `_expandedGateway` e `expandedGateway`: `_expandedGateway` è il _signal_ privato del gateway attualmente espanso nella dashboard, `expandedGateway` è la controparte _readonly_ pubblica.
- `_selectedChart` e `selectedChart`: `_selectedChart` è il _signal_ privato del tipo di grafico attualmente selezionato per la visualizzazione, `selectedChart` è la controparte _readonly_ pubblica.
- `canSendCommands`: `canSendCommands` è il _signal computed_ utilizzato per determinare se l'utente ha il permesso di inviare comandi ai gateway.
Il servizio inoltre espone tutti gli attributi del `GatewayService` e `SensorService` attraverso attributi _readonly_, in modo che i componenti della dashboard possano accedervi direttamente.

Il servizio presenta i seguenti metodi pubblici:
- `loadDashboard(tenantId?: string): void`: metodo utilizzato per recuperare la lista di gateway (se `canSendCommands` è `true`) o la lista di sensori, filtrando tali liste per _tenant_.
- `changeGatewayPage(pageIndex: number, limit: number): void`: metodo utilizzato per cambiare la pagina della lista gateway, richiama il metodo `changePage` del `GatewayService`.
- `changeSensorPage(pageIndex: number, limit: number): void`: metodo utilizzato per cambiare la pagina della lista sensori, richiama il metodo `changePage` del `SensorService`.
- `toggleExpandedGateway(gateway: Gateway): void`: metodo utilizzato per espandere o chiudere il dettaglio di un gateway nella dashboard, aggiorna lo stato di `expandedGateway`.
- `openChart(request: ChartRequest): void`: metodo utilizzato per aprire il grafico di un sensore, aggiorna lo stato di `selectedChart` con la richiesta ricevuta.
- `closeChart(): void`: metodo utilizzato per chiudere il grafico di un sensore, aggiorna lo stato di `selectedChart` a `null`.

Il servizio presenta i seguenti metodi privati:
- `collapseGateway(): void`: metodo utilizzato per chiudere il dettaglio di un gateway nella dashboard, aggiorna lo stato di `expandedGateway` a `null` e pulisce la lista dei sensori dal `SensorService`. 

===== GatewaySensorManagerService <angular-gateway-sensor-manager-service>
#figure(
  image("../../assets/c4/frontend/services/GatewaySensorManagerService.pdf", width: 70%),
  caption: [Code diagram del GatewaySensorManagerService]
)
Il `GatewaySensorManagerService` è un servizio dedicato alla gestione delle azioni _CRUD_ effettuabili su gateway e sensori. Si occupa di coordinare le operazioni di creazione, eliminazione e invio di comandi ai gateway e ai sensori, e di gestire eventuali errori che possono verificarsi durante queste operazioni.
Offre un interfaccia unificata per la pagina `GatewaySensorManagerPage` che può così accedere ai dati relativi ai sensori e ai gateway in modo semplice e coerente.\

Il servizio inietta tramite _dependency injection_:
- `GatewayService`: per comunicare con le API di gestione dei gateway del backend e gestire le operazioni correlate ai gateway.
- `SensorService`: per comunicare con le API di gestione dei sensori del backend e gestire le operazioni correlate ai sensori.

Il servizio presenta i seguenti attributi:
- `_expandedGateway` e `expandedGateway`: `_expandedGateway` è il _signal_ privato del gateway attualmente espanso, `expandedGateway` è la controparte _readonly_ pubblica.
Il servizio inoltre espone tutti gli attributi del `GatewayService` e `SensorService` attraverso attributi _readonly_, in modo che i componenti della dashboard possano accedervi direttamente.

Il servizio presenta i seguenti metodi pubblici:
- `loadGateways(): void`: metodo utilizzato per recuperare la lista di gateway, richiama il metodo `getGateways` del `GatewayService`.
- `toggleExpandedGateway(gateway: Gateway): void`: metodo utilizzato per espandere o chiudere il dettaglio di un gateway nella dashboard, aggiorna lo stato di `expandedGateway`.
- `deleteGateway(gateway: Gateway): Observable<void>`: metodo utilizzato per eliminare un gateway, richiama il metodo `deleteGateway` del `GatewayService` e aggiorna la lista al completamento.
- `deleteSensor(sensor: Sensor): Observable<void>`: metodo utilizzato per eliminare un sensore, richiama il metodo `deleteSensor` del `SensorService` e aggiorna la lista dei sensori al completamento.
- `changeGatewayPage(pageIndex: number, limit: number): void`: metodo utilizzato per cambiare la pagina della lista gateway, richiama il metodo `changePage` del `GatewayService`.
- `changeSensorPage(pageIndex: number, limit: number): void`: metodo utilizzato per cambiare la pagina della lista sensori, richiama il metodo `changePage` del `SensorService`.
- `refreshGateways(): void`: metodo utilizzato per ricaricare la lista di gateway, richiama il metodo `refetchCurrentPage` del `GatewayService`.
- `refreshSensors(gatewayId: string): void`: metodo utilizzato per ricaricare la lista di sensori di un gateway, richiamando il recupero dei sensori per il gateway corrente.

Il servizio presenta i seguenti metodi privati:
- `collapseGateway(): void`: metodo utilizzato per chiudere il dettaglio di un gateway nella dashboard, aggiorna lo stato di `expandedGateway` a `null` e pulisce la lista dei sensori dal `SensorService`.

==== Componenti UI









=== Cloud Backend


== Database design <db-design>
=== Buffer database
#figure(
  image("../../assets/c4/gateway/BufferER.pdf", width: 40%),
  caption: [Diagramma ER del database per il buffer interno del gateway simulato],
)
Il microservizio dei *gateway simulati* utilizza un database #gloss[SQLite] come buffer interno per i dati prodotti dai sensori simulati associati a ciascun gateway, in modo da poterli recuperare e inviare periodicamente tramite #gloss[NATS JetStream].

Il database perciò avrà un'entità principale con i seguenti attributi:
- *sensorId*: UUID del sensore simulato che ha generato la misurazione.
- *gatewayId*: UUID del gateway simulato a cui è associato il sensore che ha generato la misurazione.
- *timestamp*: timestamp rappresentante il momento in cui è stata generata la misurazione.
- *profile*: stringa rappresentante il profilo del sensore simulato (vedi @sensor-profile) che ha generato la misurazione, utile per identificare il tipo di dato generato.
- *value*: array di byte rappresentante il o i valori della misurazione generata, è un array di byte per permettere di rappresentare qualsiasi tipo di dato.

=== Configuration database
#figure(
  image("../../assets/c4/gateway/GatewaySensorER.pdf", width: 100%),
  caption: [Diagramma ER del database per la configurazione dei gateway e dei sensori simulati],
)
Il microservizio dei *gateway simulati* utilizza un database #gloss[SQLite] per salvare la configurazione dei gateway e dei sensori simulati, in modo da poterla recuperare in caso di riavvio del servizio o di crash.

Il database perciò avrà due entità principali, ovvero *Gateway* e *Sensor*, con i seguenti attributi:
- *Gateway*:
  - *id*: UUID del gateway simulato.
  - *tenantId*: eventuale UUID del tenant a cui è associato il gateway simulato (in caso di gateway commissionato).
  - *status*: enum di tipo *GatewayStatus* rappresentante lo stato corrente del gateway (vedi @gateway-status-enum).
  - *interval*: intervallo di tempo in millisecondi tra gli invii di dati (svuotamento del buffer).
  - *publicIdentifier*: stringa rappresentante la chiave pubblica del gateway, utile per il processo di commissioning.
  - *secretKey*: stringa rappresentante la chiave privata del gateway, utile per garantire che è il corretto possessore del *token*.
  - *token*: stringa rappresentante il #gloss[JWT] necessario per l'invio dei dati IoT via #gloss[NATS JetStream]
- *Sensor*:
  - *id*: UUID del sensore simulato.
  - *profile*: stringa rappresentante il profilo del sensore simulato (vedi @sensor-profile), utile per identificare il tipo di dato generato e per la generazione delle misurazioni.
  - *interval*: intervallo di tempo in millisecondi tra la generazione di due misurazioni consecutive.
  - *status*: enum di tipo *SensorStatus* rappresentante lo stato corrente del sensore (vedi @sensor-status-enum).

Inoltre tra le due entità è presente una *relazione uno a molti*, in quanto un gateway può avere più sensori associati (o anche nessuno), mentre un sensore deve essere associato ad un gateway.

=== Sensor data database
#figure(
  image("../../assets/c4/TimescaleER.pdf", width: 60%),
  caption: [Diagramma ER del database per il salvataggio dei dati IoT prodotti],
)

Il microservizio *Data Consumer* e il microservizio *Cloud Backend* utilizzano un database #gloss[TimescaleDB] per salvare i dati IoT prodotti dai sensori simulati, in modo da poterne visualizzare lo storico.

Il database avrà un'entità principale con i seguenti attributi:
- *sensorId*: UUID del sensore simulato che ha generato la misurazione.
- *gatewayId*: UUID del gateway simulato a cui è associato il sensore che ha generato la misurazione.
- *tenantId*: UUID del tenant a cui appartiene il gateway del sensore che ha prodotto la misurazione.
- *profile*: stringa rappresentante il profilo del sensore simulato (vedi @sensor-profile) che ha generato la misurazione, utile per identificare il tipo di dato generato.
- *timestamp*: timestamp rappresentante il momento in cui è stata generata la misurazione, con precisione al millisecondo.
- *value*: array di byte rappresentante il o i valori della misurazione generata, è un array di byte per permettere di rappresentare qualsiasi tipo di dato.

Nel database ci sarà una separazione logica dei dati per tenant, resa possibile dalla creazione di uno *schema* per ogni tenant. \
Perciò ogni tenant dovrà accedere al proprio schema e alla propria tabella per ottenere i propri dati.



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

= Stato dei requisiti funzionali
== Stato per requisito <stato-requisito>

== Grafici riassuntivi <grafici>
