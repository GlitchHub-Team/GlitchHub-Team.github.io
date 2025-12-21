#import "../../Templates/templateDocumentiGenerici.typ": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show table: it => block(breakable: false, it)

#show: report.with(
  titolo: "Piano di Progetto",
  stato: "Verificato",
  versione: "0.3.1",
  registro-modifiche: (
    (
      "0.3.1",
      "08/12/2025",
      "Alessandro Dinato",
      "Hossam Ezzemouri",
      "Correzione piccoli errori",
    ),
    (
      "0.3.0",
      "04/12/2025",
      "Alessandro Dinato",
      "Hossam Ezzemouri",
      "Stesura per sprint 3",
    ),
    (
      "0.2.0",
      "27/11/2025",
      "Alessandro Dinato",
      "Hossam Ezzemouri",
      "Stesura per sprint 2",
    ),
    (
      "0.1.1",
      "24/11/2025",
      "Alessandro Dinato",
      "Siria Salvalaio",
      "Correzione piccoli errori",
    ),
    (
      "0.1.0",
      "22/11/2025",
      "Alessandro Dinato",
      "Siria Salvalaio",
      "Compilazione Sprint 1, preventivo Sprint 2, pianificazione attività RTB",
    ),
    ("0.0.1", "17/11/2025", "Alessandro Dinato", "Siria Salvalaio", "Bozza Piano di Progetto"),
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

#let graficoTorta = (caption, data) => {
  align(center)[
    #figure.with(numbering: none)(
      caption: caption,
    )[
      #cetz.canvas({
        let colors = gradient.linear(
          rgb(153, 72, 188),
          rgb("#19e0d9"),
          rgb(84, 101, 255),
        )

        chart.piechart(
          data,
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
}

= Introduzione
== Obiettivi del documento
Il #gloss[Piano di Progetto] ha lo scopo di definire in modo chiaro e strutturato le attività necessarie alla realizzazione del progetto, stabilendone risorse, modalità operative e tempistiche di sviluppo. \
Il documento fornisce una visione complessiva e costantemente aggiornata dell'avanzamento del progetto didattico, consentendo al gruppo di pianificare, assegnare e monitorare le attività definite all'interno di ogni #gloss[sprint].

Un aspetto fondamentale del documento è l'analisi dei rischi attesi, accompagnata dalle relative strategie di mitigazione, con l'obiettivo di ridurre l'incertezza e migliorare la capacità del gruppo di affrontare imprevisti tecnologici, organizzativi e/o personali.
Il documento include inoltre il calendario di massima del progetto, la stima dei costi complessivi e l'impegno orario previsto per ogni ruolo, i quali sono stati definiti in fase di *Candidatura*.

Poiché il gruppo ha deciso di adottare un approccio di sviluppo #gloss[Agile], al termine di ogni #gloss[sprint] vengono aggiornati il #gloss[consuntivo di periodo], l'analisi dei rischi effettivamente occorsi e il #gloss[preventivo a finire] dello #gloss[sprint] successivo, i quali vengono analizzati durante lo #gloss[sprint retrospective] settimanale. \
Questo processo permette di rivedere costantemente la pianificazione delle attività, migliorare i processi tramite retrospettive periodiche e mantenere una stima realistica del completamento finale.

== Glossario
Il #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/glossary.pdf")[*glossario*] è un documento redatto dal gruppo e aggiornato nell'arco del progetto didattico, con lo scopo di fornire definizioni coerenti per i termini tecnici e quelli specifici relativi al corso di Ingegneria del Software.

Questo documento è fondamentale per garantire una comprensione uniforme della documentazione prodotta ai lettori esterni dal gruppo e per definire un riferimento interno al gruppo, riducendo possibili ambiguità interpretative.

Per indicare che la definizione di una parola o di un concetto è disponibile, si è deciso di utilizzare la seguente notazione:
#gloss[definizione nel glossario].

== Riferimenti
=== Riferimenti normativi
- #gloss[Capitolato d'appalto] C7: #link("#gloss[https]://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf") \
  *Ultimo accesso: 22/11/2025*
//- #gloss[Norme di Progetto]: #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/#gloss[RTB]/DocumentiInterni/NormeProgetto.pdf")[#gloss[Norme di Progetto]] \
// *Versione: 1.0.0*

=== Riferimenti informativi
- Regolamento del Progetto Didattico: #link("#gloss[https]://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf") \
  *Ultimo accesso: 22/11/2025* //scriviamo ultimo accesso o ultima modifica?
- Il #gloss[ciclo di vita] del Software: #link("#gloss[https]://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T03.pdf") \
  *Ultimo accesso: 22/11/2025*
- Gestione di progetto: #link("#gloss[https]://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf") \
  *Ultimo accesso: 22/11/2025*


= Analisi e mitigazione dei rischi
Questa sezione analizza i potenziali rischi e le difficoltà che il gruppo potrebbe incontrare durante lo svolgimento del progetto didattico.\
Realizzare un'ottima analisi preventiva consente di evitare conflitti interni, ritardi nelle scadenze, aumento dei costi di produzione e, soprattutto, la realizzazione di un prodotto non conforme agli obiettivi.

L'analisi dei rischi si articola in quattro fasi principali:
- *Identificazione*: individuare i possibili rischi legati al progetto, al prodotto e al contesto di riferimento, riconoscendo tutto #gloss[ci]ò che potrebbe compromettere lo sviluppo;
- *Analisi*: per ciascun rischio identificato si valuta la probabilità di occorrenza e l'impatto che potenziale sul lavoro del gruppo e sul prodotto finale;
- *Pianificazione*: definizione delle strategie di prevenzione o mitigazione, stabilendo in anticipo le azioni da intraprendere in caso in cui il rischio si verifichi;
- *Controllo*: monitoraggio continuo attraverso indicatori che segnalano eventuali problemi, l'attuazione delle strategie di mitigazione e il miglioramento costante del #gloss[way of working].

Di seguito sono riportati i rischi individuati dal gruppo, accompagnati dalla rispettiva analisi e dalle strategie di mitigazione. \
Ogni rischio è identificato tramite un codice composto dall'acronimo della sua tipologia e da un numero incrementale.


== Rischi tecnologici
=== Apprendimento delle nuove tecnologie <RT1>
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
    Il capitolato aggiudicato, inoltre, richiede l'impiego di diverse tecnologie non ancora conosciute ai componenti del gruppo.
  ],

  [*Misure di mitigazione*],
  [
    Una volta stabilite le tecnologie da utilizzare nel progetto, è fondamentale avviare la fase di studio il prima possibile.
    Poiché durante il progetto potrebbero comunque emergere delle lacune, il gruppo adotterà le seguenti misure:
    - Se tutti i membri riscontrano gravi difficoltà nella comprensione di una tecnologia si organizzerà un colloquio con _M31_ per richiedere chiarimenti;
    - Se solo alcuni membri riscontrano difficoltà nell'apprendimento, i componenti del gruppo con una maggiore padronanza della tecnologia forniranno supporto a chi è in difficoltà. \
    L'obiettivo è garantire un avanzamento omogeneo del gruppo, mantenendo lo stesso livello di conoscenza. \
    L'allineamento può avvenire attraverso spiegazioni individuali o attraverso _lezioni interne_ rivolte a tutto il gruppo condotte da un componente.

  ],

  [*Occorrenza*], [Alta],
  [*Impatto*], [Medio],
)

=== Problematiche nello sviluppo software <RT2>
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
    Il gruppo potrebbe incontrare difficoltà nello sviluppo software del #gloss[PoC] o l'#gloss[MVP], dovute a bug di programmazione o, nei casi più gravi, a errori di design.
    Queste problematiche possono rallentare significativamente le attività e ostacolare il raggiungimento degli obiettivi.
  ],

  [*Misure di mitigazione*],
  [
    Il gruppo è consapevole che gli errori di programmazione sono difficili da evitare, soprattutto considerando la limitata esperienza dei componenti. \
    Per questo motivo verrà adottato un approccio #gloss[fail fast], volto ad individuare i bug software il prima possibile tramite:
    - Scrittura dei test corretti e aggiornati;
    - Mantenimento di un'elevata #gloss[code coverage]. \
    Il membro che dovesse incontrare questa problematica potrà sempre contare sul supporto degli altri membri ed eventualmente del contributo di _M31_.
  ],

  [*Occorrenza*], [Da definire],
  [*Impatto*], [Da definire],
)

== Rischi organizzativi
=== Mancato rispetto delle scadenze prefissate <RO1>
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
    Durante lo svolgimento delle attività possono verificarsi ritardi nello svolgimento delle attività, i quali rischiano di prolungare i tempi di consegna e bloccare le attività successive.
  ],

  [*Misure di mitigazione*],
  [
    I ritardi sono considerati eventi possibili nel corso del progetto, pur assumendo che ogni membro del gruppo faccia il necessario per evitarli. \
    Essi devono essere adeguatamente giustificati e non devono compromettere o interrompere il lavoro degli altri componenti. \
    Qualora un membro preveda o riscontri un ritardo, è tenuto a comunicarlo tempestivamente al gruppo, in modo da consentire una rapida riorganizzazione delle attività coinvolte e minimizzare l'impatto del ritardo sulle altre attività.
  ],

  [*Occorrenza*], [Media],
  [*Impatto*], [Alto],
)

