#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 04/03/2026",
  stato: "Verificato",
  registro-modifiche: (
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Revisione durata sprint],
    [Revisione del lavoro],
    [Aggiornamento workflow per issue],
    [Impostazione dev container],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *4 marzo 2026* dalle ore 14:30 alle ore 15:40, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Revisione durata sprint
Vista il poco tempo a disposizione, il gruppo ha deciso di non creare un nuovo #gloss("sprint") ma di effettuare comunque una revisione intermedia del lavoro svolto, con l'obiettivo di identificare ulteriori task. Avendo comunque l'intenzione di passare a #gloss("sprint") di una settimana a fine delle #gloss("sprint") corrente. La scelta di fare durare l'attuale #gloss("sprint") 2 settimane è motivata principalmente dalla necessità di acquisire maggiore esperienza nella progettazione, consolidando le competenze tramite attività di palestra.

== Revisione del lavoro a metà sprint

=== Progettazione del Gateway
È stato realizzato un _code diagram_ del servizio #gloss("gateway"), che ha rappresentato un buon punto di avanzamento sia in termini di esercizio progettuale sia di progettazione effettiva.

=== Progettazione del Cloud
È stato avviato il _component diagram_ relativo alla parte #gloss("cloud") e si prevede la fine entro fine settimana corrente, sarà poi iniziato il _code diagram_.

=== Impostazione delle nuove repository
L'attività di impostazione delle #gloss("repository") per i servizi dell'#gloss("MVP") prosegue come stabilito e confermato nel verbale in data 24-02-26.

=== Deployment diagram
La realizzazione del _deployment diagram_ ha subito dei ritardi rispetto alla pianificazione prevista.

== Aggiornamento del workflow delle Issue
Sono state presentate al gruppo le nuove automazioni introdotte nel _workflow_: 
- La cancellazione automatica dei branch associati alle #gloss("issue") chiuse, 
- il collegamento automatico tra #gloss("issue") e #gloss("Pull Request"), 
- il collegamento automatico alle #gloss("issue") padre tramite sintassi corretta del titolo della #gloss("issue"), ovvero deve contenere la sigla del documento tra parentesi quadre\
È stato inoltre proposto l'utilizzo di una label _epic_ per le #gloss("issue") di raggruppamento.

== Impostazione dei dev container
È emersa la necessità di configurare i dev container in modo da garantire un ambiente di sviluppo condiviso con versioni allineate degli strumenti utilizzati. Per questo il gruppo avrà un file condiviso interno per il coordinamento delle versioni. 
È stato sottolineato che i dev container dovranno specificare versioni esatte degli strumenti, evitando l'uso di _latest_ per prevenire aggiornamenti indesiderati.

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Impostazione dev container e integrazione con CI], [Hossam Ezzemouri], [#issue(392)],

  [Aggiornare con file onClosePR.yml in tutte le repo], [Elia Ernesto Stellin], [#issue(393)],

  [Creare e impostare label "epic" per issue di raggruppamento], [Elia Ernesto Stellin], [#issue(394)],

  [Togliere sezioni RTB e candidatura da repo pubblico], [Alessandro Dinato], [#issue(395)],

  [Codifica componenti stabili], [Alessandro Dinato], [#issue(396)],

  [Impostare MkDocs per sito web], [Siria Salvalaio], [#issue(398)],

  [Cambiare funzione issue() su Typst], [Elia Ernesto Stellin], [#issue(399)],

  [Creare funzione pr() su Typst], [Elia Ernesto Stellin], [#issue(400)],

  [Aggiornare workflow NdP], [Riccardo Graziani], [#issue(401)],

)