#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 14/01/2026",
  stato: "Bozza",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "17/01/2026",
      "Siria Salvalaio",
      "Elia Ernesto Stellin",
      "Versione stabile documento"
    ),
    (
      "0.0.1",
      "16/01/2026",
      "Siria Salvalaio",
      "Elia Ernesto Stellin",
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
    [Revisione metriche PdQ],
    [Retrospective di sprint],
    [Assegnazione delle task],
    [Assegnazione ruoli],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Elia Ernesto Stellin",
  left-signature: "../assets/firme/firma_Elia_Ernesto_Stellin.jpg",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *14 Gennaio 2026* dalle ore 14:40 alle ore 16:55, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Revisione metriche del PdQ
Il gruppo ha analizzato singolarmente ogni metrica del Piano di Qualifica per valutarne la pertinenza. Di comune accordo sono stati definiti con precisione i valori accettabili, che rappresentano la soglia minima per garantire la validità del prodotto e i valori ottimali, intesi come i target di eccellenza verso cui il team deve tendere durante lo sviluppo. Durante la discussione si è poi deciso di modificare o eliminare alcune metriche per renderle coerenti con l'attuale sviluppo, in particolare, le metriche di failure non sono state ritenute idonee poiché il team si occupa di scrittura di nuovo codice e non della manutenzione di sistemi preesistenti.

== Retrospective dello sprint
Il processo di stabilizzazione del Piano di qualifica (per quanto riguarda le metriche) è in stato avanzato, ma richiede un ultimo passaggio per essere considerato stabile: perfezionamento della descrizione di alcune metriche per renderle più chiare e la scrittura di formule per ciascuna di esse. L'attività relativa agli Use Case è in fase di chiusura, infatti in seguito al confronto con l'azienda M31, verranno apportate le ultime modifiche necessarie per considerarli definitivi. Questo permetterà, in questo sprint, di procedere immediatamente con:
- La stesura formale dei requisiti;
- La traduzione degli scenari d'uso in diagrammi UML attraverso l'applicativo StarUML.
Si inizierà anche a dedicare del tempo all'approfondimento delle tecnologie necessarie del progetto, in particolare NATS per l'infrastruttura messaggistica e Angular.js per lo sviluppo del frontend, basi fondamentali per la corretta esecuzione del Proof of Concept #gloss("POC").

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
- *Responsabile*: Siria Salvalaio
- *Analista*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Michele Dioli