=== Errata organizzazione e distribuzione delle risorse <RO2>
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
    La suddivisione del carico di lavoro potrebbe risultare non adeguata a causa dell'inesperienza del gruppo, causando sovraccarichi per alcuni membri e, di conseguenza, rallentamenti nelle attività.
  ],

  [*Misure di mitigazione*],
  [
    È possibile che il carico di lavoro venga distribuito in modo non omogeneo. Tuttavia tali situazioni possono essere corrette rapidamente discutendone nella riunione successiva, riallineando le attività e ridefinendo in maniera chiara le responsabilità.
    Per prevenire e gestire efficacemente questo tipo di problema, il gruppo ha scelto sin dalle prime fasi del progetto, di fissare la durata dello #gloss[sprint] a una settimana, così da poter adattare tempestivamente la pianificazione e intervenire rapidamente in caso di squilibri nella distribuzione del lavoro.
  ],

  [*Occorrenza*], [Bassa],
  [*Impatto*], [Medio],
)

=== Incomprensione dei requisiti <RO3>
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

=== Presenza di opinioni contrastanti <RO4>
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
    All'interno del gruppo, la presenza di opinioni differenti è un aspetto positivo, poiché incentiva il confronto e contribuisce al raggiungimento della miglior soluzione possibile.
    Tuttavia, questo aspetto può diventare critico quando genera contrasti e dissidi tra i componenti.
  ],

  [*Misure di mitigazione*],
  [
    Il gruppo si impegna a confrontarsi in modo trasparente e costruttivo, con l'obiettivo di raggiungere soluzioni condivise. \
    Qualora non fosse possibile trovare un accordo interno, si farà riferimento a un parere esterno del #gloss[committente] o del cliente.
  ],

  [*Occorrenza*], [Media],
  [*Impatto*], [Basso],
)

== Rischi personali
=== Problemi personali o accademici <RP1>
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
    Il gruppo è consapevole che, durante il periodo di progetto, la disponibilità dei membri potrà variare a causa di esigenze personali o accademiche.\
    Fin dall'inizio sono stati individuati i periodi di inattività dei diversi componenti. Per gestire efficacemente tali situazioni sarà necessario:
    - Prevedere adeguati buffer temporali nelle pianificazioni;
    - Mantenere una comunicazione trasparente riguardo a possibili variazioni di disponibilità;
    - Assegnare ruoli e attività in modo flessibile, adattandoli alle esigenze e ai carichi di ciascun membro. \
    I dettagli relativi ai periodi di inattività, comprensivi di vacanze, sessioni di studio ed eventuali altri impegni rilevanti, sono disponibili nel documento #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[#gloss[Dichiarazione degli Impegni]].
  ],

  [*Occorrenza*], [Media],
  [*Impatto*], [Medio],
)

=== Dissidi interni <RP2>
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
    Il gruppo è formato da persone con personalità, approcci lavorativi e livelli di motivazione differenti. \
    Queste diversità, se non gestite correttamente, possono aumentare la probabilità che emergano tensioni di varia natura.
  ],

  [*Misure di mitigazione*],
  [
    Ogni dissidio deve essere affrontato tempestivamente, evitando che si accumulino malumori. Le questioni vanno discusse privatamente con le persone direttamente coinvolte, così da favorire un confronto sereno e mirato. \
    Le discussioni devono essere gestite senza coinvolgere i membri non interessati, prevenendo così inutili tensioni all'interno del gruppo e preservando un ambiente di lavoro collaborativo.
  ],

  [*Occorrenza*], [Bassa],
  [*Impatto*], [Medio],
)

= Calendario di massima del progetto
//ricordarsi di modificare la data
Il gruppo si impegna a presentare la candidatura per la #gloss[Requirements and Technology Baseline] entro il XX-XX-XXXX.\
Inoltre, come descritto nella #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[#gloss[Dichiarazione degli Impegni]], _GlitchHub Team_ si impegna a terminare il progetto entro il giorno *27 marzo 2026*, senza alcuna possibilità di deroga.

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
#align(center)[
  #figure.with(numbering: none)(
    caption: "Il grafico a torta contiene le ore produttive complessive per ogni ruolo",
  )[
    #let ore = (
      ("Responsabile", 54),
      ("Amministratore", 54),
      ("Analista", 68),
      ("Progettista", 145),
      ("Programmatore", 165),
      ("Verificatore", 165),
    )

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
#align(center)[
  #figure.with(numbering: none)(
    caption: "Il grafico a torta contiene le ore complessive per ogni ruolo",
  )[
    #let costi = (
      ("Responsabile", 1620),
      ("Amministratore", 1080),
      ("Analista", 1700),
      ("Progettista", 3625),
      ("Programmatore", 2475),
      ("Verificatore", 2475),
    )

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
La #gloss[RTB] è una fase in cui vengono fissati i requisiti da soddisfare e si motivano le tecnologie, i #gloss[framework] e le librerie scelte. \
Inoltre, è necessario produrre un artefatto, chiamato #gloss[PoC], il quale ha lo scopo di valutare la fattibilità tecnologica del prodotto atteso secondo le scelte implementative fatte.

== Stesura Analisi dei Requisiti
//TODO

== Stesura Piano di Progetto
Il #gloss[Piano di Progetto] definisce in modo chiaro e strutturato tutte le attività necessarie alla realizzazione del progetto, stabilendo risorse, modalità operative e tempistiche di sviluppo. \
Per completare il documento sono richieste le seguenti attività:
- Redazione dell'introduzione;
- Analisi e mitigazione dei rischi;
- Stima delle tempistiche di consegna, dei costi e delle risorse impiegate;
- Pianificazione a lungo termine delle attività previste per la #gloss[RTB];
- Analisi dettagliata dei singoli #gloss[sprint].

Il documento verrà redatto e aggiornato nel corso di tutti gli #gloss[sprint], poiché ha il compito di rendicontarne l'avanzamento. \
Le stime relative ai costi e alla data di consegna potranno essere aggiornate qualora emergano nuove informazioni o si rilevino previsioni non accurate. \
Allo stesso modo, l'analisi dei rischi e le relative strategie di mitigazione dovranno essere riviste ogni volta che un rischio si presenta, trattandosi di un processo continuo e non limitato alla fase iniziale.


== Stesura Norme di Progetto
//TODO

== Stesura Piano di Qualifica
//TODO

== Stesura Glossario
Il *glossario* ha lo scopo di facilitare la comprensione della documentazione da parte di lettori esterni e di fissare, all'interno del gruppo, definizioni univoche che riducano possibili ambiguità interpretative.\
Sebbene la sua prima versione sia stata redatta durante la fase di *Candidatura*, il documento richiede un aggiornamento continuo, integrando progressivamente nuove definizioni man mano che emergono durante il progetto.\
La sua completa realizzazione è pertanto prevista al termine dell'intero progetto didattico.

== Realizzazione #gloss[Proof of Concept] (PoC)
//TODO
= Pianificazione e Analisi Sprint per RTB
Questa sezione descrive come il gruppo organizza, monitora e valuta il lavoro svolto durante ciascuno #gloss[sprint]. \
Ogni #gloss[sprint] viene valutato attraverso un #gloss[consuntivo di periodo], nel quale viene analizzato lo #gloss[sprint] appena terminato, riportando le attività svolte, gli eventuali scostamenti e i rischi occorsi, con il relativo impatto e le azioni di mitigazione adottate.

Al termine di ogni #gloss[sprint] viene redatto il #gloss[preventivo a finire], il quale descrive le attività pianificate per lo #gloss[sprint] successivo e la stima delle risorse necessarie.


== Sprint 1
Inizio: 12/11/2025 \
Fine: 19/11/2025 \

Questo primo #gloss[sprint] ha lo scopo di avviare le stesura dei documenti #gloss[Piano di Progetto], #gloss[Analisi dei Requisiti] e #gloss[Norme di Progetto].

=== Preventivo a finire
==== Attività da svolgere
Il gruppo ha individuato le seguenti attività da svolgere:
- Stesura *#gloss[Piano di Progetto]*;
- Stesura *#gloss[Analisi dei Requisiti]*, concentrandosi sui casi d'uso;
- Stesura *#gloss[Norme di Progetto]*;
- Redazione e invio del verbale esterno relativo all'incontro con _M31_ del 13/11/2025

==== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *#gloss[Sprint] 1*:
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici o personali che limitano la loro disponibilità durante lo #gloss[sprint].

==== Preventivo risorse da utilizzare
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "1", [*1*],
  "Alessandro Dinato", "-", "-", "3", "-", "-", "-", [*3*],
  "Michele Dioli", "2", "-", "-", "-", "-", "-", [*2*],
  "Hossam Ezzemouri", "-", "-", "3", "-", "-", "-", [*3*],
  "Riccardo Graziani", "-", "-", "3", "-", "-", "-", [*3*],
  "Siria Salvalaio", "-", "-", "-", "-", "-", "1", [*1*],
  "Elia Ernesto Stellin", "-", "-", "3", "-", "-", "-", [*3*],
  table.footer([*Totale*], [*2*], [*0*], [*12*], [*0*], [*0*], [*2*], [*16*]),
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint1 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 12),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#graficoTorta("Il grafico a torta contiene le ore produttive previste per ogni ruolo", orePrevSprint1)


=== Consuntivo di periodo

