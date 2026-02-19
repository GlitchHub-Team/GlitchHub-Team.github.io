#import "../../Templates/templateDocumentiGenerici.typ": *


/* Funzioni contatori UC ------------------------------------------------------------------------------------ */
#let uc-counter = counter("uc-counter")
#let uc-index-counter = counter("uc-index-counter")
#let uc-map = state("uc-map", (:))

#let show-uc = (uc-title, uc-label-name) => context {
  let uc-id-string = uc-counter.display("UC1.1.1")
  let heading-value = counter(heading).at(here())
  let position = here().position()

  [
    #context uc-counter.display("UC1.1.1") --- #uc-title #label(uc-label-name)
    #uc-map.update(
      old => {
        old.insert(str(uc-label-name), (uc-id-string, heading-value, position))
        old
      },
    )
  ]
}

/* Crea un nuovo UC e ne mostra il codice.*/
#let uc = (title, lbl, display: true) => context {
  uc-counter.step(level: 1)
  if display {
    show-uc(title, lbl)
  }
}

/* Crea un nuovo sotto-UC e ne mostra il codice*/
#let sub-uc = (title, lbl, display: true) => context {
  uc-counter.step(level: 2)
  if display {
    show-uc(title, lbl)
  }
}

/* Crea un nuovo sotto-sotto-UC e ne mostra il codice */
#let subsub-uc = (display: true) => {
  uc-counter.step(level: 3)
  if display {
    show-uc(title, lbl)
  }
}

/*
  Crea un riferimento allo UC relativo a un certo label.

  = Esempio
  Se da qualche parte ho un titolo con label `<Autenticazione-utente>`
  che corrisponde allo UC1.2,
  posso scrivere `#ref-uc(<Autenticazione-utente>)` per avere un link
  automatico a quella sezione che verrà fuori tipo "UC1.2 [Sezione x.y.z]"

  = Parametri
  == uc-label
  Tipo: label
*/
#let ref-uc = (lbl, section-prefix: "Sezione ") => context {
  let (uc-id, heading-id, position) = uc-map.final().at(str(lbl), default: (none, none, none))

  link(position, [#uc-id \[#section-prefix#heading-id.map(str).join(".")\]])
}

/* Funzioni contatori requisiti ------------------------------------------------------------------------------ */
#let rf-formal-names = state("rf-formal-names", (:))
#let rnf-formal-names = state("rnf-formal-names", (:))
#let rd-formal-names = state("rdf-formal-names", (:))
#let rv-formal-names = state("rv-formal-names", (:))

#let rf-counter = counter("rf-counter")
#let rnf-counter = counter("rnf-counter")
#let rd-counter = counter("rd-counter")
#let rv-counter = counter("rv-counter")

#rf-counter.update(1)
#rnf-counter.update(1)
#rd-counter.update(1)
#rv-counter.update(1)

#let rf = (id, urgenza) => context {
  let formal-name = "RF-" + str(rf-counter.get().at(0)) + "-" + urgenza
  [
    #rf-formal-names.update(
      old => {
        old.insert(id, formal-name)
        old
      },
    )
    *#formal-name* #label(id)
  ]
  rf-counter.step()
}

#let rnf = (id, urgenza) => context {
  let formal-name = "RNF-" + str(rnf-counter.get().at(0)) + "-" + urgenza
  [
    #rnf-formal-names.update(
      old => {
        old.insert(id, formal-name)
        old
      },
    )
    *#formal-name* #label(id)
  ]
  rnf-counter.step()
}

#let rd = (id, urgenza) => context {
  let formal-name = "RD-" + str(rd-counter.get().at(0)) + "-" + urgenza
  [
    #rd-formal-names.update(
      old => {
        old.insert(id, formal-name)
        old
      },
    )
    *#formal-name* #label(id)
  ]
  rd-counter.step()
}

#let rv = (id, urgenza) => context {
  let formal-name = "RV-" + str(rv-counter.get().at(0)) + "-" + urgenza
  [
    #rv-formal-names.update(
      old => {
        old.insert(id, formal-name)
        old
      },
    )
    *#formal-name* #label(id)
  ]
  rv-counter.step()
}

#let ref-rf = id => link(label(id))[#context rf-formal-names.final().at(id)]
#let ref-rnf = id => link(label(id))[#context rnf-formal-names.final().at(id)]
#let ref-rv = id => link(label(id))[#context rv-formal-names.final().at(id)]
#let ref-rd = id => link(label(id))[#context rd-formal-names.final().at(id)]

/**
 * Conta le urgenze per una specifica lista di requisiti
 */
#let conteggio-urgenze = lista-requisiti => {
  let conteggio = (:)
  for requisito in lista-requisiti {
    conteggio.insert(requisito.urgenza, conteggio.at(requisito.urgenza, default: 0) + 1)
  }
  conteggio
}

#let normalize-uc = id-uc => (id-uc.trim("<").trim(">"))
#let normalize-ref-list = requisito => {
  (
    requisito.ref_uc.map(id-uc => ref-uc(normalize-uc(id-uc), section-prefix: "§"))
      + requisito.ref_capitolato.map(ref-cap => link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[
        #eval(ref-cap, mode: "markup")
      ])
  ).join([, \ ])
}

#let tabella-requisiti = (funzione-req, funzione-ref-req, lista-requisiti) => {
  let descrizione-requisiti = ()

  for requisito in lista-requisiti {
    descrizione-requisiti.push(funzione-req(requisito.id, requisito.urgenza))
    descrizione-requisiti.push(requisito.desc)
    descrizione-requisiti.push(normalize-ref-list(requisito))
  }

  descrizione-requisiti
}


/* Tabella paged -------------------------------------------------------------------------------------------------- */
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



#let ref-uc = ref-uc.with(section-prefix: "§")
#show: report.with(
  titolo: "Analisi dei Requisiti",
  stato: "Verificato",
  registro-modifiche: (
    (
      "1.2.1",
      "18/02/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [
        Eliminazione RNF 1,2,3; aggiornamento code coverage minimo RNF 4; definizione strumenti monitoraggio RNF 5; definizione algoritmo cifratura in transito RNF 8; definizione meccanismo autenticazione robusto RNF 9; definizione tipi di design interessati nei diagrammi RNF 13; eliminazione RD 3, 6, 7 dato che sono req. funzionali
      ],
    ),
    (
      "1.2.0",
      "17/02/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [
        Rimosso ex UC83 ("Configurazione Gateway"),
        Approfonditi #ref-uc(<Visualizzazione-grafico-real-time-sensore>),
        #ref-uc(<Visualizzazione-dashboard-generica>),
        #ref-uc(<Creazione-tenant>),
        ex UC83,
        #ref-uc(<Richiesta-dati-real-time-sensore>),
        #ref-uc(<Richiesta-storico-dati-sensore>),
        #ref-uc(<Credenziali-API-Client-errate>),
        #ref-uc(<Invio-dati-eccessivi-gateway>); \
        Aggiunti da #ref-rd("RD-linguaggio-Go") a #ref-rd("RD-Grafana-Prometheus"), da #ref-rnf("RNF-doc-diagrammi") a #ref-rnf("RNF-manuale-utente-amm");
        Cambiato nome della versione da 1.1.2
      ],
    ),
    (
      "1.1.1",
      "17/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [
        Rimossi ex UC4 e UC23 e relativi diagrammi; sistemata numerazione di tutti gli altri UC
      ],
    ),
    (
      "1.1.0",
      "16/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [
        Aumentata @tracciamento-requisiti con tracciamento per requisito e per UC; sistemata formattazione di @lista-requisiti-funzionali, @lista-requisiti-non-funzionali e @lista-requisiti-dominio
      ],
    ),
    (
      "1.0.3",
      "16/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Rimossi use case e relativi requisiti superflui],
    ),
    (
      "1.0.2",
      "16/02/2026",
      "Riccardo Graziani",
      "Elia Ernesto Stellin",
      [Fix rendering delle tabelle],
    ),
    (
      "1.0.1",
      "15/02/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Modifica indici per immagini e tabelle],
    ),
    (
      "1.0.0",
      "09/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      [Creazione versione stabile Analisi dei Requisiti],
    ),
    (
      "0.37.0",
      "09/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      [Stesura @panoramica-prodotto, @analisi-utenza e miglioramento di @architettura-prodotto],
    ),
    (
      "0.36.0",
      "09/02/2026",
      "Jaume Bernardi",
      "Michele Dioli",
      [Aggiunta condizioni su diagrammi casi d'uso da UC106 a UC165],
    ),
    (
      "0.35.0",
      "09/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Aggiunta condizioni su diagrammi casi d'uso da UC54 a UC105],
    ),
    (
      "0.34.0",
      "09/02/2026",
      "Alessandro Dinato",
      "Hossam Ezzemouri",
      [Aggiunta condizioni su diagrammi casi d'uso da UC1 a UC53],
    ),
    (
      "0.33.0",
      "09/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Aggiunta @intro-scopo-doc],
    ),
    (
      "0.32.3",
      "09/02/2026",
      "Michele Dioli",
      "Alessandro Dinato",
      "Sistemato requisito 40",
    ),
    (
      "0.32.2",
      "09/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Sistemati digrammi da #ref-uc(<Visualizzazione-audit-log>) a #ref-uc(<Visualizzazione-richiesta-commissioning-gateway>)],
    ),
    (
      "0.32.1",
      "09/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Aggiunto diagramma ad UC137],
    ),
    (
      "0.32.0",
      "05/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Rimossi requisiti non funzionali e requisiti di dominio ridondanti; Rimosso ex-RF149 e sistemati requisiti relativi a cifratura end-to-end dei dati dei tenant],
    ),
    (
      "0.31.0",
      "04/02/2026",
      "Michele Dioli",
      "Elia Ernesto Stellin",
      [Sistemazione di requisito(ex RF-20)],
    ),
    (
      "0.30.0",
      "03/02/2026",
      "Jaume Bernardi",
      "Riccardo Graziani",
      [Ulteriore suddivisione di un requisito funzionali per renderlo più atomico],
    ),
    (
      "0.29.1",
      "03/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Sistemate urgenze dei requisiti],
    ),
    (
      "0.29.0",
      "03/02/2026",
      "Jaume Bernardi",
      "Riccardo Graziani",
      [Suddivisione di alcuni requisiti funzionali per renderli più atomici],
    ),
    (
      "0.28.1",
      "02/02/2026",
      "Elia Ernesto Stellin",
      "Michele Dioli",
      [Migliorata formattazione],
    ),
    (
      "0.28.0",
      "01/02/2026",
      "Elia Ernesto Stellin",
      "Michele Dioli",
      [Classificazione requisiti da *RF-175* in poi; sistemata @tracciamento-requisiti; Riformulati alcuni requisiti; Migliorata formattazione fonti],
    ),
    (
      "0.27.0",
      "01/02/2026",
      "Alessandro Dinato",
      "Jaume Bernardi",
      [Classificazione requisiti da *RF-1* a *RF-175*],
    ),
    (
      "0.26.0",
      "30/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Resi atomici i requisiti troppo generali],
    ),
    (
      "0.25.0",
      "28/01/2026",
      "Hossam Ezzemouri",
      "Riccardo Graziani",
      [Aggiunta di requisiti funzionali mancanti],
    ),
    (
      "0.24.0",
      "27/01/2026",
      "Elia Ernesto Stellin",
      "Hossam Ezzemouri",
      [Sistemati errori di battitura e formattazione; sistemati diagrammi non funzionanti; modificati #ref-uc(<Modifica-target-freq-invio-dati-tenant-admin>),
        #ref-uc(<Modifica-freq-invio-dati-gateway-super-admin>),
        #ref-uc(<Conferma-comando-modifica-frequenza-invio-dati>) per rispecchiare parametro invio frequenza dati al Gateway
      ],
    ),
    (
      "0.23.0",
      "27/01/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      [Controllo, correzione ed aggiunta requisiti. Aggiunta diagrammi UC dal #ref-uc(<Visualizzazione-richiesta-decommissioning-gateway>) al #ref-uc(<Reset-gateway-cloud>)],
    ),
    (
      "0.22.0",
      "26/01/2026",
      "Michele Dioli",
      "Elia Ernesto Stellin",
      [Aggiunta requisiti mancanti e aggiunta diagrammi degli UC dal #ref-uc(<Visualizzazione-singolo-audit-log>) al #ref-uc(<Visualizzazione-richiesta-decommissioning-gateway>)],
    ),
    (
      "0.21.0",
      "23/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Creazione e aggiunta dei diagrammi degli UC dall'#ref-uc(<Autenticazione-utente>) al #ref-uc(<Visualizzazione-audit-log>)],
    ),
    (
      "0.20.0",
      "20/01/2026",
      "Michele Dioli",
      "Elia Ernesto Stellin",
      [Creazione requisiti non funzionali e di dominio],
    ),
    (
      "0.19.0",
      "14/01/2026",
      "Riccardo Graziani",
      "Hossam Ezzemouri",
      [Creazione requisiti dashboard utente autenticato e Tenant Admin],
    ),
    (
      "0.18.0",
      "13/01/2026",
      "Alessandro Dinato",
      "Jaume Bernardi",
      [Creazione requisiti attore Gateway con sistema Cloud e tutti attori relativi al sistema Gateway],
    ),
    (
      "0.17.0",
      "12/01/2026",
      "Riccardo Graziani",
      "Jaume Bernardi",
      [Approfonditi use case di visualizzazione liste e visualizzazione in dettaglio di alcuni elementi (API Key, Gateway)],
    ),
    (
      "0.16.0",
      "11/01/2026",
      "Elia Ernesto Stellin",
      "Michele Dioli",
      [Riempita sezione "Admin Generico" e modifiche a inclusioni di use case contenuti in essa; sistemato registro modifiche; Ottimizzazione compilazione del documento],
    ),
    (
      "0.15.0",
      "05/01/2026",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Hossam Ezzemouri, Jaume Bernardi, Michele Dioli",
      [Modifiche di formattazione; Migliorata descrizione dei casi d'uso (@casi-d-uso-introduzione); Aggiunti use case mancanti relativi a invio di comandi al Gateway; Impostati contatori dei requisiti],
    ),
    (
      "0.14.0",
      "03/01/2026",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Hossam Ezzemouri, Jaume Bernardi, Michele Dioli",
      [Aggiunta use case relativi agli alert e la loro generazione],
    ),
    (
      "0.13.1",
      "03/01/2026",
      "Elia Ernesto Stellin",
      "Hossam Ezzemouri, Jaume Bernardi, Michele Dioli",
      [Modifiche di formattazione],
    ),
    (
      "0.13.0",
      "29/12/2025",
      "Elia Ernesto Stellin, Alessandro Dinato, Riccardo Graziani",
      "Hossam Ezzemouri, Jaume Bernardi, Michele Dioli",
      [Verifica use case attuali],
    ),
    (
      "0.12.0",
      "23/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato, Riccardo Graziani",
      [Modificati use case per *utente non autenticato*, *utente autenticato* e *Tenant User*],
    ),
    (
      "0.11.0",
      "23/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin, Riccardo Graziani",
      [Aggiunta use case dashboard metriche e aggiunta servizi GATT per sensori simulati],
    ),
    (
      "0.10.0",
      "22/12/2025",
      "Alessandro Dinato, Riccardo Graziani",
      "Elia Ernesto Stellin",
      [Aggiunta use case Gateway simulato],
    ),
    (
      "0.9.0",
      "21/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin, Riccardo Graziani",
      [Aggiunta use case con sistema Gateway],
    ),
    (
      "0.8.0",
      "20/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato, Riccardo Graziani",
      [Aggiunta tabella degli attori (@lista-attori); modifica formattazione interna; sistemate estensioni degli UC],
    ),
    (
      "0.7.1",
      "16/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato, Riccardo Graziani",
      "Modifica formattazione use case e riferimenti dentro il documento",
    ),
    (
      "0.7.0",
      "15/12/2025",
      "Jaume Bernardi, Siria Salvalaio",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura use case relativi al Gateway",
    ),
    (
      "0.6.0",
      "14/12/2025",
      "Alessandro Dinato, Michele Dioli",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura use case relativi al Super Admin",
    ),
    (
      "0.5.0",
      "9/12/2025",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "Alessandro Dinato",
      "Stesura use case relativi al Tenant Admin",
    ),
    (
      "0.4.0",
      "8/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura use case relativi a utente, Tenant User e API Client",
    ),
    (
      "0.3.0",
      "16/11/2025",
      "Hossam Ezzemouri",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura degli use case 3, 3.1, 3.2, 3.3, 4, 5 e 6",
    ),
    (
      "0.2.0",
      "16/11/2025",
      "Riccardo Graziani",
      "Alessandro Dinato, Elia Ernesto Stellin",
      "Stesura descrizione struttura dei casi d'uso, aggiunta sezione 2.2",
    ),
    (
      "0.1.0",
      "15/11/2025",
      "Hossam Ezzemouri",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura introduzione e inizio dei casi d'uso",
    ),
  ),

  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-documento: "Analisi dei Requisiti",
)

#let ref-uc = ref-uc.with(section-prefix: "Sezione ")

// NOTA: questo update non può essere spostato.
#uc-counter.update(0)


#outline(
  title: "Indice delle tabelle",
  target: figure.where(kind: table),
)

#outline(
  title: "Indice delle figure",
  target: figure.where(kind: image),
)

#pagebreak()


= Introduzione

== Scopo del documento <intro-scopo-doc>
Il documento di #gloss[Analisi dei Requisiti] ha come obiettivo quello di fornire informazioni dettagliate e chiare riguardo i requisiti che il software richiesto dal #gloss[capitolato d'appalto] dovrà rispettare. Per tale motivo, questo documento è un punto di riferimento fondamentale sia per il _team_ di sviluppo che per la #gloss[proponente], consentendo a tutte le persone coinvolte nel progetto di verificare che il progetto soddisfi i requisiti funzionali e non funzionali esplicitati.

A tale scopo, il presente documento include per ognuno dei #gloss[casi d'uso] (_use case_ o <UC>) rilevati durante la fase di analisi del progetto, la sua descrizione e il relativo diagramma UML che permette di visualizzare in maniera intuitiva le interazioni tra gli attori e i sistemi rilevati.

La seconda parte del documento, invece, presenta tutti i #gloss[requisiti] derivati dai casi d'uso sopra descritti; questi rappresentano le fondamenta su cui si baserà la progettazione del prodotto software richiesto dal capitolato.

Il documento di #gloss[Analisi dei Requisiti] viene redatto dagli #gloss[analisti] del _team_ ed è rivolto ai seguenti destinatari:

- La #gloss[proponente] (M31 Srl), che verificherà se i requisiti sono stati adeguatamente rilevati

- I #gloss[progettisti] e #gloss[programmatori] del gruppo che useranno il documento come riferimento principale nelle rispettive attività di progettazione e sviluppo dell'#gloss[MVP]

- I #gloss[verificatori] che baseranno sull'#gloss[analisi dei requisiti] la scrittura dei test di sistema che il prodotto dovrà rispettare

- Gli #gloss[amministratori] e i futuri #gloss[responsabili], che potranno usare il documento come riferimento per una maggiore comprensione del prodotto alla mano


== Panoramica del prodotto <panoramica-prodotto>
Il progetto consiste nella realizzazione di una piattaforma #gloss[Cloud] multi-tenant scalabile e sicura, progettata per l'acquisizione, la normalizzazione e lo smistamento di flussi di dati provenienti da sensori Bluetooth Low Energy #gloss[(BLE)]. In un panorama #gloss[IoT] dove la frammentazione dei dispositivi è elevata,
il sistema si pone l'obiettivo di agire come un hub centralizzato capace di gestire dati eterogenei (ambientali, industriali o biometrici) trasformandoli in informazioni strutturate e fruibili, garantendo al tempo stesso sicurezza e scalabilità.

Gli obiettivi principali che questo prodotto mira a soddisfare sono:
- progettare un'infrastruttura *scalabile* e *sicura* per la gestione di dati eterogenei;
- garantire la *separazione* dei dati tra diversi #gloss[tenant];
- fornire meccanismi di comunicazione *sicura* tra i diversi livelli del prodotto;
- fornire strumenti grafici per il *monitoraggio* e la *visualizzazione* dei dati sia per utenti amministratori che per utenti semplici.

== Architettura <architettura-prodotto>
L'architettura prevista si articola in tre principali livelli che collaborano per garantire un flusso dati continuo e sicuro:
- *Sensori BLE*
- *Gateway BLE WiFi*
- *Cloud*

I sensori svolgono la funzione di acquisizione locale mentre i Gateway aggregano e inoltrano i dati verso il cloud, che rappresenta il core del sistema. Quest'ultimo si occupa di archiviazione, gestione dei tenant, esposizione delle API e monitoraggio tramite dashboard.

Secondo quanto specificato dal #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[*Capitolato*] d'appalto nei #gloss[requisiti] *RQ1* ed *RQ2*,  i livelli dell'architettura riguardanti i
*sensori BLE* e i *Gateway BLE WiFi* saranno interamente virtualizzati. Il *simulatore* avrà dunque il compito di generare dati eterogenei e inviarli al #gloss[Cloud] tramite protocolli sicuri

== Analisi dell'utenza <analisi-utenza>
La natura del progetto è orientata a fornire al proponente *M31* una progettazione solida ed efficace, pronta per essere ingegnerizzata in una soluzione definitiva.

L'utente tipo si identifica in organizzazioni che operano su larga scala nell'ambito dell'#gloss[IoT], le quali necessitano di un'infrastruttura #gloss[Cloud] multi-tenant robusta per gestire con sicurezza e alte prestazioni
l'acquisizione di flussi di dati provenienti da reti di sensori eterogenei.

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto v1.2.0
  - #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf") \
  - *Ultimo accesso*: 18 febbraio 2026

- Capitolato d'appalto C7 -- sistema di acquisizione dati da sensori
  - #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf") \
  - *Ultimo accesso*: 18 febbraio 2026

=== Riferimenti informativi
- Analisi dei Requisiti -- Lezione T5 del prof. Tullio Vardanega
  - #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf") \
  - *Ultimo accesso*: 18 febbraio 2026

