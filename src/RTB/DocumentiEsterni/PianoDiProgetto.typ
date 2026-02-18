#import "../../Templates/templateDocumentiGenerici.typ": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show: report.with(
  titolo: "Piano di Progetto",
  stato: "Verificato",
  registro-modifiche: (
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
      [Revisione rischi Sprint 1-4],
    ),
    (
      "0.10.3",
      "16/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Revisione rischi e contromisure, nonché Sprint.],
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
      [Aggiunto CdP Sprint 7],
    ),
    (
      "0.7.3",
      "17/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Correzioni riguardo CdP Sprint 6],
    ),
    (
      "0.7.2",
      "17/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Piccole modifiche riguardo CdP Sprint 6],
    ),
    (
      "0.7.1",
      "16/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Consuntivo di periodo Sprint 6],
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
      [Aggiunta data consegna RTB in @calendario-progetto; Stesura CdP sprint 4;
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
      "Compilazione Sprint 1, preventivo Sprint 2, pianificazione attività RTB",
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
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
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
Il documento include inoltre il calendario di massima del progetto, la stima dei costi complessivi e l'impegno orario previsto per ogni ruolo, i quali sono stati definiti durante la *Candidatura*.

Poiché il gruppo ha deciso di adottare un approccio di sviluppo #gloss[Agile], al termine di ogni sprint vengono aggiornati il #gloss[consuntivo di periodo], l'analisi dei rischi effettivamente occorsi e il #gloss[consuntivo a finire] dello sprint successivo, i quali vengono analizzati durante lo #gloss[sprint retrospective] settimanale. \
Questo processo permette di rivedere costantemente la pianificazione delle attività e dei compiti, migliorare i processi tramite retrospettive periodiche e mantenere una stima realistica del completamento finale.

== Glossario
Il #link("https://glitchhub-team.github.io/pdf/glossary.pdf")[*glossario*] è un documento redatto dal gruppo e aggiornato nell'arco del progetto didattico, con lo scopo di fornire definizioni coerenti per i termini tecnici e quelli specifici relativi al corso di Ingegneria del Software.

Questo documento è fondamentale per garantire una comprensione uniforme della documentazione prodotta ai lettori esterni dal gruppo e per definire un riferimento interno al gruppo, riducendo possibili ambiguità interpretative.

Per indicare che la definizione di una parola o di un concetto è disponibile, si è deciso di utilizzare la seguente notazione:
#gloss[definizione nel glossario].

== Riferimenti
=== Riferimenti normativi
- Capitolato d'appalto C7:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf`] \
  - *Ultimo accesso: 17/02/2026*
- Norme di Progetto v1.0.0:
  - #link(
      "https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf",
    )[`https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf`] \
  - *Ultimo accesso: 17/02/2026*

=== Riferimenti informativi
- Regolamento del Progetto Didattico:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf`] \
  - *Ultimo accesso: 17/02/2026* //scriviamo ultimo accesso o ultima modifica?
- Il ciclo di vita del Software:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T03.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T03.pdf`] \
  - *Ultimo accesso: 17/02/2026*
