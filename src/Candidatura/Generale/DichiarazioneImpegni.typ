#import "../../Templates/templateDocumentiGenerici.typ": *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show: report.with(
  titolo: "Dichiarazione impegni",
  stato: "Verificato",
  versione: "1.1.0",
  registro-modifiche: (
    ("1.1.0", "4/11/2025", "Alessandro Dinato", "Michele Dioli", "Aggiunta criteri di rotazione dei ruoli"),
    ("1.0.0", "30/10/2025", "Siria Salvalaio", "Elia Ernesto Stellin", "Versione stabile del documento"),
    ("0.0.7", "30/10/2025", "Michele Dioli", "Siria Salvalaio", "Correzioni grammaticali del documento"),
    ("0.0.6", "30/10/2025", "Hossam Ezzemouri", "Michele Dioli", "Revisione e correzioni del documento"),
    (
      "0.0.5",
      "30/10/2025",
      "Jaume Bernardi",
      "Hossam Ezzemouri",
      "Arricchimento analisi dei rischi ed aggiunta dei periodi di rallentamento",
    ),
    ("0.0.4", "29/10/2025", "Alessandro Dinato", "Hossam Ezzemouri", "Stesura motivazioni suddivisione oraria"),
    ("0.0.3", "29/10/2025", "Jaume Bernardi", "Hossam Ezzemouri", "Bozza analisi dei rischi"),
    ("0.0.2", "28/10/2025", "Hossam Ezzemouri", "Alessandro Dinato", "Bozza introduzione e analisi dei ruoli"),
    ("0.0.1", "28/10/2025", "Alessandro Dinato", "Michele Dioli", "Bozza analisi costi e tempo necessario"),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "Candidatura-Generale",
  verificatore-interno: "Michele Dioli",
  left-signature: "../assets/firme/firma_Michele_Dioli.png",
  tipo-documento: "Dichiarazione impegni",
)

= Introduzione
Il gruppo GlitchHub Team si impegna formalmente alla realizzazione del Capitolato *C7 - Sistema di acquisizione dati e sensori*, proposto dall'azienda *M31 S.r.l.*, nell'ambito del progetto di Ingegneria del Software presso l'Università degli Studi di Padova.\
Con la presente dichiarazione i membri del gruppo assumono l'impegno di svolgere con responsabilità e continuità tutte le attività previste dal progetto, rispettando i ruoli assegnati, le scadenze concordate e gli standard di qualità definiti.

= Analisi dei ruoli
All'interno del gruppo di lavoro i ruoli sono stati definiti e assegnati in modo da coprire tutte le attività necessarie per la corretta realizzazione del progetto. \
La suddivisione dei compiti è stata ispirata ai principi della gestione di progetto insegnati nel corso di Ingegneria del Software, con l'obiettivo di garantire equilibrio, responsabilità e qualità nell'esecuzione delle diverse fasi di lavoro.

La chiara definizione dei ruoli consente al gruppo di operare in modo coordinato e trasparente, facilitando la comunicazione e la gestione delle responsabilità. \
Ogni componente conosce il proprio ambito d'azione e gli obiettivi di riferimento, contribuendo in modo sinergico al raggiungimento dell'obiettivo comune.

Di seguito si fornisce una descrizione dei principali ruoli previsti e delle relative responsabilità.

== Responsabile
Il Responsabile coordina il gruppo di lavoro, gestisce le risorse e assicura il rispetto delle scadenze. \
È la figura di riferimento sia per il team interno sia per gli interlocutori esterni. Supervisiona l'intero progetto, pianifica le attività, monitora l'avanzamento e interviene in caso di deviazioni dai piani stabiliti. \
È richiesta una solida preparazione tecnica e ottime capacità decisionali per valutare i rischi. \
Il suo contributo è costante per tutta la durata del progetto.

== Amministratore
L'Amministratore si occupa della gestione delle risorse informatiche e del setup dell'ambiente di lavoro. \
È responsabile del corretto funzionamento degli strumenti di produzione e della configurazione delle piattaforme di collaborazione. \
La sua attività include la selezione, messa in opera e manutenzione degli strumenti tecnici, oltre alla gestione di eventuali segnalazioni di malfunzionamenti. Si tratta di un ruolo essenziale per garantire continuità e stabilità al processo di sviluppo.

