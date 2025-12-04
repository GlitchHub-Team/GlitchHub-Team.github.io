#import "../../Templates/templateVerbali.typ": report

#show link: underline
#show: report.with(
  titolo: "Verbale interno 03/12/2025",
  stato: "Verificato",
  versione: "0.1.0",
  registro-modifiche: (
    (
      "0.1.0",
      "04/12/2025",
      "Alessandro Dinato",
      "-",
      "Prima stesura verbale interno del 03/12/2025",
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
    "Allineamento sulla comprensione generale del capitolato",
    "Allineamento sulla comprensione dei nuovi concetti espressi da M31",
    "Assegnazione delle prossime task basate sulle decisioni prese",
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *03 dicembre 2025* dalle ore 14.30 alle ore 16:10, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Discussione incontro con M31 del 02/12/2025
Il gruppo ha discusso l'incontro con M31 del 02/12/2025.
Gli assenti alla riunione sono stati allineati sui concetti espressi da M31, che erano comunque già stati condivisi tramite un documento su ClickUp.

== Assegnazione delle prossime task basate sulle decisioni prese

#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],

  [Scrittura Norme di Progetto v0.2.0 e aggiornamento Glossario (definizione documento incrementale)],
  [Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/51")[*\#51*]],

  [Verifica Norme di Progetto v0.2.0],
  [Hossam Ezzemouri],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/52")[*\#52*]],

  [Piano di Qualifica — individuazione metriche],
  [Elia Stellin, Michele Dioli, Jaume Bernardi],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/62")[*\#62*]],

  [Analisi dei Requisiti — sessione di brainstorming],
  [Tutto il gruppo],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/63")[*\#63*]],

  [Correzione GitHub Issues secondo il nuovo workflow],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/64")[*\#64*]],

  [Scrittura Verbale Interno 26/11],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/66")[*\#66*]],

  [Verifica Verbale Interno 26/11],
  [Riccardo Graziani],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/67")[*\#67*]],
)

