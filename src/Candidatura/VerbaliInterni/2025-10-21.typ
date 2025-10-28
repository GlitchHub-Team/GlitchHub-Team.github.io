#import "../../Templates/templateVerbali.typ": report

#show: report.with(
  titolo: "Verbale interno 21/10/2025",
  stato: "Verificato",
  versione: "1.0.1",
  registro-modifiche: (
    ("1.0.1", "28/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Correzione refusi"),
    ("1.0.0", "26/10/2025", "Alessandro Dinato", "Jaume Bernardi", "Versione stabile del verbale"),
    ("0.1.0", "25/10/2025", "Alessandro Dinato", "Jaume Bernardi", "Stesura verbale dalla bozza"),
    ("0.0.1", "22/10/2025", "Riccardo Graziani", "Alessandro Dinato", "Bozza secondo incontro del gruppo"),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    "Organizzazione della documentazione per la Candidatura",
    "Valutazione dell'avanzamento delle task",
    "Assegnazione nuovi compiti",
    "Organizzazione ClickUp",
    "Varie ed eventuali",
  ),
  htmlId: "Candidatura-VerbaliInterni",
  verificatore-interno: "Jaume Bernardi",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *21 ottobre 2025*, dalle 16:30 alle 18:00, si è tenuta, in modalità virtuale, la riunione del gruppo *GlitchHub Team*. \
L'incontro è stato organizzato con lo scopo di organizzare la documentazione necessaria alla candidatura dei capitolati di appalto.
= Resoconto della riunione

== Organizzazione ClickUp
È stato deciso di organizzare il workflow del gruppo attraverso la piattaforma *ClickUp*, con l'obiettivo di gestire in maniera centralizzata scadenze, task e incontri.\
ClickUp mette a disposizione le seguenti funzionalità:
- un calendario *centralizzato*, con la possibilità di sincronizzarsi con altri calendari quali Google Calendar e Apple Calendar;
- creazione, assegnazione e tracking delle *task* da eseguire;
- generazione automatica di *diagrammi a sequenza* e *diagrammi di Gantt*;
- sistema di raccolta documenti e note;
- integrazioni con *GitHub*, *Google Calendar*, *Google Drive* e *Gmail*
Per tutte le comunicazioni informali è stato deciso di mantenere la piattaforma *Whatsapp*, mentre per le riunioni virtuali si continuerà ad utilizzare la piattaforma *Discord*.

== Compilazione documenti
Sono stati individuati tutti i documenti da redigere in vista della scadenza per la presentazione della candidatura, ossia:
- Lettera di candidatura;
- Valutazione dei capitolati;
- Dichiarazione impegni con preventivo dei costi;
- Diario di bordo del 27/10/2025;
Inoltre si è deciso di adottare *Typst* come strumento per la creazione dei diari di bordo per la possibilità di creare un template strutturato da poter riutilizzare per i diari di bordo successivi.

== Stato avanzamento lavori
Successivamente è stato presentato il lavoro svolto finora dai vari membri del gruppo. \
Tutti i componenti hanno dimostrato un ottimo stato di avanzamento rispetto alle scadenze, perciò non c'è stato bisogno di rivedere le risorse e le scadenze fissate in precedenza.

=== Pagina GitHub
Le funzionalità di *preview* e *download* dei file nel sito GitHub Pages sono state completate, ma il gruppo ha concordato che la parte front-end del sito va migliorata.

=== Automazione Typst
Sono state create *automazioni* nella repository per aggiungere al sito di GitHub Pages tutti i documenti che verranno compilati durante lo svolgimento del progetto senza la necessità di aggiornare la pagina HTML.

=== Template Typst
La creazione del template si trova a buon punto, resta da perfezionare l'impostazione grafica.

= Decisioni e attività

#figure(
  caption: [*Decisioni intraprese e attività conseguenti*],
  table(
    columns: (auto, auto, auto),
    align: left,
    stroke: (x, y) => (
      bottom: if y == 0 { 1pt + black } else { 0.8pt + black },
    ),
    table.header([*Descrizione*], [*Responsabile*], [*Scadenza*]),
    "Completamento template", "Michele Dioli, Alessandro Dinato", "23/10/2025",
    "Creazione template diario di bordo", "Michele Dioli, Alessandro Dinato", "26/10/2025",
    "Redazione documento di Dichiarazione impegni e preventivo costi",
    "Michele Dioli, Hossam Ezzemouri, Jaume Bernardi, Alessandro Dinato",
    "28/10/2025",

    "Completamento sito", "Siria Salvalaio, Hossam Ezzemouri, Jaume Bernardi", "26/10/2025",
    "Redazione verbale 21/10/2025", "Riccardo Graziani", "22/10/2025",
    "Redazione documento di Valutazione capitolati", "Elia Ernesto Stellin, Siria Salvalaio", "28/10/2025",
  ),
)

= Conclusioni
Il gruppo ha stabilito che si terrà una riunione interna il giorno *27/10/2025* alle ore *16:30* per valutare lo stato di completamento delle task assegnate. \
Inoltre verrà effettuata una discussione di gruppo riguardo il contenuto dei documenti *Dichiarazione impegni e preventivo costi* e *Valutazione capitolati*.