- Glossario v0.5.0
  - #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf") \
  - *Ultimo accesso*: 18 febbraio 2026

- Diagrammi delle Classi -- Lezione del prof. Riccardo Cardin
  - #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf") \
  - *Ultimo accesso*: 18 febbraio 2026



= Casi d'uso
== Introduzione <casi-d-uso-introduzione>
La definizione dei casi d'uso rappresenta una fase fondamentale nell'analisi dei requisiti di sistema previsto dal capitolato M31. I casi d'uso permettono di descrivere in maniera chiara e strutturata come gli *attori* interagiscono con il *sistema* specificato per raggiungere un determinato obiettivo.

In questo documento, con il termine *"Attore"* si intende una qualunque entità esterna al  *sistema* considerato che interagisce con lo stato di quest'ultima, in lettura e/o in scrittura.
Con *"sistema"* invece si intende la parte del prodotto presa in considerazione dallo use case. Si noti che questo documento considera due principali "sistemi": la *piattaforma Cloud*, accessibile al Gateway e agli utenti, e il *simulatore di Gateway*, accessibile solamente dai sensori simulati e dalla piattaforma Cloud stessa.

I casi d'uso si compongono di un diagramma UML, che offre una rappresentazione sintetica delle relazioni tra attori e funzionalità, e di una descrizione testuale dettagliata. Quest'ultima specifica gli elementi principali del comportamento del sistema attraverso i seguenti punti:
- *Attori primari*: indicano gli attori che interagiscono attivamente con il sistema considerato, avviando il flusso principale del caso d'uso;
- *Attori secondari*: rappresentano gli attori che intervengono in modo indiretto o passivo, ma comunque rilevante per il caso d'uso;
- *Pre-condizioni*: descrizione delle condizioni che devono essere vere all'interno dello stato del sistema affinché l'attore possa avviare il caso d'uso;
- *Post-condizioni*: descrizione delle condizioni che devono essere vere al termine del caso d'uso, indicando lo stato del sistema dopo l'esecuzione;
- *Scenario principale*: sequenza ordinata di passi che descrive il flusso di interazione tra attori e sistema in assenza di errori o di situazioni eccezionali;
- *Scenario alternativo*: interruzioni del flusso principale che si verificano quando l'attore compie una scelta alternativa o si verificano condizioni particolari previste dal caso d'uso. Quando uno scenario alternativo si verifica, le post-condizioni del caso d'uso principale devono essere diverse;
- *Inclusioni*: riferimenti a casi d'uso che l'attore deve necessariamente completare per poter portare a termine il caso d'uso corrente;
- *Estensioni*: riferimenti ai casi d'uso esterni che descrivono gli scenari alternativi che si possono incontrare durante il flusso principale del caso d'uso;


== Attori <lista-attori>
Come scritto precedentemente, il sistema si compone di più livelli e coinvolge attori eterogenei, sia umani che automatici. L'utilizzo dei casi d'uso consente quindi di modellare le interazioni tra tali attori, traducendo i requisiti funzionali individuati in scenari operativi concreti. Essi permettono di focalizzarsi quindi sugli aspetti fondamentali del sistema preso in considerazione, quali l'acquisizione e l'aggregazione dei dati, l'inoltro verso il cloud, il provisioning sicuro dei dispositivi, la gestione multi-tenant e la visualizzazione dei dati tramite dashboard.

Nella seguente tabella, si riporta la lista di tutti gli attori considerati nel documento e una breve descrizione per ognuno di essi.

#tabella-paginata(
  table(
    columns: (1fr, 2.5fr),
    table.header([Attore], [Descrizione]),

    [Utente non autenticato], [Un qualunque utente che non abbia eseguito l'accesso alla piattaforma *Cloud*],

    [Utente autenticato],
    [Un qualunque utente che abbia eseguito l'accesso alla piattaforma Cloud. Corrisponde alla generalizzazione di *Tenant User*, *Tenant Admin* e *Super Admin*],

    [Tenant User],
    [Un utente autenticato appartenente a uno specifico tenant che ha facoltà di visualizzare i dati dei sensori ricevuti dai *Gateway*.],

    [Tenant Admin],
    [Un utente autenticato appartenente a uno specifico tenant che ha poteri di amministrazione sui Gateway collegati al tenant.],

    [Super Admin],
    [Un utente autenticato che ha poteri di amministrazione su tutti i tenant associati al sistema cloud.],

    [Admin Generico],
    [Un utente autenticato con poteri di amministrazione generici. Corrisponde alla generalizzazione di *Tenant Admin* e *Super Admin*.],

    [API Client], [Un qualunque client API che possa accedere all'API pubblica esposta dal sistema cloud.],

    [Sensore simulato], [Un qualunque sensore BLE che venga simulato dal *Gateway simulato* sviluppato.],

    [Gateway simulato],
    [Un Gateway simulato che interloquisce con l'*Infrastruttura Cloud* per l'invio di dati normalizzati e crittografati e per la ricezione di comandi.],

    [Infrastruttura Cloud],
    [L'infrastruttura Cloud che riceve i dati normalizzati dal Gateway, rendendoli visibili ai *Tenant User*.],

    [Email Client],
    [Rappresenta un client di posta elettronica usato dagli utenti. Si noti che quest'ultimo può essere solo un attore secondario, in quanto non è in grado di compiere azioni diverse dal ricevere email.],
  ),
  [Nomi degli attori e una breve descrizione di ciascuno],
  label-id: "tab-attori",
)

== sistema Cloud - Lista dei casi d'uso
In questa sezione, il termine * "sistema"* si riferisce all'infrastruttura cloud. Per ogni caso d'uso viene considerato il sistema Cloud come raggiungibile e funzionante.

=== Attore principale - Utente non autenticato
L'utente non autenticato è chiunque *non* abbia eseguito l'accesso alla piattaforma Cloud, che cerca di accedervi.

==== #uc([Autenticazione utente], "Autenticazione-utente")
#figure(
  image("../../assets/diagrammi/UC1.svg", width: 100%),
  caption: [UC1 - UC1.1, UC1.2, UC2, UC3],
)

- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema ha riconosciuto l'utente e l'ha autenticato con il ruolo di _Tenant User_, _Tenant Admin_ o _Super Admin_
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account
  - L'Utente inserisce la password
- *Scenari alternativi*:
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente prova ad autenticarsi con un account sospeso
  - L'Utente inserisce email o password errati
- *Estensioni*:
  - #ref-uc(<Autenticazione-non-riuscita>)
  - #ref-uc(<Account-sospeso>)
// - #ref-uc(<Invio-codice-2FA>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-email-auth>)
  - #ref-uc(<Inserimento-password>)

===== #sub-uc([Inserimento email autenticazione], "Inserimento-email-auth")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve l'indirizzo email inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account

===== #sub-uc([Inserimento password], "Inserimento-password")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'utente non è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve la password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la password


==== #uc([Autenticazione non riuscita], "Autenticazione-non-riuscita")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha inserito un'email che non corrisponde ad un utente registrato o ha inserito una password errata
- *Post-condizioni*:
  - Il sistema non autentica l'utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un'email o una password errati
  - L'Utente visualizza un messaggio di errore


==== #uc([Account sospeso], "Account-sospeso")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha inserito le credenziali di un account sospeso
- *Post-condizioni*:
  - Il sistema non autentica l'utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'utente prova ad autenticarsi con un account sospeso


// ==== #uc([Invio codice 2FA], "Invio-codice-2FA")
// - *Attore principale*: Utente non autenticato
// - *Attore secondario*: Email client
// - *Pre-condizioni*:
//   - L'Utente non è autenticato nel sistema
//   - L'Utente ha eseguito il login con successo
//   - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
// - *Post-condizioni*:
//   - Il sistema genera il codice 2FA
//   - Il sistema invia un'email con il codice 2FA
// - *Scenario principale*:
//   - L'Email client riceve l'email con il codice 2FA


==== #uc([Re-invio codice 2FA], "Re-invio-codice-2FA")
- *Attore principale*: Utente non autenticato
- *Attore secondario*: Email Client
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
- *Post-condizioni*:
  - Il sistema genera il codice 2FA
  - Il sistema invia nuovamente un'email con il codice 2FA
- *Scenario principale*:
  - L'Utente richiede il re-invio del codice 2FA
  - L'Email Client riceve l'email con il codice 2FA


==== #uc([Autenticazione 2FA], "Autenticazione-2FA")
#figure(
  image("../../assets/diagrammi/UC5.svg", width: 100%),
  caption: [UC5 - UC5.1, UC6, UC7],
)

- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
- *Post-condizioni*:
  - Il sistema verifica il codice 2FA inserito dall'Utente
  - Il sistema autentica l'Utente, il quale è ora un *Utente autenticato*
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente riceve il codice 2FA via email
  - L'Utente inserisce il codice 2FA ricevuto
- *Scenari alternativi*:
  - L'Utente inserisce un codice 2FA errato, non proseguendo con l'autenticazione
  - L'Utente inserisce un codice 2FA scaduto, non proseguendo con l'autenticazione
- *Estensioni*:
  - #ref-uc(<Codice-2FA-errato>)
  - #ref-uc(<Codice-2FA-scaduto>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-codice-2FA>)

===== #sub-uc([Inserimento codice 2FA], "Inserimento-codice-2FA")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente ha ricevuto il codice 2FA via email
- *Post-condizioni*:
  - Il sistema riceve il codice 2FA inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce il codice 2FA ricevuto via email


==== #uc([Codice 2FA errato], "Codice-2FA-errato")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente ha inserito un codice 2FA errato
- *Post-condizioni*:
  - Il sistema non autentica l'Utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un codice 2FA errato
  - L'Utente visualizza un messaggio di errore


==== #uc([Codice 2FA scaduto], "Codice-2FA-scaduto")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente ha inserito un codice 2FA scaduto
- *Post-condizioni*:
  - Il sistema non autentica l'Utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un codice 2FA scaduto
  - L'Utente visualizza un messaggio di errore

==== #uc([Impostazione password], "Impostazione-password")
#figure(
  image("../../assets/diagrammi/UC8.svg", width: 100%),
  caption: [UC8 - UC11.1, UC11.2, UC12, UC13, UC14],
)

- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha ricevuto l'email di impostazione della prima password
- *Post-condizioni*:
  - Il sistema riceve la password inserita dall'utente
  - Il sistema registra la password dell'Utente
- *Scenario principale*:
  - L'Utente clicca sul link di impostazione password nell'email
  - L'Utente inserisce la nuova password
  - L'Utente inserisce la conferma della nuova password
- *Scenari alternativi*:
  - La nuova password non rispetta i criteri di sicurezza
  - La nuova password e la conferma non coincidono
- *Estensioni*:
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
  - #ref-uc(<Password-non-coincidenti>)
  - #ref-uc(<Link-impostazione-password-scaduto>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-nuova-password>)
  - #ref-uc(<Conferma-password>)


==== #uc([Password dimenticata], "Password-dimenticata")
#figure(
  image("../../assets/diagrammi/UC9.svg", width: 100%),
  caption: [UC9 - UC9.1, UC10],
)

- *Attore principale*: Utente non autenticato
- *Attore secondario*: Email Client
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema invia un'email con il link di reimpostazione password
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account
  - L'Email Client riceve l'email di reimpostazione password
- *Scenari alternativi*:
  - L'Utente inserisce un indirizzo email non associato ad alcun account
- *Estensioni*:
  - #ref-uc(<Indirizzo-email-non-associato-account>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-indirizzo-email>)
// - #ref-uc(<Invio-email-reimpostazione-password>)

===== #sub-uc([Inserimento indirizzo email], "Inserimento-indirizzo-email")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve l'indirizzo email inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account

// ===== #sub-uc([Invio email di reimpostazione password], "Invio-email-reimpostazione-password")
// - *Attore principale*: Utente non autenticato
// - *Attore secondario*: Email Client
// - *Pre-condizioni*:
//   - L'Utente non è autenticato nel sistema
//   - L'Utente ha inserito l'indirizzo email associato al proprio account
// - *Post-condizioni*:
//   - Il sistema invia un'email con il link per reimpostare la password
// - *Scenario principale*:
//   - L'Email Client riceve l'email di reimpostazione password inviata dal sistema

==== #uc([Indirizzo email non associato ad alcun account], "Indirizzo-email-non-associato-account")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha inserito un indirizzo email non associato ad alcun account
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un indirizzo email non associato ad alcun account

==== #uc([Reimpostazione password dimenticata], "Reimpostazione-password-dimenticata")
#figure(
  image("../../assets/diagrammi/UC11.svg", width: 100%),
  caption: [UC11 - UC11.1, UC11.2, UC12, UC13],
)

- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha ricevuto l'email di reimpostazione password
- *Post-condizioni*:
  - La password dell'Utente viene reimpostata
  - Il sistema registra l'evento negli audit log,  salvando il nome dell'utente,  il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente clicca sul link di reimpostazione password nell'email
  - L'Utente inserisce la nuova password
  - L'Utente inserisce la conferma della nuova password
- *Scenari alternativi*:
  - La nuova password non rispetta i criteri di sicurezza
  - La nuova password e la conferma non coincidono
- *Estensioni*:
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
  - #ref-uc(<Password-non-coincidenti>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-nuova-password>)
  - #ref-uc(<Conferma-password>)

===== #sub-uc([Inserimento nuova password], "Inserimento-nuova-password")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha ricevuto l'email di impostazione password
- *Post-condizioni*:
  - La nuova password viene registrata nel sistema
- *Scenario principale*:
  - L'Utente inserisce la nuova password

===== #sub-uc([Conferma password], "Conferma-password")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha ricevuto l'email di impostazione password
- *Post-condizioni*:
  - La conferma della password viene confrontata con la nuova password, se coincidono la password viene reimpostata
- *Scenario principale*:
  - L'Utente inserisce la conferma della nuova password


==== #uc([Password non coincidenti], "Password-non-coincidenti")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha ricevuto l'email di impostazione password
  - L'Utente ha inserito una nuova password e una conferma password non coincidenti
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente visualizza un messaggio di errore dopo aver inserito la conferma password non coincidente con la nuova password


==== #uc([Password non conforme ai criteri di sicurezza], "Password-non-conforme-criteri-sicurezza")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha cliccato sul link di impostazione password nell'email
  - L'Utente ha inserito una nuova password non conforme ai criteri di sicurezza
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente visualizza un messaggio di errore dopo aver inserito una nuova password non conforme ai criteri di sicurezza

==== #uc([Link di impostazione password scaduto], "Link-impostazione-password-scaduto")
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel sistema
  - L'Utente ha ricevuto l'email di impostazione o reimpostazione password
  - Il link di impostazione o reimpostazione password è scaduto
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente clicca sul link di impostazione o reimpostazione password scaduto
  - L'Utente visualizza un messaggio di errore


///// UTENTE AUTENTICATO //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
=== Attore principale - Utente autenticato <sistema-cloud-attore-utente-auth>
L'utente autenticato è chiunque abbia eseguito l'accesso alla piattaforma Cloud. Corrisponde alla generalizzazione degli attori *Tenant User*, *Tenant Admin*, *Super Admin*.
Nel caso in cui l'utente autenticato sia il Super Admin e acceda a dati di un tenant specifico, quest'ultimo deve aver accettato la clausola di impersonificazione, la quale permette l'accesso ai dati del tenant da parte del Super Admin.
Il Super Admin che accede ad un tenant può esattamente eseguire le stesse azioni di un Tenant Admin all'interno del proprio Tenant.

==== #uc([Logout], "Logout")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema disconnette l'Utente
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente esegue il logout dal sistema

==== #uc([Modifica password], "Modifica-password")
#figure(
  image("../../assets/diagrammi/UC16.svg", width: 100%),
  caption: [UC16 - UC11.1, UC11.2, UC12, UC13, UC16.1, UC17],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
- *Post-condizioni*:
  - La password dell'Utente viene modificata nella nuova password specificata dall'utente
- *Scenario principale*:
  - L'Utente inserisce la vecchia password
  - L'Utente inserisce la nuova password
  - L'Utente inserisce la conferma della nuova password
- *Scenari alternativi*:
  - La vecchia password inserita non è corretta
  - La nuova password non rispetta i criteri di sicurezza
  - La nuova password e la conferma non coincidono
- *Estensioni*:
  - #ref-uc(<Password-non-coincidenti>)
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
  - #ref-uc(<Vecchia-password-non-corretta>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-vecchia-password>)
  - #ref-uc(<Inserimento-nuova-password>)
  - #ref-uc(<Conferma-password>)

===== #sub-uc([Inserimento vecchia password], "Inserimento-vecchia-password")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve la vecchia password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la vecchia password


==== #uc([Vecchia password non corretta], "Vecchia-password-non-corretta")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - L'Utente ha inserito una vecchia password non corretta
- *Post-condizioni*:
  - Il sistema annulla la modifica della password
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce una password che non corrisponde con quella associata al suo account

// ALERT -----------------------------------------------------------------------------------------------------
==== #uc([Visualizzazione lista alert], "Visualizzazione-lista-alert")
#figure(
  image("../../assets/diagrammi/UC18.svg", width: 100%),
  caption: [UC18 - UC19],
)


- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la lista degli alert riguardanti eventi anomali all'interno del proprio tenant
- *Scenario principale*:
  - Il Tenant User visualizza gli alert riguardanti eventi anomali nel proprio tenant
  - Il Tenant User visualizza gli alert in forma di lista ordinata in ordine cronologico decrescente (dal più recente al meno recente).
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-alert>)


==== #uc([Visualizzazione alert], "Visualizzazione-alert")
#figure(
  image("../../assets/diagrammi/UC19.svg", width: 100%),
  caption: [UC19 - UC19.1, UC19.2],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente autenticato è autenticato nel sistema
  - L'alert esiste ed è associato al tenant dell'Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra il titolo e la descrizione dell'alert selezionato
- *Scenario principale*:
  - L'Utente autenticato visualizza il titolo e la descrizione dell'alert selezionato
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-titolo-alert>)
  - #ref-uc(<Visualizzazione-descrizione-alert>)

===== #sub-uc([Visualizzazione titolo alert], "Visualizzazione-titolo-alert")
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra il titolo dell'alert selezionato
- *Scenario principale*:
  - L'Utente autenticato visualizza il titolo dell'alert selezionato

===== #sub-uc([Visualizzazione descrizione alert], "Visualizzazione-descrizione-alert")
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra la descrizione dell'alert selezionato
- *Scenario principale*:
  - L'Utente autenticato visualizza la descrizione dell'alert selezionato

==== #uc([Visualizzazione alert mancata ricezione dati da Gateway], "Mancata-ricezione-gateway")
#figure(
  image("../../assets/diagrammi/UC20.svg", width: 100%),
  caption: [UC20 - UC19, UC20.1, UC20.2, UC20.3],
)

- *Generalizzazione*: #ref-uc(<Visualizzazione-alert>)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente autenticato è autenticato nel sistema
  - L'alert esiste ed è associato al tenant dell'Utente autenticato
  - Il Gateway in questione non è stato sospeso
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del Gateway, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Scenario principale*:
  - L'Utente autenticato visualizza l'identificativo del Gateway, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-id-gateway-alert>)
  - #ref-uc(<Visualizzazione-timestamp-ultimo-dato-gateway-alert>)
  - #ref-uc(<Visualizzazione-tempo-inattivita-gateway-alert>)

===== #sub-uc([Visualizzazione identificativo Gateway alert], "Visualizzazione-id-gateway-alert")
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del Gateway interessato nell'alert
- *Scenario principale*:
  - L'Utente autenticato visualizza l'identificativo del Gateway interessato nell'alert

===== #sub-uc(
  [Visualizzazione timestamp ultimo dato Gateway alert],
  "Visualizzazione-timestamp-ultimo-dato-gateway-alert",
)
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra il timestamp dell'ultimo dato ricevuto dal Gateway interessato nell'alert, ovvero il datetime preciso in cui è stato inviato l'ultimo dato
- *Scenario principale*:
  - L'Utente autenticato visualizza il timestamp dell'ultimo dato ricevuto dal Gateway interessato nell'alert

===== #sub-uc([Visualizzazione tempo inattività Gateway alert], "Visualizzazione-tempo-inattivita-gateway-alert")
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra il tempo di inattività del Gateway interessato nell'alert, ovvero il tempo dall'ultimo dato ricevuto.
- *Scenario principale*:
  - L'Utente autenticato visualizza il tempo di inattività del Gateway interessato nell'alert

==== #uc([Visualizzazione alert mancata ricezione dati da sensore], "Mancata-ricezione-sensore")
#figure(
  image("../../assets/diagrammi/UC21.svg", width: 100%),
  caption: [UC21 - UC21.1, UC21.2, UC21.3],
)

- *Generalizzazione*: #ref-uc(<Visualizzazione-alert>)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente autenticato è autenticato nel sistema
  - L'alert esiste ed è associato al tenant dell'Utente autenticato
  - Il sensore in questione non è stato sospeso
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del sensore, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Scenario principale*:
  - L'Utente autenticato visualizza l'identificativo del sensore, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-id-sensore-alert>)
  - #ref-uc(<Visualizzazione-timestamp-ultimo-dato-sensore-alert>)
  - #ref-uc(<Visualizzazione-tempo-inattivita-sensore-alert>)

===== #sub-uc([Visualizzazione identificativo sensore alert], "Visualizzazione-id-sensore-alert")
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del sensore interessato nell'alert
- *Scenario principale*:
  - L'Utente autenticato visualizza l'identificativo del sensore interessato nell'alert

===== #sub-uc(
  [Visualizzazione timestamp ultimo dato sensore alert],
  "Visualizzazione-timestamp-ultimo-dato-sensore-alert",
)
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra il timestamp dell'ultimo dato ricevuto dal Gateway relativo al sensore in questione, ovvero il datetime preciso in cui è stato inviato l'ultimo dato dal sensore e correttamente inviato al Cloud.
- *Scenario principale*:
  - L'Utente autenticato visualizza il timestamp dell'ultimo dato ricevuto dal Gateway relativo al sensore in questione

