#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 02/01/2026",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1",
      "02/01/2026",
      "Hossam Ezzemouri",
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
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Allineamento riguardo le task assegnate durante le festività],
    [Discussione nuova data di fine RTB],
    [Assegnazione delle task],
    [Assegnazione ruoli]
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *2 Gennaio 2026* dalle ore 15:15 alle ore 17:10, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Allineamento task post festività
=== Analisi dei requisiti - Use Case
L'attività di studio e scrittura degli use dell'#gloss("Analisi dei requisiti") si è conclusa positivamente. E' stato possibile individuare e descrivere un numero significativo di use case, consentendo un approfondimento adeguato ed una migliore comprensione delle funzionalità richieste.

=== Piano di Qualifica
In fase di pianificazione si prevedeva di ottenere una versione stabile del documento entro fine *Sprint 6* e di riuscire ad implementare le automazioni discusse su Google Sheet, ma a causa di alcune criticità dovute alla comunicazione, tali obiettivi non sono stati raggiunti. Di conseguenza nello *Sprint 7* la priorità sarà il completamendo della task slittata.

== Discussione sulla nuova data di fine RTB
In seguito all'analisi dello stato di avanzamento attuale, si è deciso di pianificare il completamento della #gloss("RTB") entro il 7 Febbraio 2026


== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Stabilizzazione Piano di Qualifica], [Hossam Ezzemouri, Siria Salvalaio], [#issue(149)],

  [Terminare automazioni Piano di Qualifica e creazione file Google Sheet],
  [Michele Diori],
  [#issue(150)],

  [Completamento degli Use Case], [Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani], [#issue(151)],

  [Stesura dei requisiti], [Jaume Bernardi, Elia Ernesto Stellin, Alessandro Dinato, Riccardo Graziani], [#issue(152)],

  [Scrittura dei Test di Sistema (PdQ)],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(153)],

  [Inizio del PoC],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(154)],
)

== Assegnazione ruoli per le prossime due settimane
- *Responsabile*: Hossam Ezzemouri
- *Amministratore*: Hossam Ezzemouri
- *Analista*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin
