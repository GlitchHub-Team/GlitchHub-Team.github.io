#import "../../Templates/templateVerbali.typ": report

#show link: underline
#show: report.with(
  titolo: "Verbale interno 04/11/2025",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    ("0.0.1", "04/11/2025", "Siria Salvalaio", "-", "Bozza quarto incontro interno"),
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
    "Organizzazione sprint e retrospective settimanali",
    "Scelta delle date indicative RTB e PB",
    "Allineamento sui criteri di rotazione dei ruoli",
    "Organizzazione compiti da ClickUp a Issues e Projects su GitHub",
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

== Organizzazione sprint settimanali
Il gruppo, dopo aver valutato rispettivi impegni individuali e universitari, ha deciso di adottare una cadenza settimanale degli sprint. Al termine di ogni sprint verrà svolta una retrospective, fissata ogni mercoledì alle ore 14:30, per analizzare il lavoro svolto, discutere insieme eventuali dubbi e/o problemi emersi durante la settimana e proporre soluzioni condivise. \
Per il momento verrà mantenuta questa organizzazione, eventuali modifiche saranno valutate in concomitanza con gli incontri previsti con l'azienda proponente.

== Date indicative di RTB e PB
Il RTB è previsto indicativamente a metà del periodo disponibile, quindi tra circa nove settimane. \
Il PB è pianificato per la fine del periodo, cioè nel mese di marzo.

== Criteri di rotazione dei ruoli
La rotazione dei ruoli avverrà ogni due settimane. \
Nel caso in cui la durata degli sprint sia di due settimane, la rotazione coinciderà con la fine di ogni sprint; se invece la durata dello sprint sarà di una settimana, la rotazione sarà effettuata ogni due sprint. \
Al termine di ogni incarico, chi lascia un ruolo è tenuto a trasferire in modo completo le informazioni alla persona che subentra, garantendo la continuità e la correttezza del lavoro, nonché la condivizione delle conoscenze.

== Organizzazione Issues e Projects
Il gruppo ha deciso di utilizzare le GitHub Issues, che sono pubbliche a differenza delle issues di ClickUp, con l'obiettivo di centralizzare e semplificare il workflow. \
La scelta delle GitHub Issues si è rivelata l'opzione più semplice, poiché si integrano nativamente con i commit, le pull request e i GitHub Projects, garantendo una tracciabilità diretta e automatica delle attività.

Per la gestione delle issues è stato deciso di utilizzare un GitHub Project in modalità Kanban, così da visualizzare facilmente lo stato di avanzamento delle attività. \
Infine, per monitorare il progresso complessivo, verranno utilizzate le GitHub Milestones, in particolare ne è stata creata una per la seconda revisione della candidatura.

== Modifica dell'organizzazione della pagina web
In seguito ai consigli ricevuiti dal professore, il gruppo ha deciso di riorganizzare la struttura del sito web riguardante la documentazione. \
Inizialmente verrà visualizzata solo la sezione _Candidatura_, con l'avanzare delle attività saranno resi visibili i documenti relativi alla fase corrente (RTB, PB), mantenendo comunque disponibili i documenti delle fasi precedenti. \
Dopo una discussione si è deciso di mostrare come primo documento la _Lettera di Presentazione_, considerata uno dei documenti più importanti che rappresentano il gruppo e il progetto stesso. \
Questa modifica comporterà un aggiornamento delle automazioni di pubblicazione dei file PDF generati da sorgenti Typst, per assicurare che la nuova struttura venga gestita in modo corretto ed automatico.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: 3,
  align: center + horizon,
  [**Task**], [**Responsabile**], [**Issue**],
  [Scrittura Verbale Interno 2025-11-04 \ - Verifica  #footnote[
    Le task segnate con il trattino "-" sono sub-issue delle principali indicate sopra
  ]], [Siria Salvalaio \ - Elia Ernesto Stellin], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/20")[*\#20*] \ - #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/28")[*\#28*]],
  [Inserire criteri di rotazione in Dichiarazione Impegni], [Michele Dioli e Alessandro Dinato], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/21")[*\#21*]],
  [Modificare organizzazione sito], [Michele Diole], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/22")[*\#22*]],
  [Sistemare script pubblicazione PDF], [Alessantro Dinato], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/23")[*\#23*]],
  [Modifica lettera di presentazione \ - Verifica ], [Hossam Ezzemouri \ - Jaume Bernardi], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/24")[*\#24*]\ - #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/26")[*\#26*]]
)