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
  date: "2026-04-25",
  subject: "Lettera di presentazione PB",
  logo: "../assets/loghi/GlitchHub-Team_LogoG.png",
  htmlId: "PB-Generale",
  versione: "1.0.0",
  index: "1",
)

#align(center)[
  #set text(14pt, weight: "bold")
  Lettera di presentazione PB
]

#v(1cm)

Egregi professori Vardanega e Cardin, \

Con la presente il gruppo _GlitchHub Team_ desidera comunicare ufficialmente la propria intenzione di candidarsi alla revisione della _Product Baseline_ (PB) relativamente al lavoro svolto nell'ambito del progetto proposto dall'azienda *M31 Srl* nel capitolato d'appalto *C7* con titolo *"Sistema di acquisizione dati da sensori"*#footnote[Capitolato *C7*: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")]. Il gruppo ha ricevuto il semaforo verde dal prof. Cardin in data 24 aprile 2026.

Le repository contenente il codice sorgente del _Minimum Viable Product_ sviluppato dal gruppo per la PB è disponibile presso i seguenti link:

#align(center)[https://github.com/GlitchHub-Team/MVP]
#align(center)[https://github.com/GlitchHub-Team/DataConsumer]
#align(center)[https://github.com/GlitchHub-Team/Gateway]
#align(center)[https://github.com/GlitchHub-Team/Dashboard]
#align(center)[https://github.com/GlitchHub-Team/Infrastructure]

La documentazione prodotta da _GlitchHub Team_ è reperibile nella sezione "PB" della \ _repository_ pubblica del gruppo, situata al seguente indirizzo:

#align(center)[https://GlitchHub-Team.github.io]

All'interno di quest'ultima si mettono a disposizione i seguenti documenti, oltre al presente:

#columns()[
  // Documenti
  - #link(
      "https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/releases/download/MVP/testbook.pdf",
    )[Test Book v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/SpecificaTecnica.pdf",
    )[Specifica Tecnica v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/PianodiQualifica.pdf",
    )[Piano di Qualifica v2.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/PianoDiProgetto.pdf",
    )[Piano di Progetto v2.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/ManualeUtente.pdf",
    )[Manuale Utente v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/AnalisiDeiRequisiti.pdf",
    )[Analisi dei Requisiti v2.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/glossary.pdf",
    )[Glossario v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/NormeProgetto.pdf",
    )[Norme di Progetto v2.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-04-13.pdf",
    )[Verbale esterno 13/04/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-03-31.pdf",
    )[Verbale esterno 31/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-03-24.pdf",
    )[Verbale esterno 24/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-03-17.pdf",
    )[Verbale esterno 17/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-03-10.pdf",
    )[Verbale esterno 10/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-03-03.pdf",
    )[Verbale esterno 03/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliEsterni/2026-02-24.pdf",
    )[Verbale esterno 24/02/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-04-15.pdf",
    )[Verbale interno 15/04/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-04-08.pdf",
    )[Verbale interno 08/04/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-04-01.pdf",
    )[Verbale interno 01/04/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-03-25.pdf",
    )[Verbale interno 25/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-03-18.pdf",
    )[Verbale interno 18/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-03-11.pdf",
    )[Verbale interno 11/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-03-04.pdf",
    )[Verbale interno 04/03/2026 v1.0.0]
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/VerbaliInterni/2026-02-24.pdf",
    )[Verbale interno 24/02/2026 v1.0.0]
]

La spesa totale affrontata dal gruppo per la realizzazione del progetto è stata di *12.370 €* a fronte dei *12.975 €* preventivati durante la candidatura, con un risparmio di *605 €*.

// intende ufficialmente presentare la propria candidatura al capitolato #underline(link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[*C7 - *]), proposto da *M31 S.r.l.*, nell'ambito del Progetto Didattico del corso di Ingegneria del Software.

// Tutta la documentazione prodotta da _GlitchHub Team_ è consultabile sul #underline(link("https://glitchhub-team.github.io")[*sito ufficiale*])#footnote[Sito ufficiale: #link("https://glitchhub-team.github.io")] del gruppo, di seguito i documenti prodotti finora:

// - *Valutazione dei capitolati*
// - *Lettera di presentazione*
// - *Dichiarazione degli impegni*
// - *Verbali esterni*
// - *Verbali interni*

// All'interno del documento di #underline(link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[dichiarazione degli impegni])#footnote[Dichiarazione degli impegni: #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")] è stato stimato un costo totale per la realizzazione del progetto pari a *Euro 12.825* e fissato il termine di
// consegna al *27 marzo 2026*.

// #pagebreak()

// La scelta del capitolato è motivata da:
// - forte interesse verso le tecnologie richieste dal progetto, quali *Go*, *NATS* e *Google Cloud Platform*;
// - particolare interesse allo sviluppo di un'applicazione capace di scalare in modo efficiente;
// - il dominio applicativo e la complessità del progetto risultano pienamente in linea con le aspettative del gruppo;
// - l'azienda si è mostrata disponibile, altamente competente e professionale.

// È possibile approfondire le motivazioni di scelta o di esclusione dei diversi capitolati consultando il documento di #underline(link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/ValutazioneCapitolati.pdf")[valutazione dei capitolati])#footnote[Valutazione dei capitolati: #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/ValutazioneCapitolati.pdf")].

// Tutti i componenti del gruppo si impegnano a:
// - rispettare le scadenze e il preventivo fissato;
// - sviluppare il prodotto richiesto rispettando i requisiti fissati;
// - redigere la documentazione richiesta dai committenti.

Cordiali saluti,

_GlitchHub Team_
