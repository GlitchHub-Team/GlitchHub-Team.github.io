#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale interno 17/10/2025",
  stato: "Verificato",
  versione: "1.0.1",
  registro-modifiche: (
    ("1.0.1", "28/10/2025", "Elia Ernesto Stellin", "Jaume Bernardi", "Correzione refuso"),
    ("1.0.0", "26/10/2025", "Alessandro Dinato", "Jaume Bernardi", "Versione stabile del verbale"),
    ("0.1.0", "25/10/2025", "Alessandro Dinato", "Jaume Bernardi", "Stesura verbale dalla bozza"),
    ("0.0.1", "18/10/2025", "Riccardo Graziani", "Alessandro Dinato", "Bozza primo incontro del gruppo"),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    "Scelta del nome e logo del gruppo",
    "Creazione dell'indirizzo email",
    "Scelta dei canali di comunicazione",
    "Discussione dei capitolati",
    "Organizzazione del repository e della documentazione",
    "Varie ed eventuali",
  ),
  htmlId: "Candidatura-VerbaliInterni",
  verificatore-interno: "Jaume Bernardi",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *17 ottobre 2025*, dalle 17:43 alle 18:53, si è tenuta, in modalità virtuale, la riunione del gruppo *GlitchHub Team*. \
L'incontro è stato organizzato con lo scopo di creare un _#gloss[way of working]_ iniziale e configurare alcune caratteristiche del gruppo, come _nome_ e _logo_.
= Resoconto
== Scelta del nome del gruppo
Dopo una breve serie di proposte, è stato deciso di adottare *GlitchHub Team* come nome ufficiale del gruppo su proposta di Siria Salvalaio.
== Creazione del recapito email
In seguito, per tutte le comunicazioni ufficiali verso l'esterno, è stata creata la seguente mail:
*glitchhubteam\@gmail.com*
== Creazione del logo e scelta colori del team
Siria Salvalaio ha proposto due versioni del logo per garantire maggiore flessibilità, una versione ottimizzata per contesti di grandi dimensioni e una versione compatta per spazi ridotti. \
La *Figura 1* e la *Figura 2* sono le due proposte accettate all'unanimità dal gruppo. \
#grid(
  columns: 2,
  gutter: 3mm,
  figure(image("../../assets/loghi/GlitchHub-Team_LogoG.png", height: 2cm), caption: [Versione logo grande]),
  figure(image("../../assets/loghi/GlitchHub-Team_LogoP.png", height: 2cm), caption: [Versione logo piccolo]),
)
I colori distintivi scelti sono i seguenti: *\#9948BC* e *\#90FCF9*.

== Scelta dei canali di comunicazione
Sono stati adottati i seguenti canali di comunicazione:
- *WhatsApp* per comunicazioni quotidiane;
- *#gloss[Discord]* come piattaforma per riunioni da remoto.
== Discussione dei capitolati
Dopo un confronto tra i componenti del gruppo, si è giunti al seguente ordine di preferenza per i capitolati proposti:
- C7 — *Sistema di acquisizione dati da sensori*, proposto da *M31*
- C2 — *Code Guardian*, proposto da *Var Group*
- C4 — *L’app che Protegge e Trasforma*, proposto da *Miriade*
Si è deciso di contattare le aziende *M31*, *Var Group* e *Miriade* via email per richiedere un incontro di approfondimento sui rispettivi capitolati.
== Organizzazione del repository
È stato deciso di utilizzare la piattaforma *#gloss[GitHub]* come sistema di versionamento della documentazione del gruppo. \
Inoltre, verrà realizzato un sito *#gloss[GitHub Pages]* per facilitare la consultazione della documentazione di progetto. \
== Organizzazione documentale
È stato deciso di adottare *#gloss[Typst]* come linguaggio per la redazione della documentazione del progetto. \
La scelta è ricaduta su #gloss[Typst] per la semplice sintassi e le molteplici funzionalità. \
Verranno, inoltre, sviluppati alcuni template standard per la stesura dei futuri documenti che verranno pubblicati su #gloss[GitHub Pages] automaticamente attraverso le #gloss[GitHub Actions].
= Decisioni e attività
Il gruppo alla fine dell'incontro ha deciso come suddividersi i compiti con relative scadenze.
#figure(
  caption: [*Decisioni intraprese e attività conseguenti*],
  table(
    columns: (auto, auto, auto),
    align: left,
    stroke: (x, y) => (
      bottom: if y == 0 { 1pt + black } else { 0.8pt + black },
    ),
    table.header([*Descrizione*], [*Responsabile*], [*Scadenza*]),
    "Redazione del verbale 17/10/2025", "Riccardo Graziani", "18/10/2025",
    "Creazione del template #gloss[Typst]", "Michele Dioli, Alessandro Dinato", "21/10/2025",
    "Creazione sito #gloss[GitHub Pages]", "Hossam Ezzemouri, Jaume Bernardi", "23/10/2025",
    "Contattare aziende", "Alessandro Dinato, Silvia Salvalaio", "19/10/2025",
  ),
)

= Conclusione della riunione
Il gruppo ha stabilito che si terrà una riunione interna il giorno *21/10/2025* alle ore *16:30*
