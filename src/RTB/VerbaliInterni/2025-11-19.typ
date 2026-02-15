#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 19/11/2025",
  stato: "Verificato",
  versione: "1.0.1",
  registro-modifiche: (
    (
      "1.0.1",
      "20/11/2025",
      "Michele Dioli",
      "Siria Salvalaio",
      "Corretto errore di battitura e allineamento con PdP",
    ),
    (
      "1.0.0",
      "20/11/2025",
      "Michele Dioli",
      "Siria Salvalaio",
      "Corrette e riformulate frasi",
    ),
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
    "Convenzioni per la scrittura dei documenti",
    "Allineamento sulle Norme di progetto",
    "Allineamento sulle Norme di progetto",
    "Prossimi incontri con M31",
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *19 novembre 2025* dalle ore 14.30 alle ore 16:05, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione


== Convenzioni per la scrittura dei documenti

Il gruppo è stato aggiornato sulla metodologia di lavoro prevista in questa fase.\
È stato chiarito che non è ancora necessario concentrarsi sulla stesura del documento _#gloss[Analisi dei Requisiti]_; è invece preferibile dedicare tempo alle fasi di allenamento, ovvero esercitarsi nella produzione dei casi d’uso.\
Per la realizzazione dei diagrammi dei casi d’uso è stato scelto _draw.io_, ritenuto utile poiché consente di generare file PNG successivamente modificabili.
Durante la discussione è emerso un dubbio riguardo alla corretta gestione dei sotto-diagrammi. Si è deciso che un diagramma deve essere ridisegnato solo quando il sotto-diagramma non rappresenti una foglia.


== Allineamento sulle Norme di progetto

È stata definita una scaletta per la conduzione delle #gloss[Sprint Retrospective], in modo da adottare un #gloss[framework] comune e mantenere gli incontri ordinati. La scaletta comprende:
- riepilogo delle attività svolte;
- allineamento sulle risorse utilizzate;
- analisi dei rischi incontrati;
- #gloss[retrospettiva] sullo #gloss[sprint];
- discussione del resto dell’ordine del giorno;
- assegnazione delle attività da svolgere;
- riassegnazione dei ruoli (solo al termine del periodo di rotazione).\
È stato inoltre definito il workflow da seguire per la gestione delle issue relative alla documentazione.
Ogni attività di creazione di un documento corrisponderà a un’issue di tipo _documentation_. Scrittura e #gloss[verifica] saranno gestite all’interno della stessa issue.

Nella descrizione dell'issue su #gloss[GitHub] verranno indicati i responsabili di ciascuna attività.\
All'avvio della scrittura, l’issue verrà contrassegnata come “In Progress”; quando il documento passa alla #gloss[verifica], lo stato diventerà “In Review”.
Per i documenti incrementali, ovvero soggetti a modifiche durante tutto il progetto, sarà creata una _parent issue_ che raccoglierà tutte le attività relative al documento. Per ciascuna versione verrà aperta una sub-issue collegata alla parent issue, mentre la versione 1.0.0 sarà associata al documento consegnato alla relativa #gloss[milestone].

== Prossimi incontri con M31
È stata inviata un’email, attualmente senza risposta, per pianificare il successivo incontro settimanale con l’azienda, per chiarire alcuni aspetti, in particolare relativi ai casi d’uso.
Nel frattempo, è stato ricevuto il verbale esterno firmato relativo all’incontro formale del 13/11/2025.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],
  [Scrittura #gloss[Piano di Progetto] v0.1.0],
  [Alessandro Dinato],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/40")[*\#40*] ],

  [#gloss[Verifica] #gloss[Piano di Progetto] v0.1.0],
  [Siria Salvalaio],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/47")[*\#47*] ],

  [Scrittura #gloss[Norme di Progetto] v0.1.0],
  [Elia Stellin],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/41")[*\#41*] ],

  [#gloss[Verifica] #gloss[Norme di Progetto] v0.1.0],
  [Jaume Bernardi],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/50")[*\#50*] ],

  [Scrittura Verbale Interno 2025-11-19],
  [Michele Dioli],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/54")[*\#54*]],

  [#gloss[Verifica] Verbale Interno 2025-11-19],
  [Siria Salvalaio],
  [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/53")[*\#53*]],
)
