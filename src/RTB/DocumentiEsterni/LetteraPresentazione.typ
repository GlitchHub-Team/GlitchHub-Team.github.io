#import "../../lib/libLetter.typ": *

#show link: underline
#show: almost-tud-letter.with(
  title: "Lettera di presentazione RTB",
  from: (
    name: "GlitchHub Team (gruppo 5)",
    email: "glitchhubteam@gmail.com",
  ),
  to: [
    Alla cortese attenzione di \
    Prof. Vardanega Tullio \
    Prof. Cardin Riccardo \
  ],
  date: "2026-02-19",
  subject: "Lettera di presentazione RTB",
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

Con la presente il gruppo _GlitchHub Team_ desidera comunicare ufficialmente la propria intenzione di candidarsi alla revisione della _Requirements and Technology Baseline_ (RTB) relativamente al lavoro svolto nell'ambito del progetto proposto dall'azienda *M31 Srl* nel capitolato d'appalto *C7* con titolo *"Sistema di acquisizione dati da sensori"*#footnote[Capitolato *C7*: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")]. Il gruppo ha ricevuto il semaforo verde dal prof. Cardin in data 16 febbraio 2026.

La repository contenente il codice sorgente del _Proof of Concept_ sviluppato dal gruppo per la RTB è disponibile al seguente link:

#align(center)[https://github.com/GlitchHub-Team/PoC]

La documentazione prodotta da _GlitchHub Team_ è reperibile nella sezione "RTB" della \ _repository_ pubblica del gruppo, situata al seguente indirizzo:

#align(center)[https://GlitchHub-Team.github.io]

All'interno di quest'ultima si mettono a disposizione i seguenti documenti, oltre al presente:

#columns(2)[
// Documenti
- #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/AnalisiDeiRequisiti.pdf")[Analisi dei Requisiti v1.2.1]
- #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf")[Glossario v0.5.0], disponibile anche come #link("https://glitchhub-team.github.io/glossary.html")[risorsa web]
- #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf")[Norme di Progetto v1.2.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf")[Piano di Progetto v1.1.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianodiQualifica.pdf")[Piano di Qualifica v1.0.0]
// VE
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2026-02-03.pdf")[Verbale esterno 03/02/2026 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2026-01-27.pdf")[Verbale esterno 27/01/2026 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2026-01-13.pdf")[Verbale esterno 13/01/2026 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2025-12-16.pdf")[Verbale esterno 16/12/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/.pdf")[Verbale esterno 09/12/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/.pdf")[Verbale esterno 02/12/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/.pdf")[Verbale esterno 25/11/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/.pdf")[Verbale esterno 13/11/2025 v1.0.1]
// VI
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2026-01-30.pdf")[Verbale interno 30/01/2026 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2026-01-14.pdf")[Verbale interno 14/01/2026 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2026-01-02.pdf")[Verbale interno 02/01/2026 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-17.pdf")[Verbale interno 17/12/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-11.pdf")[Verbale interno 31/12/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-03.pdf")[Verbale interno 03/12/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-26.pdf")[Verbale interno 26/11/2025 v1.0.0]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-19.pdf")[Verbale interno 19/11/2025 v1.0.1]
- #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-12.pdf")[Verbale interno 12/11/2025 v1.0.0]
]

Infine, il gruppo riconferma la data finale di consegna del progetto al *27 marzo 2026* con costo stimato massimo di *Euro 12.825*. Si noti che quest'ultimo è inferiore alla stima di *Euro 12.975* presentata in fase di aggiudicazione dell'appalto, poiché il gruppo ha deciso successivamente di ricalcolare la distribuzione delle ore di lavoro previste; per ulteriori informazioni relativamente a ciò, è possibile consultare la sezione 4.1 del #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf")[Piano di Progetto].


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