==== Attività svolte
Il gruppo ha svolto con successo le seguenti attività:
- Stesura *#gloss[Piano di Progetto]*;
- Stesura *#gloss[Norme di Progetto]*;
- Redazione e invio del verbale esterno relativo all'incontro con _M31_ del 13/11/2025

==== Retrospettiva
Il gruppo ha svolto, come previsto, la #gloss[Sprint Retrospective] in data _19/11/2025_.\
Le attività programmate sono state completate correttamente, eccetto per la stesura dell'#gloss[Analisi dei Requisiti].
È presente un sentimento di tranquillità rispetto all'avanzamento del progetto e alla distribuzione delle attività, il team è soddisfatto di come si sta lavorando insieme.\
Infine, i componenti responsabili della stesura dell'#gloss[Analisi dei Requisiti] hanno fatto notare la difficoltà nell'individuazione dei casi d'uso, #gloss[ci]ò richiederà una maggior allocazione di risorse verso quella specifica attività. Tuttavia, ad oggi, l'analisi dei casi d'uso è ancora in una fase "esplorativa", perciò non ha la priorità più alta.

==== Risorse utilizzate
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "1", [*1*],
  "Alessandro Dinato", "-", "-", "2 (-1)", "-", "-", "-", [*2*],
  "Michele Dioli", "2", "-", "-", "-", "-", "-", [*2*],
  "Hossam Ezzemouri", "-", "-", "2 (-1)", "-", "-", "-", [*2*],
  "Riccardo Graziani", "-", "-", "2 (-1)", "-", "-", "-", [*2*],
  "Siria Salvalaio", "-", "-", "-", "-", "-", "1", [*1*],
  "Elia Ernesto Stellin", "-", "-", "2 (-1)", "-", "-", "-", [*2*],
  table.footer([*Totale*], [*2*], [*0*], [*8*], [*0*], [*0*], [*2*], [*12*]),
)
==== Grafico a torta della suddivisione oraria prevista

#let oreEffettiveSprint1 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 8),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#graficoTorta(
  "Il grafico a torta contiene le ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint1,
)

==== Rischi occorsi
Il gruppo ha riscontrato il rischio *RP1*(@RP1) durante lo *#gloss[Sprint] 1*. Tale rischio è stato gestito secondo quanto previsto, assegnando ai membri coinvolti un carico di lavoro ridotto e attività non bloccanti.\
L'impatto complessivo è stato positivo, infatti il gruppo ha completato correttamente tutte le attività pianificate e i componenti con impegni accademici sono riusciti a portare a termine i compiti loro affidati.
Inoltre si è verificato il rischio *RO1*(@RO1), il documento è più complesso del previsto e richiede un maggiore approfondimento del capitolato.\
L'impatto è stato medio dato che la difficoltà non era quella aspettata e #gloss[ci]ò ha comportato una posticipazione dell'attività.\
Tuttavia, il rischio è stato comunicato in tempo e i responsabili dell'attività sono stati assegnati ad altre task.

==== Aggiornamento ore rimanenti
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "8", "7", "10", "21", "24", "22 (-1)", [*92*],
  "Alessandro Dinato", "7", "8", "8 (-2)", "21", "23", "24", [*91*],
  "Michele Dioli", "6 (-2)", "7", "10", "21", "24", "23", [*91*],
  "Hossam Ezzemouri", "7", "8", "8 (-2)", "20", "24", "24", [*91*],
  "Riccardo Graziani", "8", "8", "8 (-2)", "20", "23", "24", [*91*],
  "Siria Salvalaio", "8", "8", "9", "21", "24", "22 (-1)", [*92*],
  "Elia Ernesto Stellin", "8", "8", "7 (-2)", "21", "23", "24", [*91*],
  table.footer([*Totale*], [*52*], [*54*], [*60*], [*145*], [*165*], [*163*], [*639*]),
)

==== Aggiornamento costi
#table(
  columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
  "Responsabile", "52 (-2)", "30 €/h", "1560 € (-60 €)",
  "Amministratore", "54 ", "20 €/h", "1080 € ",
  "Analista", "60 (-8)", "25 €/h", "1500 € (-200 €)",
  "Progettista", "145 ", "25 €/h", "3625 € ",
  "Programmatore", "165 ", "15 €/h", "2475 € ",
  "Verificatore", "163 (-2)", "15 €/h", "2445 € (-30 €)",
  table.footer([*Totale*], [*639*], [-], [*12685 €*]),
)


== Sprint 2
Inizio: 19/11/2025 \
Fine: 26/11/2025 \

Il presente #gloss[sprint] ha lo scopo di continuare la stesura dei documenti *#gloss[Piano di Progetto]*, *#gloss[Analisi dei Requisiti]* e *#gloss[Norme di Progetto]*.
Inoltre, si procederà con l'approfondimento dei casi d'uso.

