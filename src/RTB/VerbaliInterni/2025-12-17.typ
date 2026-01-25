#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 17/12/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "19/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Versione stabile verbale interno 19/12/2025",
    ),
    (
      "0.1.0",
      "19/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Prima stesura documento",
    ),
    (
      "0.0.1",
      "18/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Prima bozza documento",
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
    [Allineamento su workflow per GitHub Issues],
    [Discussione sprint venturo e milestone interna 31/12/2025],
    [Assegnazione delle task],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *17 dicembre 2025* dalle ore 14:30 alle ore 16:00, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Allineamento su workflow delle GH Issues
In seguito alla creazione degli *Issue Form* e delle automazioni per le #gloss[GitHub Issues] (#issue_full(104)), il gruppo si è allineato sul nuovo workflow da utilizzare per la creazione delle Issues.

Innanzitutto, le #gloss[issues] relative alle attività assegnate ai membri del gruppo durante una riunione vengono create dal responsabile il prima possibile, sfruttando gli #gloss[Issue Form] messi a disposizione per compilare le issue con facilità.

Ogni membro del gruppo che rileva autonomamente ulteriori attività da svolgere, anche *non rendicontate nel Piano di Progetto*, è tenuto a creare autonomamente una o più #gloss[Issue] inserendole nel #gloss[Backlog], comunicando al resto del gruppo che tale aggiunta è avvenuta. A meno che tale membro non si prenda in carico lo svolgimento di tali attività, le relative issue non vanno assegnate a nessun altro: i membri del gruppo si impegnano ad esaurire tutti gli elementi del #gloss[backlog].

Chiunque si assume la responsabilità di portare a termine una task è tenuto a compilare tutti i campi della relativa issue in modo tale da rispecchiare in modo onesto il lavoro compiuto.

Se un membro realizza che una issue è ridondante, allora è tenuto a contrassegnarla come "duplicato" e di chiuderla, comunicando ciò al resto del gruppo.

Questo cambiamento di workflow verrà rispecchiato nelle Norme di Progetto.

== Discussione sprint venturo e milestone interna 31/12/2025
Il gruppo ha discusso sull'organizzazione del prossimo periodo di lavoro. Dato il rallentamento delle attività causato delle feste natalizie (dal 24 al 26 dicembre), si è deciso che lo *Sprint 6* debba durare due settimane, ovvero dal *18 dicembre 2025 al 31 dicembre 2025* inclusi.

Quindi il gruppo ha fissato al *31 dicembre 2025* una milestone interna entro la quale il gruppo si impegna a raggiungere una versione stabile dell'*Analisi dei Requisiti* e del *Piano di Qualifica*, in modo tale da avanzare lo stato dei lavori abbastanza da poterne permettere un rallentamento sostanziale durante la sessione invernale di studi (*19 gennaio 2026 - 21 febbraio 2026*).

== Assegnazione delle prossime task basate sulle decisioni prese
In vista della milestone interna pre-sessione, il gruppo ha deciso di dividersi in due sottogruppi: uno per la redazione del *Piano di Qualifica* e l'altro per la redazione dell'*Analisi dei Requisiti*, rilevando delle sotto-attività atomiche per ciascun documento.

Il gruppo per il *Piano di Qualifica* è composto da Michele Dioli, Hossam Ezzemouri e Siria Salvalaio e le sotto-attività assegnate sono le seguenti:
#table(
  columns: (4fr, 1fr),
  align: center + horizon,
  [*Task*], [*Issue*],

  [Trovare e definire metriche del PdQ], [#issue(120)],

  [Definire la struttura del documento], [#issue(121)],

  [Creare uno spreadsheet interno per il cruscotto e definire automazione per la loro compilazione], [#issue(122)],
)

Il gruppo per l'*Analisi dei Requisiti* è composto da Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin e le sotto-attività assegnate a loro sono le seguenti:
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Approfondire use cases attuali], [Alessandro Dinato, Riccardo Graziani], [#issue(123)],

  [Approfondire use cases per interfaccia utente e use cases troppo generici],
  [Jaume Bernardi, Elia Ernesto Stellin],
  [#issue(124)],

  [Definire use cases con simulatore Gateway come sistema], [Alessandro Dinato, Riccardo Graziani], [#issue(125)],

  [Definire use cases sensore-gateway], [Jaume Bernardi, Elia Ernesto Stellin], [#issue(126)],

  [Scrittura dei requisiti e relativi Test di Sistema (nel PdQ)],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(127), #issue(128)],

  [Approfondire le tecnologie consigliate da M31],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(133), #issue(134)],
)
