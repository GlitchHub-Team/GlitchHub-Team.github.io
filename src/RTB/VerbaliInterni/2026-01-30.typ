#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 30/01/2026",
  stato: "Bozza",
  versione: "0.0.2",
  registro-modifiche: (
    (
      "0.0.2",
      "01/02/2026",
      "Riccardo Graziani",
      "-",
      "Aggiunta tabella task e distribuzione ruoli",
    ),
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
- sviluppo *dell'infrastruttura* NATS;
- studio e sviluppo di *API REST* usando il framework Gin;
- sviluppo della *dashboard* Angular;
- studio e integrazione di *Keycloak* come servizio di autenticazione;
- studio e integrazione del *monitoring* di sistema tramite Grafana e Prometheus;

=== Analisi dei Requisiti
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
- il responsabile ha il compito di *creare*, *assegnare* e *compilare* le issues. In particolare devono essere compilati fin da subito i campi: *start date*, *target date* ed *expected worked hours*;
- è compito dell'assegnatario aggiornare lo stato delle proprie issue in maniera tempestiva tramite la *Kanban* GitHub Projects;
- al completamento di una issue è compito dell'assegnatario compilare i campi *end date* e *worked hours*;
Nel caso in cui vengano individuate nuove issue non previste inizialmente, esse vanno poste nel *backlog* della board. Tali issue devono essere assegnate oppure lasciate nel backlog.
\
È stato ribadito il ruolo che ogni sezione della Kanban GitHub Project ricopre:
- le issue nel *backlog* rappresentano attività non ancora assegnate, in cui non va inserito lo sprint;
- le issue nel *ready* rappresentano attività assegnate all'interno dello sprint;
- le issue in *progress* rappresentano attività su cui si sta attivamente lavorando: importante segnare una issue come in progress *appena si inizia il lavoro*;
- le issue in *review* rappresentano attivià che hanno bisogno di approvazione/verifica;
- le issue in *done* rappresentano attività che sono state *completate* e *verificate/approvate*; 

=== Gestione della verifica di attività
Il gruppo ha rilevato la necessità di effettuare verifiche *più frequenti*, in particolare per quanto riguarda documenti come l'AdR. Al momento, infatti, bisogna verificare un documento di dimensioni notevoli, avendo cura che nessuno dei verificatori verifichi del lavoro che ha svolto in precedenza. Siccome la redazione degli use case e dei requisiti è stata svolta da due gruppi separati, il processo di verifica dell'AdR non dovrebbe causare molti problemi.
Inoltre è stato concordato che il verificatore ha il compito di *suggerire* le modifiche, non di attuarle.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Sviluppo crittografia, autenticazione e account con NATS], [Alessandro Dinato], [#issue_poc(2)],

  [Impostazione NATS JetStream nel PoC], [Alessandro Dinato], [#issue_poc(3)],

  [Sviluppo collegamento DataConsumer - TimescaleDB], [Alessandro Dinato], [#issue_poc(4)],

  [Studio Keycloak], [Elia Ernesto Stellin], [#issue_poc(5)],

  [Studio Go e framework Gin], [Elia Ernesto Stellin, Michele Dioli, Jaume Bernardi], [#issue_poc(6)],

  [Sviluppo API di autenticazione], [Elia Ernesto Stellin], [#issue(8)],

  [Collegamento login Keycloak con dashboard Angular], [Elai Ernesto Stellin], [#issue_poc(16)],

  [Sviluppo API recupero dati storici da TimescaleDB], [Jaume Bernardi], [#issue_poc(9)],

  [Sviluppo API recupero dati real-time da stream NATS], [Michele Dioli], [#issue_poc(10)],

  [Sviluppo dashboard dati storici], [Siria Salvalaio], [#issue_poc(12)],

  [Sviluppo dashboard dati real time], [Riccardo Graziani], [#issue_poc(13)],

  [Studio Grafana e Prometheus], [Hossam Ezzemouri], [#issue_poc(14)],

  [Integrazione Grafana e Prometheus con NATS], [Hossam Ezzemouri], [#issue_poc(15)],

  [Stesura sezione Processi Primari], [Riccardo Graziani], [#issue(205)],

  [Stesura sezione Processi Organizzativi], [Elia Ernesto Stellin], [#issue(140)],

  [Stesura sezione Processi Supporto/Qualifica], [Elia Ernesto Stellin], [#issue(230)],

  [Stesura verbale 30/01/2026], [Riccardo Graziani], [#issue(217)],

  [Classificare RF1 - RF175], [Alessandro Dinato], [#issue(226)],

  [Classificare RF176 - Fine], [Elia Ernesto Stellin], [#issue(227)],

  [Stesura Test di Sistema per RF1 - RF64], [Michele Dioli], [#issue(228)],

  [Stesura Test di Sistema per RF65 - RF128], [Jaume Bernardi], [#issue(229)],

  [Stesura Test di Sistema per RF129 - RF192], [Hossam Ezzemouri], [#issue(231)],

  [Stesura Test di Sistema per RF193 - RF256], [Siria Salvalaio], [#issue(233)],

  [Stesura Test di Sistema per RF257 - RD14], [Riccardo Graziani], [#issue(234)],
)

== Assegnazione ruoli per le prossime due settimane
- *Responsabile*: Riccardo Graziani
- *Amministratore*: Riccardo Graziani, Siria Salvalaio, Hossam Ezzemouri, Jaume Bernardi, Michele Dioli
- *Programmatore*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Michele Dioli