=== Preventivo a finire
==== Attività da svolgere
Il gruppo ha individuato le seguenti attività da svolgere:
- Continuazione stesura *#gloss[Piano di Progetto]*;
- Continuazione stesura *#gloss[Norme di Progetto]*;
- Approfondimento casi d'uso in *#gloss[Analisi dei Requisiti]*, grazie al supporto di _M31_ nell'incontro del 24/11/2025.

==== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *#gloss[Sprint] 2*:
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici o personali che limitano la loro disponibilità durante lo #gloss[sprint].

==== Preventivo risorse da utilizzare
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "1", [*1*],
  "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
  "Michele Dioli", "2", "-", "-", "-", "-", "-", [*2*],
  "Hossam Ezzemouri", "-", "-", "2", "-", "-", "-", [*2*],
  "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
  "Siria Salvalaio", "-", "-", "-", "-", "-", "1", [*1*],
  "Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
  table.footer([*Totale*], [*2*], [*0*], [*8*], [*0*], [*0*], [*2*], [*12*]),
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint2 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 8),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#graficoTorta("Il grafico a torta contiene le ore produttive previste per ogni ruolo", orePrevSprint2)

=== Consuntivo di periodo

==== Attività svolte
Il gruppo ha svolto con successo le seguenti attività: \
- Continuazione stesura *#gloss[Piano di Progetto]*;
- Continuazione stesura *#gloss[Norme di Progetto]*;
- Approfondimento casi d'uso in *#gloss[Analisi dei Requisiti]*;
- Incontro con _M31_ in data 24/11/2025 per discutere i casi d'uso.

==== Retrospettiva
Il gruppo ha svolto, come previsto, la #gloss[Sprint Retrospective] in data _26/11/2025_.\
Le attività programmate sono state tutte eseguite correttamente ed entro i tempi stabiliti.

Questo #gloss[sprint] ha permesso al gruppo di avanzare nella conoscenza e nella definizione dei casi d'uso, grazie al supporto fornito da _M31_ durante l'incontro del 24/11/2025.\
L'azienda si è dimostrata disponibile a chiarire i dubbi del gruppo e ha fornito un contributo sostanziale all'approfondimento e alla definizione dei casi d'uso. \
L'incontro è stato positivo perché ha dimostrato che il gruppo può fare affidamento sul supporto del #gloss[proponente], vista la sua alta disponibilità e competenza.

Infine, il team ha leggermente ridefinito il workflow di utilizzo delle #gloss[GitHub] Issues, al fine di migliorare la gestione delle attività e la tracciabilità del lavoro svolto. #gloss[Ci]ò rappresenta un segnale positivo, in quanto dimostra la volontà del gruppo di ottimizzare continuamente i propri processi di lavoro.

==== Risorse utilizzate
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "1", [*1*],
  "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
  "Michele Dioli", "2", "-", "-", "-", "-", "-", [*2*],
  "Hossam Ezzemouri", "-", "-", "2", "-", "-", "-", [*2*],
  "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
  "Siria Salvalaio", "-", "-", "-", "-", "-", "1", [*1*],
  "Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
  table.footer([*Totale*], [*2*], [*0*], [*8*], [*0*], [*0*], [*2*], [*12*]),
)
==== Grafico a torta della suddivisione oraria prevista

#let oreEffettiveSprint2 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 8),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#graficoTorta(
  "Il grafico a torta contiene le ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint2,
)

==== Rischi occorsi
Il gruppo ha riscontrato il rischio *RP2*(@RP2) durante lo *#gloss[Sprint] 2*. \
Un componente del gruppo ha fatto notare la mancanza di intraprendenza da parte di due membri, tuttavia la questione è stata risolta con un semplice confronto diretto. \
La situazione sollevata è stata affrontata in modo costruttivo con lo scopo di portare tutti i componenti sullo stesso livello di partecipazione attiva. \
L'impatto è stato minimo, dato che la questione è stata risolta e non ha influito nel benessere del gruppo.

==== Aggiornamento ore rimanenti
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "8", "7", "10", "21", "24", "21 (-1)", [*91*],
  "Alessandro Dinato", "7", "8", "6 (-2)", "21", "23", "24", [*89*],
  "Michele Dioli", "4 (-2)", "7", "10", "21", "24", "23", [*89*],
  "Hossam Ezzemouri", "7", "8", "6 (-2)", "20", "24", "24", [*89*],
  "Riccardo Graziani", "8", "8", "6 (-2)", "20", "23", "24", [*89*],
  "Siria Salvalaio", "8", "8", "9", "21", "24", "21 (-1)", [*91*],
  "Elia Ernesto Stellin", "8", "8", "5 (-2)", "21", "23", "24", [*89*],
  table.footer([*Totale*], [*50*], [*54*], [*52*], [*145*], [*165*], [*161*], [*627*]),
)