== Analista
L'Analista è la figura incaricata di definire i requisiti del sistema e di modellare i casi d'uso. \
Riveste un ruolo cruciale nelle fasi iniziali del progetto, poiché traduce le esigenze del #gloss[committente] in specifiche tecniche e funzionali. \
Deve possedere conoscenze approfondite del dominio del problema e buone capacità comunicative, poiché la chiarezza dei requisiti influenza in modo diretto il successo dell'intero progetto. \
Gli analisti partecipano soprattutto alle prime fasi di progettazione, fornendo le basi per il lavoro dei progettisti e programmatori.

== Progettista
Il Progettista definisce l'architettura del sistema e le scelte tecnologiche principali. \
È responsabile della coerenza interna del software e della qualità del design, garantendo che le soluzioni adottate siano efficienti, mantenibili e scalabili.\
Deve possedere competenze tecniche avanzate (soprattutto aggiornate) e una visione d'insieme del sistema, in modo da guidare correttamente lo sviluppo. \
Generalmente segue il progetto nella fase di realizzazione, ma non durante la manutenzione.

== Programmatore
Il Programmatore realizza il codice seguendo le specifiche fornite dal Progettista. \
È la figura più numerosa e operativa del gruppo, impegnata nella concreta implementazione delle funzionalità previste, ponendo anche attenzione alla manutenzione del sistema. \
Oltre a scrivere codice, contribuisce alla manutenzione e all'integrazione del prodotto. \
Pur avendo competenze tecniche, ha margini decisionali limitati, operando nel rispetto delle linee guida progettuali stabilite a monte.

== Verificatore
Il Verificatore è responsabile del controllo di qualità del prodotto e della #gloss[verifica] della corretta esecuzione delle attività. \
Effettua test, revisioni e validazioni per garantire che il lavoro svolto rispetti gli standard di progetto. \
È una figura presente per l'intera durata del progetto e deve possedere esperienza tecnica, conoscenza del processo di sviluppo e capacità di giudizio indipendente. \
Il suo lavoro è cruciale per assicurare l'affidabilità e la coerenza del risultato finale.

#pagebreak()
= Impegno individuale
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
#pagebreak()

== Motivazioni suddivisione oraria
La suddivisione oraria è stata definita tenendo conto del metodo di lavoro del gruppo e della complessità tecnica del capitolato *C7* proposto da *M31 S.r.l*. \
È stata concordata una stima di *93 ore produttive* per componente, ritenuta adeguata per lo svolgimento delle attività previste.

L'allocazione delle ore per ruolo è motivata dalle esigenze operative e dalla necessità di contenere i rischi progettuali. \
Ai ruoli di *programmatore* e di *verificatore* sono state assegnate *165 ore* ciascuno (330 ore complessive), corrispondenti al 50% del totale. \
Questa scelta riflette la prevalenza di attività di *sviluppo* e *#gloss[validazione]* richieste dal progetto e l'importanza di un programma di testing intensivo per ridurre la possibilità di *ritardi* e *bug software*.\

Al ruolo di *progettista* sono state assegnate *145 ore*, in modo tale da definire un'architettura coerente e ridurre la probabilità di revisioni progettuali durante le fasi avanzate dello sviluppo.\
La somma delle ore destinate ai ruoli di progettista, programmatore e verificatore ammonta a 475 ore, equivalenti al *73%* dell'impegno complessivo.
Lo scopo è preservare l'#gloss[efficacia] del design e limitare il costo delle eventuali modifiche successive.

Ai ruoli di *responsabile* e *amministratore* sono state assegnate *54 ore* ciascuno.\
Al responsabile è attribuito il compito di coordinamento, pianificazione e supervisione, mentre all'amministratore è demandata la gestione degli strumenti e degli ambienti di lavoro.\
Entrambi richiedono una presenza costante, ma con un impegno operativo inferiore rispetto alle attività di sviluppo e #gloss[verifica]. \
Infine, il ruolo di *analista* è stato stimato in *68 ore*, poiché è un ruolo intensamente coinvolto nelle attività iniziali del progetto e tende a ridursi con l'inizio della fase di sviluppo.

Per scopi didattici, i ruoli verranno ruotati periodicamente tra i membri del gruppo.\
Come evidenziato nella tabella, la distribuzione delle ore è omogenea tra i componenti, garantendo equità nelle responsabilità e opportunità di apprendimento per tutti.

== Criteri di rotazione dei ruoli
Il gruppo, dopo aver definito una durata dello *#gloss[Sprint]* pari a *una settimana*, ha stabilito di effettuare la rotazione dei ruoli ogni *due settimane*. \
Questa scelta permette a ciascun componente di ricoprire tutti i ruoli nell'arco del Progetto Didattico e consente di includere due #gloss[Sprint] all'interno del periodo di rotazione, così da individuare e correggere eventuali criticità legate all'assunzione di un nuovo ruolo.

Una rotazione con frequenza inferiore non garantirebbe un sufficiente periodo di adattamento e non favorirebbe l'apprendimento delle competenze richieste. \
Inoltre, ogni componente si impegna a trasferire al proprio successore le conoscenze maturate nello svolgimento del ruolo, al fine di agevolare e velocizzare l'inserimento.

Il gruppo si riserva la possibilità di rivedere i criteri esposti qualora dovessero emergere nuove esigenze organizzative. \
Tuttavia, al momento si ritiene che, per le prossime *9 settimane*, ovvero fino al termine dell'*#gloss[RTB]*, tali criteri rimarranno invariati.


#pagebreak()

= Preventivo costi
Il preventivo dei costi si basa sulla suddivisione oraria moltiplicata al costo orario per ogni ruolo.
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
= Periodi di rallentamento
Il gruppo ha individuato periodi in cui il lavoro rallenterà, possibilmente fino ad uno stato di inattività: il periodo natalizio e la sessione invernale.
#table(
  columns: (0.33fr, 0.33fr, 0.33fr),
  align: left,
  stroke: (x, y) => (
    top: if y == 0 { 0pt } else { 0.5pt + black },
    left: if x == 0 { 0pt } else { 0.5pt + black },
  ),
  table.header([*Periodo*], [*Da*], [*A*]),
  "Natalizio", "24 dicembre 2025", "6 gennaio 2026",
  "Sessione Invernale", "19 gennaio 2026", "21 febbraio 2026",
)
= Analisi dei rischi
Il gruppo ha individuato diversi rischi potenziali nella realizzazione del progetto concordato che potrebbero risultare in disagi, qualora venissero gestiti non correttamente.
== Organizzazione e distribuzione delle risorse
La valutazione della suddivisione del lavoro tra i membri del gruppo e nel tempo potrebbe risultare errata, portando ad una scarsità di risorse tra i vari compiti. Presenta un rischio alto, originato dall'inesperienza del gruppo su progetti più corposi, nonché nell'utilizzo di un #gloss[way of working] professionale e la comprensione e conseguimento dello stato dell'arte nell'ambito richiesto.

Qualora #gloss[ci]ò dovesse avvenire, è necessario che tale ostacolo venga discusso durante la riunione appena successiva, in modo da poter pianificare una migliore suddivisione dei compiti, una fase di riallineamento o altra attività ritenuta sul momento più adeguata.
== Comprensione dei requisiti
Un insufficiente e/o inefficiente coinvolgimento del cliente può portare ad una incomprensione dei requisiti del progetto. Il rischio in questo caso è basso, considerando che il cliente è competente nell'ambito richiesto, minimizzando la possibilità di equivoci e dati mancanti tra i requisiti.

Rimane importante riuscire a fornire lo stato di lavoro del progetto al cliente, in modo che possa visualizzarlo, comprenderlo ed eventualmente esporre dubbi al riguardo. Migliore è la comunicazione tra i membri del gruppo di GlitchHub Team e con il cliente, più semplice sarà ottenere il risultato atteso.
== Studio delle nuove tecnologie
È possibile che, durante lo svolgimento del progetto, il gruppo trovi difficoltà nell'utilizzare e comprendere le tecnologie richieste. Il rischio viene reputato basso nonostante l'inesperienza dei membri del gruppo, purché la comunicazione tra quest'ultimo e l'altra parte avvenga in maniera rapida e utile, in modo da rispondere ai dubbi e non interrompere il workflow.
= Costi
Il preventivo finale, calcolato sulla base della suddivisione dei compiti e del costo orario dei diversi ruoli, è di *12.975€*.
= Consegna
La data di consegna è stata prudentemente fissata al *27 marzo 2026*, non sarà possibile ricevere ulteriori deroghe.
