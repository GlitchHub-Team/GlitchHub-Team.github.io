#import "../../Templates/templateVerbali.typ": *

#let issue(number) = link(
  "https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/" + str(number),
)[*\##number*]
#let issue_full(number) = link(
  "https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/" + str(number),
)[*Issue \##number*]

#show link: underline
#show: report.with(
  titolo: "Verbale interno 11/12/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "15/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Versione stabile verbale interno del 11/12/2025",
    ),
    (
      "0.1.0",
      "15/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Prima stesura verbale interno del 11/12/2025",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
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
    [Allineamento sulla scrittura degli use cases],
    [Necessità di automatizzare la creazione delle #gloss[GitHub Issues]],
    [Assegnazione delle task per il prossimo Sprint],
    [Assegnazione dei ruoli per le prossime due settimane],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *11 dicembre 2025* dalle ore 16:45 alle ore 18:15, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

Si noti che questa riunione è stata un proseguimento della riunione avvenuta in data *10 dicembre 2025*
#footnote[
  La riunione del *10 dicembre 2025* è avvenuta in modalità virtuale dalle 16:35 alle 18:15, e sono stati presenti Alessandro Dinato, Elia Ernesto Stellin, Jaume Bernardi, Michele Dioli, Riccardo Graziani e Siria Salvalaio], che è stata interrotta per motivi personali dei membri del gruppo, ma che non ha portato ad alcuna conclusione.

= Resoconto della riunione

== Allineamento sulla scrittura degli use cases
Durante la stesura degli use cases (da qui in poi "UC"), sono sorti dei dubbi relativi alla definizione di "Attore" e di "Sistema" da utilizzare nella loro scrittura. Questi dubbi sono stati ulteriormente esacerbati dalle risposte contrastanti ottenute dal prof. Vardanega e l'azienda proponente.

Il dubbio principale del gruppo risiedeva nel cosa considerare come *sistema*, poiché il #gloss[capitolato] del #gloss[proponente] (vd. #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[Capitolato C7]) richiede lo sviluppo di due parti comunicanti separate, ovvero l'infrastruttura #gloss[Cloud] e il simulatore di #gloss[Gateway]. Il gruppo inizialmente non era d'accordo se considerare entrambe le parti come un sistema unico o considerare ciascuna parte come un sistema a sé stante negli UC relativi.

Dopo aver discusso, i membri del gruppo hanno deciso di:
- Considerare il *sistema* di uno UC come una *parte* del prodotto che interagisce con i relativi *attori*. Questo implica che il simulatore di #gloss[Gateway] e l'infrastruttura #gloss[Cloud] sono considerati due *sistemi* diversi negli UC relativi.

- Considerare un *attore* come una qualunque entità esterna al *sistema* preso in considerazione, che agisce sul suo stato (ad esempio, modificandolo o anche solo visualizzandolo). Data la definizione di *sistema* descritta sopra, questo implica che il #gloss[Gateway] può essere un *attore* nei confronti del #gloss[Cloud] e viceversa, ove questo sia appropriato.

Tutte queste considerazioni si riveleranno utili nella stesura degli UC nell'#gloss[Analisi dei Requisiti] (riassunta nella parent issue #issue(39)).

== Necessità di automatizzare la creazione delle #gloss[GitHub Issues]
Durante la riunione, è sorta la necessità da parte del gruppo di rendere più veloce la creazione delle #gloss[Github Issues] associate alle task da compiere. È stato proposto di utilizzare *Issue Form* e delle #gloss[GitHub Actions] ad hoc per compilare automaticamente i campi ridondanti delle issues.

== Assegnazione delle prossime task basate sulle decisioni prese
Il gruppo ha deciso di proseguire con la redazione degli UC, dividendosi per attore principale, in modo analogo a come descritto nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-03")[*verbale interno del 3 dicembre 2025*].

#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatario*], [*Issue*],

  [Scrittura sezione del #gloss[PdP] relativa allo Sprint 5], [Elia Ernesto Stellin], [#issue(91)],
  [Verifica sezione del #gloss[PdP] relativa allo Sprint 5], [Riccardo Graziani], [#issue(92)],

  [Scrittura verbale interno della riunione in oggetto], [Elia Ernesto Stellin], [#issue(94)],
  [Verifica verbale interno della riunione in oggetto], [Alessandro Dinato], [#issue(95)],

  [Sviluppo UC relativi al *Super Admin*], [Michele Dioli, Alessandro Dinato], [#issue(97)],

  [Sviluppo UC relativi al *Tenant Admin*], [Riccardo Graziani, Elia Ernesto Stellin], [#issue(98)],

  [Sviluppo UC relativi al *Gateway*], [Jaume Bernardi, Siria Salvalaio], [#issue(99)],

  // [Sviluppo casi d'uso relativi a user, REST client e tenant user],
  // [Alessandro Dinato],
  // [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/88")[*\#88*]],

  [Scrittura verbale esterno *9 dicembre 2025*], [Alessandro Dinato], [#issue(101)],
  [Verifica verbale esterno *9 dicembre 2025*], [Hossam Ezzemouri], [#issue(102)],

  [Creazione di *Issue Form* e automazione per Issue], [Elia Ernesto Stellin], [#issue(104)],
)

== Assegnazione dei ruoli per le prossime due settimane
Il gruppo ha deciso di assegnare i ruoli nel seguente modo:
- *Responsabile*: Elia Ernesto Stellin
- *Amministratore*: Elia Ernesto Stellin
- *Analista*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Hossam Ezzemouri