==== Aggiornamento costi
#table(
  columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
  "Responsabile", "50 (-2)", "30 €/h", "1500 € (-60 €)",
  "Amministratore", "54 ", "20 €/h", "1080 € ",
  "Analista", "52 (-8)", "25 €/h", "1300 € (-200 €)",
  "Progettista", "145 ", "25 €/h", "3625 € ",
  "Programmatore", "165 ", "15 €/h", "2475 € ",
  "Verificatore", "161 (-2)", "15 €/h", "2415 € (-30 €)",
  table.footer([*Totale*], [*627*], [-], [*12395 €*]),
)

== Sprint 3
Inizio: 26/11/2025 \
Fine: 03/12/2025 \

Il presente #gloss[sprint] ha lo scopo di continuare con la stesura delle #gloss[Norme di Progetto], trovare delle metriche per il #gloss[Piano di Qualifica] e l'organizzazione di un brainstorming per la stesura dei casi d'uso. \

=== Preventivo a finire
==== Attività da svolgere
Il gruppo ha individuato le seguenti attività da svolgere:
- Aggiunta sezione riguardante i documenti incrementali nelle #gloss[Norme di Progetto];
- Definizione di metriche adatte a misurare la qualità del progetto da utilizzare nel #gloss[Piano di Qualifica];
- Brainstorming per la stesura dei casi d'uso relativi all'#gloss[Analisi dei Requisiti];
- Correzione issues secondo le pratiche stabilite nel #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/#gloss[RTB]/VerbaliInterni/2025-11-26.pdf")[verbale interno del 26/11/2025].
- Implementazione automazione per la generazione della rendicontazione delle ore previste e lavorate per il #gloss[Piano di Progetto].

==== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *#gloss[Sprint] 3*:
- *RO1*(@RO1): è possibile che l'attività di selezione delle metriche subisca un ritardo, dato che l'individuazione di metriche adeguate non è immediata e occorre un'analisi piu profonda;
- *RO3*(@RO4): #gloss[ci] potrebbero essere opinioni contrastanti nel brainstorming sull'#gloss[analisi dei requisiti];
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici o personali che limitano la loro disponibilità durante lo #gloss[sprint].

==== Preventivo risorse da utilizzare
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
  "Alessandro Dinato", "2", "1", "-", "-", "-", "-", [*3*],
  "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
  "Hossam Ezzemouri", "-", "-", "-", "-", "-", "1", [*1*],
  "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
  "Siria Salvalaio", "-", "-", "1", "-", "-", "-", [*1*],
  "Elia Ernesto Stellin", "-", "-", "-", "-", "-", "-", [*0*],
  table.footer([*Totale*], [*2*], [*1*], [*1*], [*0*], [*0*], [*1*], [*5*]),
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint3 = (
  ("Responsabile", 2),
  ("Amministratore", 1),
  ("Analista", 1),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 1),
)
#graficoTorta("Il grafico a torta contiene le ore produttive previste per ogni ruolo", orePrevSprint3)

=== Consuntivo di periodo

==== Attività svolte
Il gruppo ha svolto con successo le seguenti attività: \
- Aggiunta sezione riguardante i documenti incrementali nelle #gloss[Norme di Progetto];
- Brainstorming per la stesura dei casi d'uso relativi all'#gloss[Analisi dei Requisiti];
- Correzione issues secondo le pratiche stabilite nel #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/#gloss[RTB]/VerbaliInterni/2025-11-26.pdf")[verbale interno del 26/11/2025].
- Implementazione automazione per la generazione della rendicontazione delle ore previste e lavorate per il #gloss[Piano di Progetto].

==== Retrospettiva
Durante lo *#gloss[sprint] 3* sono state completate tutte le attività pianificate, eccetto la definizione delle metriche per il #gloss[Piano di Qualifica], la quale è stata posticipata dato che attualmente non possiede la massima priorità.\
Il brainstorming ha fatto maturare nel gruppo molti dubbi riguardo al capitolato, i quali sono stati posti e discussi con _M31_ nell'incontro del 01/12/2025. È possibile trovare le risposte a tali dubbi nel #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/#gloss[RTB]/VerbaliEsterni/2025-12-02.pdf")[verbale esterno del 02/12/2025].\
L'incontro interno e quello con M31 hanno permesso al gruppo di chiarire molti aspetti riguardo ai casi d'uso e alle funzionalità attese dal #gloss[proponente], migliorando così la comprensione del progetto da parte di tutti i membri.\
Infine, è stata implementata un'automazione per la rendicontazione, per singolo #gloss[sprint], delle ore previste e lavorate nel #gloss[Piano di Progetto]. #gloss[Ci]ò permetterà al gruppo di risparmiare tempo nella stesura del documento e di ridurre gli errori umani.

