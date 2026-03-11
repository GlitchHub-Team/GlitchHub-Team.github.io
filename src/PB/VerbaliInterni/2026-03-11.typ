#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 11/03/2026",
  stato: "Bozza",
  registro-modifiche: (
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Revisione del lavoro svolto],
  ),
  htmlId: "PB-VerbaliInterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *11 marzo 2026* dalle ore 14:45 alle ore 16:00, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Revisione del lavoro
=== Codifica della progettazione del Gateway
Lo sviluppo del Gateway è in fase avanzata. Se non emergeranno eventuali problemi si prevede di concludere la codifica per il 14 marzo.

=== Impostazione dei devcontainer (ambienti di sviluppo) e della continuous integration (CI)
In merito all'ottimizzazione del workflow di sviluppo, il gruppo ha definito l'integrazione di un file _ci.yml_ per ogni #gloss("repository"), con le seguenti specifiche:
- *linguaggio Go*: gestione delle dipendenze (_go download_), formattazione del codice tramite _gofumpt_, analisi statica per errori di compilazione (_go vet_) ed esecuzione dei test unitari (_go test_).
- *Node.js*: installazione _npm_ e relative dipendenze, seguita dalle fasi di compilazione e build per l'individuazione di eventuali errori.
- *Prometheus e Grafana*: validazione automaticamente focalizzata sulla corretta indentazione dei file _.yml_.

A seguito di un'analisi comparativa, il team ha stabilito di adottare _golang-ci_ come strumento principale di analisi statica per il codice in Go; tale scelta è motivata dalla maggiore efficacia dello strumento nel raggruppare i controlli necessari.

== Sviluppo dashboard front-end
La fase di progettazione della #gloss("dashboard") è in fase avanzata. Si è stabilito che Riccardo e Siria si dedicheranno prioritariamente allo sviluppo del front-end.

== Sviluppo dashboard back-end
La progettazione della #gloss("dashboard") back-end è in via di completamento; restano da implementare alcune modifiche strutturali suggerite dal Prof. Cardin per ottimizzare l'architettura. \

Il gruppo ha analizzato l'opportunità di utilizzare il linguaggio UML in relazione a Go. È emerso che l'applicazione rigorosa dei diagrammi delle classi UML può risultare una forzatura, dato che Go non segue il paradigma di programmazione orientata agli oggetti (OOP) in senso stretto (mancanza di ereditarietà classica, gerarchie di classi, ecc.). Si è pertanto deciso di utilizzare la notazione UML in modo flessibile, privilegiando la chiarezza logica rispetto al formalismo standard.

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Aggiornare nuovi termini nel glossario], [Alessandro Dinato], [#issue(407)],

  [Aggiornare ConfigManager, GatewayManager, credenziali], [Alessandro Dinato], [#issue(5, repo: "gw")],

  [Codifica DataConsumer], [Alessandro Dinato], [#issue(1, repo: "dc")],

  [Aggiungere ResponseDTO nella specifica tecnica], [Elia Ernesto Stellin], [#issue(441)],

  [Impostazione struttura cartelle e package (back-end)], [Elia Ernesto Stellin], [#issue(2, repo:"dash")],

  [Codifica back-end], [Elia Ernesto Stellin], [#issue(4, repo:"dash")],

  [Impostare tracciamento TU nel PdQ], [Elia Ernesto Stellin], [#issue(442)],

  [Aggiungere ResponseDTO nella specifica tecnica], [Michele Dioli], [#issue(443)],

  [Codifica del back-end], [Michele Dioli], [#issue(5, repo:"dash")],

  [Scrittura del PdP (sprint 11)], [Michele Dioli], [#issue(390)],

  [Aggiornare le NdP con il workflow della codifica], [Hossam Ezzemouri], [#issue(444)],

  [Sistemare le automazioni del Continuous Integration], [Hossam Ezzemouri], [#issue(445)],

  [Scrivere gli unit test del gateway], [Hossam Ezzemouri], [#issue(6, repo:"gw")],

  [Scrivere gli unit test del gateway nel PdQ], [Hossam Ezzemouri], [#issue(446)],

  [Scrivere codifica autenticazione del front-end], [Riccardo Graziani], [#issue(1, repo:"dash")],

  [Ruolo da responsabile], [Siria Salvalaio], [#issue(436)],

  [Scrittura del PdP (sprint 12)], [Siria Salvalaio], [#issue(440)],

  [Aggiornare urgenze requisiti nell'AdR], [Siria Salvalaio], [#issue(429)],

  [Scrittura verbale interno 11/03/2026], [Siria Salvalaio], [#issue(438)],

  [Scrittura verbale esterno 17/03/2026], [Siria Salvalaio], [#issue(439)],

  [Aggiornare arch. con testo e diagrammi System Context, Container, Component e Deployment nella ST], [Jaume Bernardi], [#issue(447)],

  [Inserire versioni tecnologie e tecnologie mancanti nella ST], [Jaume Bernardi], [#issue(448)],

) 