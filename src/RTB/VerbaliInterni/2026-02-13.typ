#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 13/02/2026",
  stato: "da verificare",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1",
      "16/02/2026",
      "Jaume Bernardi",
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
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *13 gennaio 2026* iniziato alle ore 11:00 alle ore 11:50 si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Retrospettiva dello sprint

=== Migliorie nell'organizzazione del gruppo
Dopo un riscontro, il gruppo ha ritenuto molto positive le modifiche applicate al Way of Working durante il periodo di sprint precedente.
Come ulteriore miglioria è stata considerata la convenzione di inserire nel messaggio di un commit il numero della issue che si presta a risolvere.
Successivamente è stato fatto un controllo generale sulla completezza dei metadati riguardo le issue preesistenti.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Integrazione cruscotto di valutazione], [Michele Dioli], [#issue(247, repo:"docs")],

  [Stesura lettera di presentazione RTB], [Tutti i membri], [#issue(260, repo:"docs")],

  [Stesura Sprint 9 del PdP], [Riccardo Graziani], [#issue(267, repo:"docs")],

  [Revisione introduzione del PdP], [Alessandro Dinato], [#issue(269, repo:"docs")],

  [Modifica figure e caption su AdR, PdP e PdQ], [Siria Salvalaio], [#issue(271, repo:"docs")],

  [Stesura verbale interno 13/02/2026], [Jaume Bernardi], [#issue(273, repo:"docs")],

  [Stesura verbale esterno 10/02/2026], [Riccardo Graziani], [#issue(276, repo:"docs")],
  
)

== Assegnazione ruoli per le prossima settimana
- *Responsabile*: Jaume Bernardi
- *Amministratore*: Michele Dioli