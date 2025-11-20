#import "../../Templates/templateVerbali.typ": report

#show link: underline
#show: report.with(
  titolo: "Verbale interno 19/11/2025",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1",
      "19/11/2025",
      "Michele Dioli",
      "Siria Salvalaio",
      "Bozza sesto incontro interno",
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
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *19 novembre 2025* dalle ore 14.30 alle ore 16:05, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione
//il documento va più o meno bene ma l'ordine del giorno deve corrispondere alle varie parti del testo quindi sistema i titoli e aggiungi quelli che mancano

== Convenzioni per la scrittura dei documenti
// riscritto alcune frasi in modo che sia più leggibile
Il gruppo è stato aggiornato sulla metodologia di lavoro prevista in questa fase.\
È stato chiarito che non è ancora necessario concentrarsi sulla stesura del documento _Analisi dei Requisiti_; è invece preferibile dedicare tempo alle fasi di allenamento, ovvero esercitarsi nella produzione dei casi d’uso.\
Per la realizzazione dei diagrammi dei casi d’uso è stato scelto _draw.io_, ritenuto utile poiché consente di generare file PNG successivamente modificabili.
Durante la discussione è emerso un dubbio riguardo alla corretta gestione dei sotto-diagrammi. Si è deciso che un diagramma deve essere ridisegnato solo quando il sotto-diagramma non rappresenti una foglia. 

//va tolta la parte di "Allineamento sull’Analisi dei Requisiti" perché ridondante rispetto alla parte superiore cioè la tua:
//Il gruppo viene aggiornato sulla metodologia di lavoro, in questa fase non bisogna concentrarsi sulla scrittura del documento _Analisi dei requisiti_, ma dedicare tempo nelle attività di allenamento per lo sviluppo dei casi d'uso. A tale proposito il mezzo utilizzato per la realizzazione dei grafici dei casi d'uso è stato Draw.io il quale consente di avere file PNG successivamente modificabili. Inoltre e' stato esposto un dubbio Decisione: bisogna ridisegnare il diagramma solo se il sotto-diagramma non è una foglia. Ciò sarà visibile nell'analisi dei req.

== Allineamento sulle Norme di progetto
// modificato alcune frasi e corretto errori grammaticali
È stata definita una scaletta per la conduzione delle Sprint Retrospective, in modo da adottare un framework comune e mantenere gli incontri ordinati. La scaletta comprende:
- riepilogo delle attività svolte;
- allineamento sulle risorse utilizzate;
- analisi dei rischi incontrati;
- retrospettiva sullo sprint;
- discussione del resto dell’ordine del giorno;
- assegnazione delle attività da svolgere;
- riassegnazione dei ruoli (solo al termine del periodo di rotazione).\
È stato inoltre definito il workflow da seguire per la gestione delle issue relative alla documentazione.
Ogni attività di creazione di un documento corrisponderà a un’issue di tipo _documentation_. Scrittura e verifica saranno gestite all’interno della stessa issue.

Nella descrizione dell'issue su GitHub verranno indicati i responsabili di ciascuna attività.\
All'avvio della scrittura, l’issue verrà contrassegnata come “In Progress”; quando il documento passa alla verifica, lo stato diventerà “In Review”.

Per i documenti incrementali, ovvero soggetti a modifiche durante tutto il progetto, sarà creata una _parent issue_ che raccoglierà tutte le attività relative al documento. Per ciascuna versione verrà aperta una sub-issue collegata alla parent issue, mentre la versione 1.0.0 sarà associata al documento consegnato alla relativa milestone.

== Prossimi incontri con M31
È stata inviata un’email, attualmente senza risposta, per pianificare il successivo incontro settimanale con l’azienda, per chiarire alcuni aspetti, in particolare relativi ai casi d’uso.
Nel frattempo, è stato ricevuto il verbale esterno firmato relativo all’incontro formale del 13/11/2025.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],
  [Scrittura Piano di Progetto v0.1.0],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/40")[*\#40*] ],
  
  [Verifica Piano di Progetto v0.1.0],
  [Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/40")[*\#40*] ],

  [Scrittura Norme di Progetto v0.1.0],
  [Elia Stellin],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/41")[*\#41*] ],

  [Verifica Norme di Progetto v0.1.0],
  [Jaume Bernardi],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/41")[*\#41*] ],

  [Scrittura Verbale Interno 2025-11-19],
  [Michele Dioli],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/42")[*\#42*]],

  [Verifica Verbale Interno 2025-11-19],
  [Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/42")[*\#42*]],
)
