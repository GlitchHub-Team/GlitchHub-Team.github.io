#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 04/11/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "04/11/2025",
      "Alessandro Dinato",
      "Siria Salvalaio",
      "Revisione e lievi correzioni per versione stabile",
    ),
    (
      "0.1.0",
      "04/11/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Modifiche alla struttura e alla scorrevolezza; aggiunte motivazioni nella selezione di date di RTB e PB",
    ),
    ("0.0.1", "04/11/2025", "Siria Salvalaio", "Elia Ernesto Stellin", "Bozza quarto incontro interno"),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    "Organizzazione sprint e retrospective",
    "Scelta delle date indicative RTB e PB",
    "Organizzazione compiti da ClickUp a Issues e Projects su GitHub",
    "Allineamento sui criteri di rotazione dei ruoli",
    "Discussione organizzazione del sito",
    "Assegnazione nuovi compiti",
    "Varie ed eventuali",
  ),
  htmlId: "Candidatura-VerbaliInterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *4 novembre 2025*, dalle ore 14:30 alle ore 16:00, si è tenuta, in modalità virtuale, la riunione del gruppo *GlitchHub Team*. \
L'incontro è stato organizzato con lo scopo di risolvere i problemi emersi durante l'assegnazione dei capitolati avvenuta nella mattinata, migliorare l'attuale _way of working_ e pianificare meglio i futuri incontri.

= Resoconto della riunione
== Organizzazione sprint settimanali
Il gruppo, dopo aver valutato rispettivi impegni individuali e universitari, ha deciso di adottare un sistema di organizzazione temporale a _sprint_ settimanali in accordo con il modello di sviluppo _Agile_.

Al termine di ogni sprint verrà svolta una cerimonia di _sprint retrospective_, fissata ogni mercoledì alle ore 14:30 in seguito a una votazione di gruppo, con lo scopo di analizzare il lavoro svolto, discutere insieme eventuali dubbi e/o problemi emersi durante la settimana e proporre soluzioni condivise. \
Questa cerimonia avrà anche il ruolo di _sprint review_, dato che si analizzeranno i prodotti dello sprint. Una volta aggiudicato l'appalto, il gruppo procederà a separare le due cerimonie integrando l'azienda proponente nella _sprint review_.

== Organizzazione Issues e Projects
Il gruppo ha deciso di utilizzare le GitHub Issues, che sono pubbliche a differenza delle issues di ClickUp, usate in precedenza, con l'obiettivo di centralizzare e semplificare il workflow. \
La scelta delle GitHub Issues si è rivelata l'opzione più semplice, poiché si integrano nativamente con i commit, le pull request e i GitHub Projects, garantendo una tracciabilità diretta e automatica delle attività.

Per la gestione delle issues è stato deciso di utilizzare un GitHub Project in modalità Kanban, così da visualizzare facilmente lo stato di avanzamento delle attività. \
Infine, per monitorare il progresso complessivo, verranno utilizzate le GitHub Milestones, in particolare ne è stata creata una per la seconda revisione della candidatura.

== Date indicative di RTB e PB
Il gruppo ha fissato le deadline per le due _baseline_ principali del progetto in modo tale da poter creare le rispettive GitHub Milestones e avere un quadro di riferimento temporale

Il *Requirements and Technology Baseline* (RTB) è previsto indicativamente a metà del periodo fissato dal gruppo ovvero nella settimana tra il 12 e il 18 gennaio, mentre il *Product Baseline* (PB), è pianificato per la fine del periodo, cioè nel mese di marzo.

Queste date sono molto approssimative e possono essere soggette a notevoli cambiamenti, a seconda dell'evoluzione delle necessità del gruppo e dell'azienda proponente.

== Criteri di rotazione dei ruoli
In seguito alla cerimonia di aggiudicazione degli appalti del *4 novembre 2025*, è emersa una criticità nella Dichiarazione degli Impegni consegnata alla candidatura del *31 ottobre 2025*, relativa alla mancata descrizione della rotazione dei ruoli durante lo svolgimento del progetto.

Per tale motivo, il gruppo ha deciso la frequenza e i criteri di rotazione dei ruoli, riportati anche nella Dichiarazione degli Impegni.

Più nello specifico:
- La rotazione dei ruoli avverrà ogni due settimane, per cui nel caso in cui la durata degli sprint sia di due settimane, la rotazione coinciderà con la fine di ogni sprint; se invece la durata dello sprint sarà di una settimana, la rotazione sarà effettuata ogni due sprint.
- Al termine di ogni incarico, chi ha finito di svolgere un certo ruolo è tenuto a trasferire completamente al suo successore il _know-how_ e il _way of working_ appresi, garantendo la continuità e la correttezza del lavoro, nonché la condivisione delle conoscenze.


== Modifica dell'organizzazione della pagina web
In seguito alla valutazione del professore, il gruppo ha deciso di riorganizzare la struttura del sito web riguardante la documentazione. \
Inizialmente verrà visualizzata solo la sezione _Candidatura_, con l'avanzare delle attività saranno resi visibili i documenti relativi alla fase corrente (RTB, PB), mantenendo comunque disponibili i documenti delle fasi precedenti. \
Dopo una discussione si è deciso di mostrare come primo documento la _Lettera di Presentazione_, considerata il documento più importante della candidatura, in quanto presenta il gruppo e il progetto proposto. \
Questa modifica comporta un aggiornamento delle automazioni di pubblicazione dei file PDF generati da sorgenti Typst, per assicurare che la nuova struttura venga gestita in modo corretto ed automatico.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: 3,
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],
  [Scrittura Verbale Interno 2025-11-04 \ - Verifica  #footnote[
      Le task segnate con il trattino "-" sono sub-issue delle principali indicate sopra
    ]],
  [Siria Salvalaio \ - Elia Ernesto Stellin],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/20")[*\#20*] \ - #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/28")[*\#28*]],

  [Inserire criteri di rotazione in Dichiarazione Impegni],
  [Michele Dioli e Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/21")[*\#21*]],

  [Modificare organizzazione sito],
  [Michele Dioli],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/22")[*\#22*]],

  [Sistemare script pubblicazione PDF],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/23")[*\#23*]],

  [Modifica lettera di presentazione \ - Verifica ],
  [Hossam Ezzemouri \ - Jaume Bernardi],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/24")[*\#24*]\ - #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/26")[*\#26*]],
)
