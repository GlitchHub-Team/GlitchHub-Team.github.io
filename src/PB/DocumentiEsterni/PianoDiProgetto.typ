#import "../../Templates/templateDocumentiGenerici.typ": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show: report.with(
  titolo: "Piano di Progetto",
  stato: "Verificato",
  registro-modifiche: (
    (
      "2.0.0",
      "24/04/2026",
      "Alessandro Dinato",
      "Elia Ernesto Stellin",
      [Creazione versione stabile PdP],
    ),
    (
      "1.9.0",
      "24/04/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Stesura sprint 17 (@sprint-17)],
    ),
    (
      "1.8.1",
      "19/04/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Implementazione suggerimenti forniti durante la fase di verifica],
    ),
    (
      "1.8.0",
      "17/04/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Stesura sprint 16 (@sprint-16) e preventivo sprint 17 (@sprint-17)],
    ),
    (
      "1.7.1",
      "11/04/2026",
      "Jaume Bernardi",
      "Siria Salvalaio",
      [Implementazione suggerimenti forniti durante la fase di verifica],
    ),
    (
      "1.7.0",
      "11/04/2026",
      "Jaume Bernardi",
      "Siria Salvalaio",
      [Stesura sprint 15 (@sprint-15) e preventivo sprint 16 (@sprint-16)],
    ),
    (
      "1.6.0",
      "02/04/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Stesura sprint 14 (@sprint-14)],
    ),
    (
      "1.5.0",
      "26/03/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Stesura sprint 13 (@sprint-13)],
    ),
    (
      "1.4.0",
      "19/03/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Stesura sprint 12 (@sprint-12)],
    ),
    (
      "1.3.0",
      "11/03/2026",
      "Michele Dioli",
      "Siria Salvalaio",
      [Stesura sprint 11 (@sprint-11)],
    ),
    (
      "1.2.3",
      "09/03/2026",
      "Jaume Bernardi",
      "Michele Dioli",
      [Aggiornamento tabelle sprint 10],
    ),
    (
      "1.2.2",
      "04/03/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Implementazione suggerimenti forniti durante la fase di verifica],
    ),
    (
      "1.2.1",
      "04/03/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Implementazione suggerimenti forniti durante la fase di verifica],
    ),
    (
      "1.2.0",
      "02/03/2026",
      "Jaume Bernardi",
      "Elia Ernesto Stellin",
      [Stesura sprint 10 (@sprint-10)],
    ),
    (
      "1.1.0",
      "18/02/2026",
      "Michele Dioli",
      "Alessandro Dinato",
      [Spiegazione criteri di ridistribuzione ore fine RTB],
    ),
    (
      "1.0.0",
      "18/02/2026",
      "Alessandro Dinato",
      "Elia Ernesto Stellin",
      [Creazione versione stabile del documento],
    ),
    (
      "0.11.0",
      "18/02/2026",
      "Alessandro Dinato",
      "Elia Ernesto Stellin",
      [Riassegnazione ore e costi dopo lo sprint 10],
    ),
    (
      "0.10.4",
      "16/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      [Revisione rischi sprint 1-4],
    ),
    (
      "0.10.3",
      "16/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Revisione rischi e contromisure, nonché sprint.],
    ),
    (
      "0.10.2",
      "16/02/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Modifica indici tabelle e grafici],
    ),
    (
      "0.10.1",
      "14/02/2026",
      "Riccardo Graziani",
      "Hossam Ezzemouri",
      [Correzione imprecisione],
    ),
    (
      "0.10.0",
      "14/02/2026",
      "Riccardo Graziani",
      "Hossam Ezzemouri",
      [Stesura sprint 9 (@sprint-9)],
    ),
    (
      "0.9.0",
      "09/02/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Stesura @S_AdR, @S_NdP, @S_PdQ, @S_PoC],
    ),
    (
      "0.8.2",
      "04/02/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Implementazione correzioni CaF sprint 8],
    ),
    (
      "0.8.1",
      "03/02/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Consuntivo di periodo sprint 8],
    ),
    (
      "0.8.0",
      "24/01/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Bozza sprint 8],
    ),
    (
      "0.7.4",
      "17/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Aggiunto CdP sprint 7],
    ),
    (
      "0.7.3",
      "17/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Correzioni riguardo CdP sprint 6],
    ),
    (
      "0.7.2",
      "17/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Piccole modifiche riguardo CdP sprint 6],
    ),
    (
      "0.7.1",
      "16/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Consuntivo di periodo sprint 6],
    ),
    (
      "0.7.0",
      "11/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Bozza sprint 7],
    ),
    (
      "0.6.1",
      "28/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Stesura CdP sprint 5; stesura CaF sprint 6],
    ),
    (
      "0.6.0",
      "22/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Bozza sprint 5-6],
    ),
    (
      "0.5.1",
      "15/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Aggiunta data consegna RTB in @calendario-progetto; stesura CdP sprint 4;
        Stesura CaF sprint 5],
    ),
    (
      "0.5.0",
      "11/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Stesura dati CdP sprint 4],
    ),
    (
      "0.4.0",
      "11/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin",
      "Aggiunta sezione \"Redazione del documento\"",
    ),
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
      "Compilazione sprint 1, preventivo sprint 2, pianificazione attività RTB",
    ),
    (
      "0.0.1",
      "17/11/2025",
      "Alessandro Dinato",
      "Siria Salvalaio",
      "Bozza Piano di Progetto",
    ),
  ),
  distribuzione: (
    "GlitchHub Team",
    "M31 S.r.L.",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  htmlId: "PB-DocumentiEsterni",
  verificatore-interno: "Elia Ernesto Stellin",
  left-signature: "../assets/firme/firma_Elia_Ernesto_Stellin.jpg",
  tipo-documento: "Piano di Progetto",
)

#let graficoTorta = (caption, data) => {
  figure(
    align(center)[

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
            radius: 125%,
          ),
          // Abilita le linee di connessione
          outer-label-line: (
            stroke: 1pt + luma(150),
            mark: (end: ">", size: 0.15),
          ),
          legend: (label: none),
        )
      })
    ],
    caption: caption,
    kind: "grafico",
    supplement: [Grafico],
  )
}


#outline(
  title: "Indice dei grafici",
  target: figure.where(kind: "grafico"),
)

#pagebreak()

#outline(
  title: "Indice delle tabelle",
  target: figure.where(kind: table),
)

#pagebreak()


#let tabella-paginata(contenuto, didascalia, label-id: none) = {
  // 1. Ghost Figure: crea l'ancora per l'Indice e il Link in alto
  [
    #show figure.caption: none
    #figure(
      kind: table,
      caption: didascalia,
      outlined: true,
      gap: 0em,
      [],
    )
    #if label-id != none { label(label-id) }
  ]

  // 2. La Tabella (che può andare su più pagine)
  contenuto

  // 3. Didascalia visiva (in basso)
  align(center)[
    #v(0.5em) // Un po' di spazio tra tabella e testo
    #context [
      #let n = counter(figure.where(kind: table)).display()
      #text[Tabella #n: #didascalia]
    ]
  ]
}

= Introduzione
== Obiettivi del documento
Il #gloss[Piano di Progetto] ha lo scopo di definire in modo chiaro e strutturato le attività e i compiti necessari alla realizzazione del progetto, stabilendone risorse, modalità operative e tempistiche di sviluppo. \
Il documento fornisce una visione complessiva e costantemente aggiornata dell'avanzamento del progetto didattico, consentendo al gruppo di pianificare, assegnare e monitorare i compiti definiti all'interno di ogni #gloss[sprint].

Un aspetto fondamentale del documento è l'analisi dei rischi attesi, accompagnata dalle relative strategie di mitigazione, con l'obiettivo di ridurre l'incertezza e migliorare la capacità del gruppo di affrontare imprevisti tecnologici, organizzativi e/o personali.
Il documento include inoltre il calendario di massima del progetto, la stima dei costi complessivi e l'impegno orario previsto per ogni ruolo, i quali sono stati definiti durante la *candidatura*.

Poiché il gruppo ha deciso di adottare un approccio di sviluppo #gloss[agile], al termine di ogni sprint vengono aggiornati il #gloss[consuntivo di periodo], l'analisi dei rischi effettivamente occorsi, il #gloss[preventivo a finire] e il #gloss[preventivo] dello sprint successivo, i quali vengono analizzati durante lo #gloss[sprint retrospective] settimanale. \
Questo processo permette di rivedere costantemente la pianificazione delle attività e dei compiti, migliorare i processi tramite retrospettive periodiche e mantenere una stima realistica del completamento finale.

== Glossario
Il #link("#gloss[https]://glitchhub-team.#gloss[github].io/pdf/glossary.pdf")[*glossario*] è un documento redatto dal gruppo e aggiornato nell'arco del progetto didattico, con lo scopo di fornire definizioni coerenti per i termini tecnici e quelli specifici relativi al corso di Ingegneria del Software.

Questo documento è fondamentale per garantire una comprensione uniforme della documentazione prodotta ai lettori esterni dal gruppo e per definire un riferimento interno al gruppo, riducendo possibili ambiguità interpretative.

Per indicare che la definizione di una parola o di un concetto è disponibile, si è deciso di utilizzare la seguente notazione:
#gloss[definizione nel glossario].

== Riferimenti
=== Riferimenti normativi
- *Capitolato d'appalto C7*:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf`] \
  - *Ultimo accesso*: 19/04/2026
- *Norme di Progetto v2.0.0*:
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/NormeProgetto.pdf",
    )[`https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/NormeProgetto.pdf`] \
  - *Ultimo accesso*: 19/04/2026

=== Riferimenti informativi
- *Regolamento del progetto didattico*:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf`] \
  - *Ultimo accesso*: 19/04/2026
- *Il ciclo di vita del software*:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T03.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T03.pdf`] \
  - *Ultimo accesso*: 19/04/2026
- *Gestione di progetto*:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf`] \
  - *Ultimo accesso*: 19/04/2026
- *Glossario v1.0.0*:
  - #link(
      "https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/glossary.pdf",
    )[`https://glitchhub-team.github.io/pdf/PB/DocumentiInterni/glossary.pdf`] \
  - *Ultimo accesso*: 19/04/2026

== Redazione del documento
Questa sezione descrive le pratiche adottate per la redazione del #gloss[Piano di Progetto]. \
Il *responsabile* è la figura incaricata di compilare e aggiornare il documento, con cadenza regolare al termine di ogni sprint.

Il workflow previsto per ogni sprint è il seguente:
1. Durante la #gloss[sprint retrospective] del gruppo vengono analizzati i risultati dello sprint precedente e pianificate le attività e i compiti futuri;
2. Il responsabile dello sprint compila il #gloss[consuntivo di periodo] e il #gloss[preventivo a finire] sulla base di quanto emerso in riunione, eseguendo i seguenti compiti:
  - descrive i compiti svolti;
  - redige la retrospettiva di periodo;
  - registra i rischi occorsi analizzandone cause e modalità di gestione;
  - aggiorna le risorse impiegate;
  - aggiorna ore e budget rimanente.
3. Infine, definisce i compiti da svolgere nello sprint corrente, individua i rischi attesi e compila il #gloss[preventivo] delle risorse necessarie.

Per rendere più efficiente questo processo è stato sviluppato uno script in #gloss[Go] che, a partire dai *custom fields* delle #gloss[GitHub Issue] e dallo sprint selezionato, genera automaticamente la sezione dello sprint con costi e ore aggiornate. \
Le parti descrittive e narrative richiedono comunque l'intervento del responsabile, che deve completarle manualmente.

In ogni caso, è preferibile che dopo la riunione vengano compilati sia il #gloss[consuntivo di periodo] e il #gloss[preventivo a finire] dello sprint concluso sia il #gloss[preventivo] dello sprint successivo, così da mantenere una pianificazione sempre aggiornata e accurata.


= Analisi e mitigazione dei rischi
Questa sezione analizza i potenziali rischi e le difficoltà che il gruppo potrebbe incontrare durante lo svolgimento del progetto didattico.\
Realizzare un'ottima analisi preventiva consente di evitare conflitti interni, ritardi nelle scadenze, aumento dei costi di produzione e, soprattutto, la realizzazione di un prodotto non conforme agli obiettivi.

L'analisi dei rischi si articola in quattro fasi principali:
- *Identificazione*: individuare i possibili rischi legati al progetto, al prodotto e al contesto di riferimento, riconoscendo tutto #gloss[ci]ò che potrebbe compromettere lo sviluppo;
- *Analisi*: per ciascun rischio identificato si valuta la probabilità di occorrenza e l'impatto che potenziale sul lavoro del gruppo e sul prodotto finale;
- *Pianificazione*: definizione delle strategie di prevenzione o mitigazione, stabilendo in anticipo le azioni da intraprendere in caso in cui il rischio si verifichi;
- *Controllo*: monitoraggio continuo attraverso indicatori che segnalano eventuali problemi, l'attuazione delle strategie di mitigazione e il miglioramento costante del #gloss[Way of Working].

Di seguito sono riportati i rischi individuati dal gruppo, accompagnati dalla rispettiva analisi e dalle strategie di mitigazione. \
Ogni rischio è identificato tramite un codice composto dall'acronimo della sua tipologia e da un numero incrementale.


== Rischi tecnologici
=== Apprendimento delle nuove tecnologie <RT1>
#tabella-paginata(
  table(
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
      Una volta stabilite le tecnologie da utilizzare nel progetto, è fondamentale avviare l'attività di studio il prima possibile.
      Poiché durante il progetto potrebbero comunque emergere delle lacune, il gruppo adotterà le seguenti misure:
      - Se tutti i membri riscontrano gravi difficoltà nella comprensione di una tecnologia si organizzerà un colloquio con _M31_ per richiedere chiarimenti;
      - Se solo alcuni membri riscontrano difficoltà nell'apprendimento, i componenti del gruppo con una maggiore padronanza della tecnologia forniranno supporto a chi è in difficoltà. \
      L'obiettivo è garantire un avanzamento omogeneo del gruppo, mantenendo lo stesso livello di conoscenza. \
      L'allineamento può avvenire attraverso spiegazioni individuali o attraverso _lezioni interne_ rivolte a tutto il gruppo condotte da un componente.

    ],

    [*Occorrenza*], [Alta],
    [*Impatto*], [Medio],
  ),
  [Rischi tecnologici - Apprendimento delle nuove tecnologie],
  label-id: "tab-rischi-tecn-1",
)

=== Problematiche nello sviluppo software <RT2>
#tabella-paginata(
  table(
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

    [*Occorrenza*], [Alta],
    [*Impatto*], [Medio],
  ),
  [Rischi tecnologici - Problematiche nello sviluppo software],
  label-id: "tab-rischi-tecn-2",
)

== Rischi organizzativi
=== Mancato rispetto delle scadenze prefissate <RO1>
#tabella-paginata(
  table(
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
      Durante lo svolgimento delle attività possono verificarsi ritardi, i quali rischiano di prolungare i tempi di consegna e bloccare le attività seguenti.
    ],

    [*Misure di mitigazione*],
    [
      I ritardi sono considerati eventi possibili nel corso del progetto, pur assumendo che ogni membro del gruppo faccia il necessario per evitarli. \
      Essi devono essere adeguatamente giustificati e non devono compromettere o interrompere il lavoro degli altri componenti. \
      Qualora un membro preveda o riscontri un ritardo, è tenuto a comunicarlo tempestivamente al gruppo, in modo da consentire una rapida riorganizzazione delle attività coinvolte e minimizzare l'impatto del ritardo sulle altre attività.
    ],

    [*Occorrenza*], [Media],
    [*Impatto*], [Alto],
  ),
  [Rischi organizzativi - Mancato rispetto delle scadenze prefissate],
  label-id: "tab-rischi-org-1",
)

=== Errata organizzazione e distribuzione delle risorse <RO2>
#tabella-paginata(
  table(
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
  ),
  [Rischi organizzativi - Errata organizzazione e distribuzione delle risorse],
  label-id: "tab-rischi-org-2",
)

=== Incomprensione dei requisiti <RO3>
#tabella-paginata(
  table(
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

    [*Occorrenza*], [Media],
    [*Impatto*], [Alto],
  ),
  [Rischi organizzativi - Incomprensione dei requisiti],
  label-id: "tab-rischi-org-2",
)

=== Presenza di opinioni contrastanti <RO4>
#tabella-paginata(
  table(
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
      Qualora non fosse possibile trovare un accordo interno, si farà riferimento a un parere esterno del committente o del cliente.
    ],

    [*Occorrenza*], [Media],
    [*Impatto*], [Basso],
  ),
  [Rischi organizzativi - Presenza di opinioni contrastanti],
  label-id: "tab-rischi-org-3",
)

== Rischi personali
=== Problemi accademici <RP1>
#tabella-paginata(
  table(
    columns: (0.25fr, 0.75fr),
    align: left,
    stroke: (x, y) => (
      right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
      top: if y > 1 { 0.7pt } else { 0pt },
      bottom: if y < 5 { 0.7pt } else { 0pt },
    ),
    [], [],
    [*ID*], [RP1],
    [*Nome*], [Problemi accademici],
    [*Descrizione*],
    [
      Eventuali sovraccarichi accademici potrebbero influire sulla disponibilità dei membri del gruppo, causando ritardi nelle consegne.
    ],

    [*Misure di mitigazione*],
    [
      Il gruppo è consapevole che, durante il periodo di progetto, la disponibilità dei membri potrà variare a causa di esigenze accademiche.\
      Fin dall'inizio sono stati individuati i periodi di inattività dei diversi componenti. Per gestire efficacemente tali situazioni sarà necessario:
      - Pianificare le attività tenendo conto dei calendari accademici e delle sessioni d'esame;
      - Mantenere una comunicazione trasparente riguardo a possibili variazioni di disponibilità;
      - Assegnare ruoli e compiti in modo flessibile, adattandoli alle esigenze e ai carichi di ciascun membro. \
      I dettagli relativi alle sessioni di studio ed eventuali altri impegni rilevanti, sono disponibili nel documento #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[Dichiarazione degli Impegni].
    ],

    [*Occorrenza*], [Media],
    [*Impatto*], [Medio],
  ),
  [Rischi personali - Problemi accademici],
  label-id: "tab-rischi-pers-1",
)

=== Dissidi interni <RP2>
#tabella-paginata(
  table(
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
  ),
  [Rischi personali - Dissidi interni],
  label-id: "tab-rischi-pers-2",
)

=== Problemi personali <RP3>
#tabella-paginata(
  table(
    columns: (0.25fr, 0.75fr),
    align: left,
    stroke: (x, y) => (
      right: if x < 1 and y > 0 { 0.7pt } else { 0pt },
      top: if y > 1 { 0.7pt } else { 0pt },
      bottom: if y < 5 { 0.7pt } else { 0pt },
    ),
    [], [],
    [*ID*], [RP3],
    [*Nome*], [Problemi personali],
    [*Descrizione*],
    [
      Eventuali impegni personali potrebbero influire sulla disponibilità dei membri del gruppo, causando ritardi nelle consegne.
    ],

    [*Misure di mitigazione*],
    [
      I membri del gruppo potrebbero avere periodi di indisponibilità dovuti a esigenze personali (famiglia, salute, impegni imprevisti). Queste variazioni possono influire sulla continuità del lavoro e sulla capacità del team di rispettare le scadenze. Per mitigare almeno parzialmente questi avvenimenti il gruppo si impegna nel adottare questi punti:
      - Prevedere adeguati buffer temporali nelle pianificazioni;
      - Mantenere una comunicazione trasparente e tempestiva riguardo a possibili variazioni di disponibilità;
      - Assegnare ruoli e compiti in modo flessibile, adattandoli alle esigenze e ai carichi di ciascun membro. \
      I dettagli relativi ai periodi di inattività, comprensivi di vacanze, sono disponibili nel documento #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[Dichiarazione degli Impegni].
    ],

    [*Occorrenza*], [Bassa],
    [*Impatto*], [Medio],
  ),
  [Rischi personali - Problemi personali],
  label-id: "tab-rischi-pers-3",
)


= Calendario di massima del progetto <calendario-progetto>
Il gruppo si impegna a presentare la candidatura per la #gloss[Requirements and Technology Baseline] entro il 12/02/2025, con possibilità di deroga a seconda delle necessità del gruppo.

Inoltre, come descritto nella #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[Dichiarazione degli Impegni], _GlitchHub Team_ si impegna a terminare il progetto entro il giorno *27 marzo 2026*, senza alcuna possibilità di deroga.

= Impegno orario previsto
Il gruppo ha deciso di dedicare un totale di *95 ore produttive* per ogni componente, le quali verranno distribuite tra i diversi ruoli.

== Tabella suddivisione ore produttive per componente e ruolo
Nella tabella di conteggio ore verranno utilizzati degli acronimi per descrivere i singoli ruoli.
- *Resp* = Responsabile
- *Amm* = Amministratore
- *Verif* = Verificatore
- *Analist* = Analista
- *Progett* = Progettista
- *Programm* = Programmatore

Durante la conclusione del periodo di RTB, avvenuta nello *sprint 10*, il gruppo ha effettuato un ribilanciamento della suddivisione oraria prevista per componente e ruolo.

Il ribilanciamento nasce dall'analisi dei primi nove sprint in retrospettiva, che ha evidenziato la ripartizione iniziale non essere ideale per le attività di progetto. In particolare:

- Le ore di *analista* sono risultate sottostimate rispetto all'effettivo impegno richiesto dalla stesura dell'Analisi dei Requisiti, che ha richiesto un numero di sprint superiore al previsto;
- Le ore di *progettista* sono risultate sovrastimate in vista della PB e di ciò che il gruppo si aspetta di dover affrontare in fase di progettazione;
- Le ore di *programmatore* e *verificatore* sono state oggetto di un riequilibrio reciproco. Lo sviluppo del #gloss[PoC] ha richiesto esclusivamente attività di programmazione, rendendo necessaria un'integrazione delle ore previste, di conseguenza una ridistribuzione anche sul ruolo di verificatore.
- Le ore di *responsabile* sono state ridistribuite per allinearle alle assegnazioni già definite per i successivi tre sprint e per compensare gli sforamenti registrati in altri ruoli, garantendo al contempo il rispetto del budget inizialmente previsto.

La ricalibrazione è stata effettuata esclusivamente con spostamenti orizzontali, ovvero modificando la distribuzione tra ruoli per ciascun membro senza alterare il monte ore individuale di *95 ore* né il costo complessivo di realizzazione.

