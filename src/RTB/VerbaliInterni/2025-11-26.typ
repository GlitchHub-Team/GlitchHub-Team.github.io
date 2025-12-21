#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 26/11/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "28/11/2025",
      "Alessandro Dinato",
      "Riccardo Graziani",
      "Versione stabile verbale interno",
    ),
    (
      "0.1.0",
      "27/11/2025",
      "Alessandro Dinato",
      "Riccardo Graziani",
      "Stesura sesto verbale interno",
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
    "Manutenzione della documentazione",
    "Discussione workflow delle GitHub Issues",
    "Workflow documentazione incrementale",
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *26 novembre 2025* dalle ore 14.30 alle ore 16:00, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione


== Manutenzione della documentazione
Il gruppo ha discusso le modalità di manutenzione della documentazione.
È stato stabilito che chiunque individui un errore in un documento si prende in carico la correzione e richiede successivamente una #gloss[verifica] da parte di un terzo membro.
Qualora il documento fosse già stato pubblicato nel sito del gruppo, la modifica dovrà essere proposta tramite una nuova *#gloss[pull request]*.

== Workflow GitHub Issues
Durante l'incontro sono stati definiti nuovi campi da aggiungere alle #gloss[GitHub] Issues:
- *priority*: priorità dell'attività
- *start date*: data di inizio lavorazione
- *target date*: data prevista di consegna, che non può superare la fine dello #gloss[sprint]
- *end date*: data effettiva di completamento
- *#gloss[sprint]*: numero dello #gloss[sprint]
- *#gloss[sprint] role*: ruolo associato alla task, utile per la rendicontazione delle ore
- *expected worked hours*: ore previste per completare la task
- *worked hours*: ore effettivamente lavorate

È stato concordato un nuovo workflow:
- il *Responsabile* crea le issue sulla base di quanto definito nella *#gloss[Sprint Retrospective]*;
- vengono assegnati correttamente *Assignees*, *Labels*, *Type* (di norma: Task), *#gloss[Milestone]* e *Projects*;
- è necessario configurare correttamente i *Relationships*, in particolare:
  - impostare una *parent issue* per ogni task principale, non assegnata a nessuno;
  - suddividere la parent issue in sub-issue atomiche (le più piccole possibili);
  - una sub-issue deve essere assegnata a una sola persona;
  - utilizzare *blocking* / *blocked by* (es. la scrittura di un documento blocca la sua #gloss[verifica]).

La persona assegnata alla task, al momento dell'assegnazione, deve compilare:
- start date
- target date
- expected worked hours
- eventuali dettagli rilevanti

Al completamento della task vengono compilate le *worked hours* e la *end date*.

== Workflow documentazione incrementale

Il gruppo ha definito la gestione dei documenti incrementali (NdP, PdP, PdQ).
Questi documenti evolvono insieme al progetto e contengono sezioni inizialmente vuote o incomplete.

Il workflow differisce da quello dei documenti monolitici:
- ogni versione "stabile" considera solo le sezioni già completate, ignorando le parti ancora vuote;
- ogni versione "stabile" dev'essere pubblicata tramite PR sul sito web, così da mantenere sempre disponibile la versione aggiornata.

// Un linebreak qui migliora l'impaginazione (altrimenti la tabella viene spezzata)
#pagebreak()

== Assegnazione delle prossime task basate sulle decisioni prese

#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],

  [Scrittura #gloss[Norme di Progetto] v0.2.0 e aggiornamento Glossario (definizione #gloss[documento incrementale])],
  [Siria Salvalaio],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/51")[*\#51*]],

  [#gloss[Verifica] #gloss[Norme di Progetto] v0.2.0],
  [Hossam Ezzemouri],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/52")[*\#52*]],

  [#gloss[Piano di Qualifica] — individuazione metriche],
  [Elia Stellin, Michele Dioli, Jaume Bernardi],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/62")[*\#62*]],

  [#gloss[Analisi dei Requisiti] — sessione di brainstorming],
  [Tutto il gruppo],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/63")[*\#63*]],

  [Correzione #gloss[GitHub] Issues secondo il nuovo workflow],
  [Alessandro Dinato],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/64")[*\#64*]],

  [Scrittura Verbale Interno 26/11],
  [Alessandro Dinato],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/66")[*\#66*]],

  [#gloss[Verifica] Verbale Interno 26/11],
  [Riccardo Graziani],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/67")[*\#67*]],
)

== Ruoli assegnati per le prossime due settimane

- Alessandro Dinato: Responsabile, Amministratore
- Hossam Ezzemouri: Verificatore
- Siria Salvalaio: Analista
- Tutti gli altri membri: attività di esercizio riguardante l'#gloss[Analisi dei Requisiti]

