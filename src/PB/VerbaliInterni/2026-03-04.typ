#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 04/03/2026",
  stato: "da verificare",
  versione: "0.1.0",
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
Il presente documento attesta che, in data *04 marzo 2026* dalle ore 14:30 alle ore 15:40, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Revisione durata sprint
Vista il poco tempo a dispososizione, il gruppo ha deciso di non creare un nuovo sprint ma di effettuare comunque una revisione intermedia del lavoro svolto, con l'obiettivo di identificare ulteriori task. Avendo comunque l'intenzione di passare a sprint di una settimana a fine delle sprint corrente. La scelta di fare durare l'attuale sprint 2 settimane è motivata principalmente dalla necessità di acquisire maggiore esperienza nella progettazione, consolidando le competenze tramite attività di palestra.

== Revisione del lavoro a metà sprint

=== Progettazione del Gateway
È stato realizzato un _code diagram_ del servizio Gateway, che ha rappresentato un buon punto di avanzamento sia in termini di esercizio progettuale sia di progettazione effettiva.

=== Progettazione del Cloud
È stato avviato il _component diagram_ relativo alla parte _cloud_ e si prevede la fine entro fine settimana corrente, sarà poi iniziato il _code diagram_.

=== Impostazione delle nuove repository
L'attività di impostazione delle repository per i servizi dell'MVP prosegue come stabilito e confemato nel verbale in data 24-02-26.

=== Deployment diagram
La realizzazione del _deployment diagram_ ha subito dei ritardi rispetto alla pianificazione prevista.

== Aggiornamento del workflow delle Issue
Sono state presentate al gruppo le nuove automazioni introdotte nel _workflow_: 
- La cancellazione automatica dei branch associati alle issue chiuse, 
- il collegamento automatico tra issue e _Pull Request_, 
- il collegamento automatico alle issue padre tramite sintassi corretta del titolo della issue, ovvero deve contenere la sigla del documento tra parentesi quadre\
È stato inoltre proposto l'utilizzo di una label _epic_ per le issue di raggruppamento.

== Impostazione dei dev container
È emersa la necessità di configurare i dev container in modo da garantire un ambiente di sviluppo condiviso con versioni allineate degli strumenti utilizzati. Per questo il gruppo terra un file condiviso interno per il coordinamento delle versioni. 
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