#import "../../Templates/templateVerbali.typ": report



#show link: underline
#show: report.with(
  titolo: "Verbale interno 19/11/2025",
  stato: "Da verificare",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "19/11/2025",
      "Michele Dioli",
      "-",
      "sesto incontro interno",
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
    "Discussione sui casi d’uso.",
    "Allineamento sui consigli ricevuti relativi ai diari di bordo.",
    "Miglioramento della fluidità dei template.",
    "Allineamento generale sui documenti RTB.",
    "Pianificazione dei futuri incontri con l’azienda."
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "",
  left-signature: "../assets/firme/firma_Michele_Dioli.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *19 novembre 2025* dalle ore 14.30 alle ore 16:05, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Convemzioni per la scrittura dei documenti

Il gruppo è stato aggiornato sulla metodologia di lavoro relativa a questa fase.\
È stato chiarito che non è ancora necessario concentrarsi sulla stesura del documento Analisi dei Requisiti; al contrario, è preferibile dedicare tempo alle attività di “palestra”, ovvero esercitarsi nella produzione dei casi d’uso.\
Per la realizzazione dei diagrammi dei casi d’uso è stato scelto draw.io, utile poiche permette di generare file PNG successivamente modificabili.
Durante la discussione è emerso un dubbio riguardo alla corretta gestione dei sotto-diagrammi. La decisione è stata la seguente: un diagramma deve essere ridisegnato solo nel caso in cui il sotto-diagramma non rappresenti una foglia. 

== Allineamento sull’Analisi dei Requisiti

Il gruppo viene aggiornato sulla metodoligia di lavora, in questa fase non bisogna concensarsi sulla scrittura del documento Analisi dei requisiti, piuttosto impegnare ore nelle attività di palestra per lo svipuppo dei casi d'uso. A tale proposito il mezzo utilizzato per la realizzazione dei grafici dei casi d'uso e' stato Draw.io il quale consente di avere file png successivamente modificabili. Inolte e' stato esposto un dubbio Decisione: bisogna ridisegnare il diagramma solo se il sotto-diagramma non è una foglia
Ciò sarà visibile nell'analisi dei req.

== Allineamento sulla Norme di progetto

È stata definita una scaletta per la conduzione delle Sprint Retrospective, in modo da utilizzare un framework comune e mantenere gli incontri ordinati. La scaletta comprende:
- riepilogo delle attività svolte;
- allineamento sulle risorse utilizzate;
- analisi dei rischi incontrati;
- retrospettiva sullo sprint;
- discussione del resto dell’ordine del giorno;
- assegnazione delle attività da svolgere;
- riassegnazione dei ruoli (solo al termine del periodo di rotazione).\
È stato inoltre definito il workflow da seguire per la gestione delle issue relative alla documentazione.
Ogni attività di creazione di un documento corrisponderà a un’issue di tipo documentation. Scrittura e verifica saranno gestite all’interno della stessa issee.\
Nella descrizione verrà indicato, tramite GitHub, chi è responsabile di cosa.\
Quando la fase di scrittura inizia, l’issue verrà contrassegnata come “In Progress”; quando il documento passa alla verifica, verrà segnalata come “In Review”.\
Per i documenti incrementali, ovvero soggetti a modifiche durante tutto il progetto: sarà creata una issue madre che raccoglierà tutte le attività relative al documento; per ogni versione verrà aperta una sub-issue collegata alla issue madre; la versione 1.0.0 verrà associata al documento consegnato alla relativa milestone.

== Prossimi incontri con all’azienda

È stata inviata un’email, ancora senza risposta, per pianificare l’incontro settimanale con l’azienda, durante il quale il team ha chiesto chiarimenti soprattutto sui casi d’uso.
Nel frattempo è arrivato firmato il verbale esterno relativo all’incontro formale del 13/11/2025.

== Assegnazione delle prossime task basate sulle decisioni prese
\
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],
  [Scrittura PdP v0.1.0],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/40")[*\#40*] ],
  
  [Verifica PdP v0.1.0],
  [Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/40")[*\#40*] ],

  [Scrittura NP v0.1.0],
  [Elia Stellin],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/41")[*\#41*] ],

  [Verifica NP v0.1.0],
  [Jaume Bernardi],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/41")[*\#41*] ],

  [Scrittura Verbale Interno],
  [Michele Dioli],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/42")[*\#42*]],

  [Verifica Verbale Interno],
  [Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/42")[*\#42*]],
)