=== Suddivisione oraria dallo sprint 14 <suddivisione-oraria-pb>
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "7", "7", "6", "17", "29", "29", [*95*],
    "Alessandro Dinato", "6", "11", "13", "15", "29", "21", [*95*],
    "Michele Dioli", "8", "8", "10", "16", "28", "25", [*95*],
    "Hossam Ezzemouri", "2", "13", "15", "12", "27", "26", [*95*],
    "Riccardo Graziani", "3", "5", "13", "20", "29", "25", [*95*],
    "Siria Salvalaio", "8", "11", "7", "18", "28", "23", [*95*],
    "Elia Ernesto Stellin", "2", "11", "12", "14", "25", "31", [*95*],
    table.footer([*Totale*], [*36*], [*66*], [*76*], [*112*], [*195*], [*180*], [*665*]),
  ),
  [Tabella suddivisione ore produttive per componente e ruolo],
  label-id: "tab-sudd-ore",
)


=== Suddivisione oraria dallo sprint 10 <suddivisione-oraria-rtb>
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "4", "7", "10", "18", "28", "28", [*95*],
    "Alessandro Dinato", "6", "8", "13", "18", "25", "25", [*95*],
    "Michele Dioli", "8", "7", "10", "18", "27", "25", [*95*],
    "Hossam Ezzemouri", "2", "9", "14", "17", "27", "26", [*95*],
    "Riccardo Graziani", "3", "8", "13", "17", "27", "27", [*95*],
    "Siria Salvalaio", "6", "9", "10", "18", "25", "27", [*95*],
    "Elia Ernesto Stellin", "5", "8", "12", "18", "27", "25", [*95*],
    table.footer([*Totale*], [*34*], [*56*], [*82*], [*124*], [*186*], [*183*], [*665*]),
  ),
  [Tabella suddivisione ore produttive per componente e ruolo],
  label-id: "tab-sudd-ore",
)


=== Suddivisione oraria iniziale

#tabella-paginata(
  table(
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
  ),
  [Tabella suddivisione ore produttive per componente e ruolo],
  label-id: "tab-sudd-ore",
)


== Grafico a torta della suddivisione oraria dallo sprint 14
#figure(
  align(center)[

    #let ore = (
      ("Responsabile", 36),
      ("Amministratore", 66),
      ("Analista", 76),
      ("Progettista", 112),
      ("Programmatore", 195),
      ("Verificatore", 180),
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
  ],
  caption: "Suddivisione oraria dallo sprint 14",
  kind: "grafico",
  supplement: [Grafico],
)


== Grafico a torta della suddivisione oraria dallo sprint 10
#figure(
  align(center)[

    #let ore = (
      ("Responsabile", 34),
      ("Amministratore", 56),
      ("Analista", 82),
      ("Progettista", 124),
      ("Programmatore", 186),
      ("Verificatore", 183),
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
  ],
  caption: "Suddivisione oraria dallo sprint 10",
  kind: "grafico",
  supplement: [Grafico],
)


== Grafico a torta della suddivisione oraria iniziale
#figure(
  align(center)[

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
  ],
  caption: "Suddivisione oraria iniziale",
  kind: "grafico",
  supplement: [Grafico],
)


= Stima dei costi di realizzazione
Il preventivo dei costi è calcolato moltiplicando le ore assegnate a ciascun ruolo per il relativo costo orario.\

Come per la sezione precedente è disponibile la suddivisione dei costi prima e dopo la riassegnazione dello sprint 10, la quale ha comportato una diminuzione della stime dei costi pari a *150 €*. Durante lo sprint 14 è stata effettuata una nuova ricalibrazione, che ha portato a un ulteriore risparmio di *100 €*.

== Tabella suddivisione ore e costi per ruoli a partire dallo sprint 14
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "36", "30 €/h", "1080 €",
    "Amministratore", "66", "20 €/h", "1320 €",
    "Analista", "76", "25 €/h", "1900 €",
    "Progettista", "112", "25 €/h", "2800 €",
    "Programmatore", "195", "15 €/h", "2925 €",
    "Verificatore", "180", "15 €/h", "2700 €",
    table.footer([*Totale*], [*665*], [-], [*12725 €*]),
  ),
  [Tabella suddivisione ore e costi per ruoli],
  label-id: "tab-sudd-ore-ruoli",
)

== Tabella suddivisione ore e costi per ruoli a partire dallo sprint 10
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "34", "30 €/h", "1020 €",
    "Amministratore", "56", "20 €/h", "1120 €",
    "Analista", "82", "25 €/h", "2050 €",
    "Progettista", "124", "25 €/h", "3100 €",
    "Programmatore", "186", "15 €/h", "2790 €",
    "Verificatore", "183", "15 €/h", "2745 €",
    table.footer([*Totale*], [*665*], [-], [*12825 €*]),
  ),
  [Tabella suddivisione ore e costi per ruoli],
  label-id: "tab-sudd-ore-ruoli",
)

== Tabella suddivisione ore e costi per ruoli iniziale
#tabella-paginata(
  table(
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
  ),
  [Tabella suddivisione ore e costi per ruoli],
  label-id: "tab-sudd-ore-ruoli",
)

== Grafico a torta dei costi progettuali dallo sprint 14
#figure(
  align(center)[

    #let costi = (
      ("Responsabile", 1080),
      ("Amministratore", 1320),
      ("Analista", 1900),
      ("Progettista", 2800),
      ("Programmatore", 2925),
      ("Verificatore", 2700),
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
  ],
  caption: "Costi complessivi per ogni ruolo a partire dallo rivalutazione dello sprint 14",
  kind: "grafico",
  supplement: [Grafico],
)

== Grafico a torta dei costi progettuali dallo sprint 10
#figure(
  align(center)[

    #let costi = (
      ("Responsabile", 1020),
      ("Amministratore", 1120),
      ("Analista", 2050),
      ("Progettista", 3100),
      ("Programmatore", 2790),
      ("Verificatore", 2745),
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
  ],
  caption: "Costi complessivi per ogni ruolo a partire dallo rivalutazione dello sprint 10",
  kind: "grafico",
  supplement: [Grafico],
)


== Grafico a torta dei costi progettuali iniziale
#figure(
  align(center)[

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
  ],
  caption: "Costi complessivi iniziali per ogni ruolo",
  kind: "grafico",
  supplement: [Grafico],
)



= Pianificazione RTB
La #gloss[RTB] è una periodo in cui vengono fissati i requisiti da soddisfare e si motivano le tecnologie, i framework e le librerie scelte. \
Inoltre, è necessario produrre un artefatto, chiamato #gloss[PoC], il quale ha lo scopo di valutare la fattibilità tecnologica del prodotto atteso secondo le scelte implementative fatte.

== Stesura Analisi dei Requisiti <S_AdR>
Il documento di #gloss[Analisi dei Requisiti] ha lo scopo di formalizzare le specifiche del prodotto software, definendo in modo chiaro le funzionalità, i vincoli e le interazioni del sistema. Esso rappresenta il riferimento principale per la verifica della conformità del prodotto rispetto alle richieste del proponente.

Per la redazione di questo documento sono previste le seguenti attività:
- *Analisi del capitolato e identificazione degli attori*: individuazione degli attori che interagiscono con il sistema, distinguendo tra utenti e componenti hardware/software (es. sensori BLE, gateway, sistema cloud);
- *Definizione scenari d'uso*: individuazione degli scenari principali per attore con lo scopo di scomporli in casi d'uso più dettagliati;
- *Definizione dei casi d'uso (use case)*: modellazione delle interazioni tramite diagrammi UML e descrizioni testuali dettagliate, comprendenti pre-condizioni, post-condizioni, scenari principali e scenari alternativi;
- *Specifica dei requisiti*: individuazione puntuale e classificazione dei requisiti in:
  - Funzionali (comportamenti attesi del sistema);
  - Non funzionali (vincoli di qualità, performance e sicurezza);
  - Di dominio (vincoli dettati dal contesto applicativo).

La redazione di tale documento coprirà l'intero arco temporale del periodo di RTB, iniziando dal primo sprint e concludendosi con la revisione RTB che attesta la corretta definizione dei requisiti e delle tecnologie scelte.

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
Allo stesso modo, l'analisi dei rischi e le relative strategie di mitigazione dovranno essere riviste ogni volta che un rischio si presenta, trattandosi di un processo continuo e non limitato al periodo iniziale.


== Stesura Norme di Progetto <S_NdP>
Il documento #gloss[Norme di Progetto] definisce il _Way of Working_ del gruppo, stabilendo le regole, gli strumenti e le procedure operative da seguire per garantire uniformità, efficienza ed efficacia nello svolgimento del progetto.

La redazione del documento prevede la definizione delle seguenti tipologie di processo:
- *Processi primari*: definiscono le attività direttamente legate alla realizzazione del prodotto software, come l'*acquisizione* e la *fornitura*;
- *Processi di supporto*: definiscono le attività che si integrano con i processi primari con lo scopo di semplificare e migliorare il lavoro del gruppo. Esempi di processi di supporto sono la *gestione delle configurazioni* e la *documentazione*;
- *Processi organizzativi*: essi avvengono parallelamente ai processi primari, le attività previste da questi processi sono volte a garantire un'ottima organizzazione dei processi di ciclo di vita e di migliorarli nel tempo. Un esempio di processo organizzativo è la *formazione*.

Il suddetto documento ha carattere incrementale perciò verrà aggiornato durante tutto l'arco del progetto didattico, con l'obiettivo di stabilizzarlo verso la fine del periodo di #gloss[RTB], quando le attività e i processi saranno ben definiti e consolidati.

== Stesura Piano di Qualifica <S_PdQ>
Il documento #gloss[Piano di Qualifica] ha lo scopo di definire la strategia di gestione della qualità adottata dal gruppo per garantire il soddisfacimento degli standard prefissati. Esso descrive le procedure operative di verifica e validazione, stabilendo metriche oggettive per monitorare sia l'efficienza dei processi interni che la conformità del prodotto software ai requisiti funzionali e qualitativi. Nello specifico, il documento stabilisce le metriche di valutazione applicate sia ai processi che al prodotto stesso, riportando anche i dettagli sulle procedure di verifica, sui test effettuati e sulle iniziative di miglioramento.

Il documento prevede il trattamento delle seguenti tematiche:
- *Metriche di qualità del processo*: definisce le metriche utilizzate per monitorare l'efficienza e l'efficacia dei processi interni;
- *Metriche di qualità del prodotto*: definisce le metriche utilizzate per valutare la conformità del prodotto software ai requisiti funzionali e non;
- *Metriche di testing*: definisce le metriche utilizzate per valutare l'efficacia dei test effettuati e la conseguente qualità del codice;
- *Definizione dei test*: definisce i test da effettuare, tra cui test di sistema, test di integrazione e test di unità. Nel periodo di #gloss[RTB] so definiranno solo i primi;
- *Cruscotto di valutazione*: definisce un cruscotto di monitoraggio delle metriche definite, quest'ultimo dovrà essere automatizzato il più possibile per garantire un monitoraggio costante e aggiornato. Inoltre le metriche dovranno avere delle soglie di accettabilità e di ottimalità per ogni metrica.
- *Iniziative di miglioramento*: definisce le iniziative previste per migliorare la qualità del processo e del prodotto, basate sui risultati delle metriche, sui feedback ricevuti ed eventualmente sulle sensazioni del gruppo.

== Stesura glossario
Il *glossario* ha lo scopo di facilitare la comprensione della documentazione da parte di lettori esterni e di fissare, all'interno del gruppo, definizioni univoche che riducano possibili ambiguità interpretative.\
Sebbene la sua prima versione sia stata redatta durante la *candidatura*, il documento richiede un aggiornamento continuo, integrando progressivamente nuove definizioni man mano che emergono durante il progetto.\
La sua completa realizzazione è pertanto prevista al termine dell'intero progetto didattico.

== Realizzazione Proof of Concept (PoC) <S_PoC>
La realizzazione del #gloss[Proof of Concept] (PoC) è fondamentale per valutare la fattibilità tecnologica del prodotto atteso e per validare le scelte tecnologiche fatte.
Lo studio e lo sviluppo per il PoC coinvolgeranno le seguenti attività:
- *Studio delle tecnologie candidate*: analisi approfondita delle tecnologie, dei framework e delle librerie individuate come potenziali soluzioni per il progetto, valutandone i pro e i contro in relazione ai requisiti del capitolato;
- *Sviluppo di prototipi*: realizzazione di prototipi funzionali che implementano le funzionalità chiave del prodotto atteso, al fine di testare l'integrazione delle tecnologie scelte e di identificare eventuali criticità o limitazioni;
- *Aggregazione dei diversi prototipi*: integrazione dei prototipi sviluppati in un unico #gloss[PoC].

Dato il #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[capitolato d'appalto C7], il PoC prevederà l'approfondimento e lo sviluppo delle seguenti tecnologie:
- *Message broker*: strumento per la distribuzione di messaggi tra i componenti del sistema. Le probabili alternative che il gruppo andrà ad esplorare sono: *NATS Jetstream*(consigliata dalla proponente), *RabbitMQ* e *Apache Kafka*;
- *Linguaggio back-end*: il gruppo necessiterà un linguaggio per lo sviluppo dei gateway simulati e della parte server side dell'applicazione. Le probabili alternative che il gruppo andrà ad esplorare sono: *Go*(utilizzato dalla proponente) e *C\#*;
- *Framework front-end*: il gruppo avrà bisogno di esplorare un framework per lo sviluppo di un'applicazione che gestisca il sistema. Le probabili alternative che il gruppo andrà ad esplorare sono: *Angular* e *React*.

= Pianificazione PB <pianificazione-pb>
La #gloss[PB] è il periodo in cui le attività si concentrano sulla definizione del design e dell'architettura del prodotto software, a seguito della validazione del #gloss[Proof of Concept]. Successivamente, si procederà alla realizzazione del #gloss[MVP], che rappresenta la prima versione funzionante del prodotto software, con un set di funzionalità limitato ma sufficiente a dimostrare la fattibilità e la maturità della baseline architetturale del software.

== Stesura Specifica Tecnica
Il documento #gloss[Specifica Tecnica] ha lo scopo di documentare le scelte architetturali e implementative fatte dal gruppo, fornendo una guida dettagliata alla struttura del sistema e alle decisioni progettuali adottate. Esso descrive l'architettura del sistema, i componenti principali, le loro interazioni e le tecnologie utilizzate, fungendo da riferimento per lo sviluppo e la manutenzione del prodotto software.\
La redazione del documento prevede le seguenti attività:
- *Elenco delle tecnologie adottate*: descrizione dettagliata delle tecnologie, dei framework e delle librerie utilizzate, motivando le scelte fatte in relazione ai requisiti del progetto;
- *Descrizione dell'architettura logica*: definizione dell'architettura logica del sistema, descrivendo i componenti principali e le loro interazioni;
- *Descrizione dell'architettura di dettaglio*: definizione dell'architettura di dettaglio del sistema, specificando le implementazioni dei singoli componenti e le loro interfacce;
- *Descrizione del design*: descrizione dettagliata del design del sistema, includendo diagrammi UML, modelli di dati e specifiche delle interfacce.

== Stesura Manuale Utente
Il documento #gloss[Manuale Utente] ha lo scopo di illustrare il funzionamento del prodotto software e di fornire istruzioni chiare e dettagliate per l'utilizzo delle sue funzionalità. Esso è rivolto principalmente agli utenti finali del sistema, con l'obiettivo di facilitare la comprensione e l'adozione del prodotto software.\
La redazione del documento prevede le seguenti attività:
- *Descrizione delle funzionalità*: illustrazione dettagliata delle funzionalità del prodotto software, spiegando come utilizzarle e quali sono i benefici che offrono agli utenti;
- *Istruzioni per l'installazione*: indicazioni dettagliate su come installare e configurare il prodotto software;
- *Istruzioni per l'uso*: fornitura di istruzioni passo-passo per l'utilizzo delle funzionalità del sistema, includendo esempi pratici e suggerimenti per risolvere eventuali problemi comuni;

== Aggiornamento Norme di Progetto
Il documento #gloss[Norme di Progetto] richiede un aggiornamento continuo durante tutto l'arco del progetto didattico, al fine di garantire che le norme siano sempre allineate con le esigenze operative del gruppo.
Durante il periodo di #gloss[PB] è previsto un aggiornamento del documento per integrare eventuali processi o procedure che si rendano necessari in seguito alla definizione dell'architettura del sistema e della codifica dello stesso.\
L'aggiornamento del documento prevede le seguenti attività:
- *Norme di progettazione*: definizione di norme specifiche per la progettazione del sistema, includendo linee guida per la definizione dell'architettura, del design e delle interfacce, con particolare attenzione agli strumenti utilizzati per la modellazione e la documentazione del design;
- *Norme di codifica*: ampliamento delle norme specifiche per la codifica del sistema, includendo linee guida per la scrittura del codice, la gestione delle versioni e l'integrazione continua, con particolare attenzione alle convenzioni da rispettare per produrre codice di qualità.

== Correzione Analisi dei Requisiti
Durante il periodo di #gloss[PB] è previsto un aggiornamento del documento #gloss[Analisi dei Requisiti] per:
- *Correggere* eventuali errori o incongruenze presenti nel documento;
- *Rimodulare* eventuali requisiti che necessitano di modifiche a seguito della definizione dell'architettura del sistema.\
L'aggiornamento del documento prevede le seguenti attività:
- *Correzione casi d'uso*: revisione dei casi d'uso esistenti per correggere eventuali errori o incompletezze, garantendo che siano accurati e completi;
- *Miglioramento della specifica dei requisiti non funzionali*: revisione e integrazione dei requisiti non funzionali per garantire che siano ben definiti, misurabili e allineati con le esigenze del progetto;
- *Integrazione di nuovi requisiti*: aggiunta di nuovi requisiti funzionali, non funzionali o di dominio che sono emersi durante la realizzazione dell'MVP e la definizione dell'architettura del sistema e che non erano stati previsti nella stesura iniziale del documento;

== Aggiornamento glossario
Durante il periodo di #gloss[PB] è previsto un aggiornamento del documento #gloss[glossario] per integrare eventuali definizioni che si rendano necessarie in seguito alla definizione dell'architettura del sistema e alla codifica dello stesso, al fine di garantire che il gruppo disponga di un riferimento aggiornato, coerente e completo.\
L'aggiornamento del documento prevede le seguenti attività:
- *Revisione delle definizioni esistenti*: correzione di eventuali definizioni che sono state rilevate come errate o incomplete;
- *Integrazione di nuove definizioni*: aggiunta di nuove definizioni per termini che sono emersi durante le attività di definizione dell'architettura e della codifica del sistema e che non erano stati previsti nella stesura iniziale del documento.

== Aggiornamento Piano di Progetto
Durante il periodo di #gloss[PB] è previsto un aggiornamento del documento di #gloss[Piano di Progetto], allo scopo di migliorare la profondità delle *retrospettive* effettuate dal gruppo durante le proprie riunioni settimanali di allineamento. \
L'aggiornamento del documento prevede le seguenti attività:
- *Valutazione di efficacia delle strategie di mitigazione*: analisi dell'efficacia delle strategie di mitigazione adottate per i rischi che si sono presentati, identificando eventuali aree di miglioramento e integrando nuove strategie se necessario;
- *Rivisitazione migliorativa delle attività future*: revisione delle attività pianificate per i periodi futuri, integrando eventuali nuove attività che si rendano necessarie e raffinando di conseguenza il preventivo a finire.

== Aggiornamento Piano di Qualifica
Durante il periodo di #gloss[PB] è previsto un aggiornamento del documento #gloss[Piano di Qualifica] per integrare metriche relative alla qualità della campagna di *test* effettuata sul prodotto software, al fine di garantire trasparenza e tracciabilità rispetto alla qualità del prodotto software sviluppato.
L'aggiornamento del documento prevede le seguenti attività:
- *Misurazione delle metriche di qualità dei test*: misurazione delle metriche specifiche per valutare l'efficacia della campagna di test, come la copertura del codice, il numero di bug rilevati e risolti, e la percentuale di test superati;
- *Aggiornamento del cruscotto di valutazione*: integrazione dei valori rilevati circa le metriche di qualità dei test nel cruscotto di monitoraggio, al fine di fornire una visione completa e aggiornata della qualità del prodotto software.

== Realizzazione del Minimum Viable Product (MVP)
La realizzazione del #gloss[MVP] rappresenta un momento cruciale del progetto, in quanto consente di concretizzare le scelte progettuali fatte durante la #gloss[PB] e di validare l'architettura e il design del prodotto software.\ Il processo di sviluppo dell'MVP coinvolgerà le seguenti attività:
- *Definizione dell'architettura software*: progettazione dell'architettura del sistema, definendo i componenti principali e le loro interazioni;
- *Sviluppo delle funzionalità chiave*: implementazione delle funzionalità principali del prodotto software, concentrandosi su quelle che rappresentano il cuore del sistema e che sono essenziali per la sua operatività;
- *Test e validazione*: codifica ed esecuzione di test (di _unità_, di _integrazione_ e di _sistema_) per verificare la correttezza e la funzionalità dell'MVP, identificando eventuali bug o problemi di performance e correggendoli di conseguenza.

= Pianificazione e analisi sprint per RTB
Questa sezione descrive come il gruppo organizza, monitora e valuta il lavoro svolto durante ciascuno #gloss[sprint]. \
Ogni #gloss[sprint] viene valutato attraverso un #gloss[consuntivo di periodo], il #gloss[preventivo a finire], i compiti svolti, i rischi occorsi e la #gloss[retrospettiva di periodo].

Al termine di ogni #gloss[sprint] viene redatta la programmazione e la previsione dello sprint successivo.
Vengono così stilati il #gloss[preventivo], i rischi attesi, le attività e i compiti da svolgere.

== Sprint 1 <sprint-1>
Inizio: 12/11/2025 \
Fine: 19/11/2025 \

Questo primo #gloss[sprint] ha lo scopo di avviare le stesura dei documenti #gloss[Piano di Progetto], #gloss[Analisi dei Requisiti] e #gloss[Norme di Progetto].

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Stesura *Piano di Progetto*;
- Stesura *Analisi dei Requisiti*, concentrandosi sui casi d'uso;
- Stesura *Norme di Progetto*;
- Redazione e invio del verbale esterno relativo all'incontro con _M31_ del 13/11/2025

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *Sprint 1*:
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici che limitano la loro disponibilità durante lo sprint.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
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
  ),
  [Sprint 1 - Preventivo risorse da utilizzare],
  label-id: "spr1-prev-risorse",
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

#graficoTorta("Sprint 1 - Ore produttive previste per ogni ruolo", orePrevSprint1)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti:
- Stesura *Piano di Progetto*;
- Stesura *Norme di Progetto*;
- Redazione e invio del verbale esterno relativo all'incontro con _M31_ del 13/11/2025

