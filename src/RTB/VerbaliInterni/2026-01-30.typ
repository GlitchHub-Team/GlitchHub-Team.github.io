#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 30/01/2026",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
      (
      "1.0.0",
      "06/02/2026",
      "Riccardo Graziani",
      "Siria Salvalaio",
      "Versione stabile",
    ),
    (
      "0.2.0",
      "04/02/2026",
      "Riccardo Graziani",
      "Siria Salvalaio",
      "Implementate le correzioni suggerite",
    ),
    (
      "0.1.0",
      "02/02/2026",
      "Riccardo Graziani",
      "Siria Salvalaio",
      "Raffinamento scrittura",
    ),
    (
      "0.0.2",
      "01/02/2026",
      "Riccardo Graziani",
      "Siria Salvalaio",
      "Aggiunta tabella task e distribuzione ruoli",
    ),
    (
      "0.0.1",
      "01/02/2026",
      "Riccardo Graziani",
      "Siria Salvalaio",
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
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *30 gennaio 2026* dalle 16:30 alle ore 18:40, e in data *31 gennaio 2026* dalle ore 14:30 alle ore 16:20, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Retrospettiva dello sprint

=== Allineamento sul PoC
Durante la riunione, il gruppo ha approvato l'architettura proposta per il PoC. A seguire, sono stati illustrati gli avanzamenti tecnici relativi alle componenti *NATS* e *Angular*.
È stata inoltre creata la #link("https://github.com/GlitchHub-Team/PoC")[*repository*] dedicata al versionamento del PoC.

=== Analisi dei Requisiti
A seguito del consolidamento degli use case, si è proceduto alla *stesura* e *classificazione* dei requisiti in funzionali, non funzionali e di dominio. Contestualmente, è stata completata la modellazione grafica degli use case (da *UC1* a *UC109*) Il gruppo ha dunque individuato le seguenti attività:
- terminare l'inserimento dei diagrammi dei casi d'uso mancanti;
- creare una *table of contents* relativa ai diagrammi dei casi d'uso;
- creare la tabella di *tracciamento* requisiti-UC;
- *classificare* i requisiti per livello di urgenza in: *Obbligatori*, *Opzionali*, *Desiderabili*;

=== Norme di Progetto
Il gruppo ha rilevato come la stesura del documento *Norme di Progetto* sia stata trascurata per troppo tempo. Sono state dunque individuate le *sezioni* che necessitano di essere redatte:
- sezione dei *Processi Primari*, in particolare le sezioni riguardanti i processi di *fornitura* e *sviluppo*;
- sezione dei *Processi Organizzativi*, in particolare le sezioni riguardanti la *gestione dei processi* e *l'infrastruttura*;
- sezione dei *Processi di Supporto*, in particolare la sezione di *qualifica* e le *convenzioni* usate nella documentazione;

=== Piano di Qualifica
Sono state definite le *iniziative di miglioramento* e formalizzate le metriche per il monitoraggio della *Qualità del Processo* e della *Qualità del Prodotto*, con l'integrazione delle relative formule. 
\
Il gruppo ha quindi individuato le seguenti attività: 
- la scrittura dei *Test di Sistema* relativi ai requisiti funzionali, non funzionali e di dominio;
- l'integrazione del cruscotto di valutazione;

== Miglioramento dell'organizzazione del gruppo

=== Gestione delle baseline/milestone
Il gruppo ha rilevato come la mancata *definizione* di baseline e milestone abbia limitato la visione d'insieme, causando uno *slittamento* delle attività.
Per ovviare a tale lacuna, il gruppo si impegna a programmare le attività tramite la pianificazione a ritroso. La strategia si articolerà su due livelli:
- *pianificazione a lungo termine*: definizione delle attività a grana grossa procedendo a ritroso dalle scadenze prefissate;
- *pianificazione a breve termine*: scomposizione delle attività in task a grana fine, gestite tramite un sistema di issue strutturato;

=== Gestione delle issues/GitHub Project
È stata rilevata una gestione *inefficiente* delle GitHub Issues, caratterizzata da una compilazione *incompleta* dei metadati e da un planning eccessivamente approssimativo. Facendo tesoro dell'esperienza maturata e degli standard metodologici approfonditi nel corso di *IS*, il gruppo ha identificato i propri debiti tecnici e organizzativi. Di conseguenza, è stato formalizzato un nuovo *workflow operativo* volto a garantire una scomposizione delle attività a grana fine e una gestione rigorosa del repository.
In particolare:
- la programmazione delle nuove issue seguirà un approccio *top-down*, ossia ogni attività da svolgere verrà scomposta in task *atomici*;
- il responsabile ha il compito di *creare*, *assegnare* e *compilare* le issues. In particolare devono essere compilati fin da subito i campi: *start date*, *target date* ed *expected worked hours*;
- è compito dell'assegnatario aggiornare lo stato delle proprie issue in maniera tempestiva tramite la *Kanban* GitHub Projects;
- al completamento di una issue è compito dell'assegnatario compilare i campi *end date* e *worked hours*;
- eventuali nuove issue non previste inizialmente saranno poste nel *backlog* della board. Tali issue rimarranno in stato di attesa fino alla loro *valutazione* e successiva *assegnazione*.
È stato ribadito il ruolo che ogni sezione della Kanban GitHub Project ricopre:
- le issue nel *backlog* rappresentano attività non ancora assegnate, in cui non va inserito lo sprint;
- le issue nel *ready* rappresentano attività assegnate all'interno dello sprint;
- le issue in *progress* rappresentano attività su cui si sta attivamente lavorando: importante segnare una issue come in progress *appena si inizia il lavoro*;
- le issue in *review* rappresentano attività che hanno bisogno di approvazione/verifica;
- le issue in *done* rappresentano attività che sono state *completate* e *verificate/approvate*; 

=== Gestione della verifica di attività
Il gruppo ha concordato la necessità di adottare un approccio di verifica *incrementale* e *frequente*, con particolare riferimento a documenti estesi come l'Analisi dei Requisiti (AdR). È stato ribadito il principio secondo cui nessun membro può verificare il proprio operato. Grazie alla separazione del lavoro tra il gruppo dedito agli use case e quello focalizzato sui requisiti, l'integrità del processo di revisione dell'AdR non è a rischio.
Inoltre è stato concordato che il verificatore ha il compito di esclusivo di *individuare* e *suggerire* le correzioni.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Stesura sezione Processi Primari], [Riccardo Graziani], [#issue(205, repo:"docs")],

  [Stesura sezione Processi Organizzativi], [Elia Ernesto Stellin], [#issue(140, repo:"docs")],

  [Stesura sezione Processi Supporto/Qualifica], [Elia Ernesto Stellin], [#issue(230, repo:"docs")],

  [Stesura verbale 30/01/2026], [Riccardo Graziani], [#issue(217, repo:"docs")],

  [Classificare RF1 - RF175], [Alessandro Dinato], [#issue(226, repo:"docs")],

  [Classificare RF176 - Fine], [Elia Ernesto Stellin], [#issue(227, repo:"docs")],

  [Stesura Test di Sistema per RF1 - RF64], [Michele Dioli], [#issue(228, repo:"docs")],

  [Stesura Test di Sistema per RF65 - RF128], [Jaume Bernardi], [#issue(229, repo:"docs")],

  [Stesura Test di Sistema per RF129 - RF192], [Hossam Ezzemouri], [#issue(231, repo:"docs")],

  [Stesura Test di Sistema per RF193 - RF256], [Siria Salvalaio], [#issue(233, repo:"docs")],

  [Stesura Test di Sistema per RF257 - RD14], [Riccardo Graziani], [#issue(234, repo:"docs")],

  [Integrazione cruscotto di Valutazione], [Michele Dioli], [#issue(247, repo:"docs")],
)

== Assegnazione ruoli per le prossime due settimane
- *Responsabile*: Riccardo Graziani
- *Amministratore*: Riccardo Graziani, Siria Salvalaio, Hossam Ezzemouri, Jaume Bernardi, Michele Dioli, Elia Ernesto Stellin
- *Analista*: Elia Ernesto Stellin, Alessandro Dinato, Michele Dioli
- *Programmatore*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri