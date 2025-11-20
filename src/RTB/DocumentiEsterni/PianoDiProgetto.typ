#import "../../Templates/templateDocumentiGenerici.typ": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show table: it => block(breakable: false, it)

#show: report.with(
  titolo: "Piano di Progetto",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    ("0.0.1", "17/11/2025", "Alessandro Dinato", "-", "Bozza Piano di Progetto"),
  ),
  distribuzione: (
    "GlitchHub Team",
    "M31 S.r.L.",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Piano di Progetto",
)

= Introduzione
== Obiettivi del documento
Il #gloss[Piano di Progetto] ha lo scopo di definire in modo chiaro e strutturato le attività necessarie alla realizzazione del progetto, stabilendo risorse, modalità operative e tempistiche di sviluppo. \
Il documento fornisce una visione complessiva e continuamente aggiornata dell'avanzamento del progetto didattico, consentendo al gruppo di pianificare, assegnare e monitorare le attività definite all'interno di ogni #gloss[sprint].

Un aspetto fondamentale del documento è l'analisi dei rischi attesi, accompagnata dalle relative strategie di mitigazione, così da ridurre l'incertezza e migliorare la capacità del gruppo di rispondere a imprevisti tecnologici, organizzativi e personali.
Il documento riporta, inoltre, il calendario di massima del progetto, la stima dei costi complessivi e l'impegno orario previsto per ogni ruolo, i quali sono stati definiti in fase di *Candidatura*.

Poiché il gruppo ha deciso di adottare un metodo di sviluppo #gloss[Agile], al termine di ogni sprint vengono aggiornati il #gloss[consuntivo di periodo], l'analisi dei rischi occorsi e il #gloss[preventivo a finire]; il tutto analizzato nella #gloss[sprint retrospective] settimanale. \
Ciò permette di rivedere costantemente la pianificazione delle attività, migliorare i processi tramite retrospettive periodiche e mantenere una stima realistica del completamento finale.
== Glossario
Il #link("https://glitchhub-team.github.io/pdf/glossary.pdf")[*glossario*] è un documento redatto dal gruppo e che verrà aggiornato nell'arco del progetto didattico con lo scopo di fornire definizioni consistenti per termini tecnici e relativi al corso di Ingegneria del Software.

Questo documento è fondamentalmente per far comprendere la documentazione prodotta ai lettori esterni dal gruppo e per fissare una definizione interna al gruppo così da ridurre le ambiguità interpretative.

Al fine di specificare se la definizione di una parola o di un concetto è disponibile è stato deciso di utilizzare la seguente notazione:
#gloss[definizione nel glossario].
== Riferimenti

=== Riferimenti normativi

=== Riferimenti informativi

= Analisi e mitigazione dei rischi
Questa sezione si occupa di analizzare gli eventuali rischi e difficoltà che il gruppo potrebbe incontrare durante lo svolgimento del progetto didattico.\
Realizzare un'ottima analisi permette di prevenire dissidi interni, ritardi nelle scadenze, l'aumento dei costi di produzione e la realizzazione di un prodotto difettoso.

L'analisi dei rischi deve avvenire passando attraverso 4 fasi:
- *Identificazione*: consiste nel riconoscere i possibili rischi legati al progetto, al prodotto e al mercato, individuando tutto ciò che potrebbe causare problemi durante lo sviluppo;
- *Analisi*: per ogni rischio identificato si valuta quanto è probabile che accada e quali conseguenze potrebbe comportare sul lavoro del gruppo e sul prodotto;
- *Pianificazione*: consiste nel prevenire i rischi oppure come ridurne l'impatto, stabilendo in anticipo le azioni da intraprendere in caso si verifichino;
- *Controllo*: prevede un monitoraggio continuo attraverso indicatori che segnalano eventuali problemi, l'attuazione delle strategie di mitigazione e il miglioramento costante #gloss[way of working].

In seguito sono riportati i rischi individuati dal gruppo con la rispettiva analisi e strategia di mitigazione. \
I rischi sono codificati con l'acronimo della tipologia del rischio a cui appartengono e un numero incrementale.


== Rischi tecnologici
=== Apprendimento delle nuove tecnologie
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RT1],
  [*Nome*], [Apprendimento delle nuove tecnologie],
  [*Descrizione*],
  [
    Il gruppo potrebbe incontrare difficoltà nell'utilizzo e nella comprensione delle tecnologie richieste dal progetto, rallentando lo sviluppo e causando blocchi imprevisti. \
    Il capitolato aggiudicato, inoltre, richiede molteplici tecnologie sconosciute ai componenti del gruppo.
  ],

  [*Misure di mitigazione*],
  [
    Una volta stabilite le tecnologie da utilizzare nel progetto, è fondamentale cominciare la fase di studio il prima possibile.
    Tuttavia delle lacune potrebbero sorgere durante il progetto, il gruppo opererà nel seguente modo:
    - Se tutti i membri riscontrano gravi difficoltà nella comprensione della tecnologia si fisserà un colloquio con _M31_ richiedendo chiarimenti;
    - Se qualche membro riscontra difficoltà nell'apprendere una o più tecnologie i componenti del gruppo che hanno una comprensione maggiore provvederanno ad aiutare il componente in difficoltà. \
    Ciò viene fatto con lo scopo far avanzare il gruppo, omogeneamente, sullo stesso livello di conoscenza. \
    L'allineamento può avvenire attraverso spiegazioni individuali o attraverso _lezioni_ rivolte a tutto il gruppo e svolte da un componente.

  ],

  [*Occorrenza*], [Alta],
  [*Impatto*], [Medio],
)

=== Problematiche nello sviluppo software
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RT2],
  [*Nome*], [Problematiche nello sviluppo software],
  [*Descrizione*],
  [
    Il gruppo potrebbe incontrare difficoltà nello sviluppo software riguardanti il #gloss[PoC] o l'#gloss[MVP] dovuti a bug di programmazione o, peggio, errori di design.
    Questa problematica risulta nel rallentamento delle attività e ostacola i raggiungimenti degli obiettivi.
  ],

  [*Misure di mitigazione*],
  [
    Il gruppo è consapevole che gli errori di programmazione sono difficili da evitare, soprattutto considerando la scarsa esperienza dei componenti. \
    Perciò il gruppo si impegna ad adottare un approccio #gloss[fail fast], ovvero far si che i bug software si possano trovare il prima possibile, ciò è possibile attraverso una scrittura dei test corretti e il mantenimento di un'altra #gloss[code coverage]. \
    Inoltre il componente che incontrerà questa problematica avrà sempre a disposizione il supporto degli altri membri ed eventualmente di _M31_.
  ],

  [*Occorrenza*], [Da definire],
  [*Impatto*], [Da definire],
)

// TO FIX
== Rischi organizzativi
=== Mancato rispetto delle scadenze prefissate
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RO1],
  [*Nome*], [Mancato rispetto delle scadenze prefissate],
  [*Descrizione*],
  [
    Durante lo svolgimento delle attività è prevista la presenza di ritardi nello svolgimento delle attività, i quali rischiano di far allungare i tempi di consegna e bloccare le attività successive.
  ],

  [*Misure di mitigazione*],
  [I ritardi nello svolgimento delle attività sono considerati possibili nel corso del progetto, assumendo che ogni membro del gruppo faccia tutto il necessario per evitarli. \
    Devono essere adeguatamente giustificati e non devono ostacolare o bloccare il lavoro degli altri componenti. \
    Qualora un membro riscontri un ritardo, ha il dovere di comunicarlo tempestivamente agli altri, affinché il gruppo possa riorganizzarsi rapidamente in funzione della specifica attività coinvolta e minimizzare l'impatto del ritardo sulle altre attività.
  ],

  [*Occorrenza*], [Media],
  [*Impatto*], [Alto],
)

=== Errata organizzazione e distribuzione delle risorse
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RO2],
  [*Nome*], [Errata organizzazione e distribuzione delle risorse],
  [*Descrizione*],
  [
    La suddivisione del carico di lavoro potrebbe essere errata a causa dell'inesperienza del gruppo, causando sovraccarichi e, di conseguenza, rallentamenti.
  ],

  [*Misure di mitigazione*],
  [
    È possibile che il carico di lavoro venga distribuito in modo non omogeneo. Tuttavia tali situazioni possono essere corrette rapidamente discutendone nella riunione successiva, riallineando le attività e ridefinendo in maniera chiara le responsabilità.
    Per affrontare efficacemente questo tipo di problema, il gruppo ha scelto fin dalle prime fasi del progetto, di fissare la durata dello #gloss[sprint] a una settimana, così da poter adattare tempestivamente la pianificazione e intervenire rapidamente in caso di squilibri.
  ],

  [*Occorrenza*], [Bassa],
  [*Impatto*], [Medio],
)

=== Incomprensione dei requisiti
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RO3],
  [*Nome*], [Incomprensione dei requisiti],
  [*Descrizione*],
  [
    Un coinvolgimento insufficiente del cliente potrebbe portare a incomprensioni sui requisiti e a implementazioni errate.
  ],

  [*Misure di mitigazione*],
  [
    Il gruppo si impegna a mantenere una comunicazione costante con il cliente, presentando regolarmente lo stato di avanzamento e chiarendo tempestivamente eventuali dubbi. \
    Inoltre, _M31_ si è sempre dimostrata chiara e disponibile nel fornire spiegazioni e approfondimenti sul capitolato. \
    Per garantire un allineamento continuo ed evitare fraintendimenti, il gruppo e _M31_ hanno concordato di incontrarsi ogni due settimane per una review del lavoro svolto, così da assicurare che lo sviluppo proceda in linea con le aspettative del cliente.
  ],

  [*Occorrenza*], [Bassa],
  [*Impatto*], [Alto],
)

=== Presenza di opinioni contrastanti
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RO4],
  [*Nome*], [Presenza di opinioni contrastanti],
  [*Descrizione*],
  [
    All'interno del gruppo la presenza di opinioni contrastanti è un aspetto positivo con lo scopo di incentivare il confronto e il raggiungimento della miglior soluzione possibile.
    Tuttavia, ciò diventa negativo quando genera contrasti e dissidi tra i componenti.
  ],

  [*Misure di mitigazione*],
  [
    Il gruppo si impegna a confrontarsi in modo trasparente e costruttivo, con l'obiettivo di raggiungere una soluzione condivisa. \
    Qualora non fosse possibile trovare un accordo interno, si farà riferimento a un parere esterno del committente o del cliente.
  ],

  [*Occorrenza*], [Media],
  [*Impatto*], [Basso],
)

== Rischi personali
=== Problemi personali o accademici
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RP1],
  [*Nome*], [Problemi personali o accademici],
  [*Descrizione*],
  [
    Eventuali impegni personali o sovraccarichi accademici potrebbero influire sulla disponibilità dei membri del gruppo, causando ritardi nelle consegne.
  ],

  [*Misure di mitigazione*],
  [
    Il gruppo è consapevole che, durante il periodo di progetto, la disponibilità dei membri potrà variare a causa di impegni personali o accademici.\
    Fin dall'inizio sono stati individuati i periodi di inattività dei diversi componenti, e per gestirli sarà necessario prevedere buffer temporali, favorire una comunicazione trasparente e assegnare ruoli e attività in modo flessibile in base alla disponibilità di ciascun membro. \
    I dettagli sui periodi di inattività, comprensivi di vacanze e sessioni di studio, sono disponibili nel documento #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[Dichiarazione degli Impegni].
  ],

  [*Occorrenza*], [Media],
  [*Impatto*], [Medio],
)

=== Dissidi interni
#table(
  columns: (0.25fr, 0.75fr),
  align: left,
  stroke: (x, y) => (
    right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
    top: if y > 1 { 0.7pt } else { 0pt },
    bottom: if y < 5 { 0.7pt } else { 0pt },
  ),
  [], [],
  [*ID*], [RP2],
  [*Nome*], [Dissidi interni],
  [*Descrizione*],
  [
    Il gruppo è formato da persone con personalità, approcci lavorativi e motivazioni differenti. \
    Queste diversità, se non gestite correttamente, possono aumentare la probabilità che emergano dissidi di varia natura.
  ],

  [*Misure di mitigazione*],
  [
    Ogni dissidio deve essere affrontato tempestivamente, evitando che si accumulino malumori, e discusso privatamente con le persone direttamente coinvolte. \
    Le discussioni vanno gestite senza coinvolgere i membri non interessati, così da prevenire inutili tensioni all'interno del gruppo.
  ],

  [*Occorrenza*], [Bassa],
  [*Impatto*], [Medio],
)

= Calendario di massima del progetto
Il gruppo si impegna a presentare la candidatura per la #gloss[Requirements and Technology Baseline] entro il XX-XX-XXXX.\
Inoltre, come descritto nella #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[Dichiarazione degli Impegni], _GlitchHub Team_ si impegna a terminare il progetto entro il giorno *27 marzo 2026*, senza alcuna possibilità di deroga.


= Impegno orario previsto
Il gruppo ha deciso di dedicare un totale di *93 ore produttive* per ogni componente, le quali verranno distribuite tra i diversi ruoli.
== Tabella suddivisione ore produttive per componente e ruolo
Nella tabella di conteggio ore verranno utilizzati degli acronimi per descrivere i singoli ruoli.
- *Resp* = Responsabile
- *Amm* = Amministratore
- *Verif* = Verificatore
- *Analist* = Analista
- *Progett* = Progettista
- *Programm* = Programmatore
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "8", "7", "10", "21", "24", "23", [*93*],
  "Alessandro Dinato", "7", "8", "10", "21", "23", "24", [*93*],
  "Michele Dioli", "8", "7", "10", "21", "24", "23", [*93*],
  "Hossam Ezzemouri", "7", "8", "10", "20", "24", "24", [*93*],
  "Riccardo Graziani", "8", "8", "10", "20", "23", "24", [*93*],
  "Siria Salvalaio", "8", "8", "9", "21", "24", "23", [*93*],
  "Elia Ernesto Stellin", "8", "8", "9", "21", "23", "24", [*93*],
  table.footer([*Totale*], [*54*], [*54*], [*68*], [*145*], [*165*], [*165*], [*651*]),
)
== Grafico a torta della suddivisione oraria
#let ore = (
  ("Responsabile", 54),
  ("Amministratore", 54),
  ("Analista", 68),
  ("Progettista", 145),
  ("Programmatore", 165),
  ("Verificatore", 165),
)

#align(center)[
  #figure.with(numbering: none)(
    caption: "Il grafico a torta contiene le ore produttive complessive per ogni ruolo",
  )[
    #cetz.canvas({
      let colors = gradient.linear(
        rgb(153, 72, 188),
        rgb("#19e0d9"),
        rgb(84, 101, 255),
      )

      chart.piechart(
        ore,
        value-key: 1,
        label-key: 0,
        radius: 4,
        stroke: none,
        slice-style: colors,
        inner-radius: 0.7,
        // Label interne con ore
        inner-label: (
          content: (value, label) => [#text(white, weight: "bold", str(value) + "h")],
          radius: 110%,
        ),
        // Label esterne con linee di connessione
        outer-label: (
          content: (value, label) => [
            #box(
              fill: white,
              outset: 3pt,
              radius: 3pt,
              stroke: 0.5pt + luma(200),
              text(black, size: 0.85em, weight: "medium", label),
            )
          ],
          radius: 110%,
        ),
        // Abilita le linee di connessione
        outer-label-line: (
          stroke: 1pt + luma(150),
          mark: (end: ">", size: 0.15),
        ),
        legend: (label: none),
      )
    })
  ]
]

= Stima dei costi di realizzazione
Il preventivo dei costi è calcolato moltiplicando le ore assegnate a ciascun ruolo per il relativo costo orario.\
== Tabella suddivisione ore e costi
#table(
  columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
  "Responsabile", "54", "30 €/h", "1620 €",
  "Amministratore", "54", "20 €/h", "1080 €",
  "Analista", "68", "25 €/h", "1700 €",
  "Progettista", "145", "25 €/h", "3625 €",
  "Programmatore", "165", "15 €/h", "2475 €",
  "Verificatore", "165", "15 €/h", "2475 €",
  table.footer([*Totale*], [*651*], [-], [*12975 €*]),
)
== Grafico a torta dei costi progettuali
#let costi = (
  ("Responsabile", 1620),
  ("Amministratore", 1080),
  ("Analista", 1700),
  ("Progettista", 3625),
  ("Programmatore", 2475),
  ("Verificatore", 2475),
)

#align(center)[
  #figure.with(numbering: none)(
    caption: "Il grafico a torta contiene le ore complessive per ogni ruolo",
  )[
    #cetz.canvas({
      let colors = gradient.linear(
        rgb(153, 72, 188),
        rgb("#19e0d9"),
        rgb(84, 101, 255),
      )

      chart.piechart(
        costi,
        value-key: 1,
        label-key: 0,
        radius: 4,
        stroke: none,
        slice-style: colors,
        inner-radius: 0.7,
        // Label interne con ore
        inner-label: (
          content: (value, label) => [#text(white, weight: "bold", str(value) + " €")],
          radius: 100%,
        ),
        // Label esterne con linee di connessione
        outer-label: (
          content: (value, label) => [
            #box(
              fill: white,
              outset: 3pt,
              radius: 3pt,
              stroke: 0.5pt + luma(200),
              text(black, size: 0.85em, weight: "medium", label),
            )
          ],
          radius: 110%,
        ),
        // Abilita le linee di connessione
        outer-label-line: (
          stroke: 1pt + luma(150),
          mark: (end: ">", size: 0.15),
        ),
        legend: (label: none),
      )
    })
  ]
]

= Pianificazione attività RTB
== Introduzione
La #gloss[RTB] è una fase in cui si fissano i requisiti da soddisfare e si motivano le tecnologie, i framework e le librerie scelte. \
Inoltre, è necessario produrre un artefatto, chiamato #gloss[PoC], il quale ha lo scopo di valutare la fattibilità tecnologica del prodotto atteso secondo le scelte implementative fatte.
== Attività pianificate

= Pianificazione e Analisi Sprint per RTB

La sezione dedicata alla *Pianificazione e Analisi degli Sprint per la RTB* descrive come il gruppo organizza, monitora e valuta il lavoro svolto durante ciascuno sprint. \
Ogni sprint viene analizzato attraverso un #gloss[consuntivo di periodo], nel quale vengono confrontati l'avanzamento atteso e quello effettivamente conseguito, riportando le attività svolte, gli eventuali scostamenti e i rischi occorsi, con il relativo impatto e le azioni di mitigazione adottate.

Al termine di ogni sprint viene, inoltre, aggiornato il #gloss[preventivo a finire], includendo la retrospettiva di periodo per identificare come migliorare in futuro e la revisione del calendario rimanente con l'aggiornamento della stima dei costi finali.
== Sprint 1
Inizio: 12/11/2025 \
Fine: 19/11/2025 \

Questo primo sprint ha lo scopo di avviare le stesura dei documenti #gloss[Piano di Progetto], #gloss[Analisi dei Requisiti] e #gloss[Norme di Progetto].

=== Consuntivo di periodo
==== Attività da svolgere
Il gruppo ha individuato le seguenti attività da svolgere:
- Stesura *Piano di Progetto*;
- Stesura *Analisi dei Requisiti*, concentrandosi sui casi d'uso;
- Stesura *Norme di Progetto*;
- Redazione e invio del verbale esterno relativo all'incontro con _M31_ del 13/11/2025
==== Preventivo risorse da utilizzare
#table(
  columns: (0.20fr, 0.10fr, 0.12fr, 0.10fr, 0.12fr, 0.12fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Respons*], [*Amministr*], [*Analista*], [*Progettista*], [*Program*], [*Verific*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "1",
  "Alessandro Dinato", "-", "-", "3", "-", "-", "-",
  "Michele Dioli", "2", "-", "-", "-", "-", "-",
  "Hossam Ezzemouri", "-", "-", "3", "-", "-", "-",
  "Riccardo Graziani", "-", "-", "3", "-", "-", "-",
  "Siria Salvalaio", "-", "-", "-", "-", "-", "1",
  "Elia Ernesto Stellin", "-", "-", "3", "-", "-", "-",
  table.footer([*Totale*], [*2*], [*-*], [*12*], [*-*], [*-*], [*2*]),
)
==== Grafico a torta della suddivisione oraria prevista
#let ore = (
  ("Analista", 12),
  ("Responsabile", 2),
  //("Amministratore", 0),
  //("Progettista", 145),
  //("Programmatore", 165),
  ("Verificatore", 2),
)

#align(center)[
  #figure.with(numbering: none)(
    caption: "Il grafico a torta contiene le ore produttive complessive per ogni ruolo",
  )[
    #cetz.canvas({
      let colors = gradient.linear(
        rgb(153, 72, 188),
        rgb("#19e0d9"),
        rgb(84, 101, 255),
      )

      chart.piechart(
        ore,
        value-key: 1,
        label-key: 0,
        radius: 2.5,
        stroke: none,
        slice-style: colors,
        inner-radius: 0.5,
        // Label interne con ore
        inner-label: (
          content: (value, label) => [#text(white, weight: "bold", str(value) + "h")],
          radius: 90%,
        ),
        // Label esterne con linee di connessione
        outer-label: (
          content: (value, label) => [
            #box(
              fill: white,
              outset: 3pt,
              radius: 3pt,
              stroke: 0.5pt + luma(200),
              text(black, size: 0.85em, weight: "medium", label),
            )
          ],
          radius: 110%,
        ),
        // Abilita le linee di connessione
        outer-label-line: (
          stroke: 1pt + luma(150),
          mark: (end: ">", size: 0.15),
        ),
        legend: (label: none),
      )
    })
  ]
]
==== Attività svolte
Il gruppo ha svolto con successo le seguenti attività:
-
==== Risorse utilizzate
#table(
  columns: (0.20fr, 0.10fr, 0.12fr, 0.10fr, 0.12fr, 0.12fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Respons*], [*Amministr*], [*Analista*], [*Progettista*], [*Program*], [*Verific*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "1",
  "Alessandro Dinato", "-", "-", "3", "-", "-", "-",
  "Michele Dioli", "2", "-", "-", "-", "-", "-",
  "Hossam Ezzemouri", "-", "-", "3", "-", "-", "-",
  "Riccardo Graziani", "-", "-", "3", "-", "-", "-",
  "Siria Salvalaio", "-", "-", "-", "-", "-", "1",
  "Elia Ernesto Stellin", "-", "-", "3 -> 2", "-", "-", "-",
  table.footer([*Totale*], [*2*], [*-*], [*12*], [*-*], [*-*], [*2*]),
)
==== Grafico a torta della suddivisione oraria prevista
#let ore = (
  ("Analista", 12),
  ("Responsabile", 2),
  //("Amministratore", 0),
  //("Progettista", 145),
  //("Programmatore", 165),
  ("Verificatore", 2),
)

#align(center)[
  #figure.with(numbering: none)(
    caption: "Il grafico a torta contiene le ore produttive complessive per ogni ruolo",
  )[
    #cetz.canvas({
      let colors = gradient.linear(
        rgb(153, 72, 188),
        rgb("#19e0d9"),
        rgb(84, 101, 255),
      )

      chart.piechart(
        ore,
        value-key: 1,
        label-key: 0,
        radius: 2.5,
        stroke: none,
        slice-style: colors,
        inner-radius: 0.5,
        // Label interne con ore
        inner-label: (
          content: (value, label) => [#text(white, weight: "bold", str(value) + "h")],
          radius: 90%,
        ),
        // Label esterne con linee di connessione
        outer-label: (
          content: (value, label) => [
            #box(
              fill: white,
              outset: 3pt,
              radius: 3pt,
              stroke: 0.5pt + luma(200),
              text(black, size: 0.85em, weight: "medium", label),
            )
          ],
          radius: 110%,
        ),
        // Abilita le linee di connessione
        outer-label-line: (
          stroke: 1pt + luma(150),
          mark: (end: ">", size: 0.15),
        ),
        legend: (label: none),
      )
    })
  ]
]

==== Rischi occorsi
Rischi occorsi, impatto, mitigazione
=== Preventivo a finire

==== Retrospettiva

==== Aggiornamento ore rimanenti

==== Aggiornamento costi

== Sprint 2