===== #sub-uc([Visualizzazione tempo inattività sensore alert], "Visualizzazione-tempo-inattivita-sensore-alert")
- *Attore principale*: Utente autenticato
- *Post-condizioni*:
  - Il sistema mostra il tempo di inattività del sensore interessato nell'alert, ovvero il tempo dall'ultimo dato ricevuto dal Gateway relativo al sensore in questione.
- *Scenario principale*:
  - L'Utente autenticato visualizza il tempo di inattività del sensore interessato nell'alert


// Visualizzazione dati -----------------------------------------------------------------------------------------------------

// ==== #uc([Selezione sensore], "Selezione-sensore")
// - *Attore principale*: Utente autenticato
// - *Pre-condizioni*:
//   - L'Utente è autenticato nel sistema
//   - Il sensore selezionato appartiene al tenant dell'utente autenticato
// - *Post-condizioni*:
//   - Il sistema riceve l'identificativo del sensore selezionato
// - *Scenario principale*:
//   - Il Tenant User seleziona un sensore associato al proprio tenant


==== #uc([Visualizzazione in tempo reale dei dati del sensore], "Visualizzazione-dati-real-time-sensore")
#figure(
  image("../../assets/diagrammi/UC22.svg", width: 100%),
  caption: [UC22 - UC22.1, UC28],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Viene mostrato il grafico *time-series* dei dati relativi al sensore selezionato
- *Scenario principale*:
  - L'Utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - L'Utente visualizza i dati attraverso un grafico *time-series*
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled
- *Scenari alternativi*:
  - Nessun dato disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  // - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-real-time-sensore>)

===== #sub-uc([Visualizzazione grafico dei dati real-time del sensore], "Visualizzazione-grafico-real-time-sensore")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Vengono visualizzati i dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento specifico
  - Il grafico visualizzato si aggiorna in *tempo reale* (_real-time_), appena il Cloud riceve dati nuovi dal Gateway
  - Il grafico visualizzato rappresenta sull'asse x gli istanti di rilevazione
  - Il grafico visualizzato rappresenta sull'asse y i valori delle rilevazioni
- *Scenario principale*:
  - L'Utente visualizza il grafico relativo ai dati real-time del sensore selezionato
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico

==== #uc([Visualizzazione dello storico dei dati del sensore], "Visualizzazione-storico-dati-sensore")
#figure(
  image("../../assets/diagrammi/UC23.svg", width: 100%),
  caption: [UC23 - UC23.1, UC28],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Viene visualizzato lo storico dei dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento specifico
- *Scenario principale*:
  - L'utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Viene mostrato lo storico dei dati del sensore selezionato tramite il grafico descritto sopra, con la possibilità di filtrare per intervallo temporale e intervallo di valore
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  // - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-storico-sensore>)

===== #sub-uc([Visualizzazione grafico storico dei dati del sensore], "Visualizzazione-grafico-storico-sensore")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Il sistema mostra lo storico dei dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento passato specifico
  - Il grafico visualizzato rappresenta sull'asse x gli istanti di rilevazione
  - Il grafico visualizzato rappresenta sull'asse y i valori delle rilevazioni
- *Scenario principale*
  - L'Utente visualizza il grafico relativo allo storico dei dati del sensore selezionato
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico


==== #uc([Filtraggio per intervallo temporale dati storico sensore], "Filtraggio-dati-storico-sensore")
#figure(
  image("../../assets/diagrammi/UC24.svg", width: 100%),
  caption: [UC24 - UC24.1, UC25, UC28],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Il sistema mostra lo storico dei dati del sensore selezionato filtrato per intervallo temporale
- *Scenario principale*:
  - L'Utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - L'Utente autenticato specifica l'intervallo temporale desiderato
  - L'Utente autenticato visualizza lo storico dei dati del sensore selezionato filtrato per l'intervallo temporale specificato
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato nell'intervallo temporale specificato
  - L'intervallo temporale specificato non è valido
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
  - #ref-uc(<Intervallo-temporale-non-valido>)
- *Inclusioni*:
  // - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-filtrato-temporale-sensore>)


===== #sub-uc(
  [Visualizzazione grafico dati sensore filtrato per intervallo temporale],
  "Visualizzazione-grafico-filtrato-temporale-sensore",
)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
  - Il filtro temporale è valido
- *Post-condizioni*:
  - Il sistema mostra i dati storici del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento passato specifico, filtrati per intervallo temporale
  - Il grafico visualizzato rappresenta sull'asse x gli istanti di rilevazione
  - Il grafico visualizzato rappresenta sull'asse y i valori delle rilevazioni
- *Scenario principale*
  - L'Utente visualizza il grafico relativo allo storico dei dati del sensore selezionato
  - L'Utente visualizza il grafico filtrato per intervallo temporale
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico


==== #uc([Intervallo temporale non valido], "Intervallo-temporale-non-valido")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - Il sensore selezionato appartiene al tenant dell'Utente autenticato
  - L'Utente autenticato ha specificato un intervallo temporale non valido, ovvero un intervallo che comprende dei momenti temporali futuri o precedenti al primo momento temporale salvato nello storico del sensore considerato.
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Utente autenticato specifica un intervallo temporale non valido
  - L'Utente autenticato visualizza un messaggio di errore


==== #uc([Filtraggio dati del sensore per intervallo di valori], "Filtraggio-dati-sensore-intervallo-valori")
#figure(
  image("../../assets/diagrammi/UC26.svg", width: 100%),
  caption: [UC26 - UC26.1, UC27, UC28],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'Utente autenticato
  - I valori delle misurazioni dei sensori sono numerici
- *Post-condizioni*:
  - Il sistema mostra lo storico dei dati del sensore selezionato per la quale le misurazioni rientrano nell'intervallo di valori specificato
- *Scenario principale*:
  - L'Utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - L'Utente autenticato specifica l'intervallo di valori desiderato
  - L'Utente autenticato visualizza lo storico dei dati del sensore selezionato per la quale le misurazioni rientrano nell'intervallo di valori specificato
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato nell'intervallo di valori specificato
  - L'intervallo di valori specificato non è valido
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
  - #ref-uc(<Intervallo-di-valori-non-valido>)
- *Inclusioni*:
  // - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-filtrato-valori-sensore>)

===== #sub-uc(
  [Visualizzazione grafico dati sensore filtrato per intervallo di valori],
  "Visualizzazione-grafico-filtrato-valori-sensore",
)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
  - Il filtro per valore è valido
- *Post-condizioni*:
  - Il sistema mostra i dati storici del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento passato specifico, filtrati per intervallo di valori
  - Il grafico visualizzato rappresenta sull'asse x gli istanti di rilevazione
  - Il grafico visualizzato rappresenta sull'asse y i valori delle rilevazioni
- *Scenario principale*
  - L'Utente visualizza il grafico relativo allo storico dei dati del sensore selezionato
  - L'Utente visualizza il grafico filtrato per intervallo di valori
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico


==== #uc([Intervallo di valori non valido], "Intervallo-di-valori-non-valido")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente autenticato ha specificato un intervallo di valori non valido
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Utente autenticato specifica un intervallo di valori non valido
  - L'Utente autenticato visualizza un messaggio di errore


==== #uc([Dati non disponibili per il sensore selezionato], "Dati-non-disponibili-sensore-selezionato")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato appartiene al tenant dell'Utente autenticato
  - L'Utente autenticato ha selezionato un sensore per il quale non sono disponibili dati
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati

==== #uc([Visualizzazione lista sensori associati al tenant], "Visualizzazione-lista-sensori-associati-tenant")
#figure(
  image("../../assets/diagrammi/UC29.svg", width: 100%),
  caption: [UC29 - UC30],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la lista dei sensori associati al tenant dell'utente
- *Scenario principale*:
  - L'utente autenticato visualizza la lista dei sensori associati al proprio tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-sensore-associato-tenant-in-lista>)

==== #uc(
  [Visualizzazione singolo sensore associato al tenant in lista],
  "Visualizzazione-singolo-sensore-associato-tenant-in-lista",
)
#figure(
  image("../../assets/diagrammi/UC30.svg", width: 100%),
  caption: [UC30 - UC30.1],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra le informazioni del singolo sensore associato al tenant dell'utente in lista
- *Scenario principale*:
  - L'utente autenticato visualizza le informazioni del singolo sensore associato al proprio tenant in lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-sensore-in-lista>)

===== #sub-uc([Visualizzazione identificativo sensore in lista], "Visualizzazione-identificativo-sensore-in-lista")
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del singolo sensore associato al tenant dell'utente in lista
- *Scenario principale*:
  - L'utente autenticato visualizza l'identificativo del singolo sensore associato al proprio tenant in lista

// Dashboard ----------------------------------------------------------------------------------------------------------------
==== #uc([Visualizzazione dashboard generica], "Visualizzazione-dashboard-generica")
#figure(
  image("../../assets/diagrammi/UC31.svg", width: 100%),
  caption: [UC31 - UC18, UC31.1, UC31.2],
)

- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'utente è autenticato nel sistema
- *Post-condizioni*:
  - La dashboard viene mostrata correttamente
- *Scenario principale*:
  - L'utente autenticato accede alla dashboard del proprio tenant
  - Visualizza il numero di sensori attivi e non attivi
  - Visualizza il numero di Gateway attivi e non attivi
  - Visualizza gli alert riguardanti eventi anomali all'interno del tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-lista-alert>)

===== #sub-uc(
  [Visualizzazione numero di sensori attivi e non attivi],
  "Visualizzazione-numero-sensori-attivi-non-attivi",
)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'utente autenticato è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra in forma testuale e di grafico a torta il numero di sensori attivi e inattivi associati al tenant dell'utente
- *Scenario principale*:
  - L'utente autenticato visualizza il numero di sensori attivi e non attivi
  - L'utente autenticato visualizza le informazioni in forma testuale e di grafico a torta.

===== #sub-uc(
  [Visualizzazione numero di Gateway attivi e non attivi],
  "Visualizzazione-numero-gateway-attivi-non-attivi",
)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'utente autenticato è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra in forma testuale e di grafico a torta il numero di Gateway attivi e inattivi associati al tenant dell'utente
- *Scenario principale*:
  - L'utente autenticato visualizza il numero di Gateway attivi e non attivi
  - L'utente autenticato visualizza le informazioni in forma testuale e di grafico a torta.

=== Attore principale - Tenant User
Si noti che in questa sezione non vi è presente alcun use case con attore principale il *Tenant User* poiché questi sono tutti descritti nella @sistema-cloud-attore-utente-auth.

Le funzionalità del *Tenant User* sono un sottoinsieme stretto delle funzionalità del *Tenant Admin* e *Super Admin* impersonante quest'ultimo, ovvero tutto ciò che può essere compiuto da un *Tenant User*, può essere compiuto anche da un *Tenant Admin*\/*Super Admin*.

// ==== #uc([Visualizzazione sensori collegati al tenant], "Visualizzazione-sensori-collegati-tenant")
// - *Attore principale*: Tenant User
// - *Pre-condizioni*:
//   - Il Tenant User è autenticato nel sistema
// - *Post-condizioni*:
//   - Il sistema mostra la lista dei sensori associati al tenant del Tenant User
// - *Scenario principale*:
//   - Il Tenant User seleziona la funzionalità di visualizzazione sensori
//   - Il Tenant User visualizza la lista dei sensori associati al tenant del Tenant User


=== Attore principale - Admin Generico
L'attore *Admin Generico* corrisponde alla generalizzazione di *Tenant Admin* e *Super Admin*.

Si noti che un utente *Admin Generico* può rappresentare un *Tenant Admin* effettivo oppure un *Super Admin* in fase d'*impersonificazione*, ovvero un Super Admin che viene riconosciuto temporaneamente dal sistema Cloud come *Tenant Admin* di un specifico tenant che abbia accettato la clausola d'impersonificazione.

// - #ref-uc(<Registrazione-nuovo-tenant-user>) - #ref-uc(<Eliminazione-Tenant-User>)
// - #ref-uc(<Visualizzazione-richiesta-commissioning-gateway>) - #ref-uc(<Visualizzazione-lista-utenti-tenant>)
// - #ref-uc(<Registrazione-nuova-api-key>) - #ref-uc(<Visualizzazione-gateway-tenant-admin>)
//   - *[SA]* Visualizzazione lista Gateway
//     - Visualizzazione singolo Gateway in lista
//       - Visualizzazione identificativo
//       - Visualizzazione nome tenant di appartenenza

//   - *[SA]* Visualizzazione dettaglio Gateway
//     - Dev'essere Gateway auth. in sistema

//   - *[TA]* Visualizzazione dettaglio Gateway del tenant
//     - Dev'essere Gateway auth. in sistema
//     - Dev'essere Gateway associato a *tenant*


==== #uc([Gateway non raggiungibile], "Gateway-non-raggiungibile")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway deve essere registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Admin tenta di inviare un comando di configurazione al Gateway, ma esso non è raggiungibile

==== #uc([Email già utilizzata], "Email-gia-utilizzata")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'Admin ha inserito un'email già associata ad un altro utente all'interno del sistema
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Admin visualizza un messaggio di errore

// Gestione Tenant User -------------------------------------------------------------------------------------------------
==== #uc([Registrazione nuovo Tenant User], "Registrazione-nuovo-tenant-user")
#figure(
  image("../../assets/diagrammi/UC34.svg", width: 100%),
  caption: [UC34 - UC33, UC34.1],
)

- *Attore principale*: Admin Generico
- *Attore secondario*: Email Client
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema registra correttamente il nuovo Tenant User nel tenant associato all'Admin
  - Il sistema invia una email con un link per impostare la password dell'account appena creato
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin inserisce l'indirizzo email del nuovo Tenant User
  - L'Email Client riceve la mail di impostazione password
- *Scenari alternativi*:
  - L'email è già associata ad un altro utente all'interno del sistema
- *Estensioni*:
  - #ref-uc(<Email-gia-utilizzata>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-email>)
// - #ref-uc(<Invio-email-impostazione-password>)

===== #sub-uc([Inserimento email], "Inserimento-email")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve l'indirizzo email inserito
- *Scenario principale*:
  - L'Admin inserisce l'indirizzo email

// ===== #sub-uc([Invio email impostazione password al nuovo Tenant User], "Invio-email-impostazione-password")
// - *Attore principale*: Admin Generico
// - *Attore secondario*: Email Client
// - *Pre-condizioni*:
//   - L'Admin è autenticato nel sistema
//   - L'email del nuovo Tenant User è valida
// - *Post-condizioni*:
//   - Il sistema invia una email con il link per l'impostazione della nuova password
// - *Scenario principale*:
//   - L'Email Client riceve una email con il link per l'impostazione della nuova password


==== #uc([Sospensione Tenant User], "Sospensione-tenant-user")
#figure(
  image("../../assets/diagrammi/UC35.svg", width: 100%),
  caption: [UC35 - UC35.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User scelto è registrato nel sistema
  - Il Tenant User scelto in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Tenant User non può più accedere al sistema
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin sceglie il Tenant User che vuole sospendere
  - L'Admin conferma la sospensione
- *Inclusioni*
  - #ref-uc(<Conferma-sospensione-tenant-user>)

===== #sub-uc([Conferma sospensione Tenant User], "Conferma-sospensione-tenant-user")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User scelto è registrato e non sospeso nel sistema
  - Il Tenant User scelto in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema riceve la conferma della sospensione del Tenant User
- *Scenario principale*:
  - L'Admin conferma la sospensione del Tenant User

==== #uc([Riattivazione Tenant User], "Riattivazione-tenant-user")
#figure(
  image("../../assets/diagrammi/UC36.svg", width: 100%),
  caption: [UC36 - UC36.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User è registrato e sospeso nel sistema
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Tenant User può accedere nuovamente al sistema
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin sceglie il Tenant User che vuole riattivare
  - L'Admin conferma la riattivazione dell'account
- *Inclusioni*
  - #ref-uc(<Conferma-riattivazione-tenant-user>)

===== #sub-uc([Conferma riattivazione Tenant User], "Conferma-riattivazione-tenant-user")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User è registrato e sospeso nel sistema
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema riceve la conferma della riattivazione del Tenant User
- *Scenario principale*:
  - L'Admin conferma la riattivazione del Tenant User


==== #uc([Eliminazione Tenant User], "Eliminazione-tenant-user")
#figure(
  image("../../assets/diagrammi/UC37.svg", width: 100%),
  caption: [UC37 - UC37.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User che si vuole eliminare esiste
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema elimina il Tenant User
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin sceglie il Tenant User che vuole rimuovere
  - L'Admin conferma l'eliminazione del Tenant User
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-tenant-user>)

===== #sub-uc([Conferma eliminazione Tenant User], "Conferma-eliminazione-tenant-user")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User che si vuole eliminare esiste
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema riceve la conferma dell'eliminazione del Tenant User
- *Scenario principale*:
  - L'Admin conferma l'eliminazione del Tenant User

// Commissioning / Decommissioning ------------------------------------------------------------------------------------------------------------
==== #uc(
  [Visualizzazione lista delle richieste di commissioning e decommissioning di Gateway del tenant],
  "Visualizzazione-lista-richieste-commissioning-decommissioning-gateway",
)
#figure(
  image("../../assets/diagrammi/UC38.svg", width: 100%),
  caption: [UC38 - UC39, UC39.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Viene visualizzato la lista di tutte le richieste di commissioning e decommissioning di Gateway del tenant, ordinata in ordine cronologico decrescente
  - Per ogni elemento della lista, viene visualizzato lo stato delle richieste di commissioning e decommissioning di Gateway, ovvero se tale richiesta è *in corso* o se è stata *accettata/rifiutata* da un Super Admin.
- *Scenario principale*:
  - L'Admin visualizza le richieste in forma di lista ordinata in ordine cronologico decrescente (dalla più recente alla meno recente).
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-richiesta-di-commissioning-decommissioning-gateway>)

==== #uc(
  [Visualizzazione richiesta di commissioning e decommissioning di Gateway del tenant],
  "Visualizzazione-richiesta-di-commissioning-decommissioning-gateway",
)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin generico è autenticato nel sistema
  - La richiesta di commissioning o decommissioning esiste ed è associata al tenant
- *Post-condizioni*:
  - Il sistema mostra le informazioni dettagliate della richiesta di commissioning o decommissioning
- *Scenario principale*:
  - L'Admin visualizza le informazioni dettagliate della richiesta di commissioning o decommissioning, tra cui:
    - Stato della richiesta: in corso, accettata, rifiutata
  - *Inclusioni*:
    - #ref-uc(<Visualizzazione-stato-richiesta-di-commissioning-decommissioning-gateway>)

===== #sub-uc(
  [Visualizzazione stato richiesta di commissioning e decommissioning di Gateway],
  "Visualizzazione-stato-richiesta-di-commissioning-decommissioning-gateway",
)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin generico è autenticato nel sistema
  - La richiesta di commissioning o decommissioning esiste ed è associata al tenant
- *Post-condizioni*:
  - Il sistema mostra lo stato della richiesta di commissioning o decommissioning
- *Scenario principale*:
  - L'Admin generico visualizza lo stato della richiesta di commissioning o decommissioning, che può essere:
    - In corso
    - Accettata
    - Rifiutata

// Visualizzazione Utenti --------------------------------------------------------------------------------------------------------------
==== #uc([Visualizzazione lista utenti tenant], "Visualizzazione-lista-utenti-tenant")
#figure(
  image("../../assets/diagrammi/UC40.svg", width: 100%),
  caption: [UC40 - UC41],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Gli utenti appartengono al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra la lista degli utenti registrati nel tenant dell'Admin
- *Scenario principale*:
  - L'Admin visualizza la lista degli utenti registrati nel proprio tenant
- *Inclusioni*
  - #ref-uc(<Visualizzazione-singolo-utente-in-lista>)

==== #uc([Visualizzazione singolo utente in lista], "Visualizzazione-singolo-utente-in-lista")
#figure(
  image("../../assets/diagrammi/UC41.svg", width: 100%),
  caption: [UC41 - UC41.1, UC41.2],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'utente appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra le informazioni sintetiche dell'utente nella lista, tra cui:
    - Indirizzo email
    - Stato: attivo, sospeso
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche dell'utente nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-email-utente-lista>)
  - #ref-uc(<Visualizzazione-stato-utente-lista>)

===== #sub-uc([Visualizzazione email singolo utente in lista], "Visualizzazione-email-utente-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'utente appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra l'indirizzo email del singolo utente nella lista
- *Scenario principale*:
  - L'Admin visualizza l'indirizzo email del singolo utente nella lista

===== #sub-uc([Visualizzazione stato singolo utente in lista], "Visualizzazione-stato-utente-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'utente appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra lo stato del singolo utente nella lista
- *Scenario principale*:
  - L'Admin visualizza lo stato del singolo utente nella lista

// Visualizzazione Gateway/sensori --------------------------------------------------------------------------------------------------------------
==== #uc([Visualizzazione lista di Gateway associati a tenant], "Visualizzazione-lista-gateway-associati")
#figure(
  image("../../assets/diagrammi/UC42.svg", width: 100%),
  caption: [UC42 - UC43],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la lista dei Gateway associati al tenant dell'Admin
- *Scenario principale*:
  - L'Admin visualizza la lista dei Gateway associati al tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-gateway-in-lista>)

==== #uc([Visualizzazione singolo Gateway in lista], "Visualizzazione-singolo-gateway-in-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra le informazioni sintetiche del Gateway nella lista, tra cui:
    - Nome del Gateway
    - Stato: attivo, non raggiungibile, non associato, non autenticato
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche del Gateway nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-gateway-lista>)
  - #ref-uc(<Visualizzazione-stato-gateway-lista>)

===== #sub-uc([Visualizzazione nome singolo Gateway in lista], "Visualizzazione-nome-gateway-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra il nome del singolo Gateway nella lista
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche del Gateway nella lista

===== #sub-uc([Visualizzazione stato singolo Gateway in lista], "Visualizzazione-stato-gateway-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra lo stato del singolo Gateway nella lista
- *Scenario principale*:
  - L'Admin visualizza lo stato del singolo Gateway nella lista

