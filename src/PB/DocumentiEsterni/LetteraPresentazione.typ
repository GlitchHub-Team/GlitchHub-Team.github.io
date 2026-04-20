#import "../../lib/libLetter.typ": *

#show link: underline
#show: almost-tud-letter.with(
  title: "Lettera di presentazione PB",
  from: (
    name: "GlitchHub Team (gruppo 5)",
    email: "glitchhubteam@gmail.com",
  ),
  to: [
    Alla cortese attenzione di \
    Prof. Vardanega Tullio \
    Prof. Cardin Riccardo \
  ],
  date: "2026-04-24",
  subject: "Lettera di presentazione PB",
  logo: "../assets/loghi/GlitchHub-Team_LogoG.png",
  htmlId: "RTB-Generale",
  versione: "1.0.0",
  index: "1",
)

#align(center)[
  #set text(14pt, weight: "bold")
  Lettera di presentazione RTB
]

#v(1cm)

Egregi professori Vardanega e Cardin, \

Con la presente il gruppo _GlitchHub Team_ desidera comunicare ufficialmente la propria intenzione di candidarsi alla revisione della _Product Baseline_ (PB) relativamente al lavoro svolto nell'ambito del progetto proposto dall'azienda *M31 Srl* nel capitolato d'appalto *C7* con titolo *"Sistema di acquisizione dati da sensori"*#footnote[Capitolato *C7*: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")]. Il gruppo ha ricevuto il semaforo verde dal prof. Cardin in data 21 febbraio 2026.
/*
La repository contenente il codice sorgente del _Minimum Viable Product_ (MVP) sviluppato dal gruppo per la PB è disponibile al seguente link:

#align(center)[https://github.com/GlitchHub-Team/MVP]

La documentazione prodotta da _GlitchHub Team_ è reperibile nella sezione "PB" della \ _repository_ pubblica del gruppo, situata al seguente indirizzo:
#align(center)[https://GlitchHub-Team.github.io]
*/
All'interno di quest'ultima si mettono a disposizione i seguenti documenti, oltre al presente:

#columns(2)[
  // Documenti esterni
  - #link(
    "https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/releases/download/MVP/testbook.pdf")[Test Book v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/SpecificaTecnica.pdf")[Specifica Tecnica v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/PianodiQualifica.pdf")[Piano di Qualifica v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/PianoDiProgetto.pdf")[Piano di Progetto v2.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/ManualeUtente.pdf")[Manuale Utente v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/AnalisiDeiRequisiti.pdf")[Analisi dei Requisiti v2.0.0]

  // Documenti interni
  - #link("https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/glossary.pdf")[Glossario v1.0.0], disponibile anche come #link("https://glitchhub-team.github.io/glossary.html")[risorsa web]
  - #link("https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/NormeProgetto.pdf")[Norme di Progetto v2.0.0]


  // VE
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-04-13.pdf")[Verbale esterno 13/04/2026 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-03-31.pdf")[Verbale esterno 31/03/2026 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2025-03-24.pdf")[Verbale esterno 24/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2025-03-17.pdf")[Verbale esterno 17/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2025-03-10.pdf")[Verbale esterno 10/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2025-03-03.pdf")[Verbale esterno 03/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2025-02-24.pdf")[Verbale esterno 24/02/2025 v1.0.0]
  // VI
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-04-22.pdf")[Verbale interno 22/04/2026 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-04-15.pdf")[Verbale interno 15/04/2026 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-04-08.pdf")[Verbale interno 08/04/2026 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2025-04-01.pdf")[Verbale interno 01/04/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2025-03-25.pdf")[Verbale interno 25/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2025-03-18.pdf")[Verbale interno 18/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2025-03-11.pdf")[Verbale interno 11/03/2025 v1.0.0]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2025-03-04.pdf")[Verbale interno 04/03/2025 v1.0.1]
  - #link("https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2025-02-24.pdf")[Verbale interno 24/02/2025 v1.0.0]
]

Infine, il gruppo riconferma la data finale di consegna del progetto al *27 marzo 2026* con costo massimo è stato di *Euro * rispetto alla stima iniziale di *Euro 12.825*.

Cordiali saluti,

_GlitchHub Team_