- Gestione di progetto:
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf`] \
  - *Ultimo accesso: 17/02/2026*
- Glossario v.0.3.1:
  - #link(
      "https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf",
    )[`https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf`] \
  - *Ultimo accesso: 17/02/2026*

== Redazione del documento
Questa sezione descrive le pratiche adottate per la redazione del #gloss[Piano di Progetto]. \
Il *Responsabile* è la figura incaricata di compilare e aggiornare il documento, con cadenza regolare al termine di ogni sprint.

Il workflow previsto per ogni sprint è il seguente:
1. Durante l'incontro settimanale del gruppo vengono analizzati i risultati dello sprint precedente e pianificate le attività e i compiti futuri;
2. Il Responsabile dello sprint compila il consuntivo di periodo sulla base di quanto emerso in riunione, eseguendo i seguenti compiti:
  - descrive i compiti svolti;
  - redige la retrospettiva di periodo;
  - aggiorna le risorse impiegate;
  - registra i rischi occorsi analizzandone cause e modalità di gestione;
  - aggiorna ore e budget rimanente.
3. Infine, definisce i compiti da svolgere nello sprint corrente, individua i rischi attesi e compila il preventivo delle risorse necessarie.

Per rendere più efficiente questo processo è stato sviluppato uno script in #gloss[Go] che, a partire dai *custom fields* delle #gloss[GitHub Issues] e dallo sprint selezionato, genera automaticamente la sezione dello sprint con costi e ore aggiornate. \
Le parti descrittive e narrative richiedono comunque l'intervento del Responsabile, che deve completarle manualmente.

In ogni caso, è preferibile che dopo la riunione vengano compilati sia il consuntivo dello sprint concluso sia il consuntivo a finire dello sprint successivo, così da mantenere una pianificazione sempre aggiornata e accurata.


= Analisi e mitigazione dei rischi
Questa sezione analizza i potenziali rischi e le difficoltà che il gruppo potrebbe incontrare durante lo svolgimento del progetto didattico.\
Realizzare un'ottima analisi preventiva consente di evitare conflitti interni, ritardi nelle scadenze, aumento dei costi di produzione e, soprattutto, la realizzazione di un prodotto non conforme agli obiettivi.

L'analisi dei rischi si articola in quattro fasi principali:
- *Identificazione*: individuare i possibili rischi legati al progetto, al prodotto e al contesto di riferimento, riconoscendo tutto ciò che potrebbe compromettere lo sviluppo;
- *Analisi*: per ciascun rischio identificato si valuta la probabilità di occorrenza e l'impatto che potenziale sul lavoro del gruppo e sul prodotto finale;
- *Pianificazione*: definizione delle strategie di prevenzione o mitigazione, stabilendo in anticipo le azioni da intraprendere in caso in cui il rischio si verifichi;
- *Controllo*: monitoraggio continuo attraverso indicatori che segnalano eventuali problemi, l'attuazione delle strategie di mitigazione e il miglioramento costante del #gloss[way of working].

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
      - Pianificare le attività tenendo conto dei calendari accademici e delle sessioni d’esame;
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
      I membri del gruppo potrebbero avere periodi di indisponibilità dovuti a esigenze personali (famiglia, salute, impegni imprevisti). Queste variazioni possono influire sulla continuità del lavoro e sulla capacità del team di rispettare le scadenze. Per mitigare almeno parzialmente questi avenimenti il gruppo si impegna nel adottare questi punti:
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

- Le ore di *Analista* sono risultate sottostimate rispetto all'effettivo impegno richiesto dalla stesura dell'Analisi dei Requisiti, che ha richiesto un numero di sprint superiore al previsto;
- Le ore di *Progettista* sono risultate sovrastimate in vista della PB e di ciò che il gruppo si aspetta di dover affrontare in fase di progettazione;
- Le ore di *Programmatore* e *Verificatore* sono state oggetto di un riequilibrio reciproco. Lo sviluppo del #gloss[PoC] ha richiesto esclusivamente attività di programmazione, rendendo necessaria un'integrazione delle ore previste, di conseguenza una ridistribuzione anche sul ruolo di verificatore.
- Le ore di *Responsabile* sono state ridistribuite per allinearle alle assegnazioni già definite per i successivi tre sprint e per compensare gli sforamenti registrati in altri ruoli, garantendo al contempo il rispetto del budget inizialmente previsto.

La ricalibrazione è stata effettuata esclusivamente con spostamenti orizzontali, ovvero modificando la distribuzione tra ruoli per ciascun membro senza alterare il monte ore individuale di *95 ore* né il costo complessivo di realizzazione.

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

Come per la sezione precedente è disponibile la suddivisione dei costi prima e dopo la riassegnazione, la quale ha comportato una diminuzione della stime dei costi pari a *150 €*.

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
- *Analisi del Capitolato e identificazione degli attori*: individuazione degli attori che interagiscono con il sistema, distinguendo tra utenti e componenti hardware/software (es. Sensori BLE, Gateway, Sistema Cloud);
- *Definizione scenari d'uso*: individuazione degli scenari principali per attore con lo scopo di scomporli in casi d'uso più dettagliati;
- *Definizione dei Casi d'uso (use case)*: modellazione delle interazioni tramite diagrammi UML e descrizioni testuali dettagliate, comprendenti pre-condizioni, post-condizioni, scenari principali e scenari alternativi;
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
- Pianificazione a lungo termine delle attività previste per la RTB;
- Analisi dettagliata dei singoli sprint.

Il documento verrà redatto e aggiornato nel corso di tutti gli sprint, poiché ha il compito di rendicontarne l'avanzamento. \
Le stime relative ai costi e alla data di consegna potranno essere aggiornate qualora emergano nuove informazioni o si rilevino previsioni non accurate. \
Allo stesso modo, l'analisi dei rischi e le relative strategie di mitigazione dovranno essere riviste ogni volta che un rischio si presenta, trattandosi di un processo continuo e non limitato al periodo iniziale.


== Stesura Norme di Progetto <S_NdP>
Il documento #gloss[Norme di Progetto] definisce il _Way of Working_ del gruppo, stabilendo le regole, gli strumenti e le procedure operative da seguire per garantire uniformità, efficienza ed efficacia nello svolgimento del progetto.

La redazione del documento prevede la definizione delle seguenti tipologie di processo:
- *Processi primari*: definiscono le attività direttamente legate alla realizzazione del prodotto software, come l'*Acquisizione* e la *Fornitura*;
- *Processi di supporto*: definiscono le attività che si integrano con i processi primari con lo scopo di semplificare e migliorare il lavoro del gruppo. Esempi di processi di supporto sono la *Gestione delle Configurazioni* e la *Documentazione*;
- *Processi organizzativi*: essi avvengono parallelamente ai processi primari, le attività previste da questi processi sono volte a garantire un'ottima organizzazione dei processi di ciclo di vita e di migliorarli nel tempo. Un esempio di processo organizzativo è la *Formazione*.

Il suddetto documento ha carattere incrementale perciò verrà aggiornato durante tutto l'arco del Progetto Didattico, con l'obiettivo di stabilizzarlo verso la fine del periodo di #gloss[RTB], quando le attività e i processi saranno ben definiti e consolidati.

== Stesura Piano di Qualifica <S_PdQ>
Il documento #gloss[Piano di Qualifica] ha lo scopo di definire la strategia di gestione della qualità adottata dal gruppo per garantire il soddisfacimento degli standard prefissati. Esso descrive le procedure operative di verifica e validazione, stabilendo metriche oggettive per monitorare sia l'efficienza dei processi interni che la conformità del prodotto software ai requisiti funzionali e qualitativi. Nello specifico, il documento stabilisce le metriche di valutazione applicate sia ai processi che al prodotto stesso, riportando anche i dettagli sulle procedure di verifica, sui test effettuati e sulle iniziative di miglioramento.

Il documento prevede il trattamento delle seguenti tematiche:
- *Metriche di Qualità del Processo*: definisce le metriche utilizzate per monitorare l'efficienza e l'efficacia dei processi interni;
- *Metriche di Qualità del Prodotto*: definisce le metriche utilizzate per valutare la conformità del prodotto software ai requisiti funzionali e non;
- *Metriche di Testing*: definisce le metriche utilizzate per valutare l'efficacia dei test effettuati e la conseguente qualità del codice;
- *Definizione dei Test*: definisce i test da effettuare, tra cui test di sistema, test di integrazione e test di unità. Nel periodo di #gloss[RTB] so definiranno solo i primi;
- *Cruscotto di Valutazione*: definisce un cruscotto di monitoraggio delle metriche definite, quest'ultimo dovrà essere automatizzato il più possibile per garantire un monitoraggio costante e aggiornato. Inoltre le metriche dovranno avere delle soglie di accettabilità e di ottimalità per ogni metrica.
- *Iniziative di miglioramento*: definisce le iniziative previste per migliorare la qualità del processo e del prodotto, basate sui risultati delle metriche, sui feedback ricevuti ed eventualmente sulle sensazioni del gruppo.

== Stesura Glossario
Il *glossario* ha lo scopo di facilitare la comprensione della documentazione da parte di lettori esterni e di fissare, all'interno del gruppo, definizioni univoche che riducano possibili ambiguità interpretative.\
Sebbene la sua prima versione sia stata redatta durante la *Candidatura*, il documento richiede un aggiornamento continuo, integrando progressivamente nuove definizioni man mano che emergono durante il progetto.\
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
= Pianificazione e Analisi Sprint per RTB
Questa sezione descrive come il gruppo organizza, monitora e valuta il lavoro svolto durante ciascuno #gloss[sprint]. \
Ogni #gloss[sprint] viene valutato attraverso un #gloss[consuntivo di periodo], i compiti svolti, i rischi occorsi e la #gloss[retrospettiva di periodo].

Al termine di ogni #gloss[sprint] viene redatta la programmazione e la previsione dello sprint successivo.
Vengono così stilati il #gloss[consuntivo a finire], i rischi attesi, le attività e i compiti da svolgere.

== Sprint 1 <sprint-1>
Inizio: 12/11/2025 \
Fine: 19/11/2025 \

Questo primo sprint ha lo scopo di avviare le stesura dei documenti #gloss[Piano di Progetto], #gloss[Analisi dei Requisiti] e #gloss[Norme di Progetto].

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Stesura *Piano di Progetto*;
- Stesura *Analisi dei Requisiti*, concentrandosi sui casi d'uso;
- Stesura *Norme di Progetto*;
- Redazione e invio del verbale esterno relativo all'incontro con _M31_ del 13/11/2025

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *Sprint 1*:
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici che limitano la loro disponibilità durante lo sprint.

=== Consuntivo a finire
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
Il gruppo ha riscontrato il rischio *RP1*(@RP1) durante lo *Sprint 1*. Tale rischio è stato gestito secondo quanto previsto, assegnando ai membri coinvolti un carico di lavoro ridotto e compiti non bloccanti.\
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

Il presente sprint ha lo scopo di continuare la stesura dei documenti *Piano di Progetto*, *Analisi dei Requisiti* e *Norme di Progetto*.
Inoltre, si procederà con l'approfondimento dei casi d'uso.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Continuazione stesura *Piano di Progetto*;
- Continuazione stesura *Norme di Progetto*;
- Approfondimento casi d'uso in *Analisi dei Requisiti*, grazie al supporto di _M31_ nell'incontro del 24/11/2025.

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *Sprint 2*:
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici che limitano la loro disponibilità durante lo sprint.

=== Consuntivo a finire
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

Questo sprint ha permesso al gruppo di avanzare nella conoscenza e nella definizione dei casi d'uso, grazie al supporto fornito da _M31_ durante l'incontro del 24/11/2025.\
L'azienda si è dimostrata disponibile a chiarire i dubbi del gruppo e ha fornito un contributo sostanziale all'approfondimento e alla definizione dei casi d'uso. \
L'incontro è stato positivo perché ha dimostrato che il gruppo può fare affidamento sul supporto del proponente, vista la sua alta disponibilità e competenza.

Infine, il team ha leggermente ridefinito il workflow di utilizzo delle GitHub Issues, al fine di migliorare la gestione delle attività e la tracciabilità del lavoro svolto. Ciò rappresenta un segnale positivo, in quanto dimostra la volontà del gruppo di ottimizzare continuamente i propri processi di lavoro.

=== Rischi occorsi
Il gruppo ha riscontrato il rischio *RP2*(@RP2) durante lo *Sprint 2*. \
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

Il presente sprint ha lo scopo di continuare con la stesura delle #gloss[Norme di Progetto], trovare delle metriche per il #gloss[Piano di Qualifica] e l'organizzazione di un brainstorming per la stesura dei casi d'uso. \

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Aggiunta sezione riguardante i documenti incrementali nelle #gloss[Norme di Progetto];
- Definizione di metriche adatte a misurare la qualità del progetto da utilizzare nel #gloss[Piano di Qualifica];
- Brainstorming per la stesura dei casi d'uso relativi all'#gloss[Analisi dei Requisiti];
- Correzione issues secondo le pratiche stabilite nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-26.pdf")[verbale interno del 26/11/2025].
- Implementazione automazione per la generazione della rendicontazione delle ore previste e lavorate per il #gloss[Piano di Progetto].

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *Sprint 3*:
- *RO1*(@RO1): è possibile che il compito di selezione delle metriche subisca un ritardo, dato che l'individuazione di metriche adeguate non è immediata e occorre un'analisi piu profonda;
- *RO3*(@RO4): ci potrebbero essere opinioni contrastanti nel brainstorming sull'analisi dei requisiti;
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici che limitano la loro disponibilità durante lo sprint.

=== Consuntivo a finire
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
- Correzione issues secondo le pratiche stabilite nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-26.pdf")[verbale interno del 26/11/2025].
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

Il presente sprint ha lo scopo di continuare lo sviluppo dei casi d'uso.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Stesura casi d'uso per l'attore *super-admin*;
- Stesura casi d'uso per l'attore *tenant-admin*;
- Stesura casi d'uso per l'attore *tenant-user*;
- Stesura casi d'uso per l'attore *REST client*;
- Stesura casi d'uso per l'attore *gateway*;
- Stesura casi d'uso per l'attore *user generico*.

=== Rischi attesi <sprint-4-rischi-attesi>
Il gruppo prevede i seguenti rischi per lo *Sprint 4*:
- *RO3*(@RO3): andando in profondità nei casi d'uso potrebbero sorgere dubbi, bloccando così lo sviluppo di certi casi d'uso;
- *RP1*(@RP1): alcuni membri del gruppo potrebbero avere impegni accademici imprevisti.

=== Consuntivo a finire
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
- Use case *Super Admin* (#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/77")[*Issue \#77*])
- Use case *Tenant Admin* (#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/76")[*Issue \#76*])
- Use case *Gateway* #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/75")[(*Issue \#75*)]

Questi ultimi compiti verranno continuati nello sprint successivo (@sprint-5).

=== Retrospettiva
La maggior parte dei compiti dello *sprint 4* sono stati rallentati considerevolmente da dubbi del gruppo relativi alla scrittura dei casi d'uso. Più nello specifico, i dubbi riguardavano il ruolo degli attori, la definizione di "sistema", il significato e lo scopo degli use case stessi.

Questi dubbi sono emersi durante le sessioni di #gloss[brainstorming] in cui il gruppo ha ragionato in modo approfondito sul #gloss[capitolato] e su come scriverne gli use case. Queste sessioni sono state altamente proficue, in quanto le questioni emerse sono fondamentali per la scrittura dell'#gloss[Analisi dei Requisiti] e la comprensione del capitolato stesso.

Il dialogo continuo con *M31 Srl*, via mail e in presenza (vd. #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2025-12-09.pdf")[*verbale esterno del 09/12/2025*]), ha permesso al gruppo di chiarire i dubbi emersi durante lo sprint e di farne emergere altri da chiarire.

Un ulteriore fattore di rallentamento nelle attività di gruppo è stata la difficoltà nell'organizzare sessioni di lavoro sincrone in cui ragionare a gruppi su use case diversi. Infatti, i membri del gruppo che non sono riusciti a lavorare insieme sincronamente hanno fatto emergere dei dubbi sostanziali relativi agli use case durante l'incontro di Sprint Retrospective del *10 dicembre 2025*, riassunto nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-11.pdf")[*verbale interno dell'11 dicembre 2025*].
#footnote[
  La riunione del *10 dicembre 2025* è riassunta nel verbale dell'*11 dicembre 2025* perché, sebbene nella riunione del *10 dicembre* il gruppo avrebbe dovuto svolgere l'usuale incontro settimanale di retrospettiva, questo è presto diventato una sessione di brainstorming sui dubbi del gruppo relativi agli use case. Per tale ragione, i componenti del gruppo hanno deciso di proseguire tale riunione l'*11 dicembre*, definendo ivi i ruoli e i compiti per lo *sprint 5*.
]

=== Rischi occorsi <sprint-4-rischi-occorsi>
Durante lo *sprint 4*, sono occorsi i seguenti rischi:
- *RO3* (@RO3): come previsto, lo studio dei requisiti del capitolato ha fatto sorgere numerosi dubbi relativi ai casi d'utilizzo del prodotto bloccando lo sviluppo di certi use case, soprattutto quelli relativi al simulatore di #gloss[Gateway], perciò il gruppo ha deciso di esporre i dubbi di persona al professor Cardin e alla proponente. Questo rischio ha avuto un impatto medio poiché, sebbene fosse stato previsto, ha comunque causato ritardi nello sviluppo degli use case.
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
    "Michele Dioli", "-", "-", "2", "-", "-", "-", [*2*],
    "Hossam Ezzemouri", "-", "-", "2", "-", "-", "-", [*2*],
    "Riccardo Graziani", "-", "-", "2", "-", "-", "-", [*2*],
    "Siria Salvalaio", "-", "-", "1 (-1)", "-", "-", "-", [*1*],
    "Elia Ernesto Stellin", "-", "-", "2", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*3*], [*0*], [*13*], [*0*], [*0*], [*0*], [*16*]),
  ),
  [Sprint 4 - Risorse utilizzate],
  label-id: "spr4-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint4 = (
  ("Responsabile", 3),
  ("Amministratore", 0),
  ("Analista", 13),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 4 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint4,
)

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
    "Michele Dioli", "4", "7", "8 (-2)", "21", "24", "23", [*87*],
    "Hossam Ezzemouri", "7", "8", "4 (-2)", "20", "24", "23", [*86*],
    "Riccardo Graziani", "8", "8", "4 (-2)", "20", "23", "24", [*87*],
    "Siria Salvalaio", "8", "8", "7 (-1)", "21", "24", "21", [*89*],
    "Elia Ernesto Stellin", "8", "8", "3 (-2)", "21", "23", "24", [*87*],
    table.footer([*Totale*], [*44*], [*53*], [*38*], [*145*], [*165*], [*160*], [*605*]),
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
    "Analista", "38 (-13)", "25 €/h", "950 € (-325 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "160 ", "15 €/h", "2400 € ",
    table.footer([*Totale*], [*605*], [-], [*11830 €*]),
  ),
  [Sprint 4 - Aggiornamento costi],
  label-id: "spr4-agg-costi",
)


== Sprint 5 <sprint-5>
Inizio: 10/12/2025 \
Fine: 17/12/2025 \

Il presente sprint ha lo scopo di sviluppare ulteriormente i casi d'uso in vista dell'incontro con l'azienda proponente del 15/12/2025, in cui il gruppo presenterà gli use case prodotti all'azienda e riceverà feedback utili alla produzione dell'#gloss[analisi dei requisiti].

Inoltre, secondo quanto detto nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-12-11.pdf")[*verbale interno dell'11 dicembre 2025*], è sorta la necessità di creare degli *Issue Form* e delle automazioni per le #gloss[GitHub Issues] per aumentare la produttività del gruppo.

=== Compiti da svolgere
Il gruppo ha individuato i seguenti compiti da svolgere:
- Sviluppo degli use case con attore *Super Admin*
- Sviluppo degli use case con attore *Tenant Admin*
- Sviluppo degli use case con attore *Gateway*
- Creazione di *Issue Form* e automazioni per #gloss[Github Issues]

=== Rischi attesi
Il gruppo prevede i seguenti rischi per lo *Sprint 5*:
- *RO3* (@RO3): analogamente allo sprint precedente (vd. @sprint-4-rischi-attesi), un ulteriore studio degli use case può portare alla creazione di ulteriori dubbi che possono rallentare lo sviluppo degli use case.
- *RP1* (@RP1): alcuni membri del gruppo potrebbero avere impegni accademici imprevisti, che possono rendere più difficile un lavoro sincrono di brainstorming e di studio.

=== Consuntivo a finire
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
- Sviluppo degli use case con attore *Super Admin* (#issue(97))
- Sviluppo degli use case con attore *Tenant Admin* (#issue(98))
- Sviluppo degli use case con attore *Gateway* (#issue(99))
- Creazione di *Issue Form* e automazioni per #gloss[GitHub Issues] (#issue(104))

=== Retrospettiva
Durante lo *sprint 5*, il gruppo ha continuato la scrittura degli use case del progetto i quali, però, non sono ancora stati completati, a causa di una serie di dubbi che hanno rallentato i lavori del gruppo per l'intero sprint.

Per riuscire a scrivere il documento di #gloss[Analisi dei requisiti] in tempo utile, il gruppo si impegna a continuare la redazione degli use case nello sprint successivo.

Inoltre, la task "Creazione di *Issue Form* e automazioni per #gloss[GitHub Issues] (#issue(104))" ha impiegato molto più tempo da *Amministratore* del previsto, in quanto non si aveva previsto che le automazioni desiderate dal gruppo richiedessero uno studio delle API di GitHub, che utilizzano #gloss[GraphQL] per le richieste.

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
    "Riccardo Graziani", "-", "-", "1", "-", "-", "-", [*1*],
    "Siria Salvalaio", "-", "-", "1", "-", "-", "-", [*1*],
    "Elia Ernesto Stellin", "1 (-1)", "5 (+3)", "-", "-", "-", "-", [*6*],
    table.footer([*Totale*], [*1*], [*5*], [*7*], [*0*], [*0*], [*0*], [*13*]),
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
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 5 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint5,
)

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
    "Michele Dioli", "4", "7", "6 (-2)", "21", "24", "23", [*85*],
    "Hossam Ezzemouri", "7", "8", "4", "20", "24", "23", [*86*],
    "Riccardo Graziani", "8", "8", "3 (-1)", "20", "23", "24", [*86*],
    "Siria Salvalaio", "8", "8", "6 (-1)", "21", "24", "21", [*88*],
    "Elia Ernesto Stellin", "7 (-1)", "3 (-5)", "3", "21", "23", "24", [*81*],
    table.footer([*Totale*], [*43*], [*48*], [*31*], [*145*], [*165*], [*160*], [*592*]),
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
    "Analista", "31 (-7)", "25 €/h", "775 € (-175 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "160 ", "15 €/h", "2400 € ",
    table.footer([*Totale*], [*592*], [-], [*11525 €*]),
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

=== Consuntivo a finire
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
Issue relative a sprint 6:
- [AdR] UC per interfaccia utente #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/146")[\#146],
- [UC] Studio metodi di normalizzazione dati da sensori BLE #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/133")[\#133],
- [AdR] Approfondimento Use Case attuali #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/123")[\#123],
- [AdR] Definire UC Attore=Sensore Simulato, Sistema=Gateway Simulato #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/126")[\#126],
- [AdR] Definire UC con Attore=Cloud, Sistema=Simulatore Gateway #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/125")[\#125],
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
    "Michele Dioli", "4", "3 (-4)", "6", "21", "24", "23", [*81*],
    "Hossam Ezzemouri", "7", "4 (-4)", "4", "20", "24", "23", [*82*],
    "Riccardo Graziani", "8", "8", "1 (-2)", "20", "23", "24", [*84*],
    "Siria Salvalaio", "8", "3 (-5)", "6", "21", "24", "21", [*83*],
    "Elia Ernesto Stellin", "6 (-1)", "3", "2 (-1)", "21", "23", "24", [*79*],
    table.footer([*Totale*], [*42*], [*35*], [*26*], [*145*], [*165*], [*160*], [*573*]),
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
    "Analista", "26 (-5)", "25 €/h", "650 € (-125 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "160 ", "15 €/h", "2400 € ",
    table.footer([*Totale*], [*573*], [-], [*11110 €*]),
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
- Completamento creazione Use Case (#issue(151))
- Stesura dei requisiti degli Use Case (#issue(152))
- Scrittura dei Test di Sistema (#issue(153))
- Studio iniziale del Proof of Concept (#issue(154))

=== Rischi attesi
- *RP1* (@RP1): trovandoci in prossimità della sessione invernale di esami la disponibilità temporale dei membri del gruppo potrebbe risultare ridotta a causa degli impegni accademici in concomitanza
- *RO1* (@RO1): dalla la possibilità che RP1 si verifichi potrebbe avvenire ritardi nel completamento delle task assegnate

=== Consuntivo a finire
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
Issue relative a sprint 7: \
- [PdQ] Stabilizzazione *Piano di Qualifica* #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/149")[\#149],
- [AdR] Scrittura requisiti UC31 - UC60 #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/160")[\#160],
- [AdR] Generalizzazione "Admin Generico" #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/163")[\#163],
- [AdR] Espansione UC di visualizzazione #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/162")[\#162],
- [AdR] Scrittura Requisiti #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/127")[\#127],
- Creazione Google Sheet per cruscotto con automazioni #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/150")[\#150],

=== Retrospettiva
Durante lo Sprint 7 il gruppo è riuscito a realizzare una versione stabile del #gloss("Piano di Qualifica"), procedendo alla selezione e all'adattamento delle metriche precedentemente analizzate. Permangono alcune correzioni di lieve entità, la cui implementazione è pianificata per lo Sprint 8. \
La suddetta implementazione è fondamentale dato che fornisce la possibilità di verifica sulla qualità di processo del gruppo, dato sarà possibile visionare le metriche attraverso le automazioni realizzate.\
Per quanto riguarda la stesura dei requisiti, è stato possibile completare esclusivamente la definizione degli use case dal 31 al 60, ritardando la stesura dei requisiti successivi.
Di conseguenza, nello Sprint 8 verrà data maggiore priorità al completamento della documentazione dei requisiti relativi ai restanti use case.

=== Rischi occorsi
Il gruppo ha riscontrato il rischio RO1 (@RO1), in quanto non è stato possibile completare integralmente la stesura dei requisiti relativi
agli use case analizzati, ma solo una parte di essi. L'impatto è valutato come medio, poiché si prevede di ultimare l' #gloss("Analisi dei Requisiti") in vista della conclusione della #gloss("RTB"), fissata per il 12 febbraio 2026. A tal fine, nello Sprint 8 questa attività verrà intensificata per il suo completamento.

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
    "Hossam Ezzemouri", "2", "-", "3", "-", "-", "-", [*5*],
    "Riccardo Graziani", "-", "-", "4", "-", "-", "-", [*4*],
    "Siria Salvalaio", "-", "-", "3", "-", "-", "-", [*3*],
    "Elia Ernesto Stellin", "-", "-", "3", "-", "-", "-", [*3*],
    table.footer([*Totale*], [*2*], [*0*], [*15*], [*0*], [*0*], [*0*], [*17*]),
  ),
  [Sprint 7 - Risorse utilizzate],
  label-id: "spr7-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint7 = (
  ("Responsabile", 2),
  ("Amministratore", 0),
  ("Analista", 15),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 7 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint7,
)

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
    "Michele Dioli", "4", "3", "6", "21", "24", "23", [*81*],
    "Hossam Ezzemouri", "5 (-2)", "4", "1 (-3)", "20", "24", "23", [*77*],
    "Riccardo Graziani", "8", "8", "-3 (-4)", "20", "23", "24", [*80*],
    "Siria Salvalaio", "8", "3", "3 (-3)", "21", "24", "21", [*80*],
    "Elia Ernesto Stellin", "6", "3", "-1 (-3)", "21", "23", "24", [*76*],
    table.footer([*Totale*], [*40*], [*35*], [*11*], [*145*], [*165*], [*160*], [*556*]),
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
    "Analista", "11 (-15)", "25 €/h", "275 € (-375 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "160 ", "15 €/h", "2400 € ",
    table.footer([*Totale*], [*556*], [-], [*10675 €*]),
  ),
  [Sprint 7 - Aggiornamento costi],
  label-id: "spr7-agg-costi",
)

== Sprint 8 <sprint-8>
Inizio: 14/01/2026 \
Fine: 28/01/2026 \

Il presente sprint ha lo scopo di focalizzarsi prioritariamente sulla stesura dei requisiti e sulla modellazione dei diagrammi use case. In parallelo, il team avvierà lo studio e l'apprendimento di #gloss[NATS] e #gloss[Angular.js] in vista dell'imminente implementazione del #gloss("POC"), consolidando al contempo la documentazione normativa, il glossario e la definizione tecnica delle metriche.

=== Compiti da svolgere
In seguito sono mostrati i compiti identificati:
- Studio di NATS per future implementazioni (#issue(165)
- Scrittura diagrammi usa case (tramite STAR UML) e stesura dei requisiti (#issue(166))
- Studio di Angular.js (#issue(169))
- Completare le iniziative di miglioramento e definire meglio alcune metriche nel #gloss[Piano di Qualifica] (#issue(171))
- Aggiornare il Glossario (#issue(172), #issue(173), #issue(174), #issue(175))

=== Rischi attesi
- *RT1* (@RT1): lo studio di nuove tecnologie potrebbe risultare più lunga di quanto previsto e/o più difficile di quanto valutato.
- *RO1* (@RO1): si potrebbero verificare dei ritardi dato il periodo di studio intenso, legato al rischio *RP1* (@RP1).
- *RO2* (@RO2): l'errata organizzazione e distribuzione delle risorse del gruppo può portare ad un carico di lavoro squilibrato fra il gruppo che deve scrivere i diagrammi degli use case e gli altri membri del gruppo.
- *RP1* (@RP1): la *sessione invernale d'esami* potrebbe influire negativamente riguardo le scadenze prefissate.

=== Consuntivo a finire
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
- Studio di NATS e Angular.js #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/165")[\#165] e #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/169")[\#169],
- Scrittura diagrammi usa case (tramite STAR UML) e stesura dei requisiti #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/166")[\#166]
- [PdQ] Ultimate le metriche con aggiunta di formule e definite le iniziative di miglioramento #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/171")[\#171],
- Aggiunte definizioni al glossario #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/172")[\#172], #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/173")[\#173], #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/174")[\#174] e #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/175")[\#175]

=== Retrospettiva
Lo Sprint 8 ha visto il completamento dei compiti principali, ma con una produttività ridotta causata dalla sessione d'esami invernale (@RP1). L'impegno per gli appelli accademici ha limitato la disponibilità del team, rendendo difficile il rispetto rigoroso delle tempistiche su alcune issue secondarie. \
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
    "Michele Dioli", "-", "-", "6", "-", "-", "-", [*6*],
    "Hossam Ezzemouri", "-", "-", "5 (+2)", "-", "-", "-", [*5*],
    "Riccardo Graziani", "-", "-", "-", "-", "-", "-", [*0*],
    "Siria Salvalaio", "2", "2", "-", "-", "-", "-", [*4*],
    "Elia Ernesto Stellin", "-", "1", "1", "-", "-", "-", [*2*],
    table.footer([*Totale*], [*2*], [*3*], [*16*], [*0*], [*0*], [*0*], [*21*]),
  ),
  [Sprint 8 - Risorse utilizzate],
  label-id: "spr8-risorse-utiliz",
)

==== Grafico a torta della suddivisione oraria effettiva

#let oreEffettiveSprint8 = (
  ("Responsabile", 2),
  ("Amministratore", 3),
  ("Analista", 16),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#graficoTorta(
  "Sprint 8 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint8,
)

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
    "Hossam Ezzemouri", "5", "4", "-4 (-5)", "20", "24", "23", [*72*],
    "Riccardo Graziani", "8", "8", "-3", "20", "23", "24", [*80*],
    "Siria Salvalaio", "6 (-2)", "1 (-2)", "3", "21", "24", "21", [*76*],
    "Elia Ernesto Stellin", "6", "2 (-1)", "-2 (-1)", "21", "23", "24", [*74*],
    table.footer([*Totale*], [*38*], [*32*], [*-5*], [*145*], [*165*], [*160*], [*535*]),
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
    "Analista", "-5 (-16)", "25 €/h", "-125 € (-400 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "165 ", "15 €/h", "2475 € ",
    "Verificatore", "160 ", "15 €/h", "2400 € ",
    table.footer([*Totale*], [*535*], [-], [*10155 €*]),
  ),
  [Sprint 8 - Aggiornamento costi],
  label-id: "spr8-agg-costi",
)

== Sprint 9 <sprint-9>
Inizio: 28/01/2026 \
Fine: 13/02/2026 \

Il presente sprint ha lo scopo di completare la progettazione e lo sviluppo del #gloss[Proof of Concept] a seguito del completamento dello studio delle tecnologie effettuato nel precedente sprint. Contestualmente all'attività di sviluppo, il gruppo si pone l'obiettivo di pubblicare nella #gloss[repository] la versione *1.0.0* dei documenti di #gloss[Analisi dei Requisiti] e #gloss[Norme di Progetto].

Una volta consolidati i #gloss[requisiti] si procederà alla stesura dei relativi *Test di Sistema* all'interno del #gloss[Piano di Qualifica]. Infine, il responsabile dello sprint avrà l'incarico di contattare il professor Cardin per definire la data della riunione di valutazione della prima parte della #gloss[RTB].

=== Compiti da svolgere
Di seguito sono elencati i compiti individuati:
- Studio del linguaggio #gloss[Go] e del framework #gloss[Gin] (#issue(6, repo: "poc"))
- Studio dello stack di monitoring composto da #gloss[Grafana] e #gloss[Prometheus] (#issue(14, repo: "poc"))
- Sviluppo #gloss[NATS] (#issue(1, repo: "poc")), composto dalle issue:
  - Sviluppo crittografia, autenticazione e account (#issue(2, repo: "poc"))
  - Impostazione #gloss[NATS] *JetStream* (#issue(3, repo: "poc"))
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
- Stesura dei *Test di Sistema* (#issue(228), #issue(229), #issue(231), #issue(233), #issue(234))
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

=== Consuntivo a finire
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
  ("Programmatore", 31),
  ("Verificatore", 4),
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
- [PdQ] Stesura dei *Test di Sistema* (#issue(228), #issue(229), #issue(231), #issue(233), #issue(234))
- [Gloss] Aggiornare e aggiungere termini al #gloss[Glossario] (#issue(241), #issue(242), #issue(243), #issue(258))
- [Gloss] Rendere il #gloss[Glossario] una risorsa web (#issue(189))
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
  ("Programmatore", 31),
  ("Verificatore", 2),
)
#graficoTorta(
  "Sprint 9 - Ore produttive complessive ed effettive per ogni ruolo",
  oreEffettiveSprint9,
)

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
    "Hossam Ezzemouri", "5", "2 (-2)", "-4", "20", "20 (-4)", "23", [*66*],
    "Riccardo Graziani", "5 (-3)", "8", "-3", "20", "13 (-10)", "22 (-2)", [*65*],
    "Siria Salvalaio", "6", "-1 (-2)", "3", "21", "24", "21", [*74*],
    "Elia Ernesto Stellin", "6", "-", "-3 (-1)", "21", "19 (-4)", "24", [*67*],
    table.footer([*Totale*], [*35*], [*21*], [*-6*], [*145*], [*134*], [*158*], [*487*]),
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
    "Analista", "-6 (-1)", "25 €/h", "-150 € (-25 €)",
    "Progettista", "145 ", "25 €/h", "3625 € ",
    "Programmatore", "134 (-31)", "15 €/h", "2010 € (-465 €)",
    "Verificatore", "158 (-2)", "15 €/h", "2370 € (-30 €)",
    table.footer([*Totale*], [*487*], [-], [*9325 €*]),
  ),
  [Sprint 9 - Aggiornamento costi],
  label-id: "spr9-agg-costi",
)