==== #uc([Visualizzazione Gateway associato a tenant], "Visualizzazione-gateway-associato")
#figure(
  image("../../assets/diagrammi/UC44.svg", width: 100%),
  caption: [UC44 - UC44.1, UC44.2, UC44.3],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra le informazioni dettagliate del Gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza le informazioni del Gateway selezionato, tra cui:
    - Nome del Gateway
    - Stato: attivo, non raggiungibile, non associato, non autenticato
    - Sensori collegati al Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-gateway-associato>)
  - #ref-uc(<Visualizzazione-stato-gateway-associato>)
  - #ref-uc(<Visualizzazione-sensori-collegati-gateway-associato>)

===== #sub-uc([Visualizzazione nome Gateway associato a tenant], "Visualizzazione-nome-gateway-associato")
- *Attore principale*: Admin generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra il nome del Gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza il nome del Gateway selezionato

===== #sub-uc([Visualizzazione stato Gateway associato a tenant], "Visualizzazione-stato-gateway-associato")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra lo stato del Gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza lo stato del Gateway selezionato, che può essere:
    - Attivo
    - Non raggiungibile
    - Non associato
    - Non autenticato

===== #sub-uc(
  [Visualizzazione sensori collegati al Gateway associato a tenant],
  "Visualizzazione-sensori-collegati-gateway-associato",
)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
  - Il Gateway ha sensori collegati
- *Post-condizioni*:
  - Il sistema mostra la lista dei sensori collegati al Gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza la lista dei sensori collegati al Gateway selezionato
- *Inclusioni*:
  - #ref-uc(<Visualizza-singolo-sensore-collegato-gateway-associato-in-lista>)

==== #uc(
  [Visualizza singolo sensore collegato al Gateway associato al tenant in lista],
  "Visualizza-singolo-sensore-collegato-gateway-associato-in-lista",
)

#figure(
  image("../../assets/diagrammi/UC45.svg", width: 100%),
  caption: [UC45 - UC45.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
  - Il Gateway ha sensori collegati
- *Post-condizioni*:
  - Il sistema mostra le informazioni sintetiche del singolo sensore collegato al Gateway selezionato nella lista, tra cui:
    - Identificativo del sensore
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche del singolo sensore collegato al Gateway selezionato nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-sensore-collegato-gateway-associato-in-lista>)

===== #sub-uc(
  [Visualizzazione identificativo sensore collegato al Gateway associato a tenant in lista],
  "Visualizzazione-identificativo-sensore-collegato-gateway-associato-in-lista",
)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Gateway è associato al tenant dell'Admin
  - Il Gateway ha sensori collegati
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del singolo sensore collegato al Gateway selezionato nella lista
- *Scenario principale*:
  - L'Admin visualizza l'identificativo del singolo sensore collegato al Gateway selezionato nella lista

// Gestione API Keys ------------------------------------------------------------------------------------------------------------------
==== #uc([Registrazione nuova API key], "Registrazione-nuova-api-key")
#figure(
  image("../../assets/diagrammi/UC46.svg", width: 100%),
  caption: [UC46 - UC46.1, UC46.2, UC47, UC48],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema genera una nuova API key associata al tenant dell'Admin
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin inserisce il nome della API key
  - L'Admin inserisce la scadenza della API key
  - Una volta generata l'API Key, questa viene mostrata all'Admin, offrendo a questi di copiare la chiave e avvertendolo che la chiave non potrà più essere visualizzata una volta conclusa l'operazione di registrazione.
- *Inclusioni*:
  - #ref-uc(<Inserimento-nome-api-key>)
  - #ref-uc(<Inserimento-scadenza-api-key>)
- *Estensioni*:
  - #ref-uc(<Nome-api-key-gia-utilizzato>)
  - #ref-uc(<Scadenza-api-key-data-passata>)

===== #sub-uc([Inserimento nome API key], "Inserimento-nome-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve il nome inserito per la nuova API key
- *Scenario principale*:
  - L'Admin inserisce il nome della nuova API key
- *Scenari alternativi*:
  - Il nome inserito è già utilizzato da un'altra API key all'interno del tenant

===== #sub-uc([Inserimento scadenza API key], "Inserimento-scadenza-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema riceve la scadenza inserita per la nuova API key
- *Scenario principale*:
  - L'Admin inserisce la scadenza della nuova API key
- *Scenari alternativi*:
  - La scadenza inserita non è valida

==== #uc([Nome API key già utilizzato], "Nome-api-key-gia-utilizzato")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'Admin ha inserito un nome già utilizzato per la nuova API key all'interno del proprio tenant
- *Post-condizioni*:
  - L'operazione di registrazione della nuova API key viene interrotta
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Admin visualizza un messaggio di errore dopo aver inserito il nome già utilizzato


==== #uc([Scadenza API key in data passata], "Scadenza-api-key-data-passata")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'Admin ha inserito una scadenza in data passata per la nuova API key
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Admin visualizza un messaggio di errore dopo aver inserito una scadenza in data passata


==== #uc([Visualizzazione lista API key], "Visualizzazione-lista-api-key")
#figure(
  image("../../assets/diagrammi/UC49.svg", width: 100%),
  caption: [UC49 - UC50, UC50.1, UC50.2, UC50.3],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la lista delle API key associate al tenant
- *Scenario principale*:
  - L'Admin visualizza la lista delle API key associate al tenant
  - Sono visualizzati per ogni API key il nome, la data di creazione e la data di scadenza
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-api-key-lista>)

==== #uc([Visualizzazione singola API Key in lista], "Visualizzazione-singola-api-key-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra le informazioni sintetiche della API key selezionata nella lista, tra cui:
    - Nome della API key
    - Data di creazione
    - Data di scadenza
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche della API key selezionata nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-singola-api-key-lista>)
  - #ref-uc(<Visualizzazione-data-creazione-singola-api-key-lista>)
  - #ref-uc(<Visualizzazione-data-scadenza-singola-api-key-lista>)

===== #sub-uc([Visualizzazione nome singola API key in lista], "Visualizzazione-nome-singola-api-key-lista")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il nome della API key selezionata nella lista
- *Scenario principale*:
  - L'Admin visualizza il nome della API key selezionata nella lista

===== #sub-uc(
  [Visualizzazione data di creazione singola API key in lista],
  "Visualizzazione-data-creazione-singola-api-key-lista",
)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la data di creazione della API key selezionata nella lista
- *Scenario principale*:
  - L'Admin visualizza la data di creazione della API key selezionata nella

===== #sub-uc(
  [Visualizzazione data di scadenza singola API key in lista],
  "Visualizzazione-data-scadenza-singola-api-key-lista",
)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la data di scadenza della API key selezionata nella lista
- *Scenario principale*:
  - L'Admin visualizza la data di scadenza della API key selezionata


==== #uc([Visualizzazione dettagli API key], "Visualizzazione-dettagli-api-key")
#figure(
  image("../../assets/diagrammi/UC51.svg", width: 100%),
  caption: [UC51 - UC51.1, UC51.2, UC51.3, UC51.4],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Vengono visualizzati i dettagli della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza il nome della API key
  - L'Admin visualizza la data di creazione
  - L'Admin visualizza la data di scadenza
  - L'Admin visualizza il grafico di utilizzo della API key
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-api-key>)
  - #ref-uc(<Visualizzazione-data-creazione-api-key>)
  - #ref-uc(<Visualizzazione-data-scadenza-api-key>)
  - #ref-uc(<Grafico-utilizzo-api-key>)

===== #sub-uc([Visualizzazione nome API key], "Visualizzazione-nome-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra il nome della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza il nome della API key selezionata

===== #sub-uc([Visualizzazione data di creazione API key], "Visualizzazione-data-creazione-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra la data di creazione della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza la data di creazione della API key selezionata

===== #sub-uc([Visualizzazione data di scadenza API key], "Visualizzazione-data-scadenza-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra la data di scadenza della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza la data di scadenza della API key selezionata

===== #sub-uc([Grafico utilizzo API key], "Grafico-utilizzo-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema mostra il grafico Time Series di utilizzo della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza il grafico Time Series di utilizzo della API key selezionata
  - Visualizza nell'asse Y il numero di richieste effettuate con la API key
  - Visualizza nell'asse X il tempo

==== #uc([Eliminazione API key], "Eliminazione-api-key")
#figure(
  image("../../assets/diagrammi/UC52.svg", width: 100%),
  caption: [UC52 - UC52.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema elimina la API key selezionata
  - Il sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin seleziona una API key associata al proprio tenant
  - L'Admin conferma l'eliminazione della API key selezionata
  - L'Admin elimina la API key selezionata
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-api-key>)

===== #sub-uc([Conferma eliminazione API key], "Conferma-eliminazione-api-key")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - La API key selezionata appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il sistema riceve la conferma dell'eliminazione della API key selezionata
- *Scenario principale*:
  - L'Admin conferma l'eliminazione della API key selezionata

// Visualizzazione audit log -----------------------------------------------------------------------------------------------------------------------------
==== #uc([Visualizzazione lista audit log del tenant], "Visualizzazione-audit-log")
#figure(
  image("../../assets/diagrammi/UC53.svg", width: 100%),
  caption: [UC53 - UC54, UC54.1, UC54.2, UC54.3],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la lista degli audit log del tenant del tenant a cui appartiene l'Admin
- *Scenario principale*:
  - L'Admin seleziona l'opzione di visualizzazione degli audit log
  - Il sistema recupera i dati relativi agli audit log
  - L'Admin visualizza la lista degli audit log del tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-audit-log>)

==== #uc([Visualizzazione singolo audit log], "Visualizzazione-singolo-audit-log")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra le informazioni sintetiche dell'audit log
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche dell'audit log, quali:
    - Nome utente che ha eseguito l'azione
    - Tipo di azione eseguita
    - Timestamp dell'azione eseguita
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-utente-audit-log>)
  - #ref-uc(<Visualizzazione-tipo-azione-audit-log>)
  - #ref-uc(<Visualizzazione-timestamp-azione-audit-log>)

===== #sub-uc([Visualizzazione nome utente audit log], "Visualizzazione-nome-utente-audit-log")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il nome dell'utente che ha eseguito l'azione registrata nell'audit log
- *Scenario principale*:
  - L'Admin visualizza il nome dell'utente che ha eseguito l'azione registrata nell'audit log

===== #sub-uc([Visualizzazione tipo azione audit log], "Visualizzazione-tipo-azione-audit-log")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il tipo di azione eseguita registrata nell'audit log
- *Scenario principale*:
  - L'Admin visualizza il tipo di azione eseguita registrata nell'audit log

===== #sub-uc([Visualizzazione timestamp azione audit log], "Visualizzazione-timestamp-azione-audit-log")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il timestamp dell'azione eseguita registrata nell'audit log
- *Scenario principale*:
  - L'Admin visualizza il timestamp dell'azione eseguita registrata nell'audit log

// AUDIT LOG:
/*
  --- GESTIONE UTENTI
  - Creazione Tenant User SI
  - Sospensione Tenant User SI
  - Riattivazione Tenant User SI
  - Eliminazione Tenant User SI
  --- GESTIONE API KEY
  - Creazione API Key SI
  - Eliminazione API Key SI
  --- GESTIONE ACCESSI
  - Login SI
  - Logout SI
  - Generazione 2FA SI
  - Reimpostazione password SI
  --- GESTIONE SENSORI E GATEWAY
  - Sospensione sensore SI
  - Riattivazione sensore SI
  - Sospensione Gateway SI
  - Riattivazione Gateway SI
  --- GESTIONE RICHIESTE (DE)COMMISSIONING
  - Creazione commissioning
  - Creazione decommissioning
  - Rimozione

*/

==== #uc([Filtraggio log per tipologia], "Filtraggio-log-per-tipologia")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il sistema mostra i dati di log filtrati secondo la tipologia desiderata
- *Scenario principale*
  - L'Admin seleziona una o più tipologie di log che desidera vedere, tra cui:
    - Gestione utenti
    - Gestione API Key
    - Gestione accessi
    - Gestione sensori e Gateway
    - Gestione richieste commissioning e decommissioning
  - L'Admin visualizza gli audit log filtrati per le tipologie desiderate

==== #uc([Filtraggio log per intervallo temporale], "Filtraggio-log-per-intervallo-temporale")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il sistema mostra i dati di log filtrati secondo l'intervallo temporale indicato
- *Scenario principale*
  - L'Admin specifica un intervallo temporale desiderato
  - L'Admin visualizza gli audit log filtrati secondo l'intervallo specificato


==== #uc([Filtraggio log per utente], "Filtraggio-log-per-utente")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il sistema mostra i dati di log relativi ai Tenant User specificati
- *Scenario principale*
  - L'Admin specifica uno o più Tenant User di cui vuole consultare l'attività
  - L'Admin visualizza gli audit log filtrati in base ai Tenant User scelti


==== #uc([Esportazione log], "Esportazione-log")
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema fornisce i log in un file testuale scaricabile
- *Scenario principale*:
  - L'Admin seleziona l'opzione di esportazione degli audit log



=== Attore principale - Tenant Admin
Si noti che le funzionalità del *Tenant User* sono un sottoinsieme stretto delle funzionalità del *Tenant Admin* e *Super Admin* impersonante quest'ultimo, ovvero tutto ciò che può essere compiuto da un *Tenant User*, può essere compiuto anche da un *Tenant Admin*\/*Super Admin*.


// DASHBOARD --------------------------------------------------------------------------------------------------------------------------------------------------
==== #uc([Visualizzazione dashboard Tenant Admin], "Visualizzazione-dashboard-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC59.svg", width: 100%),
  caption: [UC59 - UC18, UC31, UC31.1, UC31.2, UC59.1, UC59.2, UC59.3],
)

- *Generalizzazione*: #ref-uc(<Visualizzazione-dashboard-generica>)
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - La dashboard viene mostrata correttamente
- *Scenario principale*:
  - Il Tenant Admin accede alla dashboard del proprio tenant
  - Visualizza il numero di API key valide e scadute nel tenant
  - Visualizza il numero di sensori attivi e non attivi nel tenant
  - Visualizza il numero di Gateway attivi e non attivi nel tenant
  - Visualizza eventuali alert o notifiche riguardanti il funzionamento dei sensori nel tenant
  - Visualizza lo stato delle richieste di commissioning e decommissioning di Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>) _(ereditato da #ref-uc(<Visualizzazione-dashboard-generica>))_
  - #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>) _(ereditato da #ref-uc(<Visualizzazione-dashboard-generica>))_
  - #ref-uc(<Visualizzazione-lista-alert>) _(ereditato da #ref-uc(<Visualizzazione-dashboard-generica>))_
  - #ref-uc(<Visualizzazione-numero-api-key-valide-scadute>)
  - #ref-uc(<Visualizzazione-stato-richieste-commissioning-gateway>)
  - #ref-uc(<Visualizzazione-stato-richieste-decommissioning-gateway>)

===== #sub-uc([Visualizzazione numero di API key valide e scadute], "Visualizzazione-numero-api-key-valide-scadute")
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - Viene visualizzato il numero di API key valide e scadute nel tenant
- *Scenario principale*:
  - Il Tenant Admin visualizza il numero di API key valide e scadute nel tenant
  - Il Tenant Admin visualizza le informazioni in forma testuale e di grafico a torta.

===== #sub-uc(
  [Visualizzazione stato richieste commissioning Gateway],
  "Visualizzazione-stato-richieste-commissioning-gateway",
)
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra un grafico a torta che mostra il numero di richieste di *commissioning* divise per stato ("accettate", "rifiutate" e "in corso")
- *Scenario principale*:
  - Il Tenant Admin visualizza il grafico a torta descritto sopra

===== #sub-uc(
  [Visualizzazione stato richieste decommissioning Gateway],
  "Visualizzazione-stato-richieste-decommissioning-gateway",
)
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra un grafico a torta che mostra il numero di richieste di *decommissioning* divise per stato ("accettate", "rifiutate" e "in corso")
- *Scenario principale*:
  - Il Tenant Admin visualizza il grafico a torta sopra descritto

// Comm./decommissioning. --------------------------------------------------------
==== #uc([Creazione richiesta di commissioning Gateway], "Creazione-richiesta-commissioning-gateway")
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema crea una richiesta di commissioning di Gateway, la quale potrà essere accettata o rifiutata dal Super Admin
  - Il sistema registra l'evento nell'audit log
- *Scenario principale*:
  - Il Tenant Admin inserisce il numero di nuovi Gateway da associare al proprio tenant
  - Il Tenant Admin inserisce una descrizione della richiesta per specificare ulteriori dettagli


==== #uc([Creazione richiesta di decommissioning Gateway], "Creazione-richiesta-decommissioning-gateway")
#figure(
  image("../../assets/diagrammi/UC61.svg", width: 100%),
  caption: [UC61 - UC61.1],
)

- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema crea una richiesta di decommissioning di Gateway per il Gateway specificato, la quale potrà essere accettata o rifiutata dal Super Admin
  - Il sistema registra l'evento nell'audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona i/il Gateway per il decommissioning
  - Il Tenant Admin ultima la richiesta di decommissioning
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-decommissioning-tenant-admin>)

===== #sub-uc([Selezione Gateway per decommissioning], "Selezione-gateway-decommissioning-tenant-admin")
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - I Gateway selezionati dal Tenant Admin sono associati al suo tenant
- *Post-condizioni*:
  - Il sistema associa i Gateway selezionati alla richiesta di decommissioning corrente
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista dei soli Gateway associati al proprio tenant
  - Il Tenant Admin seleziona da tale lista uno o più Gateway
  - Il Tenant Admin conferma la selezione


==== #uc(
  [Eliminazione richiesta di commissioning/decommissioning Gateway],
  "Eliminazione-richiesta-commissioning-decommissioning-gateway",
)
#figure(
  image("../../assets/diagrammi/UC62.svg", width: 100%),
  caption: [UC62 - UC62.1],
)

- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Ci sono richieste di commissioning o decommissioning di Gateway dell'Admin in corso
  - La richiesta dev'essere ancora in corso e non dev'essere già stata accettata o rifiutata da un Super Admin o già eliminata dallo stesso utente
- *Post-condizioni*:
  - Il sistema rimuove la richiesta selezionata, non rendendola più visibile ai Super Admin
  - Il sistema registra l'evento nell'audit log, specificando se la richiesta eliminata è una richiesta di commissioning o decommissioning e i dati specifici della richiesta
- *Scenario principale*:
  - Il Tenant Admin seleziona una richiesta di commissioning o decommissioning dalla lista delle proprie richieste
  - Il Tenant Admin visualizza i dati della specifica richiesta
  - Il Tenant Admin conferma l'eliminazione della richiesta
- *Scenari alternativi*:
  - Il Tenant Admin, dopo aver visualizzato i dati della richiesta, annulla la sua eliminazione
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-richiesta-commissioning-decommissioning>)

===== #sub-uc([Conferma eliminazione richiesta], "Conferma-eliminazione-richiesta-commissioning-decommissioning")
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il sistema ha mostrato al Tenant Admin i dati relativi alla richiesta da eliminare
- *Post-condizioni*:
  - Il sistema conferma l'eliminazione della richiesta selezionata
  - Il sistema mostra all'Admin un messaggio di conferma dell'eliminazione
- *Scenario principale*
  - Il Tenant Admin visualizza i dati della richiesta selezionata
  - Il Tenant Admin conferma l'eliminazione
  - Il Tenant Admin non visualizza più la richiesta nella lista di richieste in corso

// Comandi ----------------------------------------------------------------------------------------------------------------------------------------------
==== #uc([Sospensione sensore del tenant], "Sospensione-sensore-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC63.svg", width: 100%),
  caption: [UC63 - UC32],
)

- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il sensore è associato a un Gateway autenticato e registrato nel sistema
  - Il sensore è associato a un Gateway registrato nel tenant del Tenant Admin
  - Il sensore non è già sospeso
- *Post-condizioni*:
  - Il sistema invia al Gateway il comando di sospensione del sensore specificato
  - Il sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole sospendere
- *Scenari alternativi*:
  - Il Gateway associato al sensore non è raggiungibile
// - *Inclusioni*:
//   - #ref-uc(<Selezione-sensore>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Riattivazione sensore del tenant], "Riattivazione-sensore-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC64.svg", width: 100%),
  caption: [UC64 - UC32],
)

- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il sensore è associato a un Gateway autenticato e registrato nel sistema
  - Il sensore è associato a un Gateway registrato nel tenant del Tenant Admin
  - Il sensore è sospeso
- *Post-condizioni*:
  - Il sistema invia al Gateway il comando di riattivazione del sensore specificato
  - Il sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole riattivare
- *Scenari alternativi*:
  - Il Gateway associato al sensore non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
// - *Inclusioni*:
//   - #ref-uc(<Selezione-sensore>)


==== #uc([Sospensione Gateway associato a tenant], "Sospensione-gateway-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC65.svg", width: 100%),
  caption: [UC65 - UC32, UC69],
)

- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway selezionato è associato al tenant del Tenant Admin
  - Il Gateway non è già sospeso
- *Post-condizioni*:
  - Il sistema invia il comando di sospensione al Gateway
  - Il sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona un Gateway attivo associato al proprio tenant
  - Il Tenant Admin sospende il Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la sospensione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Riattivazione Gateway associato a tenant], "Riattivazione-gateway-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC66.svg", width: 100%),
  caption: [UC66 - UC32, UC69],
)

- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway selezionato è associato al tenant del Tenant Admin
  - Il Gateway è sospeso
- *Post-condizioni*:
  - Il sistema invio al Gateway il comando di riattivazione
  - Il sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona un Gateway sospeso associato al proprio tenant
  - Il Tenant Admin riattiva il Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la riattivazione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc([Riavvio Gateway associato a tenant], "Riavvio-gateway-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC67.svg", width: 100%),
  caption: [UC67 - UC32, UC69],
)

- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway selezionato è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il sistema invia al Gateway il comando di riavvio
- *Scenario principale*:
  - Il Tenant Admin seleziona il Gateway da riavviare
  - Il sistema invia il comando di riavvio al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il riavvio non può essere
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc(
  [Modifica target di frequenza d'invio dati per tipo di sensore di Gateway associato a tenant],
  "Modifica-target-freq-invio-dati-tenant-admin",
)
#figure(
  image("../../assets/diagrammi/UC68.svg", width: 100%),
  caption: [UC68 - UC32, UC69],
)

- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway selezionato è associato al tenant del Tenant Admin
  - Il Tenant Admin ha selezionato una tipologia valida di sensore
- *Post-condizioni*:
  - Il sistema invia al Gateway il comando di modifica target di frequenza d'invio dati per il tipo di sensore specificato
- *Scenario principale*:
  - Il Tenant Admin seleziona il Gateway da modificare
  - Il Tenant Admin seleziona una tipologia valida di sensore
  - Il Tenant Admin seleziona quanti dati per unità di tempo il Gateway deve inviare al Cloud
  - Il sistema invia il comando di modifica frequenza d'invio dati al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la modifica non può avvenire
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Seleziona Gateway per invio comando da Tenant Admin], "Seleziona-gateway-per-invio-comando-tenant-admin")
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway selezionato è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il sistema ha verificato che il Gateway selezionato esiste ed è associato al tenant del Tenant Admin
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista di Gateway associati al proprio tenant
  - Il Tenant Admin seleziona il Gateway specifico a cui inviare il comando


=== Attore principale - Super Admin
// GESTIONE TENANT ------------------------------------------------------------------------
==== #uc([Creazione tenant], "Creazione-tenant")
#figure(
  image("../../assets/diagrammi/UC70.svg", width: 100%),
  caption: [UC70 - UC70.1, UC70.2, UC71],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema registra il nuovo tenant nel sistema
- *Scenario principale*:
  - Il Super Admin inserisce il nome del nuovo tenant
  - Il Super Admin inserisce l'accettazione o meno della clausola di impersonificazione
- *Scenari alternativi*:
  - Il nome del tenant è già in uso da un altro tenant
- *Estensioni*:
  - #ref-uc(<Nome-tenant-gia-utilizzato>)
- *Inclusioni*:
  - #ref-uc(<Clausola-impersonificazione>)
  - #ref-uc(<Inserimento-nome-nuovo-tenant>)

===== #sub-uc([Clausola impersonificazione], "Clausola-impersonificazione")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve l'accettazione o meno della clausola
- *Scenario principale*:
  - Il Super Admin inserisce l'accettazione o meno della clausola di impersonificazione

===== #sub-uc([Inserimento nome nuovo tenant], "Inserimento-nome-nuovo-tenant")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve il nome del nuovo tenant
- *Scenario principale*:
  - Il Super Admin inserisce il nome del nuovo tenant



==== #uc([Nome del tenant già utilizzato], "Nome-tenant-gia-utilizzato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il nome del tenant inserito esiste già nel sistema
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super Admin ha inserito il nome del nuovo tenant ma è già in uso

==== #uc([Eliminazione tenant], "Eliminazione-tenant")
#figure(
  image("../../assets/diagrammi/UC72.svg", width: 100%),
  caption: [UC72 - UC72.1, UC73],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - I Gateway associati subiscono un'azione di decommissioning
  - I dati associati al tenant vengono eliminati
  - Gli utenti associati al tenant vengono eliminati
  - Il tenant viene rimosso dal sistema
- *Scenario principale*:
  - Il Super Admin seleziona il tenant da eliminare
  - Il Super Admin conferma l'eliminazione del tenant
  - Il sistema esegue il decommissioning dei Gateway associati
  - Il sistema elimina i dati e gli utenti associati al tenant
  - Il sistema elimina gli utenti associati al tenant
  - Il sistema elimina il tenant
- *Scenari alternativi*:
  - Il decommissioning di uno o più Gateway associati fallisce
- *Estensioni*:
  - #ref-uc(<Decommissioning-gateway-fallito>)
- *Inclusioni*:
  - #ref-uc(<Selezione-e-conferma-tenant-da-eliminare>)
// - #ref-uc(<Esecuzione-decommissioning-gateway-associati-tenant>)
// - #ref-uc(<Eliminazione-dati-utenti-associati-tenant>)
// - #ref-uc(<Esecuzione-eliminazione-tenant>)

===== #sub-uc([Selezione e conferma tenant da eliminare], "Selezione-e-conferma-tenant-da-eliminare")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema riceve la selezione e la conferma del tenant da eliminare
- *Scenario principale*:
  - Il Super Admin seleziona il tenant da eliminare
  - Il Super Admin conferma l'eliminazione del tenant

// ===== #sub-uc([Esecuzione decommissioning Gateway associati al tenant], "Esecuzione-decommissioning-gateway-associati-tenant")
// - *Attore principale*: Super Admin
// //- *Attore secondario*: Gateway
// - *Pre-condizioni*:
//   - Il Super Admin è autenticato
//   - Il tenant deve esistere nel sistema
// - *Post-condizioni*:
//   - I Gateway associati al tenant subiscono un'azione di decommissioning
// - *Scenario principale*:
//   - Il sistema invia il comando di decommissioning a tutti i Gateway associati al tenant
// - *Scenari alternativi*:
//   - Uno o più Gateway non sono raggiungibili perciò il decommissioning non può essere completato
// - *Estensioni*:
//   - #ref-uc(<Gateway-non-raggiungibile>)

// ===== #sub-uc([Eliminazione dati e utenti associati al tenant], "Eliminazione-dati-utenti-associati-tenant")
// - *Attore principale*: Super Admin
// - *Pre-condizioni*:
//   - Il Super Admin è autenticato
//   - Il tenant deve esistere nel sistema
// - *Post-condizioni*:
//   - I dati associati al tenant vengono eliminati
//   - Gli utenti associati al tenant vengono eliminati
// - *Scenario principale*:
//   - Il sistema elimina tutti i dati associati al tenant
//   - Il sistema elimina tutti gli utenti associati al tenant

// ===== #sub-uc([Eliminazione tenant], "Esecuzione-eliminazione-tenant")
// - *Attore principale*: Super Admin
// - *Pre-condizioni*:
//   - Il Super Admin è autenticato
//   - Il tenant deve esistere nel sistema
// - *Post-condizioni*:
//   - Il tenant viene rimosso dal sistema
// - *Scenario principale*:
//   - Il sistema elimina il tenant selezionato


==== #uc([Decommissioning Gateway fallito], "Decommissioning-gateway-fallito")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il decommissioning del o dei Gateway non viene completato
  - Il tenant non viene eliminato
  - Il sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il decommissioning di uno o più Gateway associati fallisce durante l'eliminazione del tenant

// DASHBOARD ----------------------------------------------------------------------------------------
==== #uc([Visualizzazione dashboard Super Admin], "Visualizzazione-dashboard-super-admin")
#figure(
  image("../../assets/diagrammi/UC74.svg", width: 100%),
  caption: [UC74 - UC74.1, UC74.2, UC97, UC99],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la dashboard con le informazioni sui tenant e sui Gateway
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni aggregate sui tenant
  - Il Super Admin visualizza le informazioni aggregate sui Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-lista-richieste-in-corso-commissioning-gateway>)
  - #ref-uc(<Visualizzazione-lista-richieste-in-corso-decommissioning-gateway>)
  - #ref-uc(<Visualizzazione-stato-globale-dei-gateway>)
  - #ref-uc(<Visualizzazione-numero-di-tenant>)

===== #sub-uc([Visualizzazione stato globale dei Gateway], "Visualizzazione-stato-globale-dei-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra in forma di grafico a torta il numero di Gateway associati a un qualunque tenant e non
- *Scenario principale*:
  - Il Super Admin visualizza il grafico descritto sopra

===== #sub-uc([Visualizzazione numero di tenant], "Visualizzazione-numero-di-tenant")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra il numero di tenant collegati ad esso
- *Scenario principale*:
  - Il Super Admin visualizza il numero di tenant collegati1


// TODO: RIFARE DIAGRAMMI UC75-UC76 per mostrare tutto il pattern lista direttamente
==== #uc([Visualizzazione lista Gateway], "Visualizzazione-lista-gateway-super-admin")
#figure(
  image("../../assets/diagrammi/UC75.svg", width: 100%),
  caption: [UC75 - UC43],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la lista di tutti i Gateway registrati
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista Gateway
  - Il Super Admin visualizza la lista di tutti i Gateway registrati nel sistema
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-gateway-in-lista>)

==== #uc([Visualizzazione singolo Gateway in lista], "Visualizzazione-singolo-gateway-in-lista")
#figure(
  image("../../assets/diagrammi/UC76.svg", width: 100%),
  caption: [UC76 - UC76.1, UC76.2, UC76.3, UC76.4],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il sistema mostra per ogni Gateway nella lista le seguenti informazioni:
    - Identificativo univoco
    - Stato di autenticazione (autenticato / non autenticato)
    - Stato operativo (attivo / non attivo)
    - Tenant associato (se presente)
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni Gateway nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-univoco-gateway>)
  - #ref-uc(<Visualizzazione-stato-autenticazione-gateway>)
  - #ref-uc(<Visualizzazione-stato-operativo-gateway>)
  - #ref-uc(<Visualizzazione-tenant-associato-gateway>)

===== #sub-uc([Visualizzazione identificativo univoco del Gateway], "Visualizzazione-identificativo-univoco-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il sistema mostra l'identificativo univoco del Gateway
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo univoco del Gateway

===== #sub-uc([Visualizzazione stato di autenticazione del Gateway], "Visualizzazione-stato-autenticazione-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il sistema mostra lo stato di autenticazione (autenticato / non autenticato) del Gateway
- *Scenario principale*:
  - Il Super Admin visualizza lo stato di autenticazione (autenticato / non autenticato)

===== #sub-uc([Visualizzazione stato operativo del Gateway], "Visualizzazione-stato-operativo-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il sistema mostra lo stato operativo (attivo / non attivo) del Gateway
- *Scenario principale*:
  - Il Super Admin visualizza lo stato operativo (attivo / non attivo) del Gateway

===== #sub-uc([Visualizzazione tenant associato al Gateway], "Visualizzazione-tenant-associato-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il sistema mostra il tenant associato (se presente) del Gateway
- *Scenario principale*:
  - Il Super Admin visualizza il tenant associato (se presente) del Gateway

==== #uc([Visualizzazione Gateway], "Visualizzazione-gateway-super-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra i dettagli del Gateway selezionato
- *Scenario principale*:
  - Il Super Admin visualizza i dettagli del Gateway selezionato

// TODO: cosa mostriamo del singolo Gateway?


// AUTENTICAZIONE GATEWAY --------------------------------------------------------------------
==== #uc([Autenticazione Gateway], "Autenticazione-gateway")
#figure(
  image("../../assets/diagrammi/UC78.svg", width: 100%),
  caption: [UC78 - UC32, UC79, UC80],
)

- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve l'identificativo del Gateway
  - Il sistema riceve il certificato di autenticazione del Gateway
  - Il sistema autentica il Gateway
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da autenticare
  - Il Super Admin fornisce l'identificativo del Gateway
  - Il Super Admin fornisce il certificato di autenticazione
- *Scenario alternativo*:
  - Il Gateway non è raggiungibile perciò l'autenticazione non può essere completata
  - Il certificato fornito non è valido per il Gateway selezionato
  - L'identificativo è già utilizzato da un altro Gateway
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
  - #ref-uc(<Certificato-non-valido>)
  - #ref-uc(<Identificativo-gateway-gia-utilizzato>)


==== #uc([Certificato non valido], "Certificato-non-valido")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway è registrato nel sistema ma non ancora autenticato
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore e non autentica il Gateway
- *Scenario principale*:
  - Il Super Admin fornisce un certificato non valido per l'autenticazione del Gateway selezionato
  - Il Super Admin visualizza un messaggio di errore


==== #uc([Identificativo Gateway già utilizzato], "Identificativo-gateway-gia-utilizzato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway è registrato nel sistema ma non ancora autenticato
  - L'identificativo fornito è già associato ad un altro Gateway
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore e non autentica il Gateway
  - Il sistema interrompe l'autenticazione del Gateway
- *Scenario principale*:
  - Il Super Admin fornisce un identificativo già utilizzato per l'autenticazione del Gateway selezionato
  - Il Super Admin visualizza un messaggio di errore


// COMMISSIONING ----------------------------------------------------------------------
==== #uc([Associazione Gateway -- Tenant], "Associazione-gateway-tenant")
#figure(
  image("../../assets/diagrammi/UC81.svg", width: 100%),
  caption: [UC81 - UC32, UC81.1, UC82, UC83, UC83],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel sistema
  - Il Gateway non deve essere già associato ad un altro tenant
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema associa il Gateway al tenant selezionato
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da associare
  - Il Super Admin seleziona il tenant a cui associare il Gateway
  - Il Super Admin esegue la configurazione del Gateway per il tenant selezionato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-super-admin>)
  - #ref-uc(<Selezione-tenant-super-admin>)
// - #ref-uc(<Configurazione-gateway>)

===== #sub-uc([Selezione Gateway], "Selezione-gateway-super-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel sistema
  - Il Gateway non deve essere già associato ad un altro tenant
- *Post-condizioni*:
  - Il sistema riceve la selezione del Gateway da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da associare

==== #uc([Selezione tenant], "Selezione-tenant-super-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema riceve la selezione del tenant da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il Gateway

// ==== #uc([Configurazione Gateway], "Configurazione-gateway")
// - *Attore principale*: Super Admin
// - *Attore secondario*: Gateway
// - *Pre-condizioni*:
//   - Il Super Admin è autenticato
//   - Il Gateway deve essere registrato e autenticato nel sistema
// - *Post-condizioni*:
//   - La configurazione del Gateway viene applicata correttamente
// - *Scenario principale*:
//   - Il Super Admin inserisce la nuova configurazione per il Gateway selezionato
//   - Il sistema invia le informazioni di configurazione al Gateway
// - *Scenari alternativi*:
//   - Il Gateway non è raggiungibile perciò la configurazione non può essere completata
//   - La configurazione fornita non è valida per il Gateway selezionato
// - *Estensioni*:
//   - #ref-uc(<Gateway-non-raggiungibile>)
//   - #ref-uc(<Configurazione-gateway-non-valida>)

/*
==== #uc([Configurazione Gateway non valida], "Configurazione-gateway-non-valida")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra un messaggio di errore e non applica la configurazione al Gateway
- *Scenario principale*:
  - Il Super Admin inserisce una configurazione non valida per il Gateway selezionato
*/
// COMANDI GATEWAY SUPER ADMIN ---------------------------------------------------------------------------
==== #uc([Decommissioning Gateway], "Decommissioning-gateway")
#figure(
  image("../../assets/diagrammi/UC83.svg", width: 100%),
  caption: [UC83 - UC32, UC91],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant
  - Il Gateway viene resettato alle impostazioni di fabbrica
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway su cui eseguire il decommissioning
  - Il sistema invia il comando di disassociazione al Gateway
  - Il sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il decommissioning non può essere completato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
// - #ref-uc(<Disassociazione-gateway-dal-tenant>)
// - #ref-uc(<Reset-gateway>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

// ===== #sub-uc([Disassociazione Gateway dal tenant], "Disassociazione-gateway-dal-tenant")
// - *Attore principale*: Super Admin
// - *Attore secondario*: Gateway
// - *Pre-condizioni*:
//   - Il Super Admin è autenticato
//   - Il Gateway deve essere registrato e autenticato nel sistema
//   - Il Gateway deve essere associato ad un tenant
// - *Post-condizioni*:
//   - Il Gateway viene disassociato dal tenant a livello di sistema
// - *Scenario principale*:
//   - Il Super Admin seleziona il Gateway da disassociare
//   - Il sistema invia il comando di disassociazione al Gateway


==== #uc([Reset Gateway], "Reset-gateway")
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il Gateway viene resettato alle impostazioni di fabbrica
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da resettare
  - Il sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il reset non può essere completato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Riavvio Gateway da Super Admin], "Riavvio-gateway-super-admin")
#figure(
  image("../../assets/diagrammi/UC85.svg", width: 100%),
  caption: [UC85 - UC32, UC91],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il Gateway viene riavviato correttamente
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da riavviare
  - Il sistema invia il comando di riavvio al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il riavvio non può essere completato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc([Sospensione Gateway], "Sospensione-gateway-super-admin")
#figure(
  image("../../assets/diagrammi/UC86.svg", width: 100%),
  caption: [UC86 - UC32, UC91],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway non è già sospeso
- *Post-condizioni*:
  - Il sistema invia il comando di sospensione al Gateway e sospende la ricezione dei suoi dati
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona un Gateway attivo associato al proprio tenant
  - Il Super Admin invia al Gateway il comando di sospensione, che ne interrompe l'invio dei dati al Cloud
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la sospensione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Riattivazione Gateway], "Riattivazione-gateway-super-admin")
#figure(
  image("../../assets/diagrammi/UC87.svg", width: 100%),
  caption: [UC87 - UC32, UC91],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
  - Il Gateway è sospeso
- *Post-condizioni*:
  - Il sistema riattiva il Gateway e riprende la ricezione dei suoi dati
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona un Gateway sospeso associato al proprio tenant
  - Il Super Admin invia al Gateway il comando di riattivazione, facendone riprendere l'invio dei dati al Cloud
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la riattivazione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc(
  [Modifica target di frequenza d'invio dati per tipo di sensore di Gateway],
  "Modifica-freq-invio-dati-gateway-super-admin",
)
#figure(
  image("../../assets/diagrammi/UC88.svg", width: 100%),
  caption: [UC88 - UC32, UC91],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema invia al Gateway il comando di modifica target di frequenza d'invio dati per il tipo di sensore specificato
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da modificare
  - Il Super Admin seleziona quanti dati per unità di tempo il Gateway deve inviare al Cloud
  - Il sistema invia il comando di modifica frequenza d'invio dati per il tipo di sensore specificato al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile, perciò la modifica non può avvenire
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Sospensione sensore], "Sospensione-sensore-super-admin")
#figure(
  image("../../assets/diagrammi/UC89.svg", width: 100%),
  caption: [UC89 - UC32, UC92],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel sistema
  - Il sensore è associato a un Gateway autenticato e registrato nel sistema
  - Il sensore non è già sospeso
- *Post-condizioni*:
  - Il sistema invia un comando al Gateway per ignorare i dati provenienti dal sensore specificato
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il sensore che vuole sospendere
- *Scenari alternativi*:
  - Il Gateway associato al sensore non è raggiungibile
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc([Riattivazione sensore], "Riattivazione-sensore-super-admin")
#figure(
  image("../../assets/diagrammi/UC90.svg", width: 100%),
  caption: [UC90 - UC32, UC92],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel sistema
  - Il sensore è associato a un Gateway autenticato e registrato nel sistema
  - Il sensore è sospeso
- *Post-condizioni*:
  - Il sistema invia un comando al Gateway per riprendere la raccolta dei dati provenienti dal sensore specificato
  - Il sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il sensore che vuole riattivare
- *Scenari alternativi*:
  - Il Gateway associato al sensore non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore-invio-comando-super-admin>)


==== #uc([Selezione Gateway per invio comando da Super Admin], "Selezione-gateway-per-invio-comando-super-admin")
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel sistema
  - Il Gateway è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema ha verificato che il Gateway selezionato esiste ed è registrato e autenticato
- *Scenario principale*:
  - Il Super Admin visualizza la lista di Gateway associati al proprio tenant
  - Il Super Admin seleziona il Gateway specifico a cui inviare il comando

==== #uc([Selezione sensore per invio comando da Super Admin], "Selezione-sensore-invio-comando-super-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'Utente è autenticato nel sistema
  - Il sensore selezionato esiste ed è associato a un Gateway esistente nel sistema
- *Post-condizioni*:
  - Il sistema riceve l'identificativo del sensore selezionato
- *Scenario principale*:
  - Il Super Admin seleziona un sensore associato al proprio tenant


// VISUALIZZAZIONE ---------------------------------------------------------------
==== #uc([Visualizzazione lista tenant], "Visualizzazione-lista-tenant")
#figure(
  image("../../assets/diagrammi/UC93.svg", width: 100%),
  caption: [UC93 - UC94, UC94.1],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la lista di tutti i tenant registrati nel sistema
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-tenant-lista>)

==== #uc([Visualizzazione singolo tenant in lista], "Visualizzazione-singolo-tenant-lista")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutti i tenant registrati nel sistema
- *Post-condizioni*:
  - Il sistema mostra per ogni tenant nella lista le seguenti informazioni:
    - Identificativo del tenant
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni tenant nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-tenant>)

===== #sub-uc([Visualizzazione identificativo del tenant], "Visualizzazione-identificativo-tenant")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel sistema
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del tenant in lista
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo del tenant in lista

==== #uc([Impersonificazione tenant], "Impersonificazione-tenant")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel sistema
  - Il tenant ha la clausola di impersonificazione accettata
- *Post-condizioni*:
  - Il sistema permette al Super Admin di agire come un Tenant Admin all'interno del tenant selezionato
- *Scenario principale*:
  - Il Super Admin seleziona il tenant da impersonificare
  - Il Super Admin agisce come un Tenant Admin all'interno del tenant selezionato

==== #uc([Visualizzazione tenant], "Visualizzazione-tenant")
#figure(
  image("../../assets/diagrammi/UC96.svg", width: 100%),
  caption: [UC96 - UC96.1],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel sistema
- *Post-condizioni*:
  - Il sistema mostra i dettagli del tenant selezionato
- *Scenario principale*:
  - Il Super Admin visualizza i dettagli del tenant selezionato
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-del-tenant>)

===== #sub-uc([Visualizzazione identificativo del tenant], "Visualizzazione-identificativo-del-tenant")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel sistema
- *Post-condizioni*:
  - Il sistema mostra l'identificativo del tenant selezionato
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo del tenant selezionato


// GESTIONE RICHIESTE COMMISSIONING/DECOMMISSIONING ----------------------------------------------------------------------------
==== #uc(
  [Visualizzazione lista richieste in corso di commissioning Gateway],
  "Visualizzazione-lista-richieste-in-corso-commissioning-gateway",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la lista di tutte le richieste di commissioning di Gateway in corso da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di commissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-commissioning-in-lista>)