=== Retrospettiva
Il gruppo ha svolto, come previsto, la #gloss[Sprint Retrospective] in data _19/11/2025_.\
I compiti programmati sono stati completati correttamente, eccetto per la stesura dell'#gloss[Analisi dei Requisiti].
È presente un sentimento di tranquillità rispetto all'avanzamento del progetto e alla distribuzione dei compiti, il team è soddisfatto di come si sta lavorando insieme.\
Infine, i componenti responsabili della stesura dell'#gloss[Analisi dei Requisiti] hanno fatto notare la difficoltà nell'individuazione dei casi d'uso, ciò richiederà una maggior allocazione di risorse verso quella specifica attività. Tuttavia, ad oggi, l'analisi dei casi d'uso è ancora in un periodo "esplorativo", perciò non ha la priorità più alta.

=== Rischi occorsi
Il gruppo ha riscontrato il rischio *RP1*(@RP1) durante lo *sprint 1*. Tale rischio è stato gestito secondo quanto previsto, assegnando ai membri coinvolti un carico di lavoro ridotto e compiti non bloccanti.\
L'impatto complessivo è stato positivo, infatti il gruppo ha completato correttamente tutti i compiti pianificati e i componenti con impegni accademici sono riusciti a portare a termine i compiti loro affidati.
Inoltre si è verificato il rischio *RO1*(@RO1), il documento è più complesso del previsto e richiede un maggiore approfondimento del capitolato, perciò il gruppo discuterà dei dubbi sorti con la proponente nella prossima riunione.\
L'impatto è stato medio dato che la difficoltà non era quella aspettata e ciò ha comportato una posticipazione dell'attività.\
Tuttavia, il rischio è stato comunicato in tempo e i responsabili dell'attività sono stati assegnati ad altre task.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
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
  ),
  [Sprint 1 - Risorse utilizzate],
  label-id: "spr1-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint1 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 8),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#graficoTorta(
  "Sprint 1 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint1,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
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
  ),
  [Sprint 1 - Aggiornamento ore rimanenti],
  label-id: "spr1-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
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
  ),
  [Sprint 1 - Aggiornamento costi],
  label-id: "spr1-agg-costi",
)

== Sprint 2 <sprint-2>

Inizio: 19/11/2025 \
Fine: 26/11/2025 \

Il presente #gloss[sprint] ha lo scopo di continuare la stesura dei documenti *#gloss[Piano di Progetto]*, *#gloss[Analisi dei Requisiti]* e *#gloss[Norme di Progetto]*.
Inoltre, si procederà con l'approfondimento dei casi d'uso.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Continuazione stesura *Piano di Progetto*;
- Continuazione stesura *Norme di Progetto*;
- Approfondimento casi d'uso in *Analisi dei Requisiti*, grazie al supporto di _M31_ nell'incontro del 24/11/2025.

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *sprint 2*:
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici che limitano la loro disponibilità durante lo sprint.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
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
  ),
  [Sprint 2 - Preventivo risorse da utilizzare],
  label-id: "spr2-prev-risorse",
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
#graficoTorta("Sprint 2 - Ore produttive previste per ogni ruolo", orePrevSprint2)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
- Continuazione stesura *Piano di Progetto*;
- Continuazione stesura *Norme di Progetto*;
- Approfondimento casi d'uso in *Analisi dei Requisiti*;
- Incontro con _M31_ in data 24/11/2025 per discutere i casi d'uso.

=== Retrospettiva
Il gruppo ha svolto, come previsto, la #gloss[Sprint Retrospective] in data _26/11/2025_.\
I compiti programmati sono stati tutti eseguiti correttamente ed entro i tempi stabiliti.

Questo #gloss[sprint] ha permesso al gruppo di avanzare nella conoscenza e nella definizione dei casi d'uso, grazie al supporto fornito da _M31_ durante l'incontro del 24/11/2025.\
L'azienda si è dimostrata disponibile a chiarire i dubbi del gruppo e ha fornito un contributo sostanziale all'approfondimento e alla definizione dei casi d'uso. \
L'incontro è stato positivo perché ha dimostrato che il gruppo può fare affidamento sul supporto del #gloss[proponente], vista la sua alta disponibilità e competenza.

Infine, il team ha leggermente ridefinito il workflow di utilizzo delle GitHub Issue, al fine di migliorare la gestione delle attività e la tracciabilità del lavoro svolto. Ciò rappresenta un segnale positivo, in quanto dimostra la volontà del gruppo di ottimizzare continuamente i propri processi di lavoro.

=== Rischi occorsi
Il gruppo ha riscontrato il rischio *RP2*(@RP2) durante lo *sprint 2*. \
Un componente del gruppo ha fatto notare la mancanza di intraprendenza da parte di due membri, tuttavia la questione è stata risolta con un semplice confronto diretto. \
La situazione sollevata è stata affrontata in modo costruttivo con lo scopo di portare tutti i componenti sullo stesso livello di partecipazione attiva. \
L'impatto è stato minimo, dato che la questione è stata risolta e non ha influito nel benessere del gruppo.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
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
  ),
  [Sprint 2 - Risorse utilizzate],
  label-id: "spr2-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint2 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 8),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#graficoTorta(
  "Sprint 2 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint2,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
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
  ),
  [Sprint 2 - Aggiornamento ore rimanenti],
  label-id: "spr2-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
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
  ),
  [Sprint 2 - Aggiornamento costi],
  label-id: "spr2-agg-costi",
)

== Sprint 3 <sprint-3>
Inizio: 26/11/2025 \
Fine: 03/12/2025 \

Il presente #gloss[sprint] ha lo scopo di continuare con la stesura delle #gloss[Norme di Progetto], trovare delle metriche per il #gloss[Piano di Qualifica] e l'organizzazione di un brainstorming per la stesura dei casi d'uso. \

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Aggiunta sezione riguardante i documenti incrementali nelle #gloss[Norme di Progetto];
- Definizione di metriche adatte a misurare la qualità del progetto da utilizzare nel #gloss[Piano di Qualifica];
- Brainstorming per la stesura dei casi d'uso relativi all'#gloss[Analisi dei Requisiti];
- Correzione issue secondo le pratiche stabilite nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-26.pdf")[verbale interno del 26/11/2025].
- Implementazione automazione per la generazione della rendicontazione delle ore previste e lavorate per il #gloss[Piano di Progetto].

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *sprint 3*:
- *RO1*(@RO1): è possibile che il compito di selezione delle metriche subisca un ritardo, dato che l'individuazione di metriche adeguate non è immediata e occorre un'analisi piu profonda;
- *RO3*(@RO4): ci potrebbero essere opinioni contrastanti nel brainstorming sull'analisi dei requisiti;
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici che limitano la loro disponibilità durante lo sprint.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
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
  ),
  [Sprint 3 - Preventivo risorse da utilizzare],
  label-id: "spr3-prev-risorse",
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
#graficoTorta("Sprint 3 - Ore produttive previste per ogni ruolo", orePrevSprint3)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
- Aggiunta sezione riguardante i documenti incrementali nelle #gloss[Norme di Progetto];
- Brainstorming per la stesura dei casi d'uso relativi all'#gloss[Analisi dei Requisiti];
- Correzione issue secondo le pratiche stabilite nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-26.pdf")[verbale interno del 26/11/2025].
- Implementazione automazione per la generazione della rendicontazione delle ore previste e lavorate per il #gloss[Piano di Progetto].

=== Retrospettiva
Durante lo *sprint 3* sono stati completati tutti i compiti pianificati, eccetto la definizione delle metriche per il #gloss[Piano di Qualifica], la quale è stata posticipata dato che attualmente non possiede la massima priorità.\
Il brainstorming ha fatto maturare nel gruppo molti dubbi riguardo al capitolato, i quali sono stati posti e discussi con _M31_ nell'incontro del 01/12/2025. È possibile trovare le risposte a tali dubbi nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2025-12-02.pdf")[verbale esterno del 02/12/2025].\
L'incontro interno e quello con M31 hanno permesso al gruppo di chiarire molti aspetti riguardo ai casi d'uso e alle funzionalità attese dal proponente, migliorando così la comprensione del progetto da parte di tutti i membri.\
Infine, è stata implementata un'automazione per la rendicontazione, per singolo sprint, delle ore previste e lavorate nel #gloss[Piano di Progetto]. Ciò permetterà al gruppo di risparmiare tempo nella stesura del documento e di ridurre gli errori umani.

=== Rischi occorsi
Durante lo *sprint 3* è occorso il rischio *RO1*(@RO1), il che era previsto data la difficoltà del compito.\
Il gruppo ha deciso di posticipare la task ad uno sprint successivo, in quanto non possiede la massima priorità al momento. Il gruppo è totalmente concentrato nella definizione dei casi d'uso.
Il rischio ha avuto un impatto medio, in quanto era stato preventivato ma rimane un compito che dovrà essere completato in futuro.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
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
  ),
  [Sprint 3 - Risorse utilizzate],
  label-id: "spr3-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint3 = (
  ("Responsabile", 3),
  ("Amministratore", 1),
  ("Analista", 1),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 1),
)
#graficoTorta(
  "Sprint 3 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint3,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
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
  ),
  [Sprint 3 - Aggiornamento ore rimanenti],
  label-id: "spr3-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
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
  ),
  [Sprint 3 - Aggiornamento costi],
  label-id: "spr3-agg-costi",
)

== Sprint 4 <sprint-4>
Inizio: 03/12/2025 \
Fine: 10/12/2025 \

Il presente #gloss[sprint] ha lo scopo di continuare lo sviluppo dei casi d'uso.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Stesura casi d'uso per l'attore *super-admin*;
- Stesura casi d'uso per l'attore *#gloss[tenant]-admin*;
- Stesura casi d'uso per l'attore *#gloss[tenant]-user*;
- Stesura casi d'uso per l'attore *REST client*;
- Stesura casi d'uso per l'attore *gateway*;
- Stesura casi d'uso per l'attore *user generico*.

=== Rischi attesi <sprint-4-rischi-attesi>
Il gruppo prevede i seguenti rischi per lo *sprint 4*:
- *RO3*(@RO3): andando in profondità nei casi d'uso potrebbero sorgere dubbi, bloccando così lo sviluppo di certi casi d'uso;
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici imprevisti.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "2", "-", "-", "-", [*2*],
    "Alessandro Dinato", "3", "-", "2", "-", "-", "-", [*5*],
    "Michele Dioli", "-", "-", "2", "-", "-", "-", [*2*],
    "Hossam Ezzemouri", "-", "-", "2", "-", "-", "-", [*2*],
    "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
    "Siria Salvalaio", "-", "-", "2", "-", "-", "-", [*2*],
    "Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*3*], [*0*], [*14*], [*0*], [*0*], [*0*], [*17*]),
  ),
  [Sprint 4 - Preventivo risorse da utilizzare],
  label-id: "spr4-prev-risorse",
)

==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint4 = (
  ("Responsabile", 3),
  ("Amministratore", 0),
  ("Analista", 14),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta("Sprint 4 - Ore produttive previste per ogni ruolo", orePrevSprint4)

=== Compiti svolti
Il gruppo ha svolto i seguenti compiti *con successo*:
- Determinare use case per *user*, *tenant*, *REST client* (#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/88")[*issue \#88*])

Il gruppo ha svolto *parzialmente* i seguenti compiti:
- Use case *super admin* (#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/77")[*Issue \#77*])
- Use case *tenant admin* (#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/76")[*Issue \#76*])
- Use case *gateway* #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/75")[(*Issue \#75*)]

Questi ultimi compiti verranno continuati nello sprint successivo (@sprint-5).

=== Retrospettiva
La maggior parte dei compiti dello *sprint 4* sono stati rallentati considerevolmente da dubbi del gruppo relativi alla scrittura dei casi d'uso. Più nello specifico, i dubbi riguardavano il ruolo degli attori, la definizione di "sistema", il significato e lo scopo degli use case stessi.

Questi dubbi sono emersi durante le sessioni di #gloss[brainstorming] in cui il gruppo ha ragionato in modo approfondito sul #gloss[capitolato] e su come scriverne gli use case. Queste sessioni sono state altamente proficue, in quanto le questioni emerse sono fondamentali per la scrittura dell'#gloss[Analisi dei Requisiti] e la comprensione del capitolato stesso.

Il dialogo continuo con *M31 Srl*, via mail e in presenza (vd. #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2025-12-09.pdf")[*verbale esterno del 09/12/2025*]), ha permesso al gruppo di chiarire i dubbi emersi durante lo sprint e di farne emergere altri da chiarire.

Un ulteriore fattore di rallentamento nelle attività di gruppo è stata la difficoltà nell'organizzare sessioni di lavoro sincrone in cui ragionare a gruppi su use case diversi. Infatti, i membri del gruppo che non sono riusciti a lavorare insieme sincronamente hanno fatto emergere dei dubbi sostanziali relativi agli use case durante l'incontro di *Sprint Retrospective* del *10 dicembre 2025*, riassunto nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-11.pdf")[*verbale interno dell'11 dicembre 2025*].
#footnote[
  La riunione del *10 dicembre 2025* è riassunta nel verbale dell'*11 dicembre 2025* perché, sebbene nella riunione del *10 dicembre* il gruppo avrebbe dovuto svolgere l'usuale incontro settimanale di retrospettiva, questo è presto diventato una sessione di brainstorming sui dubbi del gruppo relativi agli use case. Per tale ragione, i componenti del gruppo hanno deciso di proseguire tale riunione l'*11 dicembre*, definendo ivi i ruoli e i compiti per lo *sprint 5*.
]

=== Rischi occorsi <sprint-4-rischi-occorsi>
Durante lo *sprint 4*, sono occorsi i seguenti rischi:
- *RO3* (@RO3): come previsto, lo studio dei requisiti del capitolato ha fatto sorgere numerosi dubbi relativi ai casi d'utilizzo del prodotto bloccando lo sviluppo di certi use case, soprattutto quelli relativi al simulatore di #gloss[gateway], perciò il gruppo ha deciso di esporre i dubbi di persona al professor Cardin e alla proponente. Questo rischio ha avuto un impatto medio poiché, sebbene fosse stato previsto, ha comunque causato ritardi nello sviluppo degli use case.
- *RP1* (@RP1), *RP3* (@RP3): gli impegni accademici o personali dei membri del gruppo hanno ostacolato il lavoro a gruppi sincroni di comprensione e studio degli use case, rallentandone la produzione. \
Ogni componente del gruppo si impegna, perciò, a comunicare in modo più preciso i propri impegni accademici e personali, così da permettere una programmazione più precisa.
Questo rischio ha avuto un impatto medio in quanto ha causato l'insorgere di dubbi verso la fine dello sprint.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "1 (-1)", "-", "-", "-", [*1*],
    "Alessandro Dinato", "3", "-", "3 (+1)", "-", "-", "-", [*6*],
    "Michele Dioli", "-", "-", "3 (+1)", "-", "-", "-", [*3*],
    "Hossam Ezzemouri", "-", "-", "3 (+1)", "-", "-", "-", [*3*],
    "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
    "Siria Salvalaio", "-", "-", "1 (-1)", "-", "-", "-", [*1*],
    "Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*3*], [*0*], [*15*], [*0*], [*0*], [*0*], [*18*]),
  ),
  [Sprint 4 - Risorse utilizzate],
  label-id: "spr4-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint4 = (
  ("Responsabile", 3),
  ("Amministratore", 0),
  ("Analista", 15),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 4 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint4,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "8", "7", "9 (-1)", "21", "24", "21", [*90*],
    "Alessandro Dinato", "1 (-3)", "7", "3 (-3)", "21", "23", "24", [*79*],
    "Michele Dioli", "4", "7", "7 (-3)", "21", "24", "23", [*86*],
    "Hossam Ezzemouri", "7", "8", "3 (-3)", "20", "24", "23", [*85*],
    "Riccardo Graziani", "8", "8", "4 (-2)", "20", "23", "24", [*87*],
    "Siria Salvalaio", "8", "8", "7 (-1)", "21", "24", "21", [*89*],
    "Elia Ernesto Stellin", "8", "8", "3 (-2)", "21", "23", "24", [*87*],
    table.footer([*Totale*], [*44*], [*53*], [*36*], [*145*], [*165*], [*160*], [*603*]),
  ),
  [Sprint 4 - Aggiornamento ore rimanenti],
  label-id: "spr4-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "44 (-3)", "30 €/h", "1320 € (-90 €)",
    "Amministratore", "53 ", "20 €/h", "1060 € ",
    "Analista", "36 (-15)", "25 €/h", "900 € (-375 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "160 ", "15 €/h", "2400 € ",
    table.footer([*Totale*], [*603*], [-], [*11780 €*]),
  ),
  [Sprint 4 - Aggiornamento costi],
  label-id: "spr4-agg-costi",
)


== Sprint 5 <sprint-5>
Inizio: 10/12/2025 \
Fine: 17/12/2025 \

Il presente sprint ha lo scopo di sviluppare ulteriormente i casi d'uso in vista dell'incontro con l'azienda proponente del 15/12/2025, in cui il gruppo presenterà gli use case prodotti all'azienda e riceverà feedback utili alla produzione dell'#gloss[analisi dei requisiti].

Inoltre, secondo quanto detto nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-11.pdf")[*verbale interno dell'11 dicembre 2025*], è sorta la necessità di creare degli *Issue Form* e delle automazioni per le #gloss[GitHub Issue] per aumentare la produttività del gruppo.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Sviluppo degli use case con attore *super admin*
- Sviluppo degli use case con attore *tenant admin*
- Sviluppo degli use case con attore *gateway*
- Creazione di *Issue Form* e automazioni per #gloss[GitHub Issue]

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *sprint 5*:
- *RO3* (@RO3): analogamente allo sprint precedente (vd. @sprint-4-rischi-attesi), un ulteriore studio degli use case può portare alla creazione di ulteriori dubbi che possono rallentare lo sviluppo degli use case.
- *RP1* (@RP1): alcuni membri del gruppo potrebbero avere impegni accademici imprevisti, che possono rendere più difficile un lavoro sincrono di brainstorming e di studio.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "1", "-", "-", "-", [*1*],
    "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
    "Michele Dioli", "-", "-", "2", "-", "-", "-", [*2*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
    "Riccardo Graziani", "-", "-", "1", "-", "-", "-", [*1*],
    "Siria Salvalaio", "-", "-", "1", "-", "-", "-", [*1*],
    "Elia Ernesto Stellin", "2", "2", "-", "-", "-", "-", [*4*],
    table.footer([*Totale*], [*2*], [*2*], [*7*], [*0*], [*0*], [*0*], [*11*]),
  ),
  [Sprint 5 - Preventivo risorse da utilizzare],
  label-id: "spr5-prev-risorse",
)

==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint5 = (
  ("Responsabile", 2),
  ("Amministratore", 2),
  ("Analista", 7),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta("Sprint 5 - Ore produttive previste per ogni ruolo", orePrevSprint5)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti:
- Sviluppo degli use case con attore *super admin* (#issue(97))
- Sviluppo degli use case con attore *tenant admin* (#issue(98))
- Sviluppo degli use case con attore *gateway* (#issue(99))
- Creazione di *Issue Form* e automazioni per #gloss[GitHub Issue] (#issue(104))

=== Retrospettiva
Durante lo *sprint 5*, il gruppo ha continuato la scrittura degli use case del progetto i quali, però, non sono ancora stati completati, a causa di una serie di dubbi che hanno rallentato i lavori del gruppo per l'intero sprint.

Per riuscire a scrivere il documento di #gloss[Analisi dei requisiti] in tempo utile, il gruppo si impegna a continuare la redazione degli use case nello sprint successivo.

Inoltre, la task "Creazione di *Issue Form* e automazioni per #gloss[GitHub Issue] (#issue(104))" ha impiegato molto più tempo da *amministratore* del previsto, in quanto non si aveva previsto che le automazioni desiderate dal gruppo richiedessero uno studio delle API di GitHub, che utilizzano #gloss[GraphQL] per le richieste.

=== Rischi occorsi
Il gruppo ha riscontrato principalmente i seguenti rischi:
- *RO3* (@RO3): analogamente allo sprint precedente (vd. @sprint-4-rischi-occorsi), i dubbi emersi durante lo sviluppo degli use case ne hanno rallentato lo sviluppo. Il gruppo perciò ha prontamente inviato una mail alla proponente con i dubbi emersi. \ L'impatto è stato medio dato che la conoscenza del capitolato è più stabile ed ha fatto emergere meno dubbi, ma ha comunque causato ritardi nello sviluppo degli use case.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "1", "-", "-", "-", [*1*],
    "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
    "Michele Dioli", "-", "-", "2", "-", "-", "-", [*2*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
    "Riccardo Graziani", "-", "-", "1", "-", "-", "1", [*2*],
    "Siria Salvalaio", "-", "-", "1", "-", "-", "-", [*1*],
    "Elia Ernesto Stellin", "1 (-1)", "5 (+3)", "-", "-", "-", "-", [*6*],
    table.footer([*Totale*], [*1*], [*5*], [*7*], [*0*], [*0*], [*1*], [*14*]),
  ),
  [Sprint 5 - Risorse utilizzate],
  label-id: "spr5-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint5 = (
  ("Responsabile", 1),
  ("Amministratore", 5),
  ("Analista", 7),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 1),
)
#graficoTorta(
  "Sprint 5 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint5,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "8", "7", "8 (-1)", "21", "24", "21", [*89*],
    "Alessandro Dinato", "1", "7", "1 (-2)", "21", "23", "24", [*77*],
    "Michele Dioli", "4", "7", "5 (-2)", "21", "24", "23", [*84*],
    "Hossam Ezzemouri", "7", "8", "3", "20", "24", "23", [*85*],
    "Riccardo Graziani", "8", "8", "3 (-1)", "20", "23", "23 (-1)", [*85*],
    "Siria Salvalaio", "8", "8", "6 (-1)", "21", "24", "21", [*88*],
    "Elia Ernesto Stellin", "7 (-1)", "3 (-5)", "3", "21", "23", "24", [*81*],
    table.footer([*Totale*], [*43*], [*48*], [*29*], [*145*], [*165*], [*159*], [*589*]),
  ),
  [Sprint 5 - Aggiornamento ore rimanenti],
  label-id: "spr5-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "43 (-1)", "30 €/h", "1290 € (-30 €)",
    "Amministratore", "48 (-5)", "20 €/h", "960 € (-100 €)",
    "Analista", "29 (-7)", "25 €/h", "725 € (-175 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "159 (-1)", "15 €/h", "2385 € (-15 €)",
    table.footer([*Totale*], [*589*], [-], [*11460 €*]),
  ),
  [Sprint 5 - Aggiornamento costi],
  label-id: "spr5-agg-costi",
)

== Sprint 6 <sprint-6>
Inizio: 17/12/2025 \
Fine: 01/01/2026 \

Il presente sprint ha lo scopo di raggiungere una versione stabile per i documenti di #gloss[Analisi dei requisiti] e #gloss[Piano di Qualifica], fissando la fine dello sprint (*31/12/2025*) come #gloss[milestone] interna pre-sessione invernale di studi.

