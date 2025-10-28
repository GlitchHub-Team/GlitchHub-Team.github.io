#import "../../Templates/templateDocumentiGenerici.typ": report
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3": chart, plot

#show: report.with(
  titolo: "Dichiarazione impegni",
  stato: "Bozza",
  versione: "0.0.2",
  registro-modifiche: (
    ("0.0.1", "28/10/2025", "Alessandro Dinato", "Michele Dioli", "Bozza analisi costi e tempo necessario"),
    ("0.0.2","28/10/2025","Hossam Ezzemouri", "-","Bozza introduzione e analisi dei ruoli"),
  ),
  
  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "Candidatura-Generale",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Dichiarazione impegni",
)

= Introduzione
Il gruppo GlitchHub Team si impegna formalmente alla realizzazione del Capitolato C7 – Sistema di acquisizione dati e sensori,proposto dall’azienda M31, nell’ambito del progetto di Ingegneria del Software presso l’Università degli Studi di Padova.
Con la presente dichiarazione, i membri del gruppo si impegnano a svolgere con responsabilità e continuità le attività previste dal progetto, rispettando i ruoli assegnati, le scadenze concordate e gli standard di qualità definiti.

= Analisi dei ruoli
All’interno del gruppo di lavoro, i ruoli sono stati definiti e assegnati in modo da coprire tutte le
attività necessarie per la corretta gestione,progettazione e realizzazione del progetto. La
suddivisione dei compiti è stata ispirata ai principi della gestione di progetto insegnati nel corso di
Ingegneria del Software, con l’obiettivo di garantire equilibrio,responsabilità e qualità
nell’esecuzione delle diverse fasi di laovro.

Di seguito si fornisce un’analisi dettagliata dei principali ruoli previsti e delle relative responsabilità.

== Responsabile
Il Responsabile coordina il gruppo di lavoro, gestisce le risorse e assicura il rispetto delle scadenze.
È la figura di riferimento sia per il team interno sia per gli interlocutori esterni (azienda e
università). Supervisiona l’intero progetto, pianifica le attività, monitora l’avanzamento e
interviene in caso di deviazioni dai piani stabiliti. Deve possedere competenze tecniche e capacità
gestionali per valutare rischi, alternative e scelte operative. Il suo contributo è costante per tutta la
durata del progetto.

== Amministratore
L’Amministratore si occupa della gestione delle risorse informatiche e del setup dell’ambiente di
lavoro. È responsabile del corretto funzionamento degli strumenti di produzione e della
configurazione delle piattaforme di collaborazione. La sua attività include la selezione, messa in
opera e manutenzione degli strumenti tecnici, oltre alla gestione di eventuali segnalazioni di
malfunzionamento. Si tratta di un ruolo essenziale per garantire continuità e stabilità al processo di
sviluppo.

== Analista
L’Analista è la figura incaricata di definire i requisiti del sistema e di modellare i casi d’uso. Riveste
un ruolo cruciale nelle fasi iniziali del progetto, poiché traduce le esigenze del committente in
specifiche tecniche e funzionali. Deve possedere conoscenze approfondite del dominio del
problema e capacità di comunicazione, poiché la chiarezza dei requisiti influenza in modo diretto il
successo dell’intero progetto. Gli analisti partecipano soprattutto alle prime fasi di progettazione,
fornendo le basi per il lavoro dei progettisti e programmatori.

== Progettista
Il Progettista definisce l’architettura del sistema e le scelte tecnologiche principali. È responsabile
della coerenza interna del software e della qualità del design, garantendo che le soluzioni adottate
siano efficienti, manutenibili e scalabili. Deve possedere competenze tecniche aggiornate e una
visione d’insieme del sistema, in modo da guidare correttamente lo sviluppo. Generalmente segue
il progetto nella fase di realizzazione, ma non durante la manutenzione.

== Programmatore
Il Programmatore realizza il codice seguendo le specifiche fornite dal Progettista. È la figura più
numerosa e operativa del gruppo, impegnata nella concreta implementazione delle funzionalità
previste. Oltre a scrivere codice, contribuisce alla manutenzione e all’integrazione del prodotto.
Pur avendo competenze tecniche, ha margini decisionali limitati, operando nel rispetto delle linee
guida progettuali stabilite a monte.

== Verificatore
Il Verificatore è responsabile del controllo di qualità del prodotto e della verifica della corretta
esecuzione delle attività. Effettua test, revisioni e validazioni per garantire che il lavoro svolto rispetti
gli standard di progetto. È una figura presente per l’intera durata del progetto e deve possedere
esperienza tecnica, conoscenza del processo di sviluppo e capacità di giudizio indipendente. Il suo
lavoro è cruciale per assicurare l’affidabilità e la coerenza del risultato finale.


La chiara definizione dei ruoli consente al gruppo di operare in modo coordinato e trasparente,
facilitando la comunicazione e la gestione delle responsabilità. Ogni componente conosce il proprio
ambito d’azione e gli obiettivi di riferimento,contribuendo in modo sinergico al raggiungimento
dell'obiettivo comune.

= Impegno individuale
== Tabella suddivisione ore per componente e ruolo
In questa tabella verranno utilizzati degli acronimi per descrivere i singoli ruoli.
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
#let costi = (
  ("Responsabile", 54),
  ("Amministratore", 54),
  ("Analista", 68),
  ("Progettista", 145),
  ("Programmatore", 165),
  ("Verificatore", 165),
)

#align(center)[
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
      inner-label: (content: (value, label) => [#text(white, str(value))], radius: 110%),
      outer-label: (content: (value, label) => [#text(black, str(label))], radius: 110%),
    )
  })
]
= Preventivo costi
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
  ([Responsabile], 1620),
  ([Amministratore], 1080),
  ([Analista], 1700),
  ([Progettista], 3625),
  ([Programmatore], 2475),
  ([Verificatore], 2475),
)

#align(center)[
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
      inner-radius: 1,
      inner-label: (content: (value, label) => [#text(white, str(value))], radius: 110%),
      outer-label: (content: "%", radius: 110%),
    )
  })
]

= Analisi dei rischi
= Costi
Il preventivo finale calcolato dai componenti del gruppo basandosi sulla suddivisione dei compiti e del costo orario dei vari ruoli è di *12975€*.
= Consegna
La data di consegna scelta dai membri del gruppo è stata fissata al *27 marzo 2026*, non sarà possibile avere ulteriori deroghe.