==== #uc(
  [Visualizzazione singola richiesta di commissioning in lista],
  "Visualizzazione-singola-richiesta-commissioning-in-lista",
)
#figure(
  image("../../assets/diagrammi/UC98.svg", width: 100%),
  caption: [UC98 - UC98.1, UC98.2, UC98.3],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutte le richieste di commissioning di Gateway in corso da parte di tutti i tenant
- *Post-condizioni*:
  - Il sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di Gateway richiesti
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-commissioning>)

===== #sub-uc(
  [Visualizzazione data e ora della richiesta di commissioning],
  "Visualizzazione-data-ora-richiesta-commissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra la data e l'ora della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza la data e l'ora della richiesta di commissioning in lista

===== #sub-uc(
  [Visualizzazione tenant della richiesta di commissioning],
  "Visualizzazione-tenant-richiesta-commissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra il tenant della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il tenant della richiesta di commissioning in lista

===== #sub-uc(
  [Visualizzazione numero Gateway della richiesta di commissioning],
  "Visualizzazione-numero-gateway-richiesta-commissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra il numero di Gateway della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il numero di Gateway della richiesta di commissioning in lista

==== #uc(
  [Visualizzazione lista richieste in corso di decommissioning Gateway],
  "Visualizzazione-lista-richieste-in-corso-decommissioning-gateway",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la lista di tutte le richieste di decommissioning di Gateway in corso da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di decommissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-decommissioning-in-lista>)

==== #uc(
  [Visualizzazione singola richiesta di decommissioning in lista],
  "Visualizzazione-singola-richiesta-decommissioning-in-lista",
)
#figure(
  image("../../assets/diagrammi/UC100.svg", width: 100%),
  caption: [UC100 - UC100.1, UC100.2, UC100.3, UC100.4],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato la lista di tutte le richieste di decommissioning di Gateway in corso da parte di tutti i tenant
- *Post-condizioni*:
  - Il sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di Gateway richiesti
    - Stato della richiesta
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-stato-richiesta-decommissioning>)

===== #sub-uc(
  [Visualizzazione data e ora della richiesta di decommissioning],
  "Visualizzazione-data-ora-richiesta-decommissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra la data e l'ora della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza la data e l'ora della richiesta di decommissioning in lista

===== #sub-uc(
  [Visualizzazione tenant della richiesta di decommissioning],
  "Visualizzazione-tenant-richiesta-decommissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra il tenant della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il tenant della richiesta di decommissioning in lista

===== #sub-uc(
  [Visualizzazione numero Gateway della richiesta di decommissioning],
  "Visualizzazione-numero-gateway-richiesta-decommissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra il numero di Gateway della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il numero di Gateway della richiesta di decommissioning in lista

===== #sub-uc(
  [Visualizzazione stato della richiesta di decommissioning],
  "Visualizzazione-stato-richiesta-decommissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra lo stato della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza lo stato della richiesta di decommissioning in lista

==== #uc(
  [Visualizzazione storico richieste di commissioning Gateway],
  "Visualizzazione-storico-richieste-commissioning-gateway",
)
#figure(
  image("../../assets/diagrammi/UC101.svg", width: 100%),
  caption: [UC101 - UC98.1, UC98.2, UC98.3, UC102, UC102.1],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra lo storico di tutte le richieste di commissioning di Gateway da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di commissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-storico-commissioning-gateway>)

==== #uc(
  [Visualizzazione singola richiesta lista storico commissioning],
  "Visualizzazione-singola-richiesta-storico-commissioning-gateway",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato lo storico di tutte le richieste di commissioning di Gateway da parte di tutti i tenant
- *Post-condizioni*:
  - Il sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di Gateway richiesti
    - Stato della richiesta ("accettata", "rifiutata" o "in corso")
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-stato-richiesta-storico-commissioning>)

===== #sub-uc(
  [Visualizzazione stato richiesta dello storico commissioning],
  "Visualizzazione-stato-richiesta-storico-commissioning",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra lo stato della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza lo stato della richiesta di commissioning in lista

==== #uc(
  [Visualizzazione storico richieste di decommissioning Gateway],
  "Visualizzazione-storico-richieste-decommissioning-gateway",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra lo storico di tutte le richieste di decommissioning di Gateway da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di decommissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-storico-decommissioning-gateway>)

==== #uc(
  [Visualizzazione singola richiesta lista storico decommissioning],
  "Visualizzazione-singola-richiesta-storico-decommissioning-gateway",
)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sistema ha recuperato lo storico di tutte le richieste di decommissioning di Gateway da parte di tutti i tenant
- *Post-condizioni*:
  - Il sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di Gateway richiesti
    - Stato della richiesta ("accettata", "rifiutata" o "in corso")
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-stato-richiesta-decommissioning>)

==== #uc([Visualizzazione richiesta di commissioning Gateway], "Visualizzazione-richiesta-commissioning-gateway")
#figure(
  image("../../assets/diagrammi/UC105.svg", width: 100%),
  caption: [UC105 - UC105.1, UC105.2, UC105.3],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la data e l'ora della richiesta
  - Il sistema mostra il tenant richiedente
  - Il sistema mostra il numero di Gateway richiesti
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di commissioning Gateway da parte di un tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta>)
  - #ref-uc(<Visualizzazione-tenant-richiedente-richiesta>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesti>)

===== #sub-uc([Visualizzazione data e ora richiesta], "Visualizzazione-data-ora-richiesta")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra la data e l'ora della richiesta
- *Scenario principale*:
  - Il Super Admin visualizza la data e l'ora della richiesta

===== #sub-uc([Visualizzazione tenant richiedente della richiesta], "Visualizzazione-tenant-richiedente-richiesta")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra il tenant richiedente della richiesta
- *Scenario principale*:
  - Il Super Admin visualizza il tenant richiedente della richiesta

===== #sub-uc([Visualizzazione numero di Gateway richiesti], "Visualizzazione-numero-gateway-richiesti")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra il numero di Gateway richiesti nella richiesta
- *Scenario principale*:
  - Il Super Admin visualizza il numero di Gateway richiesti nella richiesta

==== #uc([Visualizzazione richiesta di decommissioning Gateway], "Visualizzazione-richiesta-decommissioning-gateway")
#figure(
  image("../../assets/diagrammi/UC106.svg", width: 100%),
  caption: [UC106 - UC105.1, UC105.2, UC106.1],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema mostra la data e l'ora della richiesta
  - Il sistema mostra il tenant richiedente
  - Il sistema mostra per quali Gateway è richiesto il decommissioning
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di decommissioning Gateway da parte di un tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta>)
  - #ref-uc(<Visualizzazione-tenant-richiedente-richiesta>)
  - #ref-uc(<Visualizzazione-gateway-da-decommissioning>)

===== #sub-uc([Visualizzazione Gateway su cui effettuare decommissioning], "Visualizzazione-gateway-da-decommissioning")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema mostra i Gateway su cui effettuare il decommissioning
- *Scenario principale*:
  - Il Super Admin visualizza i Gateway su cui effettuare il decommissioning

==== #uc([Accettazione richiesta di commissioning/decommissioning Gateway], "Accettazione-richiesta-fornitura-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta visualizzata non è stata precedentemente accettata o rifiutata da un Super Admin o eliminata da un Tenant Admin
- *Post-condizioni*:
  - La richiesta di commissioning/decommissioning Gateway viene accettata
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di commissioning/decommissioning Gateway da parte di un tenant
  - Il Super Admin accetta la richiesta di commissioning/decommissioning Gateway


==== #uc([Rifiuto richiesta di commissioning/decommissioning Gateway], "Rifiuto-richiesta-fornitura-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta visualizzata non è stata precedentemente accettata o rifiutata da un Super Admin o eliminata da un Tenant Admin
- *Post-condizioni*:
  - Il sistema riceve una motivazione per il rifiuto della richiesta
  - La richiesta di commissioning/decommissioning Gateway viene rifiutata
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di commissioning/decommissioning Gateway da parte di un tenant
  - Il Super Admin fornisce una motivazione per il rifiuto della richiesta di commissioning/decommissioning Gateway
  - Il Super Admin rifiuta la richiesta di commissioning/decommissioning Gateway

// GESTIONE TENANT ADMIN ------------------------------------------------------------------------------
==== #uc([Creazione utente Tenant Admin], "Creazione-utente-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC109.svg", width: 100%),
  caption: [UC109 - UC33, UC109.1, UC109.2],
)

- *Attore principale*: Super Admin
- *Attore secondario*: Email Client
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il nuovo Tenant Admin è registrato nel sistema e associato al tenant selezionato
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il nuovo Tenant Admin
  - Il Super Admin inserisce l'email del nuovo Tenant Admin
  - Il Tenant Admin riceve una email con le credenziali di accesso
- *Scenari alternativi*:
  - L'email inserita è già in uso da un altro utente nel sistema
- *Estensioni*:
  - #ref-uc(<Email-gia-utilizzata>)
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant>)
  - #ref-uc(<Inserimento-email-nuovo-tenant-admin>)
// - #ref-uc(<Invio-email-impostazione-password-nuovo-tenant-admin>)

===== #sub-uc([Selezione tenant], "Selezione-tenant")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema riceve la selezione del tenant da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il nuovo Tenant Admin

===== #sub-uc([Inserimento email nuovo Tenant Admin], "Inserimento-email-nuovo-tenant-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - Il sistema riceve l'email del nuovo Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin inserisce l'email del nuovo Tenant Admin

// ===== #sub-uc([Invio email impostazione password nuovo Tenant Admin], "Invio-email-impostazione-password-nuovo-tenant-admin")
// - *Attore principale*: Super Admin
// - *Attore secondario*: Email Client
// - *Pre-condizioni*:
//   - Il Super Admin è autenticato
//   - Il tenant deve esistere nel sistema
//   - L'email del nuovo Tenant Admin è valida
// - *Post-condizioni*:
//   - Il sistema invia una email al nuovo Tenant Admin con le credenziali di accesso
// - *Scenario principale*:
//   - L'Email Client riceve una email con il link per l'impostazione della nuova password

==== #uc([Sospensione account Tenant Admin], "Sospensione-account-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC110.svg", width: 100%),
  caption: [UC110 - UC110.1, UC110.2],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il sistema sospende l'account del Tenant Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da sospendere
  - Il Super Admin conferma la sospensione dell'account
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant-admin-da-sospendere>)
  - #ref-uc(<Conferma-sospensione-account-tenant-admin>)

===== #sub-uc([Selezione Tenant Admin da sospendere], "Selezione-tenant-admin-da-sospendere")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da sospendere

===== #sub-uc([Conferma sospensione account Tenant Admin], "Conferma-sospensione-account-tenant-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il sistema riceve la conferma della sospensione del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma la sospensione dell'account del Tenant Admin selezionato

==== #uc([Riattivazione account Tenant Admin], "Riattivazione-account-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC111.svg", width: 100%),
  caption: [UC111 - UC111.1, UC111.2],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il sistema riattiva l'account del Tenant Admin, annullando la sospensione
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da riattivare
  - Il Super Admin conferma la riattivazione dell'account
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant-admin-da-riattivare>)
  - #ref-uc(<Conferma-riattivazione-account-tenant-admin>)

===== #sub-uc([Selezione Tenant Admin da riattivare], "Selezione-tenant-admin-da-riattivare")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da riattivare

===== #sub-uc([Conferma riattivazione account Tenant Admin], "Conferma-riattivazione-account-tenant-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il sistema riceve la conferma della riattivazione del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma la riattivazione dell'account del Tenant Admin selezionato

==== #uc([Eliminazione account Tenant Admin], "Eliminazione-account-tenant-admin")
#figure(
  image("../../assets/diagrammi/UC112.svg", width: 100%),
  caption: [UC112 - UC112.1, UC112.2],
)

- *Attore principale*: Super
- *Pre-condizioni*:Admin
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il sistema elimina l'account del Tenant Admin
- *Scenario principale*:
  - Il Super admin seleziona il Tenant Admin da eliminare
  - Il Super Admin conferma l'eliminazione dell'account
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant-admin-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-account-tenant-admin>)

===== #sub-uc([Selezione Tenant Admin da eliminare], "Selezione-tenant-admin-da-eliminare")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da eliminare

===== #sub-uc([Conferma eliminazione account Tenant Admin], "Conferma-eliminazione-account-tenant-admin")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il sistema riceve la conferma di eliminazione dell'account del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione dell'account del Tenant Admin selezionato

// UC relativi alle azioni del super-admin sul simulatore

==== #uc([Creazione Gateway simulato], "Creazione-gateway-simulato")
#figure(
  image("../../assets/diagrammi/UC113.svg", width: 100%),
  caption: [UC113 - UC113.1, UC113.2, UC113.3],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema assegna un ID univoco al Gateway simulato
  - Il sistema crea correttamente un nuovo Gateway simulato con i parametri specificati
  - Il sistema genera dei certificati di autenticazione per il Gateway simulato
- *Scenario principale*:
  - Il Super Admin imposta il nome del Gateway simulato
  - Il Super Admin inserisce il timeout di inattività del Gateway simulato
  - Il Super Admin imposta la dimensione in byte del buffer del Gateway simulato
  - Il sistema genera un ID univoco al Gateway simulato
- *Inclusioni*:
  - #ref-uc(<Inserimento-nome-gateway-simulato>)
  - #ref-uc(<Inserimento-timeout-inattivita-gateway-simulato>)
  - #ref-uc(<Inserimento-dimensione-buffer-gateway-simulato>)

===== #sub-uc([Inserimento nome Gateway simulato], "Inserimento-nome-gateway-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve il nome del nuovo Gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce il nome del nuovo Gateway simulato

===== #sub-uc([Inserimento timeout inattività Gateway simulato], "Inserimento-timeout-inattivita-gateway-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il timeout deve essere un valore positivo in millisecondi
- *Post-condizioni*:
  - Il sistema riceve il valore del timeout di inattività del nuovo Gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce il valore del timeout in millisecondi che rappresenta il periodo di tempo di inattività del Gateway simulato prima di considerarlo non più attivo ed inviare l'alert

===== #sub-uc([Inserimento dimensione buffer Gateway simulato], "Inserimento-dimensione-buffer-gateway-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve la dimensione in byte del buffer del nuovo Gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce la dimensione in byte del buffer del nuovo Gateway simulato

==== #uc([Creazione sensore simulato], "Creazione-sensore-simulato")
#figure(
  image("../../assets/diagrammi/UC114.svg", width: 100%),
  caption: [UC114 - UC114.1, UC114.2, UC114.3],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Esiste almeno un Gateway simulato
- *Post-condizioni*:
  - Il sistema crea correttamente il nuovo sensore simulato e lo associa al Gateway
- *Scenario principale*:
  - Il Super Admin imposta i servizi GATT del sensore simulato
  - Il Super Admin inserisce il timeout per l'invio dell'alert in caso di inattività del sensore
  - Il Super Admin seleziona il Gateway simulato a cui associare il sensore simulato
- *Inclusioni*:
  - #ref-uc(<Selezione-servizi-sensore-simulato>)
  - #ref-uc(<Inserimento-timeout-alert-sensore-simulato>)
  - #ref-uc(<Inserimento-associazione-gateway-simulato>)

===== #sub-uc([Selezione servizi sensore simulato], "Selezione-servizi-sensore-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve i servizi GATT offerti dal nuovo sensore simulato
- *Scenario principale*:
  - Il Super Admin può scegliere tra uno o più dei seguenti servizi:
    - Heart Rate Service (HRS)
    - Pulse Oximeter Service (POS)
    - Servizio custom per la misurazione dell'ECG
    - Health Thermometer Service (HTS)
    - Environmental Sensing Service (ESS)
  - Il Super Admin sceglie i servizi GATT simulati dal nuovo sensore simulato

===== #sub-uc([Inserimento timeout alert sensore simulato], "Inserimento-timeout-alert-sensore-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il timeout deve essere un valore positivo in millisecondi
- *Post-condizioni*:
  - Il sistema riceve il valore del timeout per l'invio dell'alert in caso di inattività del sensore simulato
- *Scenario principale*:
  - Il Super Admin inserisce il valore del timeout in millisecondi che rappresenta il periodo di tempo di inattività del sensore simulato prima di inviare un alert

===== #sub-uc([Inserimento associazione Gateway simulato], "Inserimento-associazione-gateway-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il sistema riceve l'identificativo del Gateway simulato a cui associare il sensore simulato
- *Scenario principale*:
  - Il Super Admin inserisce l'identificativo del Gateway simulato

==== #uc([Eliminazione Gateway simulato], "Eliminazione-gateway-simulato")
#figure(
  image("../../assets/diagrammi/UC115.svg", width: 100%),
  caption: [UC115 - UC115.1, UC115.2],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway simulato esiste nel sistema
- *Post-condizioni*:
  - Il sistema elimina correttamente il Gateway simulato
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway simulato da eliminare
  - Il Super Admin conferma l'eliminazione del Gateway simulato
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-simulato-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-gateway-simulato>)

===== #sub-uc([Seleziona Gateway simulato da eliminare], "Seleziona-gateway-simulato-da-eliminare")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway simulato esiste nel sistema
- *Post-condizioni*:
  - Il sistema riceve la selezione del Gateway simulato da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway simulato da eliminare

===== #sub-uc([Conferma eliminazione Gateway simulato], "Conferma-eliminazione-gateway-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway simulato esiste nel sistema
- *Post-condizioni*:
  - Il sistema riceve la conferma dell'eliminazione del Gateway simulato
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione del Gateway simulato selezionato

==== #uc([Eliminazione sensore simulato], "Eliminazione-sensore-simulato")
#figure(
  image("../../assets/diagrammi/UC116.svg", width: 100%),
  caption: [UC116 - UC116.1, UC116.2],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore simulato esiste nel sistema
- *Post-condizioni*:
  - Il sistema elimina correttamente il sensore simulato
- *Scenario principale*:
  - Il Super Admin seleziona il sensore simulato da eliminare
  - Il Super Admin conferma l'eliminazione del sensore simulato
- *Inclusioni*:
  - #ref-uc(<Seleziona-sensore-simulato-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-sensore-simulato>)

===== #sub-uc([Seleziona sensore simulato da eliminare], "Seleziona-sensore-simulato-da-eliminare")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore simulato esiste nel sistema
- *Post-condizioni*:
  - Il sistema riceve la selezione del sensore simulato da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il sensore simulato da eliminare

===== #sub-uc([Conferma eliminazione sensore simulato], "Conferma-eliminazione-sensore-simulato")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore simulato esiste nel sistema
- *Post-condizioni*:
  - Il sistema riceve la conferma dell'eliminazione del sensore simulato
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione del sensore simulato selezionato

==== #uc([Monitoraggio metriche di sistema], "Monitoraggio-metriche-di-sistema")
#figure(
  image("../../assets/diagrammi/UC117.svg", width: 100%),
  caption: [UC117 - UC117.1, UC117.2, UC117.3, UC117.4, UC117.5, UC117.6, UC117.7],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Le metriche di sistema sono raccolte e disponibili per la visualizzazione
- *Post-condizioni*:
  - Il sistema mostra la dashboard di visualizzazione delle metriche
- *Scenario principale*:
  - Il Super Admin visualizza la dashboard delle metriche di sistema
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-gateway-offline-online>)
  - #ref-uc(<Visualizzazione-throughput-dati>)
  - #ref-uc(<Visualizzazione-utilizzo-risorse-nodi-cloud>)
  - #ref-uc(<Visualizzazione-frequenza-disconnessioni-gateway>)
  - #ref-uc(<Visualizzazione-dimensioni-payload-pacchetti>)
  - #ref-uc(<Visualizzazione-data-staleness>)
  - #ref-uc(<Visualizzazione-valori-out-of-range>)

===== #sub-uc([Visualizzazione Gateway offline/online], "Visualizzazione-gateway-offline-online")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica dei Gateway offline/online è disponibile
- *Post-condizioni*:
  - Il sistema mostra quanti Gateway sono attualmente offline e online
  - Il sistema rappresenta la metrica con un grafico a torta
- *Scenario principale*:
  - Il Super Admin visualizza il numero di Gateway offline e online
  - Il Super Admin visualizza il grafico a torta rappresentante la metrica

===== #sub-uc([Visualizzazione throughput dati], "Visualizzazione-throughput-dati")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica del throughput dati è disponibile
- *Post-condizioni*:
  - Il sistema mostra il numero di dati inviati al secondo al sistema Cloud dai Gateway
  - Il sistema rappresenta la metrica con un grafico Time Series
- *Scenario principale*:
  - Il Super Admin visualizza il throughput dati
  - Il Super Admin visualizza il grafico Time Series rappresentante la metrica

===== #sub-uc([Visualizzazione utilizzo risorse nodi cloud], "Visualizzazione-utilizzo-risorse-nodi-cloud")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica dell'utilizzo delle risorse dei nodi cloud è disponibile
- *Post-condizioni*:
  - Il sistema mostra l'utilizzo di CPU e RAM delle diverse istanze Cloud
  - Il sistema rappresenta la metrica con uno Stat Panel
  - Il sistema mostra per ogni istanza Cloud l'andamento temporale dell'utilizzo di CPU e RAM
- *Scenario principale*:
  - Il Super Admin visualizza l'utilizzo di CPU e RAM delle diverse istanze Cloud
  - Il Super Admin visualizza lo Stat Panel rappresentante le metriche
  - Il Super Admin visualizza il grafico Time Series rappresentante l'andamento temporale delle metriche

===== #sub-uc([Visualizzazione frequenza disconnessioni Gateway], "Visualizzazione-frequenza-disconnessioni-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica della frequenza di disconnessione dei Gateway è disponibile
- *Post-condizioni*:
  - Il sistema mostra il numero di disconnessioni per ogni Gateway in un intervallo di tempo specificato
  - Il sistema rappresenta la metrica con un grafico a barre
- *Scenario principale*:
  - Il Super Admin visualizza la frequenza di disconnessione dei Gateway
  - Il Super Admin visualizza il grafico a barre rappresentante le disconnessioni rilevate per ogni Gateway

===== #sub-uc([Visualizzazione dimensioni payload pacchetti], "Visualizzazione-dimensioni-payload-pacchetti")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica delle dimensioni dei payload dei pacchetti è disponibile
- *Post-condizioni*:
  - Il sistema mostra le dimensioni medie, minime e massime dei payload dei pacchetti inviati dai Gateway
  - Il sistema rappresenta la metrica con un grafico a 3 barre per Gateway, una per ogni tipo di dimensione
- *Scenario principale*:
  - Il Super Admin visualizza le dimensioni dei payload dei pacchetti inviati dai Gateway
  - Il Super Admin visualizza il grafico a barre rappresentante le dimensioni medie, minime e massime dei payload

===== #sub-uc([Visualizzazione data staleness], "Visualizzazione-data-staleness")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica della data staleness è disponibile
- *Post-condizioni*:
  - Il sistema mostra il tempo dall'ultimo messaggio inviato per ogni sensore
  - Il sistema rappresenta la metrica con un'alert list, evidenziando i sensori con data staleness superiore ad una soglia predefinita
- *Scenario principale*:
  - Il Super Admin visualizza la data staleness dei sensori
  - Il Super Admin visualizza l'alert list rappresentante la data staleness di ogni sensore

===== #sub-uc([Visualizzazione valori out-of-range], "Visualizzazione-valori-out-of-range")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica dei valori out-of-range è disponibile
- *Post-condizioni*:
  - Il sistema mostra il numero di valori out-of-range rilevati per ogni sensore
  - Il sistema rappresenta la metrica con un grafico a barre
- *Scenario principale*:
  - Il Super Admin visualizza il numero di valori out-of-range rilevati per ogni sensore
  - Il Super Admin visualizza il grafico a barre rappresentante il numero di valori out-of-range rilevati per ogni sensore

==== #uc([Visualizzazione storico dei tenant possessori di sensore], "Visualizzazione-storico-possessori-sensore")
#figure(
  image("../../assets/diagrammi/UC118.svg", width: 100%),
  caption: [UC118 - UC119, UC119.1, UC119.2],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore specificato esiste
- *Post-condizioni*:
  - Il sistema mostra la lista di tenant che hanno posseduto il sensore specificato
- *Scenario principale*:
  - Il Super Admin seleziona il sensore di cui visualizzare la lista di possessori
  - Il Super Admin visualizza la lista di tenant possessori del sensore
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-tenant-possessore-sensore>)

==== #uc([Visualizzazione singolo tenant possessore del sensore], "Visualizzazione-singolo-tenant-possessore-sensore")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore specificato esiste
- *Post-condizioni*:
  - Il sistema mostra il tenant attualmente associato al sensore specificato e il periodo di associazione
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni elemento della lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-tenant-possessore-sensore>)
  - #ref-uc(<Visualizzazione-periodo-associazione-sensore>)

===== #sub-uc([Visualizzazione tenant possessore del sensore], "Visualizzazione-tenant-possessore-sensore")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore specificato esiste
- *Post-condizioni*:
  - Il sistema mostra il tenant attualmente associato al sensore specificato
- *Scenario principale*:
  - Il Super Admin visualizza il tenant attualmente associato al sensore specificato

===== #sub-uc([Visualizzazione periodo di associazione sensore], "Visualizzazione-periodo-associazione-sensore")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore specificato esiste
- *Post-condizioni*:
  - Il sistema mostra il periodo di associazione del sensore specificato al tenant
- *Scenario principale*:
  - Il Super Admin visualizza il periodo di associazione del sensore specificato al tenant

==== #uc([Visualizzazione storico dei tenant possessori di Gateway], "Visualizzazione-storico-possessori-gateway")
#figure(
  image("../../assets/diagrammi/UC120.svg", width: 100%),
  caption: [UC120 - UC121, UC121.1, UC121.2],
)

- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra la lista di tenant a cui è stato associato il Gateway specificato
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway di cui visualizzare la lista di possessori
  - Il Super Admin visualizza la lista di tenant possessori del Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-tenant-possessore-gateway>)

==== #uc([Visualizzazione singolo tenant possessore del Gateway], "Visualizzazione-singolo-tenant-possessore-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il tenant attualmente associato al Gateway specificato e il periodo di associazione
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni elemento della lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-tenant-possessore-gateway>)
  - #ref-uc(<Visualizzazione-periodo-associazione-gateway>)

===== #sub-uc([Visualizzazione tenant possessore del Gateway], "Visualizzazione-tenant-possessore-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il tenant attualmente associato al Gateway specificato
- *Scenario principale*:
  - Il Super Admin visualizza il tenant attualmente associato al Gateway specificato

===== #sub-uc([Visualizzazione periodo di associazione Gateway], "Visualizzazione-periodo-associazione-gateway")
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel sistema
- *Post-condizioni*:
  - Il sistema mostra il periodo di associazione del Gateway specificato al tenant
- *Scenario principale*:
  - Il Super Admin visualizza il periodo di associazione del Gateway specificato al tenant

=== Attore principale - Gateway
==== #uc([Conferma esecuzione commissioning], "Conferma-comando-commissioning")
#figure(
  image("../../assets/diagrammi/UC122.svg", width: 100%),
  caption: [UC122 - UC123, UC137, UC138],
)

- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di commissioning dal sistema
  - Il Gateway è autenticato e associato ad un tenant
- *Post-condizioni*:
  - Il sistema riceve la conferma di esecuzione del commissioning dal Gateway
  - Il sistema comincia a ricevere i dati dei sensori associati al Gateway
- *Scenario principale*:
  - Il Gateway esegue il commissioning in base alle istruzioni ricevute
  - Il Gateway invia la conferma di esecuzione del commissioning al sistema
  - Il Gateway comincia l'invio dei dati dei sensori associati al sistema
- *Estensioni*:
  - #ref-uc(<Errore-commissioning>)
- *Inclusioni*:
  - #ref-uc(<Invio-dati-crittografati>)

==== #uc([Errore nel commissioning], "Errore-commissioning")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di commissioning dal sistema
  - Il Gateway durante l'esecuzione del commissioning ha riscontrato un errore
- *Post-condizioni*:
  - Il sistema riceve la segnalazione di errore dal Gateway
  - Il sistema notifica il Super Admin dell'errore riscontrato
  - Il sistema annulla il commissioning del Gateway
- *Scenario principale*:
  - Il Gateway riscontra un errore durante l'esecuzione del commissioning
  - Il Gateway invia la segnalazione di errore al sistema

==== #uc([Conferma esecuzione decommissioning], "Conferma-comando-decommissioning")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di decommissioning dal sistema
  - Il Gateway non è più associato ad alcun tenant
- *Post-condizioni*:
  - Il sistema riceve la conferma di esecuzione del decommissioning dal Gateway
  - Il sistema smette di ricevere i dati dei sensori associati al Gateway
  - Il sistema rimuove l'associazione del Gateway dal tenant
  - Il sistema rende possibile un nuovo commissioning del Gateway
- *Scenario principale*:
  - Il Gateway esegue il decommissioning in base alle istruzioni ricevute
  - Il Gateway invia la conferma di esecuzione del decommissioning al sistema

==== #uc([Errore nel decommissioning], "Errore-decommissioning")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di decommissioning dal sistema
  - Il Gateway durante l'esecuzione del decommissioning ha riscontrato un errore
- *Post-condizioni*:
  - Il sistema riceve la segnalazione di errore dal Gateway
  - Il sistema notifica il Super Admin dell'errore riscontrato
  - Il sistema annulla il decommissioning del Gateway
- *Scenario principale*:
  - Il Gateway riscontra un errore durante l'esecuzione del decommissioning
  - Il Gateway invia la segnalazione di errore al sistema

==== #uc([Conferma riavvio], "Conferma-comando-riavvio")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riavvio dal sistema
  - Il Gateway si è riavviato correttamente
- *Post-condizioni*:
  - Il sistema riceve la conferma di riavvio dal Gateway
  - Il sistema considera il Gateway nuovamente raggiungibile
- *Scenario principale*:
  - Il Gateway si spegne e si riaccende
  - Il Gateway invia la conferma di riavvio al sistema


==== #uc([Errore nel riavvio], "Errore-riavvio")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riavvio dal sistema
  - Il Gateway non ha inviato al Cloud la conferma di riavvio entro un _timeout_ specifico
- *Post-condizioni*:
  - Il sistema considera il Gateway come in stato d'errore, finché non riceve il comando di conferma di riavvio dal Gateway
  - Il sistema notifica il tenant admin del fatto che il Gateway è in stato d'errore
- *Scenario principale*:
  - Il Gateway riscontra un errore durante il riavvio
  - Il Gateway non riesce a comunicare con il sistema dopo il riavvio


==== #uc([Conferma reset], "Conferma-comando-reset")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di reset dal sistema
  - Il Gateway ha reimpostato la configurazione di fabbrica
  - Il Gateway ha mantenuto le informazioni di commissioning
- *Post-condizioni*:
  - Il sistema riceve la conferma di reset dal Gateway
- *Scenario principale*:
  - Il Gateway si reimposta alle impostazioni di fabbrica
  - Il Gateway invia la conferma di reset al sistema

/*
Non serve che il Gateway confermi l'autenticazione, è il sistema che notifica il Gateway
==== #uc([Conferma autenticazione], "Conferma-comando-autenticazione")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha ricevuto una notifica di autenticazione avvenuta dal sistema
- *Post-condizioni*:
  - Il sistema riceve la conferma ricezione dal Gateway
  - Il Gateway è autenticato nel sistema
  - Il sistema rende possibile il commissioning del Gateway
- *Scenario principale*:
  - Il Gateway riceve la conferma di autenticazione da parte del sistema
  - Il Gateway memorizza lo stato di autenticazione
  - Il Gateway invia la conferma di ricezione al sistema
*/

==== #uc([Conferma sospensione invio dati Gateway], "Conferma-comando-sospensione-invio-dati")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di sospensione invio dati dal sistema
  - Il Gateway ha sospeso l'invio dei dati dei sensori al sistema
- *Post-condizioni*:
  - Il sistema riceve la conferma di sospensione invio dati dal Gateway
  - Il sistema aggiorna lo stato del Gateway come "sospeso"
  - Il sistema non è più "in ascolto" per i dati dei sensori associati al Gateway
  - Il sistema non esegue più eventuali alert di mancata ricezione dei dati dal Gateway
- *Scenario principale*:
  - Il Gateway sospende l'invio dei dati dei sensori al sistema
  - Il Gateway invia la conferma di sospensione al sistema

==== #uc([Conferma riattivazione invio dati Gateway ], "Conferma-comando-riattivazione-invio-dati")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riattivazione invio dati dal sistema
  - Il Gateway ha ricominciato ad inviare i dati dei sensori al sistema
- *Post-condizioni*:
  - Il sistema riceve un messaggio di conferma da parte del Gateway
  - Il sistema ricomincia ad essere "in ascolto" per i dati dei sensori associati al Gateway
  - Il sistema riprende ad eseguire eventuali alert di mancata ricezione dei dati dal Gateway, in caso quest'ultimo interrompa la comunicazione con l'infrastruttura Cloud
- *Scenario principale*:
  - Il Gateway riceve un comando di riattivazione
  - Il Gateway esegue il comando ricevuto e si riattiva
  - Il Gateway invia un comando di conferma al Cloud

==== #uc([Conferma sospensione sensore], "Conferma-comando-sospensione-sensore")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di sospensione di un determinato sensore dal sistema
  - Il Gateway ha sospeso l'invio dei dati del sensore in questione al sistema
- *Post-condizioni*:
  - Il sistema riceve un messaggio di conferma da parte del Gateway
  - Il sistema non è più "in ascolto" per i dati del sensore sospeso
  - Il sistema non esegue più eventuali alert di mancata ricezione dei dati dal sensore
- *Scenario principale*:
  - Il Gateway riceve un comando di sospensione di un determinato sensore
  - Il Gateway esegue il comando ricevuto e sospende il sensore specificato, interrompendo l'invio dei dati ricevuti da esso al Cloud
  - Il Gateway invia un comando di conferma al Cloud

==== #uc([Conferma riattivazione sensore], "Conferma-comando-riattivazione-sensore")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riattivazione di un determinato sensore dal sistema
  - Il Gateway ha ricominciato ad inviare i dati del sensore in questione al sistema
- *Post-condizioni*:
  - Il sistema riceve un messaggio di conferma da parte del Gateway
  - Il sistema ricomincia a ricevere i dati del sensore riattivato
  - Il sistema riprende a eseguire eventuali alert di mancata ricezione dei dati dal sensore
- *Scenario principale*:
  - Il Gateway riceve un comando di riattivazione di un determinato sensore
  - Il Gateway esegue il comando ricevuto e riattiva il sensore, riprendendo l'invio dei dati ricevuti da esso al Cloud
  - Il Gateway invia un comando di conferma al Cloud

==== #uc(
  [Conferma modifica frequenza di invio dati per tipo di sensore],
  "Conferma-comando-modifica-frequenza-invio-dati",
)
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto dal sistema un comando di modifica della frequenza di invio dati per uno specifico tipo di sensore
  - Il Gateway ha modificato il valore del parametro di frequenza di invio dati per tale tipo di sensore
- *Post-condizioni*:
  - Il sistema riceve un messaggio di conferma da parte del Gateway
- *Scenario principale*:
  - Il Gateway riceve un comando di modifica del parametro di frequenza di invio dati
  - Il Gateway esegue il comando ricevuto e modifica il valore del parametro di frequenza di invio dati
  - Il Gateway invia un comando di conferma al Cloud

==== #uc([Invio comando di hello], "Invio-comando-hello")
#figure(
  image("../../assets/diagrammi/UC134.svg", width: 100%),
  caption: [UC134 - UC135, UC136],
)

- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso al Cloud
  - Il Gateway si è avviato e si è connesso per la prima volta al Cloud
  - Il Gateway possiede delle credenziali per l'autenticazione
  - Il Gateway possiede un identificativo univoco
- *Post-condizioni*:
  - Il sistema riceve un messaggio di hello dal Gateway
  - Il sistema autentica il Gateway, associandolo all'identificativo ricevuto
- *Scenario principale*:
  - Il Gateway invia un messaggio di "hello" verso il Cloud contenente il proprio identificativo
- *Scenari alternativi*:
  - Il sistema fallisce nell'autenticare il Gateway
  - Il sistema non riconosce l'identificativo del Gateway ricevuto
- *Estensioni*:
  - #ref-uc(<Autenticazione-gateway-fallita>)
  - #ref-uc(<Identificativo-gateway-non-trovato>)

==== #uc([Autenticazione Gateway fallita], "Autenticazione-gateway-fallita")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha inviato un messaggio di hello al Cloud
  - Il sistema non riesce ad autenticare il Gateway
- *Post-condizioni*:
  - Il sistema rifiuta la connessione con il Gateway
- *Scenario principale*:
  - Il Gateway riceve il messaggio di autenticazione fallita dal sistema


==== #uc([Identificativo Gateway non trovato], "Identificativo-gateway-non-trovato")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha inviato un messaggio di hello al Cloud
  - Il sistema non riesce a trovare l'identificativo del Gateway
- *Post-condizioni*:
  - Il sistema rifiuta la connessione con il Gateway
- *Scenario principale*:
  - Il Gateway riceve il messaggio di identificativo non trovato dal sistema

==== #uc([Invio dati crittografati], "Invio-dati-crittografati")
#figure(
  image("../../assets/diagrammi/UC137.svg", width: 100%),
  caption: [UC137 - UC138],
)

- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha completato la fase di commissioning, perciò è associato ad un tenant
  - Il Gateway ha a disposizione dati raccolti dai sensori associati
- *Post-condizioni*:
  - Il sistema riceve i dati crittografati da parte del Gateway
  - Il sistema aggiorna il timestamp di ultima ricezione dati per il Gateway specifico e per i sensori coinvolti
- *Scenario principale*:
  - Il Gateway raccoglie i dati dal proprio buffer interno
  - Il Gateway utilizza la chiave pubblica per crittografare i dati raccolti dai sensori
  - Il Gateway invia i dati crittografati al sistema
- *Scenari alternativi*:
  - L'invio dei dati crittografati fallisce
- *Estensioni*:
  - #ref-uc(<Invio-dati-fallito>)

==== #uc([Invio dati fallito], "Invio-dati-fallito")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway tenta di inviare dati crittografati al sistema Cloud
  - Il sistema Cloud non è raggiungibile dal Gateway
- *Post-condizioni*:
  - Il sistema Cloud non riceve i dati crittografati dal Gateway perché non è raggiungibile
  - Il sistema Cloud, dopo un timeout predefinito, considera il Gateway come in stato di errore
  - Il sistema Cloud, dopo un timeout predefinito, crea un alert per gli utenti del tenant a cui è associato il Gateway
- *Scenario principale*:
  - Il Gateway rileva che il sistema Cloud non è raggiungibile
  - Il Gateway memorizza i dati nel proprio buffer interno per un invio successivo
  - Il Gateway ritenta l'invio dei dati dopo un dato intervallo di tempo
  - Il Gateway elimina i dati più vecchi se il buffer è pieno

==== #uc([Assenza prolungata dati da sensori], "Assenza-prolungata-dati-sensori")
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway non riceve dati da uno o più sensori associati per un intervallo di tempo superiore ad una soglia predefinita nel Cloud
- *Post-condizioni*:
  - Il sistema rileva l'assenza di ricezione dati da parte di uno o più sensori
  - Il sistema crea un alert per gli utenti del tenant a cui è associato il Gateway
- *Scenario principale*:
  - Il Gateway non riceve dati da uno o più sensori associati per un intervallo di tempo superiore ad una soglia predefinita
  - Il Gateway invia normalmente i dati crittografati al sistema, con l'assenza di dati da sensori specifici

=== Attore principale - API Client
Di seguito sono riportati tutti gli use case in cui l'attore principale è un generico API Client, ovvero un client che accede all'API esposta tramite una API Key di autenticazione prodotta da un Super Admin o un Tenant Admin.

==== #uc([Richiesta dati real-time sensore], "Richiesta-dati-real-time-sensore")
#figure(
  image("../../assets/diagrammi/UC140.svg", width: 100%),
  caption: [UC140 - UC140.1, UC142, UC143, UC144],
)

- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema restituisce una lista di dati real-time del sensore richiesto in formato JSON
  - Il sistema il singolo restituisce il dato come tupla (timestamp, valore rilevato)
- *Scenario principale*:
  - L'API Client richiede e riceve dati real-time del sensore specificato in formato JSON
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato storico disponibile per il sensore richiesto
  - Sensore non associato al tenant del API Client
- *Inclusioni*:
  - #ref-uc(<Ricezione-dati-real-time-sensore>)
- *Estensioni*:
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)
  - #ref-uc(<Sensore-non-associato-tenant-API-Client>)

===== #sub-uc([Ricezione dati real-time sensore], "Ricezione-dati-real-time-sensore")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
  - Il sensore richiesto esiste ed appartiene al tenant del API Client
- *Post-condizioni*:
  - Il sistema recupera e restituisce i dati real-time del sensore richiesto come coppia valore-timestamp
- *Scenario principale*:
  - L'API Client riceve dati real-time del sensore richiesto come coppia valore-timestamp


==== #uc([Richiesta storico dati sensore], "Richiesta-storico-dati-sensore")
#figure(
  image("../../assets/diagrammi/UC141.svg", width: 100%),
  caption: [UC141 - UC141.1, UC142, UC143, UC144],
)

- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
- *Post-condizioni*:
  - Il sistema restituisce lo storico dei dati del sensore specificato in formato JSON
  - Il sistema restituisce lo storico dei dati del sensore richiesto come lista di tuple (timestamp, valore rilevato)
- *Scenario principale*:
  - L'API Client richiede e riceve lo storico dei dati del sensore specificato in formato JSON
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato storico disponibile per il sensore richiesto
  - Sensore non associato al tenant del API Client
- *Inclusioni*:
  - #ref-uc(<Ricezione-storico-dati-sensore>)
- *Estensioni*:
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)
  - #ref-uc(<Sensore-non-associato-tenant-API-Client>)

===== #sub-uc([Ricezione storico dati sensore], "Ricezione-storico-dati-sensore")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
  - Il sensore richiesto esiste ed appartiene al tenant del API Client
- *Post-condizioni*:
  - Il sistema recupera e restituisce lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - Viene restituito lo storico dei dati del sensore richiesto


==== #uc([Sensore non trovato], "Sensore-non-trovato")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
  - L'API Client ha richiesto i dati di un sensore che non esiste all'interno del sistema
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client richiede i dati di un sensore non esistente


==== #uc([Nessun dato disponibile per il sensore richiesto], "Nessun-dato-disponibile-sensore-richiesto")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'API Client richiede dati di un sensore per cui non sono salvati o disponibili i dati real-time


==== #uc([Sensore non associato al tenant del API Client], "Sensore-non-associato-tenant-API-Client")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel sistema
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client richiede i dati di un sensore non associato al proprio tenant


==== #uc([Autenticazione API Client], "Autenticazione-API-Client")
#figure(
  image("../../assets/diagrammi/UC145.svg", width: 100%),
  caption: [UC145 - UC146, UC147],
)

- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client possiede delle credenziali di accesso
- *Post-condizioni*:
  - Il sistema autentica l'API Client
- *Scenario principale*:
  - L'API Client invia l'identificativo del tenant
  - L'API Client invia la propria API Key
  - L'API Client riceve la conferma di autenticazione
- *Scenari alternativi*:
  - Le credenziali inviate dall'API Client non sono valide
  - Le credenziali inviate dall'API Client sono scadute
- *Estensioni*:
  - #ref-uc(<Credenziali-API-Client-errate>)
  - #ref-uc(<Credenziali-API-Client-scadute>)

==== #uc([Credenziali API Client errate], "Credenziali-API-Client-errate")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client ha inviato credenziali errate
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client invia delle credenziali non valide
  - L'API Client riceve l'errore che comunica l'invalidità delle credenziali

==== #uc([Credenziali API Client scadute], "Credenziali-API-Client-scadute")
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client ha inviato credenziali scadute
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client invia delle credenziali scadute
  - L'API Client riceve l'errore che comunica il fatto che le credenziali sono scadute

== Sistema Gateway - Lista dei casi d'uso
Per ogni caso d'uso viene considerato il sistema Gateway come funzionante e raggiungibile.

=== Attore principale - Sensore simulato

==== #uc([Invio nuovo dato al Gateway], "Invio-nuovo-dato-gateway")
#figure(
  image("../../assets/diagrammi/UC148.svg", width: 100%),
  caption: [UC148 - UC149, UC150, UC151, UC152, UC153, UC154],
)

- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
- *Post-condizioni*
  - Il sistema Gateway riceve un nuovo dato dal sensore
  - Il sistema Gateway normalizza e formatta il dato in un formato interno standardizzato
  - Il sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il sensore genera una nuova misurazione simulata e ne registra il momento di generazione
  - Il sensore invia il dato al sistema Gateway associandone il timestamp del momento in cui è stato generata la misurazione
- *Scenario alternativo*:
  - Il sensore invia una quantità eccessiva di dati al Gateway
- *Estensioni*:
  - #ref-uc(<Invio-dati-eccessivi-gateway>)

==== #uc([Invio di dati eccessivi al Gateway], "Invio-dati-eccessivi-gateway")
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
- *Post-condizioni*:
  - Il sistema Gateway riceve più dati di quanti ne possa inviare al Cloud
  - Il sistema Gateway salva i dati più recenti nel buffer interno
  - Il sistema Gateway elimina i dati più vecchi per fare spazio ai nuovi dati
- *Scenario principale*:
  - Il sensore invia una quantità di dati superiore alla capacità di invio del sistema Gateway


==== #uc([Invio di dato simulando Heart Rate Service], "Invio-dato-heart-rate-service")
- *Generalizzazione*: Invio nuovo dato al Gateway #ref-uc(<Invio-nuovo-dato-gateway>)
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
  - Il sensore ha implementato il servizio Heart Rate Service (GATT)
- *Post-condizioni*:
  - Il sistema Gateway riceve un nuovo dato di frequenza cardiaca dal sensore
  - Il sistema Gateway normalizza e formatta il dato in un formato interno standardizzato
  - Il sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il sensore genera un nuovo dato di frequenza cardiaca simulato
  - Il sensore invia il pacchetto dati simulando una notifica GATT al sistema Gateway


==== #uc([Invio di dato simulando Pulse Oximeter Service], "Invio-dato-pulse-oximeter-service")
- *Generalizzazione*: Invio nuovo dato al Gateway #ref-uc(<Invio-nuovo-dato-gateway>)
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
  - Il sensore ha implementato il servizio Pulse Oximeter Service (GATT)
- *Post-condizioni*:
  - Il sistema Gateway riceve le nuove misurazioni di saturazione di ossigeno nel sangue e frequenza del polso
  - Il sistema Gateway normalizza e formatta i dati in un formato interno standardizzato
  - Il sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il sensore genera nuovi valori simulati di saturazione di ossigeno nel sangue e frequenza del polso
  - Il sensore invia il pacchetto dati simulando una notifica GATT al sistema Gateway


==== #uc([Invio di dato simulando ECG Custom Profile], "Invio-dato-ecg-custom")
- *Generalizzazione*: Invio nuovo dato al Gateway #ref-uc(<Invio-nuovo-dato-gateway>)
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
  - Il sensore ha implementato un profilo custom per invio di dati per l'elettrocardiogramma (ECG)
- *Post-condizioni*:
  - Il sistema Gateway riceve i dati grezzi dell'ECG
  - Il sistema Gateway normalizza e formatta i dati in un formato interno standardizzato
  - Il sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il sensore genera una sequenza di valori che simulano l'ECG
  - Il sensore invia il pacchetto dati simulando una notifica GATT al sistema Gateway


==== #uc([Invio di dato simulando Health Thermometer Service], "Invio-dato-health-thermometer-service")
- *Generalizzazione*: Invio nuovo dato al Gateway #ref-uc(<Invio-nuovo-dato-gateway>)
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
  - Il sensore ha implementato il servizio Health Thermometer Service (GATT)
- *Post-condizioni*:
  - Il sistema Gateway riceve il valore della temperatura corporea
  - Il sistema Gateway normalizza e formatta i dati in un formato interno standardizzato
  - Il sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il sensore genera un nuovo dato di temperatura corporea
  - Il sensore invia il pacchetto dati simulando una notifica GATT al sistema Gateway


==== #uc([Invio di dati simulando Environmental Sensing Service], "Invio-dato-environmental-sensing-service")
- *Generalizzazione*: Invio nuovo dato al Gateway #ref-uc(<Invio-nuovo-dato-gateway>)
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il sensore è configurato correttamente con il sistema Gateway
  - Il sensore ha implementato il servizio Environmental Sensing Service (GATT)
- *Post-condizioni*:
  - Il sistema riceve i dati di temperatura ambientale e umidità
  - Il sistema normalizza e formatta i dati in un formato interno standardizzato
  - Il sistema salva i dati nel buffer ambientale
- *Scenario principale*:
  - Il sensore genera nuovi valori per la temperatura (UUID 0x2A6E) e l'umidità (UUID 0x2A6F)
  - Il sensore invia due notifiche GATT distinte al sistema Gateway, una per la temperatura e una per l'umidità


=== Attore principale - Cloud
==== #uc([Conferma autenticazione Gateway], "Conferma-autenticazione-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Cloud ha ricevuto un messaggio di Hello dal sistema
  - Il Cloud ha autenticato con successo il sistema
- *Post-condizioni*:
  - Il sistema riceve la conferma di autenticazione da parte del Cloud
  - Il sistema attende di essere associato ad un tenant
- *Scenario principale*:
  - Il Cloud invia la conferma di autenticazione al Gateway


==== #uc([Rifiuto autenticazione Gateway], "Rifiuto-autenticazione-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Cloud ha ricevuto un messaggio di Hello dal sistema
  - Il Cloud non ha autenticato il sistema con successo
- *Post-condizioni*:
  - Il sistema Gateway riceve il rifiuto di autenticazione da parte del Cloud
  - Il sistema Gateway entra in stato di errore
- *Scenario principale*:
  - Il Cloud invia il rifiuto di autenticazione al Gateway

==== #uc([Assegnazione tenant al Gateway], "Assegnazione-tenant-gateway")
#figure(
  image("../../assets/diagrammi/UC157.svg", width: 100%),
  caption: [UC157 - UC157.1],
)

- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway non è ancora associato ad un tenant
  - Il tenant assegnato è valido
- *Post-condizioni*:
  - Il sistema Gateway riceve l'assegnazione del tenant
  - Il sistema Gateway è pronto per inviare dati crittografati
- *Scenario principale*:
  - Il Cloud invia al sistema Gateway l'assegnazione del tenant al sistema
- *Inclusioni*:
  - #ref-uc(<Invio-tenant-associato-gateway>)

===== #sub-uc([Invio tenant associato al Gateway], "Invio-tenant-associato-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway non è ancora associato ad un tenant
  - Il tenant assegnato è valido
- *Post-condizioni*:
  - Il sistema riceve e salva l'assegnazione del tenant
- *Scenario principale*:
  - Il Cloud invia l'assegnazione del tenant al sistema


==== #uc([Riattivazione sensore simulato], "Riattivazione-sensore-simulato")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sensore simulato è configurato nel sistema Gateway
  - Il sensore simulato è sospeso, ovvero il sistema Gateway non invia al Cloud i dati relativi a tale sensore
- *Post-condizioni*:
  - Il sistema Gateway riceve il comando di riattivazione del sensore simulato dal Cloud
  - Il sistema Gateway ricomincia a inviare al Cloud i dati relativi a tale sensore
- *Scenario principale*:
  - Il Cloud invia il comando di riattivazione del sensore simulato al sistema Gateway


==== #uc([Sospensione sensore simulato], "Sospensione-sensore-simulato")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sensore simulato è configurato nel sistema Gateway
  - Il sensore simulato è attivato, il sistema invia dati da quel sensore
- *Post-condizioni*:
  - Il sistema Gateway riceve il comando di sospensione del sensore simulato dal Cloud
  - Il sistema Gateway smette di inviare al Cloud i dati relativi a tale sensore
- *Scenario principale*:
  - Il Cloud invia il comando di sospensione del sensore simulato al sistema Gateway


==== #uc([Riattivazione Gateway], "Riattivazione-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway è in stato di sospensione, ovvero non invia i dati dei propri sensori al Cloud
- *Post-condizioni*:
  - Il sistema Gateway riceve il comando di riattivazione dal Cloud
  - Il sistema Gateway ricomincia l'invio dei dati di tutti i propri sensori al Cloud
- *Scenario principale*:
  - Il Cloud invia il comando di riattivazione al sistema Gateway


==== #uc([Sospensione Gateway], "Sospensione-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway è attivo, ovvero invia dati dei propri sensori
- *Post-condizioni*:
  - Il sistema Gateway riceve il comando di sospensione dal Cloud
  - Il sistema Gateway smette di inviare i dati di tutti i propri sensori al Cloud
- *Scenario principale*:
  - Il Cloud invia il comando di sospensione al sistema Gateway


==== #uc([Riavvio Gateway], "Riavvio-gateway-cloud")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
- *Post-condizioni*:
  - Il sistema Gateway riceve il comando di riavvio dal Cloud
  - Il sistema Gateway si spegne e si riaccende, mantenendo le configurazioni e i dati salvati localmente
- *Scenario principale*:
  - Il Cloud invia il comando di riavvio al sistema Gateway


==== #uc([Modifica frequenza di invio dati Gateway per tipo di sensore], "Modifica-frequenza-invio-dati-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il sistema Gateway riceve dal Cloud il comando di modifica della frequenza di invio dati per uno specifico tipo di sensore
  - Il sistema Gateway aggiorna la configurazione della frequenza "target" di invio dati per i dati inviati al Cloud relativi al tipo di sensore specificato
  - Il sistema Gateway invia i dati relativi a tutti i sensori del tipo specificato con una frequenza il più vicino possibile alla frequenza "target" configurata
- *Scenario principale*:
  - Il Cloud invia il comando di modifica della frequenza di invio dati al sistema Gateway


==== #uc([Decommissioning Gateway], "Decommissioning-gateway-cloud")
#figure(
  image("../../assets/diagrammi/UC164.svg", width: 100%),
  caption: [UC164 - UC164.1, UC165],
)

- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il sistema Gateway riceve il comando di decommissioning dal Cloud
  - Il sistema Gateway cancella l'associazione al tenant
  - Il sistema Gateway cancella tutte le configurazioni e i dati salvati localmente
- *Scenario principale*:
  - Il Cloud invia il comando di decommissioning al sistema Gateway
- *Inclusioni*:
  - #ref-uc(<Reset-gateway-cloud>)
  - #ref-uc(<Disassociazione-tenant-gateway>)

===== #sub-uc([Disassociazione tenant Gateway], "Disassociazione-tenant-gateway")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
  - Il sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il sistema cancella l'associazione al tenant
- *Scenario principale*:
  - Il Cloud invia il comando di disassociazione del tenant al sistema Gateway


==== #uc([Reset Gateway], "Reset-gateway-cloud")
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il sistema Gateway è autenticato nel Cloud
- *Post-condizioni*:
  - Il sistema riceve il comando di reset
  - Il sistema cancella tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica
- *Scenario principale*:
  - Il Cloud invia il comando di reset al sistema Gateway


//////////////////////////////////////////////////////////////////////////
//----------------------------    🫵REQUISITI🫵    -------------------------//
//////////////////////////////////////////////////////////////////////////
= Requisiti
I requisiti seguenti dovranno essere implementati entro il *27 marzo 2026*.
La nomenclatura adottata per i requisiti è la seguente: *R[Tipo]-[Numero progressivo]-[Rilevanza]*, dove:
- *Tipo*: indica la tipologia del requisito, può essere:
  - *F*: Funzionale
  - *NF*: Non funzionale
  - *D*: Dominio
  - *V*: Vincolo
- *Numero progressivo*: è un numero univoco che identifica il requisito all'interno della sua tipologia;
- *Rilevanza*: indica l'importanza del requisito, può essere:
  - *Obb*: obbligatorio, ovvero un requisito irrinunciabile
  - *Des*: desiderabile, ovvero un requisito non strettamente necessario ma che fornisce valore aggiunto al prodotto
  - *Opt*: opzionale, ovvero un requisito non necessario che fornisce valore aggiunto limitato
== Definizione requisito
Un requisito è la capacità necessaria ad un *Utente* per raggiungere un obiettivo specifico(_lato bisogno_) o la capacità necessaria ad un  *sistema* per rispondere ad un'aspettativa(_lato soluzione_). I requisiti sono classificati in:
- *Funzionali*: descrivono le funzionalità che il  *sistema* deve fornire per soddisfare le aspettative;
- *Non funzionali*: descrivono come il  *sistema* deve comportarsi, non riguardano una funzionalità specifica ma le proprietà del  *sistema*;
- *Dominio*: descrivono le regole e le politiche specifiche del dominio applicativo in cui il  *sistema* opera;
- *Vincoli*: descrivono le limitazioni imposte al  *sistema* durante lo sviluppo.

Inoltre un buon requisito deve essere *SMART*:
- *Specifico*: il requisito deve essere chiaro e preciso, evitando ambiguità;
- *Misurabile*: il requisito deve essere quantificabile o facilmente verificabile attraverso test o misurazioni;
- *_Achievable_* (Raggiungibile): il requisito deve essere realistico e fattibile entro i vincoli di tempo, risorse e tecnologie disponibili;
- *Rilevante*: il requisito deve essere importante per gli stakeholder e contribuire agli obiettivi del progetto;
- *Tracciabile nel tempo*: il requisito deve avere una scadenza o un periodo di validità


// NOTA: Modificare il file .json per modificare i requisiti!
#let LISTA_RF = json("../../tracciamento/RF.json")
#let LISTA_RNF = json("../../tracciamento/RNF.json")
#let LISTA_RD = json("../../tracciamento/RD.json")

#let tabella-rf = tabella-requisiti(rf, ref-rf, LISTA_RF)
#let tabella-rnf = tabella-requisiti(rnf, ref-rnf, LISTA_RNF)
#let tabella-rd = tabella-requisiti(rd, ref-rd, LISTA_RD)


== Requisiti funzionali <lista-requisiti-funzionali>
#tabella-paginata(
  table(
    columns: (1fr, 3.2fr, 1.5fr),
    align: left,
    table.header([*Codice*], [*Descrizione*], [*Fonti*]),
    ..tabella-rf,
  ),
  [Descrizione requisiti funzionali],
  label-id: "tab-rf",
)

== Requisiti non funzionali <lista-requisiti-non-funzionali>
#tabella-paginata(
  table(
    columns: (1fr, 3.2fr, 1.5fr),
    align: left,
    table.header([*Codice*], [*Descrizione*], [*Fonti*]),
    ..tabella-rnf,
  ),
  [Descrizione requisiti non funzionali],
  label-id: "tab-rnf",
)

== Requisiti di dominio <lista-requisiti-dominio>
#tabella-paginata(
  table(
    columns: (1fr, 3.2fr, 1.5fr),
    align: left,
    table.header([*Codice*], [*Descrizione*], [*Fonti*]),
    ..tabella-rd,
  ),
  [Descrizione requisiti di dominio],
  label-id: "tab-rd",
)

// #set page(columns: 2) // Doppia colonna per ottimizzare gli spazi

== Tracciamento <tracciamento-requisiti>
/*
NOTA: In questa sezione le tabelle sono generate automaticamente, per modificare i requisiti direttamente è
necessario modificare i file lista_RF.json, lista_RNF.json, lista_RD.json
*/

#context {
  let tracciamento-requisiti = (funzione-req, funzione-ref-req, lista-requisiti) => {
    let tabella-tracciamento = () // Req -> UC
    let tracciamento-inverso-uc = (:) // UC -> Req
    let tracciamento-inverso-cap = (:) // Capitolato -> Req

    for requisito in lista-requisiti {
      let lista-uc-correlati = normalize-ref-list(requisito)

      // Tabella tracciamento regolare
      tabella-tracciamento.push(funzione-ref-req(requisito.id))
      tabella-tracciamento.push(lista-uc-correlati)

      // Tracciamento inverso
      // - UC
      for ref in requisito.ref_uc {
        tracciamento-inverso-uc.insert(
          ref,
          tracciamento-inverso-uc.at(ref, default: ()) + (requisito.id,),
        )
      }
      // - req. capitolato
      for ref in requisito.ref_capitolato {
        tracciamento-inverso-cap.insert(
          ref,
          tracciamento-inverso-cap.at(ref, default: ()) + (requisito.id,),
        )
      }
    }

    // Tabella tracciamento inverso
    // - tracciamento UC
    tracciamento-inverso-uc = tracciamento-inverso-uc
      .pairs()
      .sorted(key: pair => {
        uc-map.get().at(normalize-uc(pair.at(0))).at(1)
      })
    let tabella-tracciamento-inverso = ()
    for (id-uc, id-requisiti) in tracciamento-inverso-uc {
      tabella-tracciamento-inverso.push(ref-uc(normalize-uc(id-uc), section-prefix: "§"))
      tabella-tracciamento-inverso.push(
        id-requisiti
          .map(
            id-requisito => funzione-ref-req(id-requisito),
          )
          .join([, \ ]),
      )
    }

    // - tracciamento req. capitolato
    tracciamento-inverso-cap = tracciamento-inverso-cap
      .pairs()
      .sorted(
        key: pair => pair.at(0),
      )
    for (req-capitolato, id-requisiti) in tracciamento-inverso-cap {
      tabella-tracciamento-inverso.push(req-capitolato)
      tabella-tracciamento-inverso.push(
        id-requisiti
          .map(
            id-requisito => funzione-ref-req(id-requisito),
          )
          .join([, \ ]),
      )
    }

    (tabella-tracciamento, tabella-tracciamento-inverso)
  }

  let (tracciamento-rf, tracciamento-inv-rf) = tracciamento-requisiti(rf, ref-rf, LISTA_RF)
  let (tracciamento-rnf, tracciamento-inv-rnf) = tracciamento-requisiti(rnf, ref-rnf, LISTA_RNF)
  let (tracciamento-rd, tracciamento-inv-rd) = tracciamento-requisiti(rd, ref-rd, LISTA_RD)

  [
    === Tracciamento requisiti -- UC/requisiti capitolato
    Di seguito si riporta la tabella di tracciamento dei requisiti che descrive per ogni requisito rilevato i relativi #gloss[use case] ed eventuali requisiti descritti dalla #gloss[proponente] nel capitolato d'appalto.
  ]
  columns(
    tabella-paginata(
      table(
        columns: (1fr, 2fr),
        align: horizon + left,
        table.header([*Requisito*], [*Casi d'uso/requisiti capitolato correlati*]),
        ..tracciamento-rf,
        ..tracciamento-rnf,
        ..tracciamento-rd,
      ),
      [Tracciamento requisiti],
      label-id: "tab-tracciamento-rf",
    ),
    2,
  )

  [
    === Tracciamento UC/requisiti capitolato -- requisiti
    #columns(
      tabella-paginata(
        table(
          columns: (2fr, 1fr),
          align: horizon + left,
          table.header([*Caso d'uso/Requisito capitolato*], [*Requisiti derivati*]),
          ..tracciamento-inv-rf,
          ..tracciamento-inv-rnf,
          ..tracciamento-inv-rd,
        ),
        [Tracciamento requisiti inverso: per ogni caso d'uso si descrivono i relativi requisiti],
        label-id: "tab-tracciamento-inverso-rf",
      ),
      2,
    )
  ]
}



=== Conteggio requisiti
Di seguito si riporta il conteggio dei requisiti per urgenza e per tipologia.

#let conteggio-rf = conteggio-urgenze(LISTA_RF)
#let conteggio-rnf = conteggio-urgenze(LISTA_RNF)
#let conteggio-rd = conteggio-urgenze(LISTA_RD)

#let num-rf-obb = conteggio-rf.at("Obb", default: 0)
#let num-rf-opt = conteggio-rf.at("Des", default: 0)
#let num-rf-des = conteggio-rf.at("Opt", default: 0)
#let tot-rf = num-rf-obb + num-rf-opt + num-rf-des

#let num-rnf-obb = conteggio-rnf.at("Obb", default: 0)
#let num-rnf-opt = conteggio-rnf.at("Des", default: 0)
#let num-rnf-des = conteggio-rnf.at("Opt", default: 0)
#let tot-rnf = num-rnf-obb + num-rnf-opt + num-rnf-des

#let num-rd-obb = conteggio-rd.at("Obb", default: 0)
#let num-rd-opt = conteggio-rd.at("Des", default: 0)
#let num-rd-des = conteggio-rd.at("Opt", default: 0)
#let tot-rd = num-rd-obb + num-rd-opt + num-rd-des

#table(
  columns: (1fr, 2fr, 2fr, 2fr, 1fr),

  table.header(
    [*Tipo \ requisito*],
    [*N° requisiti obbligatori* (Obb)],
    [*N° requisiti desiderabili* (Des)],
    [*N° requisiti opzionali* (Opt)],
    [*Totale*],
  ),

  [*RF*], [#num-rf-obb], [#num-rf-des], [#num-rf-opt], [*#tot-rf*],

  [*RNF*], [#num-rnf-obb], [#num-rnf-des], [#num-rnf-opt], [*#tot-rnf*],

  [*RD*], [#num-rd-obb], [#num-rd-des], [#num-rd-opt], [*#tot-rd*],

  table.footer(
    [*TOTALE*],
    [*#(num-rf-obb + num-rnf-obb + num-rd-obb)*],
    [*#(num-rf-des + num-rnf-des + num-rd-des)*],
    [*#(num-rf-opt + num-rnf-opt + num-rd-opt)*],
    [*#(tot-rf + tot-rnf + tot-rd)*],
  ),
)