=== Compiti da svolgere
Poiché i compiti da svolgere riguardano la redazione di due documenti diversi, *Analisi dei Requisiti* e *Piano di Qualifica*, il gruppo ha deciso di dividersi in due sottogruppi, ciascuno dei quali dovrà lavorare su uno dei documenti descritti sopra.

Il gruppo di lavoro per l'*Analisi dei Requisiti* ha individuato i seguenti compiti da svolgere:
- Approfondire gli use case scritti finora (#issue(123))
- Espandere gli use case troppo generici (#issue(124))
- Definire gli use case con cloud come *attore* e #gloss[gateway simulato] come *sistema* (#issue(125))
- Definire gli use case con sensore come *attore* e #gloss[gateway simulato] come *sistema* (#issue(126))
- Approfondire i metodi di normalizzazione dati da sensori BLE e approfondire gli strumenti Grafana+Prometheus (risp. #issue(133) e #issue(134))

Il gruppo di lavoro per il *Piano di Qualifica* ha individuato i seguenti compiti da svolgere:
- Definire le metriche da usare nel #gloss[Piano di Qualifica] (#issue(120))
- Definire la struttura del #gloss[Piano di Qualifica] (#issue(121))
- Creare foglio Google e relative automazioni per il cruscotto (#issue(122))

=== Rischi attesi
- *RO1* (@RO1): il mancato rispetto delle scadenze prefissate potrebbe ritardare notevolmente gli sviluppi dell'*Analisi dei Requisiti*, la cui redazione sarà ulteriormente rallentata nel periodo di sessione di studi invernale, fissata dal *19 gennaio 2026* al *21 febbraio 2026*;
- *RO2* (@RO2): l'errata organizzazione e distribuzione delle risorse del gruppo può portare a uno sbilanciamento nel carico di lavoro tra i due sottogruppi formati per lo sprint corrente.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
    "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
    "Michele Dioli", "-", "4", "-", "-", "-", "-", [*4*],
    "Hossam Ezzemouri", "-", "4", "-", "-", "-", "-", [*4*],
    "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
    "Siria Salvalaio", "-", "4", "-", "-", "-", "-", [*4*],
    "Elia Ernesto Stellin", "1", "-", "1", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*1*], [*12*], [*5*], [*0*], [*0*], [*0*], [*18*]),
  ),
  [Sprint 6 - Preventivo risorse da utilizzare],
  label-id: "spr6-prev-risorse",
)

==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint6 = (
  ("Responsabile", 1),
  ("Amministratore", 12),
  ("Analista", 5),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta("Sprint 6 - Ore produttive previste per ogni ruolo", orePrevSprint6)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 6:
- [AdR] UC per interfaccia utente #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/146")[\#146],
- [UC] Studio metodi di normalizzazione dati da sensori BLE #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/133")[\#133],
- [AdR] Approfondimento use case attuali #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/123")[\#123],
- [AdR] Definire UC attore=sensore simulato, sistema=gateway simulato #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/126")[\#126],
- [AdR] Definire UC con attore=cloud, sistema=simulatore gateway #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/125")[\#125],
- [PdQ] Trovare e definire metriche #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/120")[\#120],
- [Gloss] Creazione script per automatizzare parole del glossario #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/144")[\#144],
- [AdR] Divisione UC per interfaccia utente e UC generici #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/124")[\#124],
- Definire la struttura del #gloss[Piano di Qualifica] #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/121")[\#121],

=== Retrospettiva
L'obiettivo primario dello sprint 6 era il raggiungimento di una milestone interna fissata per il 31 dicembre 2025. Il gruppo mirava a ottenere una versione stabile dell'#gloss[Analisi dei Requisiti] e del #gloss[Piano di Qualifica] per anticipare il carico di lavoro in vista della sessione d'esami invernale, tuttavia il gruppo si è reso conto di aver sottovalutato gli obiettivi prefissati.\
Infatti sono stati fatti sostanziali progressi nell'#gloss[Analisi dei Requisiti], ma non si ha ancora raggiunto una versione stabile.\
Invece, per quanto riguarda il #gloss[Piano di Qualifica], l'attività di definizione delle metriche sta risultando più complessa e onerosa del previsto.

Visto il rallentamento previsto per le festività natalizie, lo sprint è stato strutturato su due settimane per bilanciare i tempi di produzione e permettere un maggiore lavoro asincrono, ciò ha permesso di concentrarsi esclusivamente sui compiti assegnati.\
Il gruppo ha apprezzato l'allungamento della durata dello sprint.

=== Rischi occorsi
Il gruppo si è imbattuto in *RO1* (@RO1) in quanto non è stato possibile realizzare il set di automazioni per il cruscotto relativo alle metriche del #gloss("Piano di Qualifica").
L'impatto del rischio è stato medio dato che l'assenza delle automazioni non ha interferito con i compiti contemporanei, tuttavia ha bloccato la visualizzazione delle metriche in modo automatico.\
La task è stata di conseguenza posticipata allo sprint successivo dandole una priorità maggiore in modo da poter stabilizzare l'intero reparto inerente al *Piano di Qualifica*.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
    "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
    "Michele Dioli", "-", "4", "-", "-", "-", "-", [*4*],
    "Hossam Ezzemouri", "-", "4", "-", "-", "-", "-", [*4*],
    "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
    "Siria Salvalaio", "-", "5 (+1)", "-", "-", "-", "-", [*5*],
    "Elia Ernesto Stellin", "1", "-", "1", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*1*], [*13*], [*5*], [*0*], [*0*], [*0*], [*19*]),
  ),
  [Sprint 6 - Risorse utilizzate],
  label-id: "spr6-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint6 = (
  ("Responsabile", 1),
  ("Amministratore", 13),
  ("Analista", 5),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 6 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint6,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "8", "7", "8", "21", "24", "21", [*89*],
    "Alessandro Dinato", "1", "7", "-1 (-2)", "21", "23", "24", [*75*],
    "Michele Dioli", "4", "3 (-4)", "5", "21", "24", "23", [*80*],
    "Hossam Ezzemouri", "7", "4 (-4)", "3", "20", "24", "23", [*81*],
    "Riccardo Graziani", "8", "8", "1 (-2)", "20", "23", "23", [*83*],
    "Siria Salvalaio", "8", "3 (-5)", "6", "21", "24", "21", [*83*],
    "Elia Ernesto Stellin", "6 (-1)", "3", "2 (-1)", "21", "23", "24", [*79*],
    table.footer([*Totale*], [*42*], [*35*], [*24*], [*145*], [*165*], [*159*], [*570*]),
  ),
  [Sprint 6 - Aggiornamento ore rimanenti],
  label-id: "spr6-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "42 (-1)", "30 €/h", "1260 € (-30 €)",
    "Amministratore", "35 (-13)", "20 €/h", "700 € (-260 €)",
    "Analista", "24 (-5)", "25 €/h", "600 € (-125 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "159 ", "15 €/h", "2385 € ",
    table.footer([*Totale*], [*570*], [-], [*11045 €*]),
  ),
  [Sprint 6 - Aggiornamento costi],
  label-id: "spr6-agg-costi",
)

== Sprint 7 <sprint-7>
Inizio: 02/01/2026 \
Fine: 14/01/2026 \

In questo sprint il gruppo si è concentrato su tre obiettivi principali: il raggiungimento di una versione stabile del #gloss("Piano di Qualifica"), la stesura dei requisiti relativi agli use case dell'#gloss("Analisi dei Requisiti") e il completamento del sistema di automazione per il cruscotto di valutazione delle metriche.

=== Compiti da svolgere
In seguito sono mostrati i compiti identificati:
- Stabilizzazione del Piano di Qualifica (#issue(149))
- Creazione foglio Google Sheet e realizzazione delle automazioni per il cruscotto (#issue(150))
- Completamento creazione use case (#issue(151))
- Stesura dei requisiti degli use case (#issue(152))
- Scrittura dei test di sistema (#issue(153))
- Studio iniziale del Proof of Concept (#issue(154))

=== Rischi attesi
- *RP1* (@RP1): trovandoci in prossimità della sessione invernale di esami la disponibilità temporale dei membri del gruppo potrebbe risultare ridotta a causa degli impegni accademici in concomitanza
- *RO1* (@RO1): dalla la possibilità che RP1 si verifichi potrebbe avvenire ritardi nel completamento delle task assegnate

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
    "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
    "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
    "Hossam Ezzemouri", "2", "-", "3", "-", "-", "-", [*5*],
    "Riccardo Graziani", "-", "-", "4", "-", "-", "-", [*4*],
    "Siria Salvalaio", "-", "-", "3", "-", "-", "-", [*3*],
    "Elia Ernesto Stellin", "-", "-", "3", "-", "-", "-", [*3*],
    table.footer([*Totale*], [*2*], [*0*], [*15*], [*0*], [*0*], [*0*], [*17*]),
  ),
  [Sprint 7 - Preventivo risorse da utilizzare],
  label-id: "spr7-prev-risorse",
)

==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint7 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 15),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta("Sprint 7 - Ore produttive previste per ogni ruolo", orePrevSprint7)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 7: \
- [PdQ] Stabilizzazione *Piano di Qualifica* #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/149")[\#149],
- [AdR] Scrittura requisiti UC31 - UC60 #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/160")[\#160],
- [AdR] Generalizzazione "admin generico" #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/163")[\#163],
- [AdR] Espansione UC di visualizzazione #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/162")[\#162],
- [AdR] Scrittura requisiti #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/127")[\#127],
- Creazione Google Sheet per cruscotto con automazioni #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/150")[\#150],

=== Retrospettiva
Durante lo sprint 7 il gruppo è riuscito a realizzare una versione stabile del #gloss("Piano di Qualifica"), procedendo alla selezione e all'adattamento delle metriche precedentemente analizzate. Permangono alcune correzioni di lieve entità, la cui implementazione è pianificata per lo sprint 8. \
La suddetta implementazione è fondamentale dato che fornisce la possibilità di verifica sulla qualità di processo del gruppo, dato sarà possibile visionare le metriche attraverso le automazioni realizzate.\
Per quanto riguarda la stesura dei requisiti, è stato possibile completare esclusivamente la definizione degli use case dal 31 al 60, ritardando la stesura dei requisiti successivi.
Di conseguenza, nello sprint 8 verrà data maggiore priorità al completamento della documentazione dei requisiti relativi ai restanti use case.

=== Rischi occorsi
Il gruppo ha riscontrato il rischio RO1 (@RO1), in quanto non è stato possibile completare integralmente la stesura dei requisiti relativi
agli use case analizzati, ma solo una parte di essi. L'impatto è valutato come medio, poiché si prevede di ultimare l' #gloss("Analisi dei Requisiti") in vista della conclusione della #gloss("RTB"), fissata per il 12 febbraio 2026. A tal fine, nello sprint 8 questa attività verrà intensificata per il suo completamento.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
    "Alessandro Dinato", "-", "-", "2", "-", "-", "-", [*2*],
    "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
    "Hossam Ezzemouri", "2", "-", "-", "-", "-", "3", [*5*],
    "Riccardo Graziani", "-", "-", "4", "-", "-", "-", [*4*],
    "Siria Salvalaio", "-", "-", "-", "-", "-", "3", [*3*],
    "Elia Ernesto Stellin", "-", "-", "3", "-", "-", "-", [*3*],
    table.footer([*Totale*], [*2*], [*0*], [*9*], [*0*], [*0*], [*6*], [*17*]),
  ),
  [Sprint 7 - Risorse utilizzate],
  label-id: "spr7-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint7 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 9),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 6),
)
#graficoTorta(
  "Sprint 7 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint7,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "8", "7", "8", "21", "24", "21", [*89*],
    "Alessandro Dinato", "1", "7", "-3 (-2)", "21", "23", "24", [*73*],
    "Michele Dioli", "4", "3", "5", "21", "24", "23", [*80*],
    "Hossam Ezzemouri", "5 (-2)", "4", "3", "20", "24", "20 (-3)", [*76*],
    "Riccardo Graziani", "8", "8", "-3 (-4)", "20", "23", "23", [*79*],
    "Siria Salvalaio", "8", "3", "6", "21", "24", "18 (-3)", [*80*],
    "Elia Ernesto Stellin", "6", "3", "-1 (-3)", "21", "23", "24", [*76*],
    table.footer([*Totale*], [*40*], [*35*], [*15*], [*145*], [*165*], [*153*], [*553*]),
  ),
  [Sprint 7 - Aggiornamento ore rimanenti],
  label-id: "spr7-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "40 (-2)", "30 €/h", "1200 € (-60 €)",
    "Amministratore", "35 ", "20 €/h", "700 € ",
    "Analista", "15 (-9)", "25 €/h", "375 € (-225 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "153 (-6)", "15 €/h", "2295 € (-90 €)",
    table.footer([*Totale*], [*553*], [-], [*10670 €*]),
  ),
  [Sprint 7 - Aggiornamento costi],
  label-id: "spr7-agg-costi",
)

== Sprint 8 <sprint-8>
Inizio: 14/01/2026 \
Fine: 28/01/2026 \

Il presente sprint ha lo scopo di focalizzarsi prioritariamente sulla stesura dei requisiti e sulla modellazione dei diagrammi use case. In parallelo, il team avvierà lo studio e l'apprendimento di #gloss[NATS] e #gloss[Angular] in vista dell'imminente implementazione del #gloss("PoC"), consolidando al contempo la documentazione normativa, il glossario e la definizione tecnica delle metriche.

=== Compiti da svolgere
In seguito sono mostrati i compiti identificati:
- Studio di NATS per future implementazioni (#issue(165)
- Scrittura diagrammi usa case (tramite Star UML) e stesura dei requisiti (#issue(166))
- Studio di Angular (#issue(169))
- Completare le iniziative di miglioramento e definire meglio alcune metriche nel #gloss[Piano di Qualifica] (#issue(171))
- Aggiornare il glossario (#issue(172), #issue(173), #issue(174), #issue(175))

=== Rischi attesi
- *RT1* (@RT1): lo studio di nuove tecnologie potrebbe risultare più lunga di quanto previsto e/o più difficile di quanto valutato.
- *RO1* (@RO1): si potrebbero verificare dei ritardi dato il periodo di studio intenso, legato al rischio *RP1* (@RP1).
- *RO2* (@RO2): l'errata organizzazione e distribuzione delle risorse del gruppo può portare ad un carico di lavoro squilibrato fra il gruppo che deve scrivere i diagrammi degli use case e gli altri membri del gruppo.
- *RP1* (@RP1): la *sessione invernale d'esami* potrebbe influire negativamente riguardo le scadenze prefissate.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "3", "-", "-", "-", [*3*],
    "Alessandro Dinato", "-", "-", "-", "-", "-", "-", [*0*],
    "Michele Dioli", "-", "-", "6", "-", "-", "-", [*6*],
    "Hossam Ezzemouri", "-", "-", "3", "-", "-", "-", [*3*],
    "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
    "Siria Salvalaio", "2", "2", "-", "-", "-", "-", [*4*],
    "Elia Ernesto Stellin", "-", "1", "1", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*2*], [*3*], [*13*], [*0*], [*0*], [*0*], [*18*]),
  ),
  [Sprint 8 - Preventivo risorse da utilizzare],
  label-id: "spr8-prev-risorse",
)

==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint8 = (
  ("Responsabile", 2),
  ("Amministratore", 3),
  ("Analista", 13),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta("Sprint 8 - Ore produttive previste per ogni ruolo", orePrevSprint8)

=== Compiti svolti
Il team ha svolto con successo i seguenti compiti nello sprint 8:
- Studio di NATS e Angular #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/165")[\#165] e #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/169")[\#169],
- Scrittura diagrammi usa case (tramite STAR UML) e stesura dei requisiti #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/166")[\#166]
- [PdQ] Ultimate le metriche con aggiunta di formule e definite le iniziative di miglioramento #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/171")[\#171],
- Aggiunte definizioni al glossario #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/172")[\#172], #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/173")[\#173], #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/174")[\#174] e #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/175")[\#175]

=== Retrospettiva
Lo sprint 8 ha visto il completamento dei compiti principali, ma con una produttività ridotta causata dalla sessione d'esami invernale (@RP1). L'impegno per gli appelli accademici ha limitato la disponibilità del team, rendendo difficile il rispetto rigoroso delle tempistiche su alcune issue secondarie. \
In ogni caso il team rimane fiducioso ed è convinto di potersi candidare per la #gloss[RTB] senza gravi ritardi.

=== Rischi occorsi
Il gruppo ha dovuto affrontare i rischi RT1 (@RT1) e RP1 (@RP1). La concomitanza con gli appelli d'esame ha comportato rallentamenti operativi, in particolare per quanto riguarda la issue #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/107")[#107]; non essendo stato possibile completarla entro i termini previsti è stata ri-pianificata e verrà portata a termine nel prossimo sprint.
L'impatto di questi rischi è stato relativamente basso dato all'anticipata previsione.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "4 (+1)", "-", "-", "-", [*4*],
    "Alessandro Dinato", "-", "-", "-", "-", "-", "-", [*0*],
    "Michele Dioli", "-", "-", "5", "-", "-", "-", [*5*],
    "Hossam Ezzemouri", "-", "-", "5 (+2)", "-", "-", "-", [*5*],
    "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
    "Siria Salvalaio", "2", "2", "-", "-", "-", "-", [*4*],
    "Elia Ernesto Stellin", "-", "1", "1", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*2*], [*3*], [*15*], [*0*], [*0*], [*0*], [*20*]),
  ),
  [Sprint 8 - Risorse utilizzate],
  label-id: "spr8-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint8 = (
  ("Responsabile", 2),
  ("Amministratore", 3),
  ("Analista", 15),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 8 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint8,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "8", "7", "4 (-4)", "21", "24", "21", [*85*],
    "Alessandro Dinato", "1", "7", "-3", "21", "23", "24", [*73*],
    "Michele Dioli", "4", "3", "-", "21", "24", "23", [*75*],
    "Hossam Ezzemouri", "5", "4", "-2 (-5)", "20", "24", "20", [*71*],
    "Riccardo Graziani", "8", "8", "-3", "20", "23", "23", [*79*],
    "Siria Salvalaio", "6 (-2)", "1 (-2)", "6", "21", "24", "18", [*76*],
    "Elia Ernesto Stellin", "6", "2 (-1)", "-2 (-1)", "21", "23", "24", [*74*],
    table.footer([*Totale*], [*38*], [*32*], [*0*], [*145*], [*165*], [*153*], [*533*]),
  ),
  [Sprint 8 - Aggiornamento ore rimanenti],
  label-id: "spr8-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "38 (-2)", "30 €/h", "1140 € (-60 €)",
    "Amministratore", "32 (-3)", "20 €/h", "640 € (-60 €)",
    "Analista", "0 (-15)", "25 €/h", "0 € (-375 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "153 ", "15 €/h", "2295 € ",
    table.footer([*Totale*], [*533*], [-], [*10175 €*]),
  ),
  [Sprint 8 - Aggiornamento costi],
  label-id: "spr8-agg-costi",
)

== Sprint 9 <sprint-9>
Inizio: 28/01/2026 \
Fine: 13/02/2026 \

Il presente sprint ha lo scopo di completare la progettazione e lo sviluppo del #gloss[Proof of Concept] a seguito del completamento dello studio delle tecnologie effettuato nel precedente sprint. Contestualmente all'attività di sviluppo, il gruppo si pone l'obiettivo di pubblicare nella #gloss[repository] la versione *1.0.0* dei documenti di #gloss[Analisi dei Requisiti] e #gloss[Norme di Progetto].