==== Risorse utilizzate
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
  "Alessandro Dinato", "3 (+1)", "1", "-", "-", "-", "-", [*4*],
  "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
  "Hossam Ezzemouri", "-", "-", "-", "-", "-", "1", [*1*],
  "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
  "Siria Salvalaio", "-", "-", "1", "-", "-", "-", [*1*],
  "Elia Ernesto Stellin", "-", "-", "-", "-", "-", "-", [*0*],
  table.footer([*Totale*], [*3*], [*1*], [*1*], [*0*], [*0*], [*1*], [*6*]),
)
==== Grafico a torta della suddivisione oraria prevista

#let oreEffettiveSprint3 = (
  ("Responsabile", 3),
  ("Amministratore", 1),
  ("Analista", 1),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 1),
)
#graficoTorta(
  "Il grafico a torta contiene le ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint3,
)

==== Rischi occorsi
Durante lo *#gloss[sprint] 3* è occorso il rischio *RO1*(@RO1), il che era previsto data la difficoltà dell'attività.\
Il gruppo ha deciso di posticipare la task ad uno #gloss[sprint] successivo, in quanto non possiede la massima priorità al momento. Il gruppo è totalmente concentrato nella definizione dei casi d'uso.
Il rischio ha avuto un impatto medio, in quanto era stato preventivato ma rimane un'attività che dovrà essere completata in futuro.

==== Aggiornamento ore rimanenti
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "8", "7", "10", "21", "24", "21", [*91*],
  "Alessandro Dinato", "4 (-3)", "7 (-1)", "6", "21", "23", "24", [*85*],
  "Michele Dioli", "4", "7", "10", "21", "24", "23", [*89*],
  "Hossam Ezzemouri", "7", "8", "6", "20", "24", "23 (-1)", [*88*],
  "Riccardo Graziani", "8", "8", "6", "20", "23", "24", [*89*],
  "Siria Salvalaio", "8", "8", "8 (-1)", "21", "24", "21", [*90*],
  "Elia Ernesto Stellin", "8", "8", "5", "21", "23", "24", [*89*],
  table.footer([*Totale*], [*47*], [*53*], [*51*], [*145*], [*165*], [*160*], [*621*]),
)

==== Aggiornamento costi
#table(
  columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
  "Responsabile", "47 (-3)", "30 €/h", "1410 € (-90 €)",
  "Amministratore", "53 (-1)", "20 €/h", "1060 € (-20 €)",
  "Analista", "51 (-1)", "25 €/h", "1275 € (-25 €)",
  "Progettista", "145 ", "25 €/h", "3625 € ",
  "Programmatore", "165 ", "15 €/h", "2475 € ",
  "Verificatore", "160 (-1)", "15 €/h", "2400 € (-15 €)",
  table.footer([*Totale*], [*621*], [-], [*12245 €*]),
)

== Sprint 4
Inizio: 03/12/2025 \
Fine: 10/12/2025 \

Il presente #gloss[sprint] ha lo scopo di continuare lo sviluppo dei casi d'uso.

=== Preventivo a finire
==== Attività da svolgere
Il gruppo ha individuato le seguenti attività da svolgere:
- Stesura casi d'uso per l'attore *super-admin*;
- Stesura casi d'uso per l'attore *#gloss[tenant]-admin*;
- Stesura casi d'uso per l'attore *#gloss[tenant]-user*;
- Stesura casi d'uso per l'attore *REST client*;
- Stesura casi d'uso per l'attore *gateway*;
- Stesura casi d'uso per l'attore *user generico*.

==== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *#gloss[Sprint] 4*:
- *RO3*(@RO3): andando in profondità nei casi d'uso potrebbero sorgere dubbi, bloccando così lo sviluppo di certi casi d'uso;
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici o personali imprevisti.

==== Preventivo risorse da utilizzare // da rivedere eseguendo lo script
#table(
  columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
  "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
  "Alessandro Dinato", "3", "-", "-", "-", "-", "-", [*3*],
  "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
  "Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
  "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
  "Siria Salvalaio", "-", "-", "-", "-", "-", "-", [*0*],
  "Elia Ernesto Stellin", "-", "-", "-", "-", "-", "-", [*0*],
  table.footer([*Totale*], [*3*], [*0*], [*0*], [*0*], [*0*], [*0*], [*3*]),
)
==== Grafico a torta della suddivisione oraria prevista // da rivedere eseguendo lo script

#let orePrevSprint4 = (
  ("Responsabile", 3),
  ("Amministratore", 0),
  ("Analista", 0),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta("Il grafico a torta contiene le ore produttive previste per ogni ruolo", orePrevSprint4)
