#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 24/02/2026",
  stato: "da verificare",
  versione: "0.1.0",
  registro-modifiche: (
    (
      "0.1.0",
      "25/02/2026",
      "Michele Dioli",
      "-",
      "Prima stesura verbale interno del 24/02/2026",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
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
    [Applicazione migliorie nell'organizzazione],
    [Progettazione],
    [Organizzazione del nuovo sprint],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "-",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *24 febbraio 2026* dalle ore 15:30 alle ore 17:30, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Applicazione di migliorie nell'organizzazione del gruppo
Il gruppo ha denuto ideale l'utilizzo di _issue branch_ tramite l'apposita #gloss[GitHub Action], al fine di automatizzare la creazione di branch associati alle singole #gloss[Issue] e migliorare la tracciabilità del lavoro svolto.\
Inoltre, si è deciso di adottare le _Pull Request_ come strumento per tracciare l'attività di verifica direttamente all'interno del Project, eliminando la necessità di creare #gloss[Issue] dedicate alla verifica.\
Infine, è stato predisposto un calendario condiviso delle disponibilità dei membri del gruppo, con l'obiettivo di facilitare la pianificazione delle attività.

== Progettazione
Il gruppo ha discusso le prime decisioni architetturali in vista dell'MVP, rimandando molte scelte di dettaglio a sessioni di brainstorming successive alla riunione.

=== Divisione in repository separate
È stata adottata la suddivisione dell'MVP in repository distinte, una per ciascuno dei cinque servizi principali individuati:
- *NATS Jetstream Server*;
- *Gateway*, con dipendenza da NATS;
- *Data Consumer + TimescaleDB*, con dipendenza da NATS;
- *Observability*, con dipendenza da NATS;
- *Dashboard*, con dipendenze da NATS e dal Data Consumer, comprensiva di un'istanza PostgreSQL per l'autenticazione e inclusiva sia della parte frontend sia di quella backend.

=== Progettazione logica
Lo stile architetturale scelto è quello a *microservizi*. Per i servizi Gateway, Data Consumer e backend della Dashboard verrà applicata l'*architettura esagonale* (_hexagonal architecture_).

=== Applicazione delle migliorie organizzative
- Impostazione dell'automazione _issue-branch_;
- Modifica dell'automazione per la rendicontazione nel #gloss[Piano di Progetto], in modo da riflettere il nuovo utilizzo delle _Pull Request_;
- Aggiornamento della _issue-action_ esistente affinché rispecchi il nuovo workflow basato su _Pull Request_;
- Aggiornamento delle #gloss[Norme di Progetto] per documentare il nuovo workflow.

=== Impostazione delle repository MVP
Per ciascuna repository sarà necessario:
- configurare le automazioni per le #gloss[Issue] e l'_issue-branch_;
- predisporre i dev container con le versioni allineate dei linguaggi utilizzati (ad esempio Go 1.26.0).

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Riflettere modifiche a workflow issue, branch e PR], [Riccardo Graziani], [#issue(328)],

  [Dividere servizio data consumer per funzionalità], [Alessandro Dinato], [#issue(329)],

  [Dividere servizio gateway per funzionalità], [Elia Ernesto Stellin], [#issue(330)],

  [Creazione delle repository per l'MVP], [Hossam Ezzemouri],[#issue(337)],

  [Setting delle automation delle issue,branch e PR nelle repository dell'MVP], [Hossam Ezzemouri], [#issue(338)],

  [Dividere servizio dashboard frontend per funzionalità], [Jaume Bernardi], [#issue(331)],

  [Dividere servizio dashboard backend per funzionalità], [Michele Dioli], [#issue(332)],
)

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Michele Dioli
- *Amministratore*: Riccardo Graziani
- *Verificatore*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri
- *Analista*: Alessandro Dinato, Riccardo Graziani, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri