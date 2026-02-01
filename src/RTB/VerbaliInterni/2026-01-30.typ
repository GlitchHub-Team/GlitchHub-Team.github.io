#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 30/01/2026",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1",
      "01/02/2026",
      "Riccardo Graziani",
      "-",
      "Prima bozza documento",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Hossam Ezzemouri",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Retrospective di sprint],
    [Miglioramento dell'organizzazione],
    [Assegnazione delle task],
    [Assegnazione ruoli],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *30 gennaio 2026* dalle 16:30 alle ore 18:40, e in data *31 gennaio 2026* dalle ore 14:30 alle ore 16:20, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Retrospettiva dello sprint

=== Allineamento sul PoC
Durante la riunione il gruppo si è allineato rispetto all'architettura proposta per il PoC. Inoltre, è  stato mostrato il lavoro svolto per quanto riguarda le demo della parte *NATS* e della parte *Angular*.
\
Infine è stata creata la #link("https://github.com/GlitchHub-Team/PoC")[*repository*] dedicata per il versionamento del PoC. Il gruppo ha dunque individuato le seguenti attività:
- sviluppo dell'infrastruttura NATS;
- studio e sviluppo di API REST usando il framework Gin;
- sviluppo della dashboard Angular
- studio e integrazione del monitoring di sistema tramite Grafana e Prometheus;

=== Analisi dei requisiti
A seguito del consolidamento degli use case redatti, sono stati scritti i relativi *requisiti*, classificandoli in requisiti *funzionali*, *non funzionali* e di *dominio*.
Sono stati redatti e inseriti i diagrammi relativi agli use case UC1 - UC109. Il gruppo ha dunque individuato le seguenti attività:
- terminare l'inserimento dei diagrammi dei casi d'uso mancanti;
- creare una *table of contents* relativa ai diagrammi dei casi d'uso;
- creare la tabella di *tracciamento* requisiti-UC;
- *classificare* i requisiti per livello di urgenza in: *Obbligatori*, *Opzionali*, *Desiderabili*;

=== Norme di Progetto
Il gruppo ha rilevato come la stesura del documento *Norme di Progetto* sia stata trascurata per troppo tempo. Sono state dunque indviduate le *sezioni* che necessitano di essere redatte:
- sezione dei *Processi Primari*;
- sezione dei *Processi Organizzativi*;
- sezioni dei *Processi di supporto/Qualifica*;

=== Piano di Qualifica
Sono state individuate e fissate le *iniziative di miglioramento* e sono state inserite le formule relative alle metriche di *Qualità del Processo* e di *Qualità del Prodotto*. 
\
Il gruppo ha quindi individuato le seguenti attività legate al *Piano di Qualifica*: 
- la scrittura dei *Test di Sistema* relativi ai requisiti funzionali, non funzionali e di dominio;
- l'integrazione del cruscotto di valutazione;

== Miglioramento dell'organizzazione del gruppo

=== Gestione delle baseline/milestone
Il gruppo ha riconosciuto la propria mancanza di lungimiranza per quanto riguarda la *programmazione* delle attività: la mancata definizione di baseline e milestone, assieme ad una pianificazione limitata all'immediato ha portato il gruppo ad aver accumulato *ritardi* nello svolgimento del lavoro.
Il gruppo si impegna dunque a programmare le attività partendo dalla *fine* e scomponendo le part in:
- *pianificazione a lungo termine*: bisogna fissare le attività a grana grossa ragionando all'indietro;
- *pianificazione a breve termine*: le attività a grana fine vanno organizzate con una corretta gesione delle issue;

=== Gestione delle issues/GitHub Project
La gestione delle GitHub issues da parte del gruppo è stata disorganizzata in più occassioni, inoltre certi campi delle issues non sono stati rispettati o compilati. Il planning delle issue è stato svolto in maniera grossolana e non a grana fine. Grazie all'esperienza maturata negli ultimi mesi e lo studio approfondito svolto per l'esame di SWE, il gruppo ha riconosciuto le proprie lacune e ha proposto un nuovo workflow per la creazione e gestione delle issue.
\
In particolare:
- la programmazione delle nuove issue deve partire dalla *fine*, ossia vanno individuate le attività da svolgere e vanno scomposte in maniera *atomica*;
- il responsabile ha il compito di *creare*, *assegnare* e *compilare* le issues. In particolare devono essere compilati fin da subito i campi: *start date*, *target date* e *expected worked hours*;
- è compito dell'assegnatario aggiornare lo stato delle proprie issue in maniera tempestiva tramite la *Kanban* GitHub Projects;
- al completamento di una issue è compito dell'assegnatario compilare i campi *end date* e *worked hours*;
Nel caso in cui vengano individuate nuove issue non previste inizialmente, esse vanno poste nel *backlog* della board. Tali issue devono o essere assegnate oppure lasciate nel backlog.
\
È stato ribadito il ruolo che ogni sezione della Kanban GitHub Project ricopre:
- le issue nel *backlog* rappresentano attività non ancora assegnate, in cui non va inserito lo sprint;
- le issue nel *ready* rappresentano attività assegnate all'interno dello sprint;
- le issue in *progress* rappresentano attività su cui si sta attivamente lavorando: importante segnare una issue come in progress *appena si inizia il lavoro*;
- le issue in *review* rappresentano attivià che hanno bisogno di approvazione/verifica;
- le issue in *done* rappresentano attività che sono state *completate* e *verificate/approvate*; 

=== Gestione della verifica di attività
Il gruppo ha rilevato la necessità di effettuare verifiche *più frequenti*, in particolare per quanto riguarda documenti come l'AdR. Al momento bisogna verificare un documento di dimensioni notevoli, avendo cura che nessuno dei verificatori verifichi del lavoro che ha svolto in precedenza. Siccome la redazione degli Use Case e dei requisiti è stata svolta da due gruppi separati, il processo di verifica dell'AdR non dovrebbe causare molti problemi.
Inoltre è stato concordato che il verificatore ha il compito di *suggerire* le modifiche, non di attuarle.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Studio NATS, inizio POC], [Alessandro Dinato], [#issue(165)],

  [Stesura dei requisiti e scrittura diagrammi degli Use Case], [Michele Dioli, Jaume Bernardi, Hossam Ezzemouri], [#issue(166)],

  [Sistemare e completare Piano di Progetto], [Elia Ernesto Stellin], [#issue(140)],

  [Aggiungere termini al glossario], [Elia Ernesto Stellin], [#issue(108)],

  [Completare gli Use Case suggeriti da M31], [Elia Ernesto Stellin], [#issue(167)],

  [Studio Angular.js], [Michele Dioli], [#issue(169)],

  [Concludere UC della visualizzazione], [Michele Dioli], [#issue(171)],
)

== Assegnazione ruoli per le prossime due settimane