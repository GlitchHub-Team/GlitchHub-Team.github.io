#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 12/11/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "19/11/2025",
      "Michele Dioli",
      "Siria Salvalaio",
      "Minori correzioni",
    ),
    (
      "0.1.0",
      "18/11/2025",
      "Michele Dioli",
      "Siria Salvalaio",
      "Aggiunta descrizione nelle sezioni",
    ),
    (
      "0.0.1",
      "13/11/2025",
      "Michele Dioli",
      "-",
      "Bozza quinto incontro interno",
    ),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
    "Riccardo Graziani",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    "Assegnazione ruoli per lo Sprint",
    "Allineamento sul compito dei diversi ruoli",
    "Suddivisione dei documenti da redarre",
    "Preparazione per l incontro formale con M31",
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *12 novembre 2025* dalle ore 16:00 alle ore 17:30, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*. \
L’incontro settimanale di sprint retrospective si è svolto come previsto, ma è stato utilizzato non come retrospettiva bensì come momento di pianificazione.

= Resoconto della riunione

== Assegnazione dei ruoli per lo Sprint

Per la rotazione corrente, i ruoli sono stati assegnati tenendo conto dei vari impegni personali e della disponibilità dei membri del team.
I ruoli verranno ruotati tra due settimane a partire dalla data dell’incontro.

== Allineamento sui compiti dei diversi ruoli

Durante l’incontro sono emerse alcune divergenze riguardo ai compiti di determinati ruoli.
È stato quindi dedicato del tempo per chiarire le responsabilità e allineare tutti i membri del team.
È stato discusso il ruolo del verificatore, che dovrà leggere tutti i documenti in fase di verifica e lasciare commenti all’autore con i suggerimenti sulle modifiche da apportare; non interverrà quindi direttamente al documento.\
La stesura dei documenti è affidata agli analisti, che per questa fase di progetto si concentreranno sull’impostazione dei documenti e dei casi d’uso.
Inoltre è stato stimato il monte ore di ciascun ruolo per lo sprint avviato.

== Suddivisione dei documenti da iniziare

Con l’inizio della RTB è stato deciso che gli analisti si occuperanno principalmente della redazione dei documenti, suddividendo il carico tra Norme di Progetto, Analisi dei Requisiti e Piano di Progetto.
Poichè ci si trova nelle fasi iniziali, il lavoro sarà principalmente una fase di allenamento, soprattutto per quanto riguarda l’Analisi dei Requisiti, che richiede la scrittura e la comprensione dei casi d’uso.\
I componenti del team responsabili della redazione dei documenti si sono organizzati per rendere il lavoro di scrittura più agevole ed evitare conflitti, preferendo una modalità di lavoro asincrona.

== Preparazione per l’incontro formale con M31
Si è deciso di comunicare all’azienda l’avvenuta candidatura e quindi l’inizio del progetto didattico. Inoltre, si richiederà un primo incontro formale per allinearsi sulle attività da svolgere.\
In vista di questo incontro in presenza con l’azienda proponente, il gruppo ha scelto di riflettere su alcune domande da porre, al fine di chiarire i dubbi iniziali emersi dopo la candidatura.\
Principalmente si chiederà all’azienda di predisporre un canale di comunicazione rapido e di fornire alcuni consigli operativi, dato che ha già maturato esperienza nel tutoraggio di gruppi negli anni precedenti.\
Ogni membro del gruppo si impegnerà a rileggere e approfondire quanto riportato nel capitolato dell’azienda, così da rendere l’incontro il più produttivo possibile.

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: 3,
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],
  [Scrittura Verbale Interno 2025-11-12],
  [Michele Dioli],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/56")[*\#56*] ],

  [Verifica Verbale Interno 2025-11-12],
  [Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/34")[*\#34*] ],

  [Scrittura Verbale Esterno 2025-11-13],
  [Riccardo Graziani],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/55")[*\#55*] ],

  [Verifica Verbale Esterno 2025-11-13],
  [Jaume Bernardi],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/36")[*\#36*] ],

  [Stesura Piano di Progetto],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/45")[*\#45*]],

  [Stesura Norme di Progetto],
  [Elia Stellin],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/49")[*\#49*]],

  [Stesura analisi dei requisiti],
  [Hossam Ezzemouri, Riccardo Graziani],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/59")[*\#59*]],
)

= Conclusioni
Il gruppo ha come prossima data di incontro il 19 novembre 2025, in cui è stata fissata la sprint retrospective.
La data potrà comunque essere confermata o modificata in base agli impegni lavorativi dei membri del gruppo.\
In generale c’è un clima collaborativo; tuttavia il gruppo si trova in leggera difficoltà riguardo al da farsi, con alcuni dubbi che si spera possano essere chiariti il prima possibile.
