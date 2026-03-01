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
      "0.0.1",
      "01/03/2026",
      "Siria Salvalaio",
      "",
      "Bozza struttura documento",
    ),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "",
  left-signature: "",
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

== Riferimenti
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
- *Documentazione linguaggio Go*:
  - #link("https://go.dev/doc/")[https://go.dev/doc/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio Typescript*:
  - #link("https://www.typescriptlang.org/docs/")[https://www.typescriptlang.org/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio Gin*:
  - #link("https://gin-gonic.com/en/docs/")[https://gin-gonic.com/en/docs/]
  - *Ultimo accesso*: 01/03/2026
//non so se TimeScaleDB ha senso nei riferimenti, e se a senso sto link
//- *Documentazione linguaggio TimeScaleDB*:
  //- #link("https://docs.timescale.com/")[https://docs.timescale.com/]
  //- *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio NATS*:
  - #link("https://docs.nats.io/")[https://docs.nats.io/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio Docker*:
  - #link("https://docs.docker.com/")[https://docs.docker.com/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio Grafana*:
  - #link("https://grafana.com/docs/")[https://grafana.com/docs/]
  - *Ultimo accesso*: 01/03/2026
- *Documentazione linguaggio Prometheus*:
  - #link("https://prometheus.io/docs/introduction/overview/")[https://prometheus.io/docs/introduction/overview/]
  - *Ultimo accesso*: 01/03/2026
//altro?

#pagebreak()

= Tecnologie
Per lo sviluppo del sistema abbiamo scelto uno stack tecnologico moderno e solido, selezionando ogni strumento con l'obiettivo di supportare bene un'architettura a microservizi che sia facile da gestire e capace di crescere nel tempo. Le nostre scelte sono state condotte dalla necessità di creare un'infrastruttura per la gestione dei dati IoT che funzioni bene anche sotto carico, garantendo che il flusso di informazioni dai sensori BLE sia sempre veloce e affidabile.

Di seguito si trovano l'elenco dei componenti scelti, con breve spiegazione delle loro caratteristiche principali.
//TODO aggiungere le versioni dei linguaggi
== Linguaggi di programmazione
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Go], [], [Go è un linguaggio compilato e staticamente tipizzato che combina semplicità sintattica e prestazioni di alto livello in contesti distribuiti. La sua gestione nativa della concorrenza permette di eseguire numerosi processi simultanei con un consumo minimo di risorse hardware. Nel progetto viene impiegato per i servizi di sincronizzazione e le componenti critiche, dove la velocità è essenziale per processare i flussi dei sensori BLE in tempo reale e assicurare la scalabilità dell’infrastruttura Cloud.],
    [Typescript], [], [TypeScript è un superset tipizzato di JavaScript che introduce il controllo statico dei tipi, migliorando drasticamente la leggibilità e la manutenibilità del codice. Compila in JavaScript standard, garantendo piena compatibilità con l'ecosistema Node.js e i browser moderni. Viene adottato per lo sviluppo dei microservizi e del frontend Angular, poiché permette di rilevare errori in fase di scrittura, assicurando la robustezza e la qualità del codice necessarie per superare i test di validazione richiesti dal capitolato],
  ),
  [Linguaggi di programmazione.],
  label-id: "ling-progr",
)\

== Framework per la codifica per il backend della dashboard
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [Gin], [], [Gin è un framework web HTTP ad alte prestazioni per Go che sfrutta un router ottimizzato per garantire velocità di esecuzione superiori e un utilizzo ridotto di risorse. Offre funzionalità predefinite per la gestione di middleware e la validazione dei dati, accelerando lo sviluppo di interfacce affidabili. È stato scelto per implementare le API e la logica backend del Cloud Layer, assicurando risposte rapide alle richieste degli utenti e un'integrazione fluida tra i vari servizi del sistema.],
    //[fx?], [], [],
  ),
  [Framework per la codifica per il backend della dashboard.],
  label-id: "framework-codifica",
)\

== Tecnologie per la gestione di dati temporali
#tabella-paginata(
  table(
    columns: (auto, 1fr, 6fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    [TimeScaleDB], [], [TimeScaleDB è un database open-source per serie temporali costruito su PostgreSQL, che ottimizza l'archiviazione e la velocità di interrogazione di dati indicizzati nel tempo. La sua architettura permette di gestire grandi volumi di informazioni mantenendo la piena compatibilità con il linguaggio SQL. È stato scelto per archiviare i dati provenienti dai sensori BLE, garantendo l'ingestione rapida e la persistenza necessarie per il monitoraggio in tempo reale e le analisi storiche previste dal sistema.],
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

    [NATS], [], [NATS è un sistema di messaggistica distribuito ad alte prestazioni, progettato per lo scambio di dati rapido e affidabile tra servizi indipendenti. La sua architettura leggera supporta modelli di comunicazione asincrona, garantendo bassa latenza e alta scalabilità nel transito delle informazioni. È stato selezionato per orchestrare il flusso di dati tra i microservizi del Cloud Layer, assicurando uno smistamento efficiente dei pacchetti provenienti dai gateway verso i sistemi di persistenza e monitoraggio.],
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

    [Docker], [], [Docker è una piattaforma di containerizzazione che permette di pacchettizzare i microservizi e le loro dipendenze in unità isolate e portatili. Garantisce che il software funzioni in modo identico in ogni ambiente, eliminando i problemi di configurazione tra sviluppo e produzione. È stato scelto per semplificare il deployment dell'infrastruttura Cloud e facilitare l'orchestrazione dei servizi, assicurando la scalabilità e la manutenibilità richieste dal capitolato.],
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

    [Grafana], [], [Grafana è una piattaforma open-source per l'analisi e la visualizzazione di dati che permette di creare dashboard dinamiche e interattive. Supporta la rappresentazione grafica di metriche complesse attraverso pannelli altamente personalizzabili. È stata scelta per fornire agli utenti e agli amministratori uno strumento intuitivo per monitorare i dati raccolti dai sensori BLE in tempo reale. Consente di visualizzare immediatamente lo stato del sistema e identificare eventuali anomalie operative.],
    [Prometheus], [], [Prometheus è un sistema di monitoraggio e allerta specializzato nella raccolta di metriche sotto forma di serie temporali. Utilizza un modello di recupero dati ottimizzato per le architetture a microservizi e ambienti cloud. Viene adottato per osservare le prestazioni dell’infrastruttura e i volumi di traffico gestiti dai gateway. La sua integrazione permette di generare alert automatici qualora un componente o un gateway smetta di funzionare correttamente.]
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

    [], [], [],
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

    [], [], [],
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

    [], [], [],
  ),
  [Tecnologie per analisi dinamica.],
  label-id: "tecn-anal-din",
)\


= Architettura
== Architettura logica

== Architettura di deployment

== Design Pattern
=== Tipi ...


== Microservizi sviluppati



= Stato dei requisiti funzionali
== Stato per requisito

== Grafici riassuntivi