Una volta consolidati i #gloss[requisiti] si procederà alla stesura dei relativi *test di sistema* all'interno del #gloss[Piano di Qualifica]. Infine, il responsabile dello sprint avrà l'incarico di contattare il professor Cardin per definire la data della riunione di valutazione della prima parte della #gloss[RTB].

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- Studio del linguaggio #gloss[Go] e del framework #gloss[Gin] (#issue(6, repo: "poc"))
- Studio dello stack di monitoring composto da #gloss[Grafana] e #gloss[Prometheus] (#issue(14, repo: "poc"))
- Sviluppo #gloss[NATS] (#issue(1, repo: "poc")), composto dalle issue:
  - Sviluppo crittografia, autenticazione e account (#issue(2, repo: "poc"))
  - Impostazione #gloss[NATS] *Jetstream* (#issue(3, repo: "poc"))
  - Sviluppo collegamento *DataConsumer*-#gloss[TimescaleDB] (#issue(4, repo: "poc"))
- Sviluppo *API REST* con #gloss[Gin] (#issue(7, repo: "poc")), composto dalle issue:
  - Sviluppo API di *autenticazione* (#issue(8, repo: "poc"))
  - Sviluppo API per recupero dati *storici* da #gloss[TimescaleDB] (#issue(9, repo: "poc"))
  - Sviluppo API per recupero dati *real-time* da #gloss[NATS] (#issue(10, repo: "poc"))
- Sviluppo *dashboard* con #gloss[Angular] (#issue(11, repo: "poc")), composto dalle issue:
  - Login con dashboard #gloss[Angular] (#issue(16, repo: "poc"))
  - Sviluppo dashboard dati *storici* (#issue(12, repo: "poc"))
  - Sviluppo dashboard dati *real-time* (#issue(13, repo: "poc"))
- Integrazione di #gloss[Grafana] e #gloss[Prometheus] con #gloss[NATS] (#issue(15, repo: "poc"))
- Creazione presentazione tecnologie #gloss[RTB] (#issue(20, repo: "poc"))
- Stesura dei *test di sistema* (#issue(228), #issue(229), #issue(231), #issue(233), #issue(234))
- Aggiornare ed aggiungere termini al #gloss[glossario] (#issue(241), #issue(242), #issue(243), #issue(258))
- Rendere il #gloss[glossario] una risorsa web (#issue(189))
- Scrivere le sezioni mancanti delle #gloss[Norme di Progetto] (#issue(140), #issue(205), #issue(230))
- Classificare i requisiti per urgenza (#issue(226), #issue(227))
- Effettuare la revisione finale dell'#gloss[Analisi dei Requisiti] (#issue(261))
- Integrare il *cruscotto di valutazione* nel #gloss[Piano di Qualifica] (#issue(247))

=== Rischi attesi
- *RO1* (@RO1): la ridotta disponibilità dovuta alla *sessione d'esame* (@RP1) rischia di compromettere la sincronia del team, rallentando il coordinamento tra attività di *sviluppo* e *revisione documentale*.
- *RP1* (@RP1): la sessione d'esame invernale limita la capacità produttiva dei singoli componenti, con potenziale impatto sul rispetto delle scadenze prefissate.
- *RT1* (@RT1): lo studio di tecnologie non padroneggiate potrebbe richiedere tempistiche superiori alle stime, posticipando l'avvio delle attività operative.
// TODO: RT2 non ha ancora definiti occorrenza e impatto, l'ho messo comunque perché ha senso con le attività che abbiamo svolto
- *RT2* (@RT2): il passaggio alla pratica nel #gloss[PoC] espone il gruppo a imprevisti tecnici e tempi di debugging superiori alla norma a causa della scarsa familiarità pratica con le tecnologie.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "2", "-", "-", "4", "-", [*6*],
    "Alessandro Dinato", "-", "-", "-", "-", "7", "2", [*9*],
    "Michele Dioli", "-", "2", "2", "-", "4", "-", [*8*],
    "Hossam Ezzemouri", "-", "2", "-", "-", "4", "-", [*6*],
    "Riccardo Graziani", "3", "-", "-", "-", "9", "2", [*14*],
    "Siria Salvalaio", "-", "2", "-", "-", "-", "-", [*2*],
    "Elia Ernesto Stellin", "-", "1", "2", "-", "3", "-", [*6*],
    table.footer([*Totale*], [*3*], [*9*], [*4*], [*0*], [*31*], [*4*], [*51*]),
  ),
  [Sprint 9 - Preventivo risorse da utilizzare],
  label-id: "spr9-prev-risorse",
)

==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint9 = (
  ("Responsabile", 3),
  ("Amministratore", 9),
  ("Analista", 4),
  ("Progettista", 0),
  ("Verificatore", 4),
  ("Programmatore", 31),
)
#graficoTorta("Sprint 9 - Ore produttive previste per ogni ruolo", orePrevSprint9)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti nello sprint 9:
- [PoC] Studio del linguaggio #gloss[Go] e del framework #gloss[Gin] (#issue(6, repo: "poc"))
- [PoC] Studio dello stack di monitoring composto da #gloss[Grafana] e #gloss[Prometheus] (#issue(14, repo: "poc"))
- [PoC] Sviluppo #gloss[NATS] (#issue(1, repo: "poc")) e relative _sub-issue_
- [PoC] Sviluppo *API REST* con #gloss[Gin] (#issue(7, repo: "poc")) e relative _sub-issue_
- [PoC] Sviluppo *dashboard* con #gloss[Angular] (#issue(11, repo: "poc")) e relative _sub-issue_
- [PoC] Integrazione di #gloss[Grafana] e #gloss[Prometheus] con #gloss[NATS] (#issue(15, repo: "poc"))
- [PdQ] Stesura dei *test di sistema* (#issue(228), #issue(229), #issue(231), #issue(233), #issue(234))
- [Gloss] Aggiornare e aggiungere termini al #gloss[glossario] (#issue(241), #issue(242), #issue(243), #issue(258))
- [Gloss] Rendere il #gloss[glossario] una risorsa web (#issue(189))
- [NdP] Scrivere le sezioni mancanti delle #gloss[Norme di Progetto] (#issue(140), #issue(205), #issue(230))
- [AdR] Classificare i requisiti per urgenza (#issue(226), #issue(227))
- [AdR] Effettuare la revisione finale dell'#gloss[Analisi dei Requisiti] (#issue(261))

I seguenti compiti sono stati posticipati:
- [PdQ] Integrare il *cruscotto di valutazione* nel #gloss[Piano di Qualifica] (#issue(247))

=== Retrospettiva
Nella riunione interna del #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2026-01-30.pdf")[*30 gennaio 2026*] il gruppo ha intrapreso una revisione critica del proprio #gloss[Way of Working]. Tale confronto ha portato alla definizione di un nuovo *workflow* per la gestione delle #gloss[issue] e la pianificazione delle attività e dei compiti, volto a ottimizzare la distribuzione del carico di lavoro. L'applicazione di questa metodologia durante lo sprint corrente ha dato prova di una maggiore *efficienza* operativa, permettendo un tracciamento più puntuale dei progressi e una migliore reattività alle criticità.

Questa riorganizzazione non solo ha garantito il completamento di tutti i compiti legati allo *sviluppo* del #gloss[PoC] entro le scadenze prefissate, ma ha anche consentito al gruppo di *assorbire* i ritardi accumulati negli sprint precedenti. Grazie a una pianificazione più granulare e a un monitoraggio costante del progresso, il gruppo ha ritrovato la sincronia necessaria per ultimare il rilascio della documentazione in tempo utile. Tale solidità operativa ha reso possibile lo svolgimento della riunione di *revisione* con il professor Cardin in data *12 febbraio 2026*.

Durante lo *sprint 10* il gruppo si focalizzerà sul consolidamento finale della documentazione in vista della fine dell'#gloss[RTB]. L'obiettivo primario sarà il rilascio nella _repository_ della versione *1.x.x* dei documenti rimanenti, con particolare attenzione al #gloss[Piano di Qualifica] e al presente #gloss[Piano di Progetto]. Infine, sul piano gestionale, lo sprint prevede l'avvio dei contatti con il professor Vardanega per concordare la data della *seconda riunione* di valutazione relativa alla #gloss[RTB].

=== Rischi occorsi
Il manifestarsi del rischio *RP1* (@RP1) durante la sessione invernale è stato gestito con successo attraverso i canali di comunicazione interna. La segnalazione anticipata delle difficoltà individuali ha consentito al gruppo di riorganizzare i compiti in modo dinamico, assorbendo il carico di lavoro residuo tra i membri con maggiore disponibilità. L'impatto rilevato è dunque *basso*.

L'esecuzione parallela delle attività di sviluppo e redazione documentale ha richiesto una *ridefinizione* delle priorità operative, come previsto dal rischio *RO1* (@RO1). Al fine di garantire il completamento della documentazione necessaria per la revisione con il professor Cardin, il gruppo ha deciso di posticipare i compiti non critici: nello specifico, l'integrazione del cruscotto di valutazione (#issue(247)) è stata posticipata allo sprint successivo. L'impatto rilevato è valutato come *basso*, in quanto la pianificazione strategica ha permesso di portare a termine i compiti a priorità maggiore.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "3 (+1)", "-", "-", "4", "-", [*7*],
    "Alessandro Dinato", "-", "-", "-", "-", "6 (-1)", "-", [*6*],
    "Michele Dioli", "-", "2", "-", "-", "3 (-1)", "-", [*5*],
    "Hossam Ezzemouri", "-", "2", "-", "-", "4", "-", [*6*],
    "Riccardo Graziani", "3", "-", "-", "-", "10 (+1)", "2", [*15*],
    "Siria Salvalaio", "-", "2", "-", "-", "-", "-", [*2*],
    "Elia Ernesto Stellin", "-", "2 (+1)", "1 (-1)", "-", "4 (+1)", "-", [*7*],
    table.footer([*Totale*], [*3*], [*11*], [*1*], [*0*], [*31*], [*2*], [*48*]),
  ),
  [Sprint 9 - Risorse utilizzate],
  label-id: "spr9-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint9 = (
  ("Responsabile", 3),
  ("Amministratore", 11),
  ("Analista", 1),
  ("Progettista", 0),
  ("Verificatore", 2),
  ("Programmatore", 31),
)
#graficoTorta(
  "Sprint 9 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint9,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "8", "4 (-3)", "4", "21", "20 (-4)", "21", [*78*],
    "Alessandro Dinato", "1", "7", "-3", "21", "17 (-6)", "24", [*67*],
    "Michele Dioli", "4", "1 (-2)", "-", "21", "21 (-3)", "23", [*70*],
    "Hossam Ezzemouri", "5", "2 (-2)", "-2", "20", "20 (-4)", "20", [*65*],
    "Riccardo Graziani", "5 (-3)", "8", "-3", "20", "13 (-10)", "21 (-2)", [*64*],
    "Siria Salvalaio", "6", "-1 (-2)", "6", "21", "24", "18", [*74*],
    "Elia Ernesto Stellin", "6", "-", "-3 (-1)", "21", "19 (-4)", "24", [*67*],
    table.footer([*Totale*], [*35*], [*21*], [*-1*], [*145*], [*134*], [*151*], [*485*]),
  ),
  [Sprint 9 - Aggiornamento ore rimanenti],
  label-id: "spr9-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "35 (-3)", "30 €/h", "1050 € (-90 €)",
    "Amministratore", "21 (-11)", "20 €/h", "420 € (-220 €)",
    "Analista", "-1 (-1)", "25 €/h", "-25 € (-25 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "134 (-31)", "15 €/h", "2010 € (-465 €)",
    "Verificatore", "151 (-2)", "15 €/h", "2265 € (-30 €)",
    table.footer([*Totale*], [*485*], [-], [*9345 €*]),
  ),
  [Sprint 9 - Aggiornamento costi],
  label-id: "spr9-agg-costi",
)


== Sprint 10 <sprint-10>
Inizio: 13/02/2026 \
Fine:  24/02/2026\

Il presente sprint ha lo scopo di ultimare e verificare la documentazione, obiettivo intrapreso durante lo sprint precedente, per il rilascio nella _repository_ nella versione *1.x.x*, in vista della fine dell'#gloss[RTB].

Viene inoltre preparata la presentazione necessaria in vista della *seconda riunione* di valutazione relativa alla #gloss[RTB], concordata con il professor Vardanega.

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- La creazione degli indici delle tabelle e delle figure (#issue(271)):
  - Per il documento #gloss[AdR] (#issue(284))
  - Per il documento #gloss[PdP] (#issue(286))
  - Per il documento #gloss[PdQ] (#issue(288))
- La revisione del PdP:
  - Verifica delle sezioni adibite agli sprint precedenti (#issue(282))
  - Revisione parte introduttiva (#issue(269))
- La revisione del PdQ:
  - Integrazione del cruscotto di valutazione (#issue(247))
  - Verifica sulla stesura dei Test (#issue(251))
  - Definizione dei Test di Accettazione (#issue(292))
  - Conversione dei Test di Sistema in JSON (#issue(302))
- La stesura di una lettera di presentazione della RTB (#issue(260))
- Creazione delle diapositive per la presentazione della RTB al professor Vardanega (#issue(270))
- La verifica di ciascuna delle attività precedenti

=== Rischi attesi
- *RP1* (@RP1): diversi membri del gruppo parteciperanno ad una o più prove d'esame durante il periodo di questo sprint, potenzialmente riducendo la capacità produttiva.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "4", "-", "-", "-", "-", "3", [*7*],
    "Alessandro Dinato", "-", "3", "2", "-", "-", "3", [*8*],
    "Michele Dioli", "-", "2", "-", "-", "-", "-", [*2*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
    "Riccardo Graziani", "-", "1", "-", "-", "-", "7", [*8*],
    "Siria Salvalaio", "-", "-", "-", "-", "-", "-", [*0*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "-", "-", [*0*],
    table.footer([*Totale*], [*4*], [*6*], [*2*], [*0*], [*0*], [*13*], [*25*]),
  ),
  [Sprint 10 - Preventivo risorse da utilizzare],
  label-id: "spr10-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint10 = (
  ("Responsabile", 4),
  ("Amministratore", 6),
  ("Analista", 2),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 13),
)
#graficoTorta("Sprint 10 - Ore produttive previste per ogni ruolo", orePrevSprint10)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti nello sprint 10, alcuni dei quali sono stati identificati e portati a termine:
- [PdQ] Integrazione *cruscotto di valutazione* (#issue(247))
- [PdQ] Verificare la stesura di tutti i test (#issue(251))
- [RTB] Lettera di presentazione RTB (#issue(260))
- [PdP] Sezioni mancanti introduzione (#issue(269))
- [RTB] Presentazione RTB parte 2 (#issue(270))
- Sistemare didascalie per immagini, tabelle e grafici (#issue(271)) e relative _sub-issue_
- [PdP] Aggiornare definizione e struttura Consuntivo a Finire e Consuntivo di Periodo (#issue(279))
- [Glossario] Aggiornare definizione Consuntivo a finire e Consuntivo di Periodo (#issue(280))
- [PdP] Verificare gli sprint (#issue(282))
- [PdQ] Definizione Test di Accettazione (#issue(292))
- [AdR] Portare requisiti in JSON (#issue(294))
- [AdR] Revisione RTB: approfondire casi d'uso (#issue(295))
- [AdR] Revisione RTB: Sistemare RNF, RD (#issue(296))
- [AdR] Revisione RTB: Tracciamento casi d'uso - requisiti (#issue(297))
- [AdR] Revisione RTB: vincoli su tecnologie, requisiti minimi e requisiti di qualità (#issue(298))
- [PdQ] Portare Test di Sistema in JSON (#issue(302))
- [NdP] Inserire metriche nelle Norme invece che nel PdQ (#issue(303))
- [NdP] Adattare norme a modifiche alla repo (#issue(307))


=== Retrospettiva
All'inizio dello sprint sono stati completamente assorbiti gli ultimi ritardi, tramite le prime *issue* elencate nel paragrafo precedente.

Lo sprint ha rappresentato un punto di svolta nel progetto, poiché ha coinciso con la conclusione del periodo RTB e con il conseguente ribilanciamento delle ore previste per ruolo e componente. L’obiettivo principale dello sprint era consolidare quanto prodotto nei nove sprint precedenti, completare le ultime attività di analisi e predisporre una base stabile per la fase successiva del progetto.

Anche la *seconda riunione* con il professor Vardanega è andata a buon fine: dopo aver esposto gli argomenti prefissati, la presentazione del gruppo ha ottenuto una valutazione positiva. In particolar modo è stata apprezzata la sezione sull'autovalutazione e le modifiche apportate al nostro #gloss[Way of Working]. Si è rivelato efficace ridefinire il *workflow* per la gestione delle #gloss[issue] e l' individuazione e suddivisione delle attività da svolgere. Con questo sprint il gruppo ha inoltre ristrutturato la nostra #gloss[repository], separando diversi contesti che, anche se ovviamente collegati, possono ora essere sviluppati e seguiti in modo più chiaro e preciso. Per lo stesso motivo il gruppo ha deciso di cambiare approccio per le attività di verifica, ora eseguite tramite #gloss[Pull Request], rendendo l'intero procedimento più tracciabile.

Dopo il ridefinimento del #gloss[Way of Working], il gruppo ha deciso di ribilanciare la suddivisione oraria prevista per componente e ruolo.

=== Rischi occorsi
Nonostante la presenza del rischio *RP1* (@RP1), il gruppo è riuscito a portare a termine le attività individuate inizialmente, nonché quelle emerse successivamente, mitigandone l'impatto ed evitando quindi di incappare in ritardi. Ciò è stato possibile sia grazie ad una maggior organizzazione da parte dai membri con maggior disponibilità oraria per le attività di progetto, sia perché i compiti principali per lo sprint corrente si sono limitati alla scrittura di documentazione.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "4", "-", "-", "-", "-", "3", [*7*],
    "Alessandro Dinato", "-", "3", "-", "-", "-", "3", [*6*],
    "Michele Dioli", "-", "1 (-1)", "-", "-", "-", "-", [*1*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
    "Riccardo Graziani", "-", "1", "-", "-", "-", "7", [*8*],
    "Siria Salvalaio", "-", "-", "-", "-", "-", "-", [*0*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "-", "-", [*0*],
    table.footer([*Totale*], [*4*], [*5*], [*0*], [*0*], [*0*], [*13*], [*22*]),
  ),
  [Sprint 10 - Risorse utilizzate],
  label-id: "spr10-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint10 = (
  ("Responsabile", 4),
  ("Amministratore", 5),
  ("Analista", 0),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 13),
)
#graficoTorta(
  "Sprint 10 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint10,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "4", "4", "18", "24", "23 (-3)", [*73*],
    "Alessandro Dinato", "-", "4 (-3)", "-", "18", "19", "22 (-3)", [*63*],
    "Michele Dioli", "4", "-", "-", "18", "24", "25", [*71*],
    "Hossam Ezzemouri", "-", "3", "2", "17", "23", "22", [*67*],
    "Riccardo Graziani", "-", "7 (-1)", "-", "17", "17", "17 (-7)", [*58*],
    "Siria Salvalaio", "4", "-", "7", "18", "25", "22", [*76*],
    "Elia Ernesto Stellin", "3", "-", "-", "18", "23", "25", [*69*],
    table.footer([*Totale*], [*11*], [*18*], [*13*], [*124*], [*155*], [*156*], [*477*]),
  ),
  [Sprint 10 - Aggiornamento ore rimanenti],
  label-id: "spr10-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "11 (-4)", "30 €/h", "330 € (-120 €)",
    "Amministratore", "18 (-5)", "20 €/h", "360 € (-100 €)",
    "Analista", "13 ", "25 €/h", "325 € ",
    "Progettista", "124 ", "25 €/h", "3100 € ",
    "Programmatore", "155 ", "15 €/h", "2325 € ",
    "Verificatore", "156 (-13)", "15 €/h", "2340 € (-195 €)",
    table.footer([*Totale*], [*477*], [-], [*8780 €*]),
  ),
  [Sprint 10 - Aggiornamento costi],
  label-id: "spr10-agg-costi",
)


== Sprint 11 <sprint-11>
Inizio: 24/02/2026 \
Fine:  11/03/2026\

Il presente #gloss("sprint") ha lo scopo di iniziare e concludere la prima fase di progettazione, completando i #gloss("diagrammi C4") del sistema, per poi avviare la fase di coding dei vari microservizi.\ È inoltre necessario configurare tutte le #gloss("repository") con i rispettivi #gloss("dev container"), così da garantire un ambiente di sviluppo funzionante e il più fluido possibile.

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- Aggiornare il _workflow_ per ottimizzare il lavoro asincrono ((#issue(328)))
- La individuazione dei servizi per la progettazione:
  - Dividere servizio #gloss("data consumer") per funzionalità  (#issue(329))
  - Dividere servizio #gloss("gateway") per funzionalità (#issue(330))
  - Dividere servizio #gloss("dashboard") #gloss("frontend") per funzionalità (#issue(331))
  - Dividere servizio dashboard backend per funzionalità (#issue(332))
- Impostazione #gloss("dev container") e integrazione con #gloss("CI") (#issue(392))
- Aggiornare con _file_ onClosePR.yml in tutte le #gloss("repo") (#issue(393))
- Creare e impostare _label_ «epic» per #gloss("issue") di raggruppamento (#issue(394))
- Togliere sezioni #gloss("RTB") e candidatura da #gloss("repository") pubblico (#issue(395))
- Codifica componenti stabili (#issue(396))
- Impostare #gloss("MkDocs") per sito _web_ (#issue(398))
- Cambiare funzione issue() su #gloss("Typst") (#issue(399))
- Creare funzione pr() su #gloss("Typst") (#issue(400))
- Aggiornare _workflow_ #gloss("NdP") (#issue(401))
- Codifica componenti stabili Gateway (#issue(2, repo: "gw"))
- [Angular] Setup struttura dashboard frontend (#issue(3, repo: "dash"))

=== Rischi attesi
- *RT1* (@RT1): La scelta del gruppo di rappresentare il sistema con i #gloss("diagrammi C4") rappresenta un rischio tecnologico data la non familiarità con tale tecnologia.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "3", "-", "3", [*6*],
    "Alessandro Dinato", "-", "1", "-", "8", "5", "2", [*16*],
    "Michele Dioli", "4", "1", "-", "7", "-", "-", [*12*],
    "Hossam Ezzemouri", "-", "5", "-", "-", "-", "-", [*5*],
    "Riccardo Graziani", "-", "3", "-", "9", "-", "-", [*12*],
    "Siria Salvalaio", "-", "2", "-", "-", "-", "-", [*2*],
    "Elia Ernesto Stellin", "-", "4", "-", "11", "-", "2", [*17*],
    table.footer([*Totale*], [*4*], [*16*], [*0*], [*38*], [*5*], [*7*], [*70*]),
  ),
  [Sprint 11 - Preventivo risorse da utilizzare],
  label-id: "spr11-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint11 = (
  ("Progettista", 38),
  ("Responsabile", 4),
  ("Amministratore", 16),
  ("Analista", 0),
  ("Programmatore", 5),
  ("Verificatore", 7),
)
#graficoTorta("Sprint 11 - Ore produttive previste per ogni ruolo", orePrevSprint11)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 11: \

- Creazione delle repo per l'MVP e automation (#issue(336))
- Creazione Component Diagram per Data Consumer (#issue(329))
- [ST] Component Diagram per Gateway (#issue(330))
- Creazione Component Diagram per Frontend Angular (#issue(331))
- [Actions] Integrazione dell'action issue-branch (#issue(335))
- Code Diagram per Data Partitioner (#issue(345))
- [PdP] Script Piano di Progetto includendo PR (#issue(347))
- [Action] Action per campi PR (#issue(348))
- [ST] code diagram componenti gate manager, gate agent (#issue(355))
- [ST] code diagram sim. sens, config. manager, gate command, data pubbl. (#issue(356))
- [ST] Creazione Deployment diagram (#issue(360))
- Togliere sezioni RTB e candidatura da repo pubblico (#issue(395))
- Impostazione dev container e integrazione con CI (#issue(392))
- Impostare MkDocs per sito web (#issue(398))
- Creazione delle repo (#issue(337))
- setting automation (#issue(338))
- [ST] Code Diagram per Angular SPA (UML) (#issue(365))
- Progettazione cloud (#issue(397))
- [ST] Component Diagram per Backend Gin (#issue(332))
- [Action] GH Action per rimozione issue branch "stale" (#issue(374))
- [Action] Action per assegnare issue a living task relativa (se possibile) (#issue(375))
- [Action] GH Action per impostare sez. "Development" delle PR (#issue(376))
- Codifica componenti stabili Gateway (#issue(2, repo: "gw"))
- [VI/VE] Fix template verbali per registro modifiche (#issue(403))
- test label (#issue(3, repo: "gw"))
- [ST] Code Diagram user service, tenant s, gateway s, data s (#issue(416))
- [ST] Code Diagram user service, tenant s, gateway s, data s (#issue(417))
- [Action] Fix compilazione font su Typst (#issue(423))
- [Action] Compilazione MkDocs (#issue(424))
- [website] FIx mkdoc per sito (#issue(427))
- [Angular] Setup struttura dashboard frontend (#issue(3, repo: "dash"))
- [ST] Code Diagram container gateway (#issue(354))
- [ST] Code Diagram cloud backend (#issue(415))

=== Retrospettiva
Lo sprint è coinciso con l'inizio della #gloss("PB"), il gruppo si è dovuto organizzare per capire come procedere al meglio. La  #gloss("PB") richiede un livello di progettazione più fine rispetto a quello svolto per il PoC, di conseguenza, il gruppo si è dovuto specializzare nella progettazione del sistema previsto dal capitolato.\
Il gruppo ha raggiunto un livello di #gloss("Way of Working") che si può considerare ottimale: il nuovo sistema di #gloss("issue-branch") introdotto ha avuto una risposta positiva da parte del gruppo e si è riusciti a utilizzare le #gloss("pull request") come strumento di verifica.\
La progettazione ha necessitato di uno studio iniziale della sintassi appropriata per realizzare i #gloss("diagrammi C4"). Una volta completato lo studio, si è suddiviso il carico di lavoro in singole persone o gruppi di persone, come nel caso del sistema backend, hanno costruito i rispettivi #gloss("diagrammi C4").\
Per le domande sorte durante la progettazione, si è deciso di chiedere consiglio al professor Cardin, il quale ci ha concesso un ricevimento di gruppo utile a chiarire i dubbi relativi alla progettazione.\
È stata inoltre completata la configurazione delle varie #gloss("repository") con i rispettivi #gloss("dev container"), così da garantire un ambiente di sviluppo uniforme per tutto il gruppo.\
È stato introdotto il #gloss("framework") #gloss("MkDocs") per la visualizzazione del manuale utente.\
È stata avviata la scrittura delle parti iniziali e descrittive del documento di specifica tecnica.

=== Rischi occorsi

Nella realizzazione delle attività durante lo sprint 11 si sono verificati rallentamenti legati a RP1 (@RP1)(Indisponibilità di membri) e RT1(@RT1) (Apprendimento nuove tecnologie).\

Gestione RP1(@RP1): Il rallentamento causato da problemi personali di alcuni membri è stato assorbito ridistribuendo il carico di lavoro sui componenti attivi. L'efficacia della strategia è confermata dal fatto che tutte le #gloss("issue") critiche previste per lo sprint sono state completate senza sforare le scadenze interne, dimostrando un'ottima resilienza organizzativa del gruppo.\

Gestione RT1(@RT1): La criticità legata alla complessità dei #gloss("diagrammi C4") è stata gestita anticipando la fase di studio individuale. L'autoformazione tempestiva ha permesso di affrontare la progettazione con consapevolezza delle metodologie da applicare.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "5 (+2)", "-", "3", [*8*],
    "Alessandro Dinato", "-", "-", "-", "6 (-2)", "7 (+2)", "1 (-1)", [*14*],
    "Michele Dioli", "4", "1", "-", "7", "-", "-", [*12*],
    "Hossam Ezzemouri", "-", "6 (+1)", "-", "-", "-", "-", [*6*],
    "Riccardo Graziani", "-", "4 (+1)", "-", "12 (+3)", "-", "-", [*16*],
    "Siria Salvalaio", "-", "2", "-", "-", "-", "-", [*2*],
    "Elia Ernesto Stellin", "-", "2 (-2)", "-", "11", "-", "2", [*15*],
    table.footer([*Totale*], [*4*], [*15*], [*0*], [*41*], [*7*], [*6*], [*73*]),
  ),
  [Sprint 11 - Risorse utilizzate],
  label-id: "spr11-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint11 = (
  ("Amministratore", 15),
  ("Responsabile", 4),
  ("Analista", 0),
  ("Verificatore", 6),
  ("Progettista", 41),
  ("Programmatore", 7),
)
#graficoTorta(
  "Sprint 11 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint11,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "4", "4", "13 (-5)", "24", "20 (-3)", [*65*],
    "Alessandro Dinato", "-", "4", "-", "12 (-6)", "12 (-7)", "21 (-1)", [*49*],
    "Michele Dioli", "-", "-1 (-1)", "-", "11 (-7)", "24", "25", [*59*],
    "Hossam Ezzemouri", "-", "-3 (-6)", "2", "17", "23", "22", [*61*],
    "Riccardo Graziani", "-", "3 (-4)", "-", "5 (-12)", "17", "17", [*42*],
    "Siria Salvalaio", "4", "-2 (-2)", "7", "18", "25", "22", [*74*],
    "Elia Ernesto Stellin", "3", "-2 (-2)", "-", "7 (-11)", "23", "23 (-2)", [*54*],
    table.footer([*Totale*], [*7*], [*3*], [*13*], [*83*], [*148*], [*150*], [*404*]),
  ),
  [Sprint 11 - Aggiornamento ore rimanenti],
  label-id: "spr11-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "7 (-4)", "30 €/h", "210 € (-120 €)",
    "Amministratore", "3 (-15)", "20 €/h", "60 € (-300 €)",
    "Analista", "13 ", "25 €/h", "325 € ",
    "Progettista", "83 (-41)", "25 €/h", "2075 € (-1025 €)",
    "Programmatore", "148 (-7)", "15 €/h", "2220 € (-105 €)",
    "Verificatore", "150 (-6)", "15 €/h", "2250 € (-90 €)",
    table.footer([*Totale*], [*404*], [-], [*7140 €*]),
  ),
  [Sprint 11 - Aggiornamento costi],
  label-id: "spr11-agg-costi",
)


== Sprint 12 <sprint-12>
Inizio: 11/03/2026 \
Fine:  18/03/2026\

Il presente #gloss("sprint") mira a consolidare la progettazione architettonica, completando i #gloss("diagrammi C4") e i #gloss("DTO") della #gloss("specifica tecnica"), e ad avviare la codifica dei microservizi che stanno alla base del progetto.\ È inoltre necessario procedere con l'implementazione del #gloss("frontend") per l'autenticazione, configurando al contempo le automazioni di #gloss("CI") e il tracciamento degli #gloss("unit test") per garantire la qualità dei componenti gateway e backend.

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- [PdP] Sprint 11 (#issue(390))
- [Frontend] Codifica sezione di autenticazione (#issue(1, repo: "dash"))
- [AdR] Sistemare urgenze requisiti (#issue(429))
- [ST] Modificare code diagram con nuovi diagrammi (#issue(431))
- [Backend] Impostazione struttura cartelle e package (#issue(2, repo: "dash"))
- Rendicontazione responsabile (Sprint 12) (#issue(436))
- [Gateway] Aggiornare ConfigManager, GatewayManager, credenziali (#issue(5, repo: "gw"))
- [DataConsumer] Codifica (#issue(1, repo: "dc"))
- [PdQ] Impostare tracciamento TU (#issue(442))
- [ST] Aggiungere ResponseDTO - Michele (#issue(443))
- [CI] Fix automazioni CI (#issue(445))
- [Gateway] Scrittura unit test (#issue(6, repo: "gw"))
- [PdQ] Scrittura unit test per Gateway (#issue(446))
- [Frontend] Codifica auth (#issue(6, repo: "dash"))
- [ST] Aggiornare arch. con testo e diagrammi System Context, Container, Component e Deployment (#issue(447))
- [ST] Inserire versioni tecnologie e tecnologie mancanti (Sez. Tecnologie) (#issue(448))
- [Backend] Impostazione Uber Fx (#issue(14, repo: "dash"))
- [Backend] Impostazione Router con Gin (#issue(15, repo: "dash"))
- [Frontend] Codifica Dashboard - Visualizzazione gateway/sensori (#issue(20, repo: "dash"))
- [Backend] Classi comuni per DTO, DI e richieste (#issue(21, repo: "dash"))
- [DataConsumer] Verifica - Test Unità e Integrazione (#issue(2, repo: "dc"))
- [Frontend] Codifica - Tenant Page (#issue(24, repo: "dash"))
- [Frontend] Codifica - User Page (#issue(25, repo: "dash"))
- [backend] codifica servizio tenant (#issue(27, repo: "dash"))
- [Frontend] Scrittura test per autenticazione (#issue(29, repo: "dash"))
- [backend] scrittura test unita servizio tenant (sprint 12) (#issue(30, repo: "dash"))
- [Frontend] Scrittura test per visualizzazione gateway/sensori (#issue(31, repo: "dash"))
- [Backend] Codifica package backend/internal/user (sprint 12) (#issue(32, repo: "dash"))
- [Backend] Test di unità backend/internal/user (sprint 12) (#issue(34, repo: "dash"))
- [Frontend] Test di unità - Tenant e User (#issue(26, repo: "dash"))


=== Rischi attesi
- *RT2* (@RT2): La fase di codifica potrebbe rivelarsi più complessa del previsto, soprattutto per quanto riguarda l'integrazione tra i vari componenti, potenzialmente causando ritardi.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "3", "-", "-", [*3*],
    "Alessandro Dinato", "-", "-", "-", "2", "7", "2", [*11*],
    "Michele Dioli", "-", "-", "-", "2", "3", "2", [*7*],
    "Hossam Ezzemouri", "-", "2", "-", "1", "-", "3", [*6*],
    "Riccardo Graziani", "-", "-", "-", "-", "6", "6", [*12*],
    "Siria Salvalaio", "2", "-", "1", "-", "9", "-", [*12*],
    "Elia Ernesto Stellin", "-", "3", "-", "-", "5", "7", [*15*],
    table.footer([*Totale*], [*2*], [*5*], [*1*], [*8*], [*30*], [*20*], [*66*]),
  ),
  [Sprint 12 - Preventivo risorse da utilizzare],
  label-id: "spr12-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint12 = (
  ("Responsabile", 2),
  ("Programmatore", 30),
  ("Amministratore", 5),
  ("Progettista", 8),
  ("Analista", 1),
  ("Verificatore", 20),
)
#graficoTorta("Sprint 12 - Ore produttive previste per ogni ruolo", orePrevSprint12)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 12: \
- [PdP] Sprint 11 (#issue(390))
- [Frontend] Codifica sezione di autenticazione (#issue(1, repo: "dash"))
- [AdR] Sistemare urgenze requisiti (#issue(429))
- [ST] Modificare code diagram con nuovi diagrammi (#issue(431))
- [Backend] Impostazione struttura cartelle e package (#issue(2, repo: "dash"))
- Rendicontazione responsabile (Sprint 12) (#issue(436))
- [Gateway] Aggiornare ConfigManager, GatewayManager, credenziali (#issue(5, repo: "gw"))
- [DataConsumer] Codifica (#issue(1, repo: "dc"))
- [PdQ] Impostare tracciamento TU (#issue(442))
- [ST] Aggiungere ResponseDTO - Michele (#issue(443))
- [CI] Fix automazioni CI (#issue(445))
- [Gateway] Scrittura unit test (#issue(6, repo: "gw"))
- [PdQ] Scrittura unit test per Gateway (#issue(446))
- [Frontend] Codifica auth (#issue(6, repo: "dash"))
- [ST] Aggiornare arch. con testo e diagrammi System Context, Container, Component e Deployment (#issue(447))
- [ST] Inserire versioni tecnologie e tecnologie mancanti (Sez. Tecnologie) (#issue(448))
- [Backend] Impostazione Uber Fx (#issue(14, repo: "dash"))
- [Backend] Impostazione Router con Gin (#issue(15, repo: "dash"))
- [Frontend] Codifica Dashboard - Visualizzazione gateway/sensori (#issue(20, repo: "dash"))
- [Backend] Classi comuni per DTO, DI e richieste (#issue(21, repo: "dash"))
- [DataConsumer] Verifica - Test Unità e Integrazione (#issue(2, repo: "dc"))
- [Frontend] Codifica - Tenant Page (#issue(24, repo: "dash"))
- [Frontend] Codifica - User Page (#issue(25, repo: "dash"))
- [backend] codifica servizio tenant (#issue(27, repo: "dash"))
- [Frontend] Scrittura test per autenticazione (#issue(29, repo: "dash"))
- [backend] scrittura test unita servizio tenant (sprint 12) (#issue(30, repo: "dash"))
- [Frontend] Scrittura test per visualizzazione gateway/sensori (#issue(31, repo: "dash"))
- [Backend] Codifica package backend/internal/user (sprint 12) (#issue(32, repo: "dash"))
- [Backend] Test di unità backend/internal/user (sprint 12) (#issue(34, repo: "dash"))


=== Retrospettiva
Lo Sprint 12 è stato estremamente produttivo, con la chiusura di molte issue che hanno consolidato l'intera infrastruttura. Abbiamo completato l'architettura del backend integrando Uber Fx e Gin, e finalizzato il frontend con l'autenticazione, buona parte della dashboard e le pagine gestionali (tenant/user). Parallelamente, abbiamo aggiornato la documentazione tecnica (diagrammi C4 e specifica tecnica) e ottimizzato le automazioni di CI. \
Sebbene lo sviluppo delle funzionalità sia proceduto spedito, la fase di verifica e la stesura dei test unitari per i vari moduli hanno richiesto tempi più lunghi del previsto.


=== Rischi occorsi
Durante lo sprint 12 si è verificata l'attuazione del rischio RT2 (@RT2). Sebbene avessimo previsto possibili ritardi generici nella fase di sviluppo, la criticità si è manifestata nello specifico durante la scrittura dei test unitari. Questa attività si è rivelata più complessa del previsto, richiedendo tempi di esecuzione superiori alle stime iniziali. Nonostante ciò, siamo riusciti a completare la maggior parte delle task previste, garantendo la solidità del codice a scapito di un leggero ritardo sulla pianificazione e quindi sulla data prevista di consegna.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "9 (+6)", "-", "-", [*9*],
    "Alessandro Dinato", "-", "-", "-", "2", "8 (+1)", "3 (+1)", [*13*],
    "Michele Dioli", "-", "-", "-", "2", "3", "2", [*7*],
    "Hossam Ezzemouri", "-", "1 (-1)", "-", "4 (+3)", "-", "10 (+7)", [*15*],
    "Riccardo Graziani", "-", "-", "-", "-", "6", "5 (-1)", [*11*],
    "Siria Salvalaio", "2", "-", "1", "-", "11 (+2)", "-", [*14*],
    "Elia Ernesto Stellin", "-", "1 (-2)", "-", "-", "6 (+1)", "8 (+1)", [*15*],
    table.footer([*Totale*], [*2*], [*2*], [*1*], [*17*], [*34*], [*28*], [*84*]),
  ),
  [Sprint 12 - Risorse utilizzate],
  label-id: "spr12-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint12 = (
  ("Programmatore", 34),
  ("Responsabile", 2),
  ("Progettista", 17),
  ("Analista", 1),
  ("Verificatore", 28),
  ("Amministratore", 2),
)
#graficoTorta(
  "Sprint 12 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint12,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "4", "4", "4 (-9)", "24", "20", [*56*],
    "Alessandro Dinato", "-", "4", "-", "10 (-2)", "4 (-8)", "18 (-3)", [*36*],
    "Michele Dioli", "-", "-1", "-", "9 (-2)", "21 (-3)", "23 (-2)", [*52*],
    "Hossam Ezzemouri", "-", "-4 (-1)", "2", "13 (-4)", "23", "12 (-10)", [*46*],
    "Riccardo Graziani", "-", "3", "-", "5", "11 (-6)", "12 (-5)", [*31*],
    "Siria Salvalaio", "2 (-2)", "-2", "6 (-1)", "18", "14 (-11)", "22", [*60*],
    "Elia Ernesto Stellin", "3", "-3 (-1)", "-", "7", "17 (-6)", "15 (-8)", [*39*],
    table.footer([*Totale*], [*5*], [*1*], [*12*], [*66*], [*114*], [*122*], [*320*]),
  ),
  [Sprint 12 - Aggiornamento ore rimanenti],
  label-id: "spr12-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "5 (-2)", "30 €/h", "150 € (-60 €)",
    "Amministratore", "1 (-2)", "20 €/h", "20 € (-40 €)",
    "Analista", "12 (-1)", "25 €/h", "300 € (-25 €)",
    "Progettista", "66 (-17)", "25 €/h", "1650 € (-425 €)",
    "Programmatore", "114 (-34)", "15 €/h", "1710 € (-510 €)",
    "Verificatore", "122 (-28)", "15 €/h", "1830 € (-420 €)",
    table.footer([*Totale*], [*320*], [-], [*5660 €*]),
  ),
  [Sprint 12 - Aggiornamento costi],
  label-id: "spr12-agg-costi",
)



== Sprint 13 <sprint-13>
Inizio: 18/03/2026 \
Fine: 25/03/2026 \

Il presente #gloss("sprint") ha lo scopo di portare avanti in modo sostanziale l'implementazione e la verifica del prodotto, concentrandosi sia sul lato #gloss("backend") che sul lato #gloss("frontend"). Per il backend è prevista la codifica e il testing di svariati package essenziali all'interno della dashboard (user, auth, email, gateway, tenant). Sul fronte frontend, gli sforzi si concentreranno sull'aggiornamento dell'autenticazione, la visualizzazione dei grafici (real-time e storici) e la gestione di gateway e sensori. \
Contemporaneamente, il gruppo si dedicherà alla configurazione dell'infrastruttura di osservabilità (#gloss("Grafana"), #gloss("Prometheus"), e relativi exporter per #gloss("NATS")) e all'aggiunta di test di unità e di integrazione per il simulatore gateway. Infine, è previsto un aggiornamento documentale relativo alle metriche nell'#gloss("Analisi dei Requisiti") e la periodica stesura del #gloss("Piano di Progetto").

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- [Backend] Scrittura test unità servizio tenant (sprint 13) (#issue(33, repo: "dash"))
- [Backend] Codifica backend/internal/user (sprint 13) (#issue(17, repo: "dash"))
- [TI] Gateway (#issue(8, repo: "gw"))
- [AdR] Aggiornamento metriche (RNF, RD) (#issue(461))
- [Backend] Codifica package backend/internal/auth (#issue(35, repo: "dash"))
- [Backend] Verifica package backend/internal/auth (#issue(36, repo: "dash"))
- [Backend] Codifica package backend/internal/email (#issue(37, repo: "dash"))
- [Backend] Verifica package backend/internal/email (#issue(38, repo: "dash"))
- [Backend] Codifica package backend/internal/gateway (#issue(39, repo: "dash"))
- [Backend] Verifica package backend/internal/gateway (#issue(40, repo: "dash"))
- [Backend] Codifica componente hello (#issue(45, repo: "dash"))
- [Backend] Verifica componente hello (#issue(46, repo: "dash"))
- Rendicontazione responsabile (Sprint 13) (#issue(463))
- [Frontend] Aggiornare sezione di autenticazione (#issue(53, repo: "dash"))
- [PdP] Sprint 12 (#issue(440))
- [Frontend] Codifica Dashboard - Grafici real-time e storici (#issue(23, repo: "dash"))
- [Frontend] Test di unità - Tenant e User (#issue(26, repo: "dash"))
- [Backend] Test di unità backend/internal/user (sprint 13) (#issue(28, repo: "dash"))
- Setup config. NATS (nsc, etc.) (#issue(4, repo: "dc"))
- Setup Grafana, Prometheus, NATS Exporter (#issue(1, repo: "obs"))
- [Frontend] Verifica Dashboard - Grafici real-time e storici (#issue(41, repo: "dash"))
- [Frontend] Codifica Gateway/sensori (#issue(42, repo: "dash"))
- [Frontend] Verifica Gateway/sensori (#issue(43, repo: "dash"))
- [TU] Aggiungere test unitari (#issue(9, repo: "gw"))
- [Frontend] Modifiche pagination e file (#issue(48, repo: "dash"))
- [Frontend] Sistemare dashboard super-admin (#issue(49, repo: "dash"))

=== Rischi attesi
- *RT2* (@RT2): Lo sviluppo e l'integrazione dei numerosi servizi richiesti incrementano la possibilità di incorrere in *bug di programmazione* o difetti d'integrazione del software. Il dispendio di ore aggiuntive necessarie per la risoluzione di queste problematiche rischia di superare il tempo inizialmente stimato per lo sviluppo.
- *RO1* (@RO1): L'eventuale concretizzarsi dei rischi tecnologici appena descritti potrebbe portare a un mancato rispetto delle scadenze prefissate, specialmente per le consegne interne dei moduli #gloss("backend"). Sebbene attualmente lo sviluppo del #gloss("frontend") proceda in modo indipendente, un ritardo nella finalizzazione dei servizi backend ostacolerebbe a cascata le future attività di integrazione e testing, obbligando il team a un forte sforzo di riorganizzazione per scongiurare ritardi in vista della consegna finale.


  === Preventivo
  ==== Preventivo risorse da utilizzare
  #tabella-paginata(
    table(
      columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
      align: left,
      stroke: (x, y) => (
        top: if y == 0 { 0pt } else { 0.5pt + black },
        left: if x == 0 { 0pt } else { 0.5pt + black },
      ),
      table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
      "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
      "Alessandro Dinato", "-", "6", "-", "-", "-", "4", [*10*],
      "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
      "Hossam Ezzemouri", "-", "-", "1", "-", "3", "2", [*6*],
      "Riccardo Graziani", "-", "-", "-", "-", "6", "7", [*13*],
      "Siria Salvalaio", "2", "-", "-", "-", "3", "2", [*7*],
      "Elia Ernesto Stellin", "-", "-", "-", "-", "5", "2", [*7*],
      table.footer([*Totale*], [*2*], [*6*], [*1*], [*0*], [*17*], [*17*], [*43*]),
    ),
    [Sprint 13 - Preventivo risorse da utilizzare],
    label-id: "spr13-prev-risorse",
  )
  ==== Grafico a torta della suddivisione oraria prevista

  #let orePrevSprint13 = (
    ("Responsabile", 2),
    ("Amministratore", 6),
    ("Analista", 1),
    ("Progettista", 0),
    ("Programmatore", 17),
    ("Verificatore", 17),
  )
  #graficoTorta("Sprint 13 - Ore produttive previste per ogni ruolo", orePrevSprint13)


=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 13: \
- [Backend] Scrittura test unità servizio tenant (sprint 13) (#issue(33, repo: "dash"))
- [PdP] Sprint 12 (#issue(440))
- [Backend] Codifica backend/internal/user (sprint 13) (#issue(17, repo: "dash"))
- [Frontend] Codifica Dashboard - Grafici real-time e storici (#issue(23, repo: "dash"))
- [Frontend] Test di unità - Tenant e User (#issue(26, repo: "dash"))
- [Backend] Test di unità backend/internal/user (sprint 13) (#issue(28, repo: "dash"))
- Setup config. NATS (nsc, etc.) (#issue(4, repo: "dc"))
- [TI]  Gateway (#issue(8, repo: "gw"))
- [AdR] Aggiornamento metriche (RNF, RD) (#issue(461))
- Setup Grafana, Prometheus, NATS Exporter (#issue(1, repo: "obs"))
- [Backend] Codifica package backend/internal/auth (#issue(35, repo: "dash"))
- [Frontend] Verifica Dashboard - Grafici real-time e storici (#issue(41, repo: "dash"))
- [Frontend] Codifica Gateway/sensori (#issue(42, repo: "dash"))
- [Frontend] Verifica Gateway/sensori (#issue(43, repo: "dash"))
- Rendicontazione responsabile (Sprint 13) (#issue(463))
- [TU]Aggiungere test unitari (#issue(9, repo: "dash"))
- [Frontend] Modifiche pagination e file (#issue(48, repo: "dash"))
- [Frontend] Sistemare dashboard super-admin (#issue(49, repo: "dash"))
- [Dashboard] Implementazione infrastructure nel dashboard backend (#issue(54, repo: "dash"))
- [Backend] TU backend/internal/auth (sprint 13) (#issue(83, repo: "dash"))

=== Retrospettiva
Lo Sprint 13 ha confermato un'ottima velocità di esecuzione, con il consolidamento dei test unitari (tenant/user) e il completamento dell'infrastruttura di monitoraggio con #gloss("Grafana"), #gloss("Prometheus") e #gloss("NATS"). Il frontend ha registrato progressi significativi sulla dashboard e la gestione gateway, mentre il backend ha integrato con successo la parte infrastructure. Nonostante l'ampio volume di issue chiuse, alcuni pacchetti specifici di backend (email, gateway, Hello) e le relative verifiche sono state ritardate e impostate per il prossimo sprint.

=== Rischi occorsi
Si è concretizzato il rischio *RO1* (@RO1): il mancato completamento di alcuni moduli #gloss("backend") entro le scadenze prefissate ha generato un leggero debito tecnico. Questo ritardo, sebbene mitigato dall'attuale indipendenza del #gloss("frontend"), richiederà una piccola riorganizzazione delle attività nel prossimo sprint per evitare impatti sulla consegna finale.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "-", "-", [*0*],
    "Alessandro Dinato", "-", "5 (-1)", "-", "-", "-", "4", [*9*],
    "Michele Dioli", "-", "-", "-", "-", "-", "-", [*0*],
    "Hossam Ezzemouri", "-", "-", "3 (+2)", "-", "5 (+2)", "2", [*10*],
    "Riccardo Graziani", "-", "-", "-", "-", "6", "7", [*13*],
    "Siria Salvalaio", "2", "-", "-", "-", "4 (+1)", "6 (+4)", [*12*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "5", "3 (+1)", [*8*],
    table.footer([*Totale*], [*2*], [*5*], [*3*], [*0*], [*20*], [*22*], [*52*]),
  ),
  [Sprint 13 - Risorse utilizzate],
  label-id: "spr13-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint13 = (
  ("Amministratore", 5),
  ("Responsabile", 2),
  ("Programmatore", 20),
  ("Analista", 3),
  ("Verificatore", 22),
  ("Progettista", 0),
)
#graficoTorta(
  "Sprint 13 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint13,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "4", "4", "4", "24", "20", [*56*],
    "Alessandro Dinato", "-", "-1 (-5)", "-", "10", "4", "14 (-4)", [*27*],
    "Michele Dioli", "-", "-1", "-", "9", "21", "23", [*52*],
    "Hossam Ezzemouri", "-", "-4", "-1 (-3)", "13", "18 (-5)", "10 (-2)", [*36*],
    "Riccardo Graziani", "-", "3", "-", "5", "5 (-6)", "5 (-7)", [*18*],
    "Siria Salvalaio", "-", "-2", "6", "18", "10 (-4)", "16 (-6)", [*48*],
    "Elia Ernesto Stellin", "3", "-3", "-", "7", "12 (-5)", "12 (-3)", [*31*],
    table.footer([*Totale*], [*3*], [*-4*], [*9*], [*66*], [*94*], [*100*], [*268*]),
  ),
  [Sprint 13 - Aggiornamento ore rimanenti],
  label-id: "spr13-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "3 (-2)", "30 €/h", "90 € (-60 €)",
    "Amministratore", "-4 (-5)", "20 €/h", "-80 € (-100 €)",
    "Analista", "9 (-3)", "25 €/h", "225 € (-75 €)",
    "Progettista", "66 ", "25 €/h", "1650 € ",
    "Programmatore", "94 (-20)", "15 €/h", "1410 € (-300 €)",
    "Verificatore", "100 (-22)", "15 €/h", "1500 € (-330 €)",
    table.footer([*Totale*], [*268*], [-], [*4795 €*]),
  ),
  [Sprint 13 - Aggiornamento costi],
  label-id: "spr13-agg-costi",
)



== Sprint 14 <sprint-14>
Inizio: 25/03/2026 \
Fine: 01/04/2026 \

Il presente #gloss("sprint") si focalizza sulla codifica e verifica (TU/TI) di package essenziali per sensori, gateway e gestione dati (real-time e storici). Lato #gloss("backend") si affina inoltre l'architettura esagonale e la logica degli admin, mentre sul fronte #gloss("frontend") gli sforzi mirano all'integrazione delle sezioni Super Admin e Tenant User, migliorando al contempo l'interfaccia e la coerenza dei modelli. \
Parallelamente, il gruppo si occuperà dell'aggiornamento dell'autenticazione e dei test per la cartella adapters.

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- [Backend] Verifica TU package backend/internal/auth (#issue(36, repo: "dash"))
- [Backend] Codifica package backend/internal/email (#issue(37, repo: "dash"))
- [Backend] Verifica TU package backend/internal/email (#issue(38, repo: "dash"))
- [Backend] Codifica package backend/internal/gateway (#issue(39, repo: "dash"))
- [Backend] Verifica package backend/internal/gateway (#issue(40, repo: "dash"))
- [Backend] Codifica componente hello (#issue(45, repo: "dash"))
- [Backend] Verifica componente hello (#issue(46, repo: "dash"))
- Rendicontazione responsabile sprint 14 (#issue(471))
- [Frontend] Cambiare lingua (italiano) e migliorare CSS (#issue(59, repo: "dash"))
- [Frontend] Controllare endpoint con i model (#issue(60, repo: "dash"))
- [Frontend] Aggiungere sezione SUPER ADMIN MANAGEMENT (#issue(61, repo: "dash"))
- [Frontend] TENANT USER MANAGEMENT (e raggruppare con dashboard in basso alla Side bar) (#issue(62, repo: "dash"))
- [Frontend] Aggiornare sezione di autenticazione (#issue(63, repo: "dash"))
- [Frontend] Verificare gestione enums tra frontend/backend (#issue(64, repo: "dash"))
- [Frontend] Scrittura TU per la cartella adapters (#issue(65, repo: "dash"))
- [Backend] TU backend/internal/user/adapters.go (#issue(67, repo: "dash"))
- [Backend] TI backend/internal/auth (#issue(69, repo: "dash"))
- [Backend] TI backend/internal/email (#issue(70, repo: "dash"))
- [Backend] TI backend/internal/user (#issue(71, repo: "dash")
- [Backend] Codifica backend/internal/sensor (#issue(73, repo: "dash"))
- [Backend] TU backend/internal/sensor (#issue(74, repo: "dash"))
- [Backend] TI backend/internal/sensor (#issue(75, repo: "dash"))
- [Backend] Codifica backend/internal/real_time_data (#issue(76, repo: "dash"))
- [Backend] TU backend/internal/real_time_data (#issue(77, repo: "dash"))
- [Backend] TI backend/internal/real_time_data (#issue(78, repo: "dash"))
- [Backend] Codifica backend/internal/historical_data (#issue(80, repo: "dash"))
- [Backend] TU backend/internal/historical_data (#issue(81, repo: "dash"))
- [Backend] TI backend/internal/historical_data (#issue(82, repo: "dash"))
- [ST] Architettura hexagonal (#issue(475))
- [PdP] Sprint 13 (#issue(462))
- [Backend] Aggiornamento logica eliminazione super admin / tenant admin (#issue(66, repo: "dash"))
- [Dashboard] Aggiornare endpoint su API dog relativamente a gateway commissioning (#issue(68, repo: "dash"))

=== Rischi attesi
- *RT2* (@RT2): L'elevata mole di codifica e verifica dei package core (#gloss("gateway"), sensor, real time data e historical data) e il passaggio all'architettura esagonale aumentano il rischio di bug strutturali e incongruenze tra i modelli #gloss("frontend") e #gloss("backend"). La risoluzione di questi difetti potrebbe richiedere più ore del previsto, rallentando la chiusura delle numerose issue di testing (TU/TI).
- *RO1* (@RO1): Eventuali ritardi nella finalizzazione dei servizi di backend e nel controllo degli endpoint potrebbero ostacolare l'integrazione delle nuove sezioni gestionali (Super Admin e Tenant User). Tale situazione obbligherebbe a una riorganizzazione dei compiti per garantire la coerenza tra le interfacce e i dati reali entro il termine dello #gloss("sprint").


=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "8", "5", [*13*],
    "Alessandro Dinato", "-", "-", "-", "-", "4", "7", [*11*],
    "Michele Dioli", "-", "-", "-", "3", "2", "1", [*6*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "4", "6", [*10*],
    "Riccardo Graziani", "-", "-", "-", "-", "4", "3", [*7*],
    "Siria Salvalaio", "2", "-", "-", "-", "7", "3", [*12*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "5", "7", [*12*],
    table.footer([*Totale*], [*2*], [*0*], [*0*], [*3*], [*34*], [*32*], [*71*]),
  ),
  [Sprint 14 - Preventivo risorse da utilizzare],
  label-id: "spr14-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint14 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Programmatore", 34),
  ("Analista", 0),
  ("Progettista", 3),
  ("Verificatore", 32),
)
#graficoTorta("Sprint 14 - Ore produttive previste per ogni ruolo", orePrevSprint14)


=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 14: \
- [Backend] Verifica TU package backend/internal/auth (#issue(36))
- [Backend] Codifica package backend/internal/email (#issue(37))
- [Backend] Verifica TU package backend/internal/email (#issue(38))
- [Backend] Codifica componente hello (#issue(45))
- [Backend] Verifica componente hello (#issue(46))
- [PdP] Sprint 13 (#issue(462))
- Rendicontazione responsabile sprint 14 (#issue(471))
- [Frontend] Cambiare lingua (italiano) e migliorare CSS (#issue(59))
- [Frontend] Controllare endpoint con i model (#issue(60))
- [Frontend] Aggiungere sezione SUPER ADMIN MANAGEMENT (#issue(61))
- [Frontend] TENANT USER MANAGEMENT (e raggruppare con dashboard in basso alla Side bar) (#issue(62))
- [Frontend] Aggiornare sezione di autenticazione (#issue(63))
- [Frontend] Verificare gestione enums tra frontend/backend (#issue(64))
- [Frontend] Scrittura TU per la cartella adapters (#issue(65))
- [Backend] Aggiornamento logica eliminazione super admin / tenant admin (#issue(66))
- [Backend] TU backend/internal/user/adapters.go (#issue(67))
- [Dashboard] Aggiornare endpoint su API dog relativamente a gateway commissioning (#issue(68))
- [Backend] Codifica backend/internal/sensor (#issue(73))
- [Backend] TU backend/internal/sensor (#issue(74))
- [Backend] TI backend/internal/sensor (#issue(75))
- Codifica - Hoss (#issue(79))
- [Backend] Codifica backend/internal/historical_data (#issue(80))
- [Backend] TU backend/internal/historical_data (#issue(81))
- [Backend] TI backend/internal/historical_data (#issue(82))
- [Backend] Refactoring in issue #67 (#issue(87))
- [Frontend] Test vari (#issue(92))
- [Backend] Aggiornamento go_coverage.sh (#issue(95))

=== Retrospettiva
Lo #gloss("sprint") 14 ha confermato un ritmo sostenuto, portando a termine la codifica e la verifica di package fondamentali come _email_, _hello_, _sensor_ e _historical_data_. Il frontend ha registrato progressi significativi, completando la traduzione in italiano di tutte le interfacce utente e l'implementazione delle sezioni di management per Super Admin e Tenant User. È stata inoltre rifinita la logica di gestione dei permessi admin e definito un metodo comune  per lo sviluppo di test di integrazione lato backend, volto a uniformare le procedure di verifica.

Nonostante l'ampio volume di task completati, la componente _gateway_, il modulo _real time data_ e i test di integrazione per _auth_, _email_ e _user_ hanno subito dei rallentamenti e sono stati ripianificati per il prossimo sprint. L'attenzione rimane alta sulla qualità del codice, come dimostrato dai refactoring effettuati e dall'allineamento costante tra modelli frontend e backend.

=== Rischi occorsi
- *RT2* (@RT2): Difficoltà tecniche nella codifica e nel testing dei moduli di backend hanno richiesto tempi di risoluzione superiori alle stime, rallentando la chiusura delle issue relative a gateway e real_time_data.
- *RO1* (@RO1): Il ritardo su alcuni moduli core ha impedito di completare il piano di test previsto, obbligando a una riorganizzazione delle task per non bloccare l'integrazione futura tra #gloss("frontend") e #gloss("backend").
- *RP3* (@RP3): La ridotta disponibilità di un componente per impegni personali ha contratto la capacità produttiva del team, rallentando l'evasione dei task di sviluppo e contribuendo al ritardo complessivo dello #gloss("sprint"). \
L'accumulo di queste criticità ha causato lo slittamento di alcune scadenze interne, generando un leggero debito tecnico per i moduli non completati. Per mitigare l'impatto, il gruppo ha ridistribuito i carichi di lavoro tra i membri disponibili e ha definito nuove priorità per le attività dello sprint successivo, concentrando gli sforzi sull'integrazione dei moduli core per garantire la stabilità dell'architettura finale.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "-", "-", "-", "14 (+6)", "9 (+4)", [*23*],
    "Alessandro Dinato", "-", "-", "-", "-", "5 (+1)", "5 (-2)", [*10*],
    "Michele Dioli", "-", "-", "-", "3", "2", "1", [*6*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "6 (+2)", "7 (+1)", [*13*],
    "Riccardo Graziani", "-", "-", "-", "-", "2 (-2)", "1 (-2)", [*3*],
    "Siria Salvalaio", "2", "-", "-", "-", "8 (+1)", "7 (+4)", [*17*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "5", "4 (-3)", [*9*],
    table.footer([*Totale*], [*2*], [*0*], [*0*], [*3*], [*42*], [*34*], [*81*]),
  ),
  [Sprint 14 - Risorse utilizzate],
  label-id: "spr14-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint14 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Programmatore", 42),
  ("Analista", 0),
  ("Progettista", 3),
  ("Verificatore", 34),
)
#graficoTorta(
  "Sprint 14 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint14,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "3", "4", "-", "3", "11 (-14)", "12 (-9)", [*33*],
    "Alessandro Dinato", "-", "2", "-", "7", "3 (-5)", "5 (-5)", [*17*],
    "Michele Dioli", "-", "-", "-", "4 (-3)", "20 (-2)", "22 (-1)", [*46*],
    "Hossam Ezzemouri", "-", "-", "-", "8", "12 (-6)", "3 (-7)", [*23*],
    "Riccardo Graziani", "-", "-", "-", "8", "5 (-2)", "2 (-1)", [*15*],
    "Siria Salvalaio", "-", "-", "3", "18", "5 (-8)", "5 (-7)", [*31*],
    "Elia Ernesto Stellin", "-", "-", "-", "3", "5 (-5)", "14 (-4)", [*22*],
    table.footer([*Totale*], [*3*], [*6*], [*3*], [*51*], [*61*], [*63*], [*187*]),
  ),
  [Sprint 14 - Aggiornamento ore rimanenti],
  label-id: "spr14-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "3 (-2)", "30 €/h", "90 € (-60 €)",
    "Amministratore", "6 ", "20 €/h", "120 € ",
    "Analista", "3 ", "25 €/h", "75 € ",
    "Progettista", "51 (-3)", "25 €/h", "1275 € (-75 €)",
    "Programmatore", "61 (-42)", "15 €/h", "915 € (-630 €)",
    "Verificatore", "63 (-34)", "15 €/h", "945 € (-510 €)",
    table.footer([*Totale*], [*187*], [-], [*3420 €*]),
  ),
  [Sprint 14 - Aggiornamento costi],
  label-id: "spr14-agg-costi",
)


== Sprint 15 <sprint-15>
Inizio: 01/04/2026 \
Fine: 08/04/2026 \

Il presente #gloss("sprint") ha l’obiettivo primario di assorbire il leggero debito tecnico accumulato durante il ciclo precedente, focalizzando gli sforzi sull'implementazione dei package di backend mancanti (_user_, _auth_ e _real_time_) e dei loro test di integrazione (TI), nonché attività come la sincronizzazione del frontend con le risorse #gloss("cloud"). Parallelamente alla verifica tecnica, viene avviato il setup dell'infrastruttura per l'MVP e l'implementazione delle metriche di osservabilità, fondamentali per il monitoraggio della qualità tramite il cruscotto di valutazione. Infine, lo sprint segna l’inizio effettivo della stesura del Manuale Utente.

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- [ST] Completamento Specifica Tecnica per frontend (#issue(495))
- [PdQ] Aggiornare metriche (#issue(496))
- [Frontend] Integrazione con Cloud (#issue(100, repo: "dashboard"))
- [Backend] TI historical_data (#issue(101, repo: "dashboard"))
- [Backend] TI backend/internal/email (#issue(70, repo: "dashboard"))
- [Backend] TI backend/internal/user (#issue(71, repo: "dashboard"))
- [Backend] TI backend/internal/auth (#issue(69, repo: "dashboard"))
- [ST] Aggiornamento librerie frontend (#issue(491))
- [ST] Descrizione pattern frontend (#issue(494))
- [Backend] Codifica package backend/internal/gateway (#issue(39, repo: "dashboard"))
- [ST] Architettura hexagonal (#issue(475))
- [Backend] Verifica package backend/internal/gateway (#issue(40, repo: "dashboard"))
- [PdP] Sprint 14 (#issue(472))
- [MU] Ricerca su come scrivere Manuale Utente (#issue(484))
- [Frontend] Modificare Modello C4 sul codice attuale (#issue(94, repo: "dashboard"))
- [ST] Scrittura parte gateway e data consumer (#issue(493))
- [MVP] Setup sistema (#issue(1, repo: "poc"))
- [Obs] Implementazione metriche (#issue(2, repo: "observability"))
- [Backend] modifica codice historical_data (#issue(102, repo: "dashboard"))
- Rendicontazione ore responsabile sprint 15 (#issue(497))
- [NdP] Aggiungere gomail v2 come tecnologia (#issue(488))
- [Backend] Codifica backend/internal/real_time_data (#issue(76, repo: "dashboard"))
- [Backend] TU backend/internal/real_time_data (#issue(77, repo: "dashboard"))
- [Backend] TI backend/internal/real_time_data (#issue(78, repo: "dashboard"))

=== Rischi attesi
- *RT2* (@RT2): L'elevata concentrazione di test di integrazione (TI) previsti per i package di backend (historical_data, email, user, auth) e l'integrazione del frontend con il Cloud potrebbero far emergere bug di programmazione o errori di design. La risoluzione di tali problematiche potrebbe richiedere un impegno superiore al previsto, rallentando il completamento delle relative issue.
- *RO1* (@RO1): Attività fondamentali come il setup dell'MVP e l'implementazione delle metriche di osservabilità sono propedeutiche alla verifica finale della qualità. Un ritardo nel loro completamento potrebbe incidere sui tempi necessari alla validazione del sistema e richiedere un aggiornamento dei costi/ore.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1", "-", "-", "3", "-", "6", [*10*],
    "Alessandro Dinato", "-", "2", "-", "2", "1", "-", [*5*],
    "Michele Dioli", "-", "-", "-", "-", "16", "4", [*20*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "4", "3", [*7*],
    "Riccardo Graziani", "-", "-", "-", "2", "6", "2", [*10*],
    "Siria Salvalaio", "-", "-", "-", "5", "3", "1", [*9*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "1", "6", [*7*],
    table.footer([*Totale*], [*1*], [*2*], [*0*], [*12*], [*31*], [*22*], [*68*]),
  ),
  [Sprint 15 - Preventivo risorse da utilizzare],
  label-id: "spr15-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint15 = (
  ("Responsabile", 1),
  ("Progettista", 12),
  ("Programmatore", 31),
  ("Amministratore", 2),
  ("Analista", 0),
  ("Verificatore", 22),
)
#graficoTorta("Sprint 15 - Ore produttive previste per ogni ruolo", orePrevSprint15)


=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 15: \
- [Backend] TI backend/internal/user (#issue(71, repo: "dashboard"))
- [Frontend] Modifica sezione di Historical Data e Real Time Data (#issue(114, repo: "dashboard"))
- [Backend] TI backend/internal/auth (#issue(69, repo: "dashboard"))
- [ST] Aggiornamento librerie frontend (#issue(491))
- [ST] Descrizione pattern frontend (#issue(494))
- [NdP] Aggiornare sezione "Struttura cartelle" per linguaggio Typescript (#issue(505))
- [Backend] Codifica package backend/internal/gateway (#issue(39, repo: "dashboard"))
- [ST] Architettura hexagonal (#issue(475))
- [Backend] Verifica package backend/internal/gateway (#issue(40, repo: "dashboard"))
- [PdP] Sprint 14 (#issue(472))
- [MU] Ricerca su come scrivere Manuale Utente (#issue(484))
- [Frontend] Modificare Modello C4 sul codice attuale (#issue(94, repo: "dashboard"))
- [ST] Scrittura parte gateway e data consumer (#issue(493))
- [MVP] Setup sistema (#issue(1, repo: "poc"))
- [Obs] Implementazione metriche (#issue(2, repo: "observability"))
- [Backend] modifica codice historical_data (#issue(102, repo: "dashboard"))
- Rendicontazione ore responsabile sprint 15 (#issue(497))

=== Retrospettiva
Lo #gloss("sprint") 15 è stato focalizzato principalmente sul consolidamento delle funzionalità necessarie per il raggiungimento dell'MVP. Sebbene sia stati portati a termine gran parte dei test di integrazione per i package di backend, ovvero _user_ e _auth_, il ciclo si conclude con alcune attività non terminate per una questione di tempistiche, ovvero quelle legate al package _real_time_data_, i test di integrazione per il modulo _email_ e l'integrazione del frontend con il Cloud. Il gruppo ha preferito concentrare gli sforzi sulla stabilità di altri moduli sviluppati durante il periodo.

Sono comunque stati portati a termini diversi compiti significativi, in particolare sul lato frontend, sono state affinate le sezioni relative a _historical_data_ e _real_time_data_ ed è stato riallineato il modello C4 allo stato attuale del codice. Il setup per il sistema MVP è andato a buon fine così come l'implementazione delle metriche di osservabilità. La documentazione ha visto un corposo aggiornamento della specifica tecnica, che è stata arricchita con molteplici sezioni, oltre all'adeguamento delle norme di progetto per la struttura typescript e l'avvio della preparazione per il manuale utente.

=== Rischi occorsi
*RT2* (@RT2): Lo sviluppo e l'integrazione dei componenti software hanno richiesto tempistiche superiori a quelle preventivate. Per garantire la qualità dei moduli sviluppati, non è stato possibile completare le attività su _real_time_data_ e sui test di integrazione delle _email_.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1", "-", "-", "3", "-", "7 (+1)", [*11*],
    "Alessandro Dinato", "-", "2", "-", "3 (+1)", "1", "-", [*6*],
    "Michele Dioli", "-", "-", "-", "-", "20 (+4)", "4", [*24*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "7 (+3)", "3", [*10*],
    "Riccardo Graziani", "-", "-", "-", "1 (-1)", "5 (-1)", "1 (-1)", [*7*],
    "Siria Salvalaio", "-", "-", "-", "8 (+3)", "2 (-1)", "1", [*11*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "1", "6", [*7*],
    table.footer([*Totale*], [*1*], [*2*], [*0*], [*15*], [*36*], [*22*], [*76*]),
  ),
  [Sprint 15 - Risorse utilizzate],
  label-id: "spr15-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint15 = (
  ("Responsabile", 1),
  ("Progettista", 15),
  ("Analista", 0),
  ("Programmatore", 36),
  ("Amministratore", 2),
  ("Verificatore", 22),
)
#graficoTorta(
  "Sprint 15 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint15,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "2 (-1)", "4", "-", "-", "11", "5 (-7)", [*22*],
    "Alessandro Dinato", "-", "-", "-", "4 (-3)", "2 (-1)", "5", [*11*],
    "Michele Dioli", "-", "-", "-", "4", "-", "18 (-4)", [*22*],
    "Hossam Ezzemouri", "-", "-", "-", "8", "5 (-7)", "-", [*13*],
    "Riccardo Graziani", "-", "-", "-", "7 (-1)", "-", "1 (-1)", [*8*],
    "Siria Salvalaio", "-", "-", "3", "10 (-8)", "3 (-2)", "4 (-1)", [*20*],
    "Elia Ernesto Stellin", "-", "-", "-", "3", "4 (-1)", "8 (-6)", [*15*],
    table.footer([*Totale*], [*2*], [*4*], [*3*], [*36*], [*25*], [*41*], [*111*]),
  ),
  [Sprint 15 - Aggiornamento ore rimanenti],
  label-id: "spr15-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "2 (-1)", "30 €/h", "60 € (-30 €)",
    "Amministratore", "4 (-2)", "20 €/h", "80 € (-40 €)",
    "Analista", "3 ", "25 €/h", "75 € ",
    "Progettista", "36 (-15)", "25 €/h", "900 € (-375 €)",
    "Programmatore", "25 (-36)", "15 €/h", "375 € (-540 €)",
    "Verificatore", "41 (-22)", "15 €/h", "615 € (-330 €)",
    table.footer([*Totale*], [*111*], [-], [*2105 €*]),
  ),
  [Sprint 15 - Aggiornamento costi],
  label-id: "spr15-agg-costi",
)


== Sprint 16 <sprint-16>
Inizio: 08/04/2026 \
Fine: 15/04/2026 \

L'obiettivo principale dello #gloss("sprint") 16 è l'estensione delle funzionalità del sistema in ottica #gloss("MVP") e il completamento della documentazione tecnica e utente. Il gruppo si focalizzerà sul recupero del debito tecnico accumulato.

Sul fronte della documentazione, il ciclo prevede un impegno significativo nella stesura dell'architettura di dettaglio del frontend, nel tracciamento dei requisiti e nella stesura di diverse sezioni del Manuale Utente. Sarà inoltre avviata l'infrastruttura del Test Book e il controllo dei test nel sistema reale, garantendo la coerenza con quanto definito nel Piano di Qualifica e nell'Analisi dei Requisiti.

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- [ST] Completamento Specifica Tecnica per frontend (#issue(495))
- [PdQ] Aggiornare metriche (#issue(496))
- [Frontend] Integrazione con Cloud (#issue(100, repo: "dashboard"))
- [Backend] TI historical_data (#issue(101, repo: "dashboard"))
- [Backend] TI backend/internal/email (#issue(70, repo: "dashboard"))
- [NdP] Aggiungere gomail v2 come tecnologia (#issue(488))
- [Backend] Codifica backend/internal/real_time_data (#issue(76, repo: "dashboard"))
- [Backend] TU backend/internal/real_time_data (#issue(77, repo: "dashboard"))
- [Backend] TI backend/internal/real_time_data (#issue(78, repo: "dashboard"))
- [MU] Perfezionamento manuale utente Gateway, Data Consumer (#issue(520))
- [MU] Perfezionamento sezione Observability (#issue(528))
- [Backend] Fix backend gateway (#issue(130, repo: "dashboard"))
- [Backend] Fix bug per login su utente inesistente (#issue(121, repo: "dashboard"))
- [ST] Cloud Backend (#issue(522))
- [ST] Tracciamento requisiti (#issue(525))
- [Backend] Togliere requester check da GetTenantList (#issue(120, repo: "dashboard"))
- [TB] Stesura infrastruttura del Test Book (#issue(518))
- [PdP] Sprint 15 (#issue(498))
- [MU] Compilazione di più file possibile (#issue(513))
- Rendicontazione ore responsabile sprint 16 (#issue(516))
- [TB] Controllo test singoli del test book nel sistema reale (#issue(519))
- [Backend] Fix backend modulo gateway (#issue(128, repo: "dashboard"))
- [Backend] Review backend/internal/tenant (#issue(129, repo: "dashboard"))
- [AdR] Controllo coerenza AdR e eventuali correzioni (#issue(521))
- Definizione metriche Gin-Prometheus (#issue(3, repo: "infrastructure"))
- [Backend] recupero files gateway (#issue(124, repo: "dashboard"))
- [Backend] Fix monitoring (#issue(126, repo: "dashboard"))

=== Rischi attesi
*RO1* (@RO1): Anche se la maggior parte delle issue sono di breve durata, in quanto attività di rifinitura, verifica o già in lavorazione dallo sprint precedente, il loro elevato numero potrebbe causare dei ritardi.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1", "-", "-", "-", "-", "-", [*1*],
    "Alessandro Dinato", "-", "-", "-", "4", "2", "1", [*7*],
    "Michele Dioli", "-", "-", "-", "3", "-", "4", [*7*],
    "Hossam Ezzemouri", "-", "-", "-", "1", "2", "-", [*3*],
    "Riccardo Graziani", "-", "-", "-", "7", "-", "2", [*9*],
    "Siria Salvalaio", "-", "-", "-", "7", "-", "-", [*7*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "5", "7", [*12*],
    table.footer([*Totale*], [*1*], [*0*], [*0*], [*22*], [*9*], [*14*], [*46*]),
  ),
  [Sprint 16 - Preventivo risorse da utilizzare],
  label-id: "spr16-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint16 = (
  ("Responsabile", 1),
  ("Amministratore", 0),
  ("Analista", 0),
  ("Progettista", 22),
  ("Programmatore", 9),
  ("Verificatore", 14),
)
#graficoTorta("Sprint 16 - Ore produttive previste per ogni ruolo", orePrevSprint16)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 16: \
- [ST] Completamento Specifica Tecnica per frontend (#issue(495))
- [Frontend] Integrazione con Cloud (#issue(100, repo: "dashboard"))
- [Backend] TI historical_data (#issue(101, repo: "dashboard"))
- [Backend] TI backend/internal/email (#issue(70, repo: "dashboard"))
- [ST] Aggiungere nuove librerie usate (#issue(488))
- [Backend] Codifica backend/internal/real_time_data (#issue(76, repo: "dashboard"))
- [Backend] TU backend/internal/real_time_data (#issue(77, repo: "dashboard"))
- [Backend] TI backend/internal/real_time_data (#issue(78, repo: "dashboard"))
- [MU] Perfezionamento manuale utente Gateway, Data Consumer (#issue(520))
- [MU] Perfezionamento sezione Observability (#issue(528))
- [Backend] Fix backend gateway (#issue(130, repo: "dashboard"))
- [Backend] Fix bug per login su utente inesistente (#issue(121, repo: "dashboard"))
- [TB] Stesura infrastruttura del Test Book (#issue(518))
- [PdP] Sprint 15 (#issue(498))
- Rendicontazione ore responsabile sprint 16 (#issue(516))
- [TB] Controllo test singoli del test book nel sistema reale (#issue(519))
- [Backend] Fix backend modulo gateway (#issue(128, repo: "dashboard"))
- [Backend] Review backend/internal/tenant (#issue(129, repo: "dashboard"))
- [AdR] Controllo coerenza AdR e eventuali correzioni (#issue(521))
- Definizione metriche Gin-Prometheus (#issue(3, repo: "infrastructure"))
- [Backend] recupero files gateway (#issue(124, repo: "dashboard"))
- [Backend] Fix monitoring (#issue(126, repo: "dashboard"))
- [Backend] Fix token conferma account (#issue(138, repo: "dashboard"))
- [Backend] Fix Reset password per tenant members (#issue(145, repo: "dashboard"))
- [Backend] Fix logica per gestione Tenant Admin (#issue(136, repo: "dashboard"))
- [Backend] Fix crea schema in sensor_db (#issue(139, repo: "dashboard"))
- [Backend] Fix GetTenant dovrebbe fare bind su URI params (#issue(141, repo: "dashboard"))
- [Backend] Fix invio dati al front-end (real_time_data) (#issue(148, repo: "dashboard"))
- [Frontend] Fix stile e UI (#issue(149, repo: "dashboard"))
- [Frontend] Fix grafici e aggiunta colonna interval a gateway e sensori (#issue(152, repo: "dashboard"))
- [Backend] Sistemare posizionamento package (#issue(156, repo: "dashboard"))

=== Retrospettiva
Durante #gloss("sprint") il gruppo ha mantenuto un buon ritmo di lavoro, completando la maggior parte delle attività previste. Si è osservato un lieve aumento delle attività non pianificate, principalmente per la risoluzione di errori imprevisti.
Nonostante ciò, sono stati completati tutti i package necessari per il funzionamento dell'applicazione finale, con tanto di quasi tutti i test di unità e di integrazione. Mancano i test di sistema.

Per il resto del periodo, il gruppo si è quindi focalizzato nella stesura di diversi documenti, tra cui il test book richiesto dalla proponente ed utilizzato durante la riunione riguardo lo stato del prodotto avvenuta in data 13 aprile e documentata nell'apposito verbale.

=== Rischi occorsi
*RO1* (@RO1): Come previsto il numero delle attività da svolgere e la scoperta di qualche bug ha impedito di completare tutte le issue programmate, ma il gruppo è riuscito a mantenere basso il numero di quelle da posticipare. L'obiettivo principale dello sprint, ovvero completare la parte funzionale di codice, rimane comunque compiuto, grazie al tempestivo intervento dei membri. Infatti, le issue da recuperare nel prossimo sprint sono principalmente di documentazione.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1", "-", "-", "-", "-", "-", [*1*],
    "Alessandro Dinato", "-", "-", "-", "4", "2", "1", [*7*],
    "Michele Dioli", "-", "-", "-", "3", "-", "4", [*7*],
    "Hossam Ezzemouri", "-", "-", "-", "2 (+1)", "2", "-", [*4*],
    "Riccardo Graziani", "-", "-", "-", "7", "-", "1 (-1)", [*8*],
    "Siria Salvalaio", "-", "-", "-", "9 (+2)", "-", "-", [*9*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "4 (-1)", "8 (+1)", [*12*],
    table.footer([*Totale*], [*1*], [*0*], [*0*], [*25*], [*8*], [*14*], [*48*]),
  ),
  [Sprint 16 - Risorse utilizzate],
  label-id: "spr16-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint16 = (
  ("Responsabile", 1),
  ("Amministratore", 0),
  ("Analista", 0),
  ("Progettista", 25),
  ("Programmatore", 8),
  ("Verificatore", 14),
)
#graficoTorta(
  "Sprint 16 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint16,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1 (-1)", "4", "-", "-", "11", "5", [*21*],
    "Alessandro Dinato", "-", "-", "-", "-", "-", "4 (-1)", [*4*],
    "Michele Dioli", "-", "-", "-", "1 (-3)", "-", "14 (-4)", [*15*],
    "Hossam Ezzemouri", "-", "-", "-", "6 (-2)", "3 (-2)", "-", [*9*],
    "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
    "Siria Salvalaio", "-", "-", "3", "1 (-9)", "3", "4", [*11*],
    "Elia Ernesto Stellin", "-", "-", "-", "3", "-", "-", [*3*],
    table.footer([*Totale*], [*1*], [*4*], [*3*], [*11*], [*17*], [*27*], [*63*]),
  ),
  [Sprint 16 - Aggiornamento ore rimanenti],
  label-id: "spr16-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "1 (-1)", "30 €/h", "30 € (-30 €)",
    "Amministratore", "4 ", "20 €/h", "80 € ",
    "Analista", "3 ", "25 €/h", "75 € ",
    "Progettista", "11 (-25)", "25 €/h", "275 € (-625 €)",
    "Programmatore", "17 (-8)", "15 €/h", "255 € (-120 €)",
    "Verificatore", "27 (-14)", "15 €/h", "405 € (-210 €)",
    table.footer([*Totale*], [*63*], [-], [*1120 €*]),
  ),
  [Sprint 16 - Aggiornamento costi],
  label-id: "spr16-agg-costi",
)




== Sprint 17 <sprint-17>
Inizio: 15/04/2026 \
Fine: 24/04/2026 \

Gli obiettivi principali dello #gloss("sprint") 17 sono la stesura del #gloss("Manuale Utente") e della #gloss("Specifica Tecnica"), nonché l'implementazione di più test di sistema possibile via Playwright e progettati durante RTB.

Altre attività includono la correzione di qualche errore con le metriche di _observability_ e l'aggiornamento e revisione del #gloss("Piano di Qualifica") e dell'#gloss("Analisi dei Requisiti").

=== Compiti da svolgere
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 17: \
- [PdQ] Aggiornare metriche (#issue(496))
- [ST] Cloud Backend (#issue(522))
- [ST] Tracciamento requisiti (#issue(525))
- [Backend] Togliere requester check da GetTenantList (#issue(120, repo: "dashboard"))
- [Backend] creazione test get gateway (#issue(143, repo: "dashboard"))
- Risolvere problema di scraping delle metriche gin (#issue(6, repo: "infra"))
- [Backend] Fixare scraping metriche gin  (#issue(153, repo: "dashboard"))
- Test di Sistema (#issue(158, repo: "dashboard"))
- [AdR] Revisione (#issue(543))
- [PdP] Sprint 16 (#issue(547))
- [MU] Perfezionamento manuale utente backend, installazione (#issue(544))
- Rendicontazione ore responsabile sprint 17 (#issue(545))
- [MU] Sezione frontend (#issue(549))
- [PdQ] Rendicontare test di unità/integrazione (#issue(550))
- [ST] Revisione primi 3 livelli C4 model (#issue(553))
- [ST] Sezione su Cloud DB (#issue(559))
- [MU] Perfezionamento manuale utente observability (#issue(548))
- [ST] Fix diagramma UserApiClientService (#issue(557))

=== Rischi attesi
*RT2* (@RT2): L'esecuzione dei test di sistema è un'attività che potrebbe far emergere bug di integrazione imprevisti, necessitando l'investimento di tempo nella loro risoluzione. Se ciò capita spesso, potrebbe comportare un ritardo.

=== Preventivo
==== Preventivo risorse da utilizzare
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1", "2", "-", "-", "-", "3", [*6*],
    "Alessandro Dinato", "-", "-", "-", "-", "-", "4", [*4*],
    "Michele Dioli", "-", "-", "-", "1", "-", "11", [*12*],
    "Hossam Ezzemouri", "-", "-", "-", "4", "1", "-", [*5*],
    "Riccardo Graziani", "-", "-", "-", "-", "4", "2", [*6*],
    "Siria Salvalaio", "-", "-", "1", "-", "6", "3", [*10*],
    "Elia Ernesto Stellin", "-", "-", "-", "7", "-", "-", [*7*],
    table.footer([*Totale*], [*1*], [*2*], [*1*], [*12*], [*11*], [*23*], [*50*]),
  ),
  [Sprint 17 - Preventivo risorse da utilizzare],
  label-id: "spr17-prev-risorse",
)
==== Grafico a torta della suddivisione oraria prevista

#let orePrevSprint17 = (
  ("Responsabile", 1),
  ("Progettista", 12),
  ("Amministratore", 2),
  ("Programmatore", 11),
  ("Analista", 1),
  ("Verificatore", 23),
)
#graficoTorta("Sprint 17 - Ore produttive previste per ogni ruolo", orePrevSprint17)

=== Compiti svolti
Il gruppo ha svolto con successo i seguenti compiti: \
Issue relative allo sprint 17: \
- [PdQ] Aggiornare metriche (#issue(496))
- [Backend] Togliere requester check da GetTenantList (#issue(120, repo: "dashboard"))
- [ST] Stesura Cloud Backend - Elia (#issue(523))
- [ST] Tracciamento requisiti (#issue(525))
- [ST] Fix diagramma UserApiClientService (#issue(557))
- Risolvere problema di scraping delle metriche gin (#issue(6, repo: "infra"))
- [Backend] Fixare scraping metriche gin (#issue(153, repo: "dashboard"))
- [Gloss] Aggiungere definizioni backend (#issue(538))
- [AdR] Revisione (#issue(543))
- [MU] Perfezionamento manuale utente backend, installazione (#issue(544))
- Rendicontazione ore responsabile sprint 17 (#issue(545))
- [PdP] Sprint 16 (#issue(547))
- [PdP] Sprint 17 (#issue(594))
- [MU] Perfezionamento manuale utente observability (#issue(548))
- [MU] Sezione frontend (#issue(549))
- [PdQ] Rendicontare test di unità/integrazione (#issue(550))
- [ST] Revisione primi 3 livelli C4 model (#issue(553))
- [ST] Fix typo in immagine (#issue(558))
- [ST] Sezione su Cloud DB (#issue(559))
- [ST] Modifica paragrafo su architettura Frontend (#issue(563))
- [MVP] Test sistema da TS137 a TS281 (#issue(2, repo: "MVP"))
- [NdP] Sezione progettazione (#issue(567))
- [ST] Miglioramento sezione design patterns (#issue(570))
- [ST] Spostamento descrizione architettura frontend (#issue(571))
- [MU] Controlli per v1.0.0 (#issue(575))
- [Gloss] Controlli per v1.0.0 (#issue(577))
- [Gloss] Nuovi termini (#issue(579))
- [MU] Spostare immagini frontend (#issue(582))
- [website] fix header PB (#issue(586))

=== Retrospettiva
Durante lo #gloss("sprint") 17, il gruppo ha mantenuto un ritmo di lavoro costante e produttivo, focalizzandosi principalmente sulla documentazione e sui test di sistema.

I documenti principali sono stati completati con successo: l'#gloss("Analisi dei Requisiti") ha superato la revisione. Il #gloss("Manuale Utente") ora copre tutte le sezioni necessarie, inclusi _gateway_, _data consumer_, _backend_, _installazione_, _frontend_ e _observability_; la #gloss("Specifica Tecnica") è stata finalizzata con l'aggiunta e revisione di sezioni tra cui "Cloud Backend", "tracciamento requisiti", "design patterns" e la revisione del modello C4; il #gloss("Piano di Qualifica") è stato aggiornato con le metriche e il rendiconto di tutti i test.

I test di sistema sono stati implementati utilizzando *Playwright*, come pianificato, permettendo di validare l'integrazione complessiva del sistema.


=== Rischi occorsi
Una buona distribuzione del lavoro tra i membri del gruppo ha permesso di terminare le attività necessarie senza incombere in ritardi o imprevisti.

=== Consuntivo di periodo
==== Risorse utilizzate
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "1", "2", "-", "-", "-", "4 (+1)", [*7*],
    "Alessandro Dinato", "-", "-", "-", "-", "-", "4", [*4*],
    "Michele Dioli", "-", "-", "-", "1", "-", "11", [*12*],
    "Hossam Ezzemouri", "-", "-", "-", "6 (+2)", "3 (+2)", "-", [*9*],
    "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
    "Siria Salvalaio", "-", "-", "1", "-", "2 (-4)", "4 (+1)", [*7*],
    "Elia Ernesto Stellin", "-", "-", "-", "3 (-4)", "-", "-", [*3*],
    table.footer([*Totale*], [*1*], [*2*], [*1*], [*10*], [*5*], [*23*], [*42*]),
  ),
  [Sprint 17 - Risorse utilizzate],
  label-id: "spr17-risorse-utiliz",
)
==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint17 = (
  ("Responsabile", 1),
  ("Verificatore", 23),
  ("Analista", 1),
  ("Amministratore", 2),
  ("Programmatore", 5),
  ("Progettista", 10),
)
#graficoTorta(
  "Sprint 17 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint17,
)

=== Preventivo a finire
==== Aggiornamento ore rimanenti
#tabella-paginata(
  table(
    columns: (0.20fr, 0.10fr, 0.10fr, 0.10fr, 0.10fr, 0.12fr, 0.10fr, 0.10fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Nome*], [*Resp*], [*Amm*], [*Analist*], [*Progett*], [*Programm*], [*Verif*], [*Totale*]),
    "Jaume Bernardi", "-", "2 (-2)", "-", "-", "11", "1 (-4)", [*14*],
    "Alessandro Dinato", "-", "-", "-", "-", "-", "-", [*0*],
    "Michele Dioli", "-", "-", "-", "-", "-", "3 (-11)", [*3*],
    "Hossam Ezzemouri", "-", "-", "-", "-", "-", "-", [*0*],
    "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
    "Siria Salvalaio", "-", "-", "2 (-1)", "1", "1 (-2)", "-", [*4*],
    "Elia Ernesto Stellin", "-", "-", "-", "-", "-", "-", [*0*],
    table.footer([*Totale*], [*0*], [*2*], [*2*], [*1*], [*12*], [*4*], [*21*]),
  ),
  [Sprint 17 - Aggiornamento ore rimanenti],
  label-id: "spr17-agg-ore-rim",
)

==== Aggiornamento costi
#tabella-paginata(
  table(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    align: left,
    stroke: (x, y) => (
      top: if y == 0 { 0pt } else { 0.5pt + black },
      left: if x == 0 { 0pt } else { 0.5pt + black },
    ),
    table.header([*Ruolo*], [*Ore*], [*Costo orario*], [*Totale*]),
    "Responsabile", "0 (-1)", "30 €/h", "0 € (-30 €)",
    "Amministratore", "2 (-2)", "20 €/h", "40 € (-40 €)",
    "Analista", "2 (-1)", "25 €/h", "50 € (-25 €)",
    "Progettista", "1 (-10)", "25 €/h", "25 € (-250 €)",
    "Programmatore", "12 (-5)", "15 €/h", "180 € (-75 €)",
    "Verificatore", "4 (-23)", "15 €/h", "60 € (-345 €)",
    table.footer([*Totale*], [*21*], [-], [*355 €*]),
  ),
  [Sprint 17 - Aggiornamento costi],
  label-id: "spr17-agg-costi",
)
