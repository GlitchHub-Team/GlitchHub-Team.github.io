#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

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

  // 2. La Tabella (che può andare su più pagine)
  align(center, contenuto)


  // 3. Didascalia visiva (in basso)
  align(center)[
    #v(0.5em) // Un po' di spazio tra tabella e testo
    #context [
      #let n = counter(figure.where(kind: table)).display()
      #text[Tabella #n: #didascalia]
    ]
  ]
}

#show: report.with(
  titolo: "Piano di Qualifica",
  stato: "Verificato",
  registro-modifiche: (
    (
      "1.2.0",
      "09/03/2026",
      "Jaume Bernardi",
      "Riccardo Graziani",
      [Stesura dei test di unità @test-unità],
    ),
    (
      "1.1.0",
      "28/02/2026",
      "Jaume Bernardi",
      "Riccardo Graziani",
      [Stesura dei test d'integrazione @test-integrazione],
    ),
    (
      "1.0.0",
      "18/02/2026",
      "Michele Dioli",
      "Alessandro Dinato",
      [Creazione versione stabile per RTB],
    ),
    (
      "0.12.1",
      "17/02/2026",
      "Michele Dioli",
      "Alessandro Dinato",
      [Rimossi elementi ridondanti],
    ),
    (
      "0.12.0",
      "17/02/2026",
      "Elia Ernesto Stellin",
      "Michele Dioli",
      [Integrata @tracciamento-test-funzionali con file JSON di raccolta TS e RF; Aggiunte @tracciamento-ts-rf e @tracciamento-rf-ts; Rimossi TS relativi a RF obsoleti],
    ),
    (
      "0.11.1",
      "16/02/2026",
      "Michele Dioli",
      "Riccardo Graziani",
      [Sistemati paragrafi doppi],
    ),
    (
      "0.11.0",
      "16/02/2026",
      "Alessandro Dinato",
      "Riccardo Graziani",
      [Modificati test di accettazione],
    ),
    (
      "0.10.1",
      "16/02/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Modifica indici tabelle e figure],
    ),
    (
      "0.10.0",
      "14/02/2026",
      "Michele Dioli",
      "Riccardo Graziani",
      [Implementati grafici per cruscotto di valutazione],
    ),
    (
      "0.9.0",
      "07/02/2026",
      "Siria Salvalaio",
      "Alessandro Dinato",
      [Stesura test di sistema da *TS-191* a *TS-254*],
    ),
    (
      "0.8.0",
      "05/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Modifiche di formattazione varie; Modificata formattazione tabella @tracciamento-test-funzionali; Sistemato versionamento documento; Rimosso test relativo a ex *RF-149-Obb*],
    ),
    (
      "0.7.0",
      "05/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      [Stesura test di sistema da *TS-257* a *TS-294*],
    ),
    (
      "0.6.0",
      "04/02/2026",
      "Michele Dioli",
      "Alessandro Dinato",
      [Stesura test di sistema da *TS-1* a *TS-64*],
    ),
    (
      "0.5.0",
      "03/02/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      [Correzione tabella + stesura test di sistema da *TS-129* a *TS-192*],
    ),
    (
      "0.4.0",
      "03/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      "Stesura test di sistema",
    ),
    (
      "0.3.2",
      "24/01/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      "Piccole modifiche",
    ),
    (
      "0.3.1",
      "24/01/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Miglioramento descrizione metriche, aggiunta formule e migliorate @iniziative-miglioramento],
    ),
    (
      "0.3.0",
      "17/01/2026",
      "Michele Dioli",
      "Riccardo Graziani",
      "Inizio stesura formule metriche",
    ),
    (
      "0.2.1",
      "13/01/2026",
      "Siria Salvalaio",
      "Riccardo Graziani",
      [Inizio stesura @iniziative-miglioramento (bozza)],
    ),
    (
      "0.2.0",
      "03/01/2026",
      "Hossam Ezzemouri",
      "Siria Salvalaio",
      "Aggiunta di metriche",
    ),
    (
      "0.1.0",
      "29/12/2025",
      "Siria Salvalaio",
      "Hossam Ezzemouri",
      "Stesura metriche",
    ),
    (
      "0.0.1",
      "21/12/2025",
      "Siria Salvalaio",
      "Hossam Ezzemouri",
      "Bozza prime metriche e struttura documento",
    ),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "PB-DocumentiEsterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-documento: "Piano di Qualifica",
)



#outline(
  title: "Indice delle tabelle",
  target: figure.where(kind: table),
)

#outline(
  title: "Indice delle figure",
  target: figure.where(kind: image),
)

#pagebreak()

= Introduzione <introduzione>
== Finalità del documento
Questo documento, #gloss[Piano di Qualifica], rappresenta un riferimento fondamentale che organizza e coordina tutte le attività di qualifica per il prodotto software, integrando pianificazione, verifica e miglioramento.
Il Piano di qualifica determina 3 elementi essenziali:
- Il *Piano di Qualità*, cioè l'insieme delle attività e obiettivi di qualità
- Le attività di *controllo di qualità*
- Le iniziative di *miglioramento continuo*

// TODO: Per i documenti con versione sarebbe meglio indicare la versione nel nome e la data di ultimo accesso
== Riferimenti
=== Riferimenti normativi
- *Norme di Progetto v1.2.0* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf \
  *Ultimo accesso*: 18 febbraio 2026

- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori"* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf \
  *Ultimo accesso*: 18 febbraio 2026

- *Piano di Progetto v1.1.0* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf \
  *Ultimo accesso*: 18 febbraio 2026

=== Riferimenti informativi
- *Glossario v0.5.0* \
  https://glitchhub-team.github.io/pdf/glossary.pdf \
  *Ultimo accesso*: 18 febbraio 2026

- *Slide T07 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf \
  *Ultimo accesso*: 18 febbraio 2026

- *Slide T08 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf \
  *Ultimo accesso*: 18 febbraio 2026

- *ISO/IEC 25010* \
  https://iso25000.com/index.php/en/iso-25000-standards/iso-25010 \
  *Ultimo accesso*: 18 febbraio 2026

- *Metrica software -- Wikipedia* \
  https://it.wikipedia.org/wiki/Metrica_software \
  *Ultimo accesso*: 18 febbraio 2026

= Metriche di qualità del processo
Le metriche di qualità del processo misurano l'efficacia, l'efficienza e il controllo delle attività necessarie per sviluppare, gestire e consegnare il prodotto software. Il loro scopo è di monitorare l'aderenza alla pianificazione, la stabilità dei processi, la sostenibilità dei costi e di migliorare costantemente i propri risultati. Queste metriche non valutano il prodotto finito, ma il modo in cui il prodotto viene realizzato.

In questo documento, tali misure vengono identificate tramite la sigla *MPC* (#strong[M]etriche di #strong[P]rocesso e #strong[C]ontrollo). Questo identificativo permette di classificare e tracciare tutte le misurazioni relative alla gestione dei costi, all'avanzamento temporale, alla qualità della documentazione e all'efficienza dei processi interni al team di sviluppo.

== Fornitura

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPC-PV], [Planned Value], [$> 0€$], [$= "Pianificato"$],
    [MPC-AC], [Actual Cost], [$> 0€$], [$<= "EAC"$],
    [MPC-EV], [Earned Value], [$> 0€$], [$> "PV"$],
    [MPC-BAC], [Budget At Completion], [$"=(valore già fissato)"$], [$$],
    [MPC-EAC], [Estimated At Completion], [$>= "BAC"* 0.95$], [$= "BAC"$],
    [MPC-ETC], [Estimated To Complete], [$>=0$], [$>=0$],
    [MPC-CV], [Cost Variance], [$> 0$], [$= 0$],
    [MPC-SV], [Schedule Variance], [$>= 0$], [$> 0$],
    [MPC-TCR], [Task Completion Rate], [$>=85%$], [$100%$],
    [MPC-TS], [Task Slippage], [$<= 15%$], [$0%$],
  ),
  [Valori per misurare la qualità della fornitura.],
  label-id: "tab-qual-forn",
)

== Sviluppo

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPC-RSI], [Requirements Stability Index], [$>= 80%$], [$= 100%$],
    [MPC-PRCT], [Pull Request Cycle Time], [$<= "48 ore"$], [$<= "24 ore"$],
  ),
  [Valori per misurare la qualità dello sviluppo.],
  label-id: "tab-qual-svil",
)

\
== Documentazione

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPC-IG], [Indice di Gulpease], [$>= 40$], [$>= 60$],
    [MPC-CO], [Correttezza Ortografica], [$0$], [$0$],
  ),
  [Valori per misurare la qualità della documentazione.],
  label-id: "tab-qual-doc",
)

== Verifica

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPC-CC], [Code Coverage], [$>= 80%$], [$= 100%$],
    [MPC-TSR], [Test Success Rate], [$= 100%$], [$= 100%$],
    [MPC-DD], [Bug Density], [$<= "2 per CRG"$], [$= "0 per CRG"$],
  ),
  [Valori per misurare la qualità della verifica.],
  label-id: "tab-qual-ver",
)

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPC-QMS], [Quality Metrics Satisfied], [$>= 80%$], [$= 100%$],
    [MPC-TE], [Time Efficiency], [$>= 50%$], [$>= 90%$],
    [MPC-WD], [Work Distribution], [$$], [$$],
    [MPC-SPF], [Single Point of Failure Risk], [$15%$], [$<10%$],
  ),
  [Valori per misurare l'efficacia della qualità e dei processi.],
  label-id: "tab-qual-qual-proc",
)

\
= Metriche di qualità del prodotto
Le metriche di qualità del prodotto misurano le proprietà interne ed esterne del prodotto software finale: comportamento funzionale, affidabilità, usabilità, l'efficienza, la manutenibilità e la sicurezza. Il loro scopo è di verificare quanto il prodotto soddisfa i requisiti che si aspetta l'utente, quanto è robusto in condizioni reali e quanto può essere compreso, modificato, testato e protetto. In sintesi, valutano la qualità del software in esecuzione in circostanze reali.

In questo documento, tali misure vengono identificate tramite la sigla *MPD* (#strong[M]etriche di #strong[P]ro#strong[d]otto). Questo identificativo permette di classificare e monitorare le caratteristiche del software, facilitando la verifica del raggiungimento degli obiettivi qualitativi prefissati per il prodotto finale.

== Funzionalità

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-CRO], [Copertura Requisiti Obbligatori], [$= 100%$], [$= 100%$],
    [MPD-CRP], [Copertura Requisiti Desiderabili], [$>= 0$], [$>=70%$],
    [MPD-CRP], [Copertura Requisiti Opzionali], [$>= 0$], [$>=70%$],
    [MPD-AD], [API Documentation Coverage], [$>=90%$], [$100%$],
    [MPD-DL], [Data Loss Rate], [$<= 1%$], [$<= 0,01%$],
  ),
  [Metriche per misurare la qualità delle funzionalità.],
  label-id: "tab-qual-funz",
)

\
== Affidabilità


#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-BC], [Branch Coverage], [$>= "60%"$], [$>= "80%"$],
    [MPD-SC], [Statement Coverage], [$>= "70%"$], [$>= "90%"$],
  ),
  [Metriche per misurare la qualità dell'affidabilità.],
  label-id: "tab-qual-aff",
)

\
== Usabilità
#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-TT], [Time on Task], [$<= "30 min"$], [$<= "10 min"$],
  ),
  [Metriche per misurare la qualità dell'usabilità.],
  label-id: "tab-qual-usab",
)

\
== Efficienza

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-RT], [Response Time], [$<= "2 secondi"$], [$<= "0,5 secondi"$],
  ),
  [Metriche per misurare la qualità dell'efficienza.],
  label-id: "tab-qual-eff",
)


== Manutenibilità

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-CS], [Code Smell], [$<= "3"$], [$<= "1"$],
    [MPD-COC], [Coefficient of Coupling], [$<= "0.5"$], [$<= "0.2"$],
    [MPD-CYC], [Cyclomatic Complexity], [$<= "15"$], [$<= "10"$],
  ),
  [Metriche per misurare la qualità della manutenibilità.],
  label-id: "tab-qual-manut",
)

// #pagebreak()

== Sicurezza

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-DE], [Data Encryption Coverage], [$"100% dati sensibili"$], [$"100% dati sensibili"$],
  ),
  [Metriche per misurare la qualità della sicurezza.],
  label-id: "tab-qual-sicur",
)

== Metriche di progresso dei test

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-TS], [Test di Sistema Specificati], [$100%$], [$100%$],
    [MPD-TE], [Test di Sistema Eseguiti], [$100%$], [$100%$],
    [MPD-TP], [Test di Sistema Superati], [$100%$], [$100%$],
  ),
  [Metriche per misurare il progresso dei test.],
  label-id: "tab-qual-progresso-test",
)

= Metodi di testing
La presente sezione descrive le attività di testing adottate nel progetto e le metriche utilizzate per valutare l'efficacia del processo di verifica.

Le attività di testing forniscono evidenza oggettiva del corretto funzionamento dell'intero sistema e supportano la valutazione delle metriche di qualità del prodotto discusse in questo documento.

I test avranno un codice univoco, la descrizione, il requisito di riferimento e lo stato attuale. \
I codici per descrivere gli stati dei test sono i seguenti:
- *NI*: Non Implementato
- *I*: Implementato, ma non ancora verificato
- *S*: Superato, ovvero il test è stato eseguito ed ha restituito un esito positivo
- *NS*: Non Superato, ovvero il test è stato eseguito ma ha restituito un esito negativo

== Copertura del codice
La copertura del codice (detta anche *Code Coverage*) misura la percentuale di codice sorgente eseguita durante l'esecuzione dei test automatici. Tale metrica consente di valutare il grado di verifica del software ed è direttamente collegata alla metrica *MPC-CC (Code Coverage)*.

Il valore minimo accettabile è fissato all'*80%*

#let markup = eval.with(mode: "markup")

/*
  Crea i dati di una tabella per mostrare TU o TI di un microservizio
  - func-codice: funzione per generare il codice del test
  - lista-test: la lista di test (TU o TI)
  - nome-sez: nome della sotto sezione nella lista
*/
#let crea-dati-tabella = (func-codice, lista-test, nome-sez) => {
  let tabella = ()
  for test in lista-test.at(nome-sez) {
    let new-code = func-codice(test.id)
    tabella.push(new-code)
    tabella.push(markup(test.descr))
    tabella.push(markup(test.expected))
    tabella.push(markup(test.state))
  }
  tabella
}

/*
  Crea una tabella per mostrare i test 
*/
#let crea-tabella = (dati, caption, label-id) => {
  tabella-paginata(
    table(
      columns: (1fr, 2.5fr, 2.5fr, 0.7fr),
      align: (x, y) => (
        if x == 0 or x == 3 { center + horizon } 
        else { start + horizon }
      ),
      inset: 8pt,
      fill: (x, y) => if y == 0 { gray.lighten(70%) },
      [*Codice*], [*Descrizione*], [*Valore atteso*], [*Stato*],
      ..dati
    ),
    caption,
    label-id: label-id,
  )
}

== Test di unità <test-unità>
I test di unità hanno l'obiettivo di verificare il corretto funzionamento delle singole unità software in isolamento. Particolare attenzione viene posta alle funzioni critiche e a quelle che implementano la logica di business principale del sistema. Considerata la natura distribuita dell'architettura, tali test risultano fondamentali per individuare errori che possono insorgere in particolare durante la comunicazione tra sensori, gateway e infrastruttura cloud, ambito in cui è più probabile che si verifichino rispetto alle singole componenti isolate.

L'esecuzione dei test unitari contribuisce al miglioramento delle metriche *MPC-TSR (Test Success Rate)* e *MPC-CC (Code Coverage)*, riducendo il numero di difetti introdotti nelle fasi successive.

Si noti che le sezioni seguenti suddividono i test di unità per microservizio / _container_ nel modello C4.


#let tu-counter = counter("tu-counter")
#tu-counter.update(1)

#let LISTA-TU = json("../../tracciamento/TU.json")


#let tu = id => context {
  tu-counter.step()
  let tu-name = tu-counter.display(value => "TU-" + str(value))
  [*#tu-name*]
}

#let tabella-TU-backend      = crea-dati-tabella(tu, LISTA-TU, "Backend")
#let tabella-TU-frontend     = crea-dati-tabella(tu, LISTA-TU, "Frontend")
#let tabella-TU-gateway      = crea-dati-tabella(tu, LISTA-TU, "Gateway")
#let tabella-TU-dataconsumer = crea-dati-tabella(tu, LISTA-TU, "DataConsumer")

#show "_": it => it + h(0pt, weak: true)

=== Test di unità per Cloud Backend
Di seguito si riporta la lista di #gloss[test unitari] per il microservizio *Cloud Backend*.

#crea-tabella(
  tabella-TU-backend, 
  [Test di unità per Cloud Backend con descrizione, valore atteso e stato di implementazione],
  "tab-tu-cloud-backend",
)

=== Test di unità per Cloud Frontend
Di seguito si riporta la lista di #gloss[test unitari] per il front-end della dashboard.

#crea-tabella(
  tabella-TU-frontend, 
  [Test di unità per Cloud Frontend con descrizione, valore atteso e stato di implementazione],
  "tab-tu-cloud-frontend",
)

=== Test di unità per Gateway Simulator
Di seguito si riporta la lista di #gloss[test unitari] per il microservizio *Gateway Simulator*.

#crea-tabella(
  tabella-TU-gateway, 
  [Test di unità per Gateway Simulator con descrizione, valore atteso e stato di implementazione],
  "tab-tu-cloud-gw-simulator",
)

=== Test di unità per Data Consumer
Di seguito si riporta la lista di #gloss[test unitari] per il microservizio *Data Consumer*.

#crea-tabella(
  tabella-TU-dataconsumer, 
  [Test di unità per Data Consumer con descrizione, valore atteso e stato di implementazione],
  "tab-tu-cloud-backend",
)


== Test di integrazione <test-integrazione>
I #gloss[test d'integrazione] verificano il corretto comportamento delle interazioni tra i vari componenti del sistema. Considerata la natura distribuita dell'architettura, tali test risultano fondamentali per il raggiungimento di un solido risultato.

#let ti-counter = counter("ti-counter")
#ti-counter.update(1)

#let LISTA-TI = json("../../tracciamento/TI.json")
#let tabella-TI = ()

#let ti = id => context {
  ti-counter.step()
  let ti-name = ti-counter.display(value => "TI-" + str(value))
  [*#ti-name*]
}

#let tabella-TI-dashboard    = crea-dati-tabella(ti, LISTA-TI, "Dashboard")
#let tabella-TI-gateway      = crea-dati-tabella(ti, LISTA-TI, "Gateway")
#let tabella-TI-dataconsumer = crea-dati-tabella(ti, LISTA-TI, "DataConsumer")

=== Test di integrazione per Cloud Backend
Di seguito si riporta la lista di #gloss[test d'integrazione] per il microservizio *Cloud Backend*.

#crea-tabella(
  tabella-TI-dashboard,
  [Test d'integrazione per Cloud Backend con descrizione, valore atteso e stato di implementazione],
  "tab-ti-dashboard"
)

=== Test di integrazione per Gateway Simulator
Di seguito si riporta la lista di #gloss[test d'integrazione] per il microservizio *Gateway Simulator*.

#crea-tabella(
  tabella-TI-gateway,
  [Test d'integrazione per Gateway Simulator con descrizione, valore atteso e stato di implementazione],
  "tab-ti-gateway"
)

=== Test di integrazione per Data Consumer
Di seguito si riporta la lista di #gloss[test d'integrazione] per il microservizio *Data Consumer*.

#crea-tabella(
  tabella-TI-dataconsumer,
  [Test d'integrazione per Data Consumer con descrizione, valore atteso e stato di implementazione],
  "tab-ti-dataconsumer"
)


== Test di regressione
I test di regressione vengono eseguiti in seguito all'implementazione di nuove funzionalità o modifiche al sistema, in modo da accertarsi che il corretto comportamento precedente non sia stato compromesso.
Essi consistono nella riesecuzione dei test unitari e di integrazione già esistenti. Un aumento del numero di test di regressione falliti rappresenta un indicatore di instabilità e deve essere strettamente monitorato per evitare regressioni funzionali.

== Test di sistema
I test di sistema verificano il corretto comportamento complessivo dell'applicazione in un ambiente il più possibile simile a quello di utilizzo reale. \
Essi coprono l'insieme dei requisiti funzionali definiti nel capitolato.

#show figure: set block(breakable: true)



/* Test di Sistema ----------------------------------------------------- */
#let ts-map = state("ts-map", (:))

#let ts-counter = counter("ts-counter")
#ts-counter.update(1)

#let ts = id => context {
  let ts-name = ts-counter.display(value => "TS-" + str(value))
  let index = ts-counter.get().at(0)
  let position = here().position()
  [
    #context ts-counter.display("TS-1")
    #ts-map.update(old => {
      old.insert(id, (
        name: ts-name,
        pos: position,
        index: index,
      ))
      old
    })
  ]

  ts-counter.step(level: 1)
}

#let ref-ts = id => {
  context link(ts-map.final().at(id).pos)[#ts-map.final().at(id).name]
}


/* RF ----------------------------------------------------------------------- */
#let rf-formal-names = state("rf-formal-names", (:))

#let rf-counter = counter("rf-counter")
#rf-counter.update(1)

#let rf = (id, number, urgenza) => context {
  let formal-name = "RF-" + str(number) + "-" + urgenza
  [
    #rf-formal-names.update(
      old => {
        old.insert(id, formal-name)
        old
      },
    )
    *#formal-name* #label(id)
  ]
  // rf-counter.step()
}


#let ref-rf = id => context {
  if id in rf-formal-names.final() {
    link(label(id))[#context rf-formal-names.final().at(id)]
  } else { "LINK MANCANTE" }
}

#let get-tracciamento = lista-test => {
  lista-test
    .enumerate()
    .map(((i, test)) => {
      ([*#context ref-ts(test.id)*], [#ref-rf(test.ref-req)])
    })
    .flatten()
}

/*
	aggiunge i test SOLO in questa lista
*/
#let lista-RF = json("../../tracciamento/RF.json")

#let tracciamento-RF = (:)
#let missing-counter = counter("missing-counter")

#let c = 1
#for rf in lista-RF {
  tracciamento-RF.insert(rf.id, (..rf, number: c))
  rf-counter.step()
  c += 1
}

/* ----------------------------------------------------------------- */
#let tracciamento-ts = (:)
#let tracciamento-inverso-ts = (:)
#let lista-TS = json("../../tracciamento/TS.json")
#let requisiti-coperti = 0
#let totale-requisiti = lista-RF.len()

#for ts in lista-TS {
  if ts.ref-req in tracciamento-RF {
    tracciamento-ts.insert(ts.id, ts.ref-req)
    tracciamento-inverso-ts.insert(ts.ref-req, ts.id)
    requisiti-coperti += 1
  }
}

#let tabella-tracciamento-ts = ()
#let tabella-tracciamento-inverso-ts = ()

#for (ts-id, rf-id) in tracciamento-ts {
  tabella-tracciamento-ts.push(
    [*#context ref-ts(ts-id)*],
  )
  tabella-tracciamento-ts.push(
    [#context ref-rf(rf-id)],
  )
}

#for (rf-id, ts-id) in tracciamento-inverso-ts {
  tabella-tracciamento-inverso-ts.push([
    *#context ref-rf(rf-id)*
  ])
  tabella-tracciamento-inverso-ts.push([
    #context ref-ts(ts-id)
  ])
}

#tabella-paginata(
  table(
    columns: (1fr, 3fr, 1fr, 0.5fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Identificativo*], [*Descrizione*], [*Requisito di riferimento*], [*Stato*],
    ..lista-TS
      .enumerate()
      .map(((i, test)) => {
        (
          [*#context ts(test.id)*],
          [#markup(test.descr)],
          [
            #if test.ref-req in tracciamento-RF {
              context rf(
                test.ref-req,
                tracciamento-RF.at(test.ref-req).number,
                tracciamento-RF.at(test.ref-req).urgenza,
              )
            } else {
              "RF mancante"
            }

          ],
          [#test.state],
        )
      })
      .flatten(),
  ),
  [Test di Sistema con descrizione e requisito di riferimento],
  label-id: "tab-test-sistema",
)

#pagebreak()
== Tracciamento test funzionali <tracciamento-test-funzionali>
/*
NON TOCCARE
*/


// #rf-counter.update(0)
// #ts-counter.update(1)

/*
Non usare questa tabella usare lista sopra
*/

=== Tracciamento TS -- RF <tracciamento-ts-rf>
Di seguito, si esegue il tracciamento assegnando a ogni test di sistema (TS) il relativo requisito funzionale (RF):
#columns(3)[
  #align(center)[
    #tabella-paginata(
      table(
        columns: (auto, auto),
        align: center,
        table.header([*Test*], [*Requisito*]),
        ..tabella-tracciamento-ts,
      ),
      [Tracciamento test funzionali],
      label-id: "tab-test-funz",
    )
  ]
]

=== Tracciamento RF -- TS <tracciamento-rf-ts>
Di seguito, si esegue il tracciamento assegnando a ogni requisito funzionale (RF) il relativo test di sistema (TS):
#columns(3)[
  #align(center)[
    #tabella-paginata(
      table(
        columns: (auto, auto),
        align: center,
        table.header([*Test*], [*Requisito*]),
        ..tabella-tracciamento-inverso-ts,
      ),
      [Tracciamento inverso test funzionali],
      label-id: "tab-test-funz-inverso",
    )
  ]
]

#tabella-paginata(
  table(
    columns: (auto, auto),
    align: center,
    table.header([*N° RF coperti da TS*], [*N° RF totali*]),
    [#requisiti-coperti], [#totale-requisiti],
  ),
  [Conteggio requisiti coperti da TS],
  label-id: "tab-copertura",
)


== Test di accettazione
I test di accettazione verificano che il sistema soddisfi i *requisiti utente* relativi al #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[capitolato d'appalto].\
Nella tabella sottostante il singolo test di accettazione verrà associato ad un requisito di riferimento nel capitolato d'appalto.

#let lista-test-accettazione = json("../../tracciamento/TA.json")

#tabella-paginata(
  table(
    columns: (1fr, 3fr, 1fr, 0.5fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Identificativo*], [*Descrizione*], [*Requisito di riferimento*], [*Stato*],
    ..lista-test-accettazione
      .enumerate()
      .map(((i, test)) => {
        ([TA-#(i + 1)], [#eval(test.descr, mode: "markup")], [#test.ref-req], [#test.state])
      })
      .flatten(),
  ),
  [Test di accettazione con descrizione e requisito utente di riferimento],
  label-id: "tab-test-accettazione",
)

= Cruscotto di valutazione // aka DASHBOARD

In questa sezione vengono presentate le misurazioni raccolte negli sprint compresi tra l'aggiudicazione del capitolato e il raggiungimento della RTB.
Le metriche sono state rilevate a ogni sprint e vengono qui riportate tramite tabelle riepilogative, grafici di andamento e relativa interpretazione qualitativa.

L'obiettivo del cruscotto è monitorare l'andamento di costi, tempi e produttività del team, individuando eventuali scostamenti rispetto alla pianificazione.

Si noti che ai fini di questo documento, lo *sprint 10* si considera appartenente alla #gloss[Product Baseline] (PB), in quanto il cruscotto #gloss[Piano di Qualifica] appartenente alla #gloss[Requirements and Technology Baseline] (RTB) mostra le misurazioni delle metriche dallo sprint 1 allo sprint 9, inclusi.

== MPC-PV e MPC-EV: _Planned Value_ ed _Earned Value_

// TODO: come fa PV di s17 a essere 1240? non abbiamo più soldi

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[PV (€)]],
      [#text(fill: white, weight: "bold")[EV (€)]],
      [#text(fill: white, weight: "bold")[PV acc. (€)]],
      [#text(fill: white, weight: "bold")[EV acc. (€)]],
    ),
    [Sprint 1],   [390,00],    [292,50],    [390,00],    [292,50],    
    [Sprint 2],   [290,00],    [120,83],    [680,00],    [413,33],    
    [Sprint 3],   [120,00],    [264,00],    [800,00],    [677,33],    
    [Sprint 4],   [290,00],    [290,00],    [1.090,00],  [967,33],    
    [Sprint 5],   [275,00],    [450,00],    [1.365,00],  [1.417,33],  
    [Sprint 6],   [395,00],    [373,06],    [1.760,00],  [1.790,39],  
    [Sprint 7],   [435,00],    [460,59],    [2.195,00],  [2.250,98],  
    [Sprint 8],   [445,00],    [1.260,83],  [2.640,00],  [3.511,81],  
    [Sprint 9],   [895,00],    [386,08],    [3.535,00],  [3.897,89],  
    [Sprint 10],  [435,00],    [1.344,55],  [3.970,00],  [5.242,43],  
    [Sprint 11],  [1.560,00],  [1.720,59],  [5.530,00],  [6.963,02],  
    [Sprint 12],  [1.300,00],  [1.300,00],  [6.830,00],  [8.263,02],  
    [Sprint 13],  [1.200,00],  [1.136,00],  [8.030,00],  [9.399,02],  
    [Sprint 14],  [1.125,00],  [950,70],    [9.155,00],  [10.349,73], 
    [Sprint 15],  [1.045,00],  [801,17],    [10.200,00], [11.150,89], 
    [Sprint 16],  [925,00],    [1.427,72],  [11.125,00], [12.578,61], 
    [Sprint 17],  [1.240,00],  [209,58],    [12.365,00], [12.788,19], 

  ),
  [Valori di PV, EV, PV accumulato ed EV accumulato per sprint],
  label-id: "tab-valori-EP-EV",
)


#figure(
  image("../../assets/metriche/PB/pv-ev.svg"),
  caption: [Valori di PV e EV per sprint],
) <fig-pv-ev>

=== RTB (Sprint 1--9)
Il valore pianificato (PV) mostra un incremento progressivo coerente con l'avanzamento del progetto.

Nel primo sprint l'EV risulta inferiore al PV, ma a partire dallo sprint 3 si osserva un miglioramento delle _performance_, con diversi periodi in cui l'EV supera il PV (Sprint 3--5, 7, 8), segnale di una produzione di valore superiore alle attese.

L'EV accumulato raggiunge €3.897.89, superiore al PV accumulato di €3.535,00, indicando un avanzamento complessivamente in anticipo rispetto alla pianificazione.

*Soglia accettabile:* $"PV" > 0€$ _sempre rispettata_. \
*Soglia ottima:* $"EV" > "PV"$ _rispettata nella maggioranza degli sprint_

=== PB (Sprint 10--17)
In questo frangente temporale, il PV mostra un incremento più ripido rispetto a quello osservato durante l'RTB, poiché sono state compiute meno ore di "palestra" e molte più ore produttive, tra progettazione, codifica e verifica del prodotto effettivo.

L'EV risulta leggermente inferiore al PV negli sprint 13, 14 e 15 a causa di una pianificazione troppo ottimistica del lavoro da svolgere. Ciònonostante, tra lo sprint 10 e 16, l'EV accumulato è consistentemente superiore al PV accumulato, in quanto nello sprint 10 l'EV è stato pari a circa il triplo del PV: perciò, l'impatto degli sprint in cui l'EV è inferiore al PV è stato assorbito dallo sprint 10.

L'EV cumulativo raggiunge €12.788,19 alla fine della PB, risultando leggermente superiore (+3,42%) al PV cumulativo di €12.365,00. 

*Soglia accettabile:* $"PV" > 0€$ _sempre rispettata_. \
*Soglia ottima:* $"EV" > "PV"$ _sempre rispettata, soprattutto tra sprint 10 e 16_


== MPC-AC e MPC-ETC rispetto a MPC-EAC: _Actual Cost_ ed _Estimate To Complete_ rispetto a _Estimate At Completion_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[AC (€)]],
      [#text(fill: white, weight: "bold")[AC acc. (€)]],
      [#text(fill: white, weight: "bold")[EAC (€)]],
      [#text(fill: white, weight: "bold")[ETC (€)]],
    ),
    [Sprint 1],   [290,00],    [290,00],    [12.851,10], [12.561,10], 
    [Sprint 2],   [290,00],    [580,00],    [12.912,00], [12.332,00], 
    [Sprint 3],   [150,00],    [730,00],    [13.051,62], [12.321,62], 
    [Sprint 4],   [465,00],    [1.195,00],  [13.027,01], [11.832,01], 
    [Sprint 5],   [320,00],    [1.515,00],  [12.793,86], [11.278,86], 
    [Sprint 6],   [415,00],    [1.930,00],  [12.823,49], [10.893,49], 
    [Sprint 7],   [375,00],    [2.305,00],  [12.845,34], [10.540,34], 
    [Sprint 8],   [495,00],    [2.800,00],  [12.879,58], [10.079,58], 
    [Sprint 9],   [830,00],    [3.630,00],  [12.784,72], [9.154,72],  
    [Sprint 10],  [415,00],    [4.045,00],  [12.635,34], [8.590,34],  
    [Sprint 11],  [1.640,00],  [5.685,00],  [12.659,22], [6.974,22],  
    [Sprint 12],  [1.480,00],  [7.165,00],  [12.536,40], [5.371,40],  
    [Sprint 13],  [865,00],    [8.030,00],  [12.533,68], [4.503,68],  
    [Sprint 14],  [1.275,00],  [9.305,00],  [12.641,21], [3.336,21],  
    [Sprint 15],  [1.315,00],  [10.620,00], [12.641,68], [2.021,68],  
    [Sprint 16],  [985,00],    [11.605,00], [12.685,81], [1.080,81],  
    [Sprint 17],  [765,00],    [12.370,00], [12.671,09], [301,09],    
  ),
  [Valori di AC, ETC e EAC per sprint],
  label-id: "tab-valori-AC-ETC-EAC",
)

#figure(
  image("../../assets/metriche/PB/ac-etc.svg"),
  caption: [Valori di AC, ETC e EAC per sprint],
)

=== RTB (Sprint 1--9)
Il costo effettivo sostenuto (AC) cresce progressivamente fino a raggiungere €3.630,00 allo sprint 9. Il valore massimo di spesa per singolo sprint si registra nello sprint 9 (€830,00), in corrispondenza del picco di attività operative.

L'ETC mostra una riduzione quasi costante nel tempo, passando da €12.561,10 a €9.154,72, a conferma del regolare avanzamento del progetto verso il completamento.

Il valore di EAC si stabilizza attorno a €12.784,72, risultando inferiore rispetto al BAC dal valore di €12.925,00.

*Soglia accettabile:* $"AC" > 0€$ _sempre rispettata_. \
*Soglia ottima:* $"AC" lt.eq "EAC"$ _sempre rispettata_.

*Soglia accettabile:* $"ETC" gt.eq 0$  _sempre rispettata_. \
*Soglia ottima:* $"ETC" gt.eq 0$  _sempre rispettata_.

=== PB (Sprint 10--17)
Tra lo sprint 9 e 10, l'AC accumulato rimane stabile in quanto il primo sprint della PB è stato dedicato ad attività di "palestra" non rendicontate, per poi crescere più rapidamente dei primi 9 sprint, raggiungendo allo sprint 17 il totale finale di €12.370,00. L'AC ha raggiunto il suo picco di €1.640,00 durante lo sprint 11, in concomitanza con l'inizio delle attività di codifica.

L'ETC mostra una riduzione costante, passando da €9.154,72 allo sprint 9 a €301,09 allo sprint 17, riconfermando il regolare avanzamento del progetto.

Il valore di EAC dopo lievi oscillazioni tra €12.533,68 e €12.685,81 si è stabilizzato al valore di €12.671,09, risultando inferiore al BAC finale di €12.725,00, con uno scostamento  di 

== MPC-CV e MPC-SV: _Cost Variance_ e _Schedule Variance_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[CV (€)]],
      [#text(fill: white, weight: "bold")[SV (€)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1],   [+20,31],   [-97,50],   [Ritardo schedulazione],
    [Sprint 2],   [ 0,00],    [ 0,00],    [In linea],
    [Sprint 3],   [-16,00],   [+24,00],   [Sopra budget, ma in anticipo],
    [Sprint 4],   [-20,00],   [+14,55],   [Sopra budget, ma in anticipo],
    [Sprint 5],   [-7,78],    [+75,00],   [Sopra budget, ma in anticipo],
    [Sprint 6],   [+1,56],    [+21,94],   [Sotto budget e in anticipo],
    [Sprint 7],   [ 0,00],    [0,00],     [In linea],
    [Sprint 8],   [+17,00],   [+49,44],   [In anticipo (costo in linea)],
    [Sprint 9],   [+5,20],    [-52,65],   [Lievemente sopra budget, ritardo schedulazione],
    [Sprint 10],  [+13,12],   [0,00],     [Lievemente sopra budget, ritardo schedulazione], 
    [Sprint 11],  [+8,02],    [+14,71],   [Sopra budget, in anticipo], 
    [Sprint 12],  [+2,00],    [+56,00],   [Sopra budget, grande anticipo], 
    [Sprint 13],  [ 0,00],    [+38,00],   [Anticipo nella schedulazione], 
    [Sprint 14],  [+11,14],   [+18,45],   [Sotto budget, in anticipo], 
    [Sprint 15],  [+2,00],    [+28,67],   [Lievemente sopra budget, in anticipo], 
    [Sprint 16],  [+1,00],    [+40,22],   [In anticipo], 
    [Sprint 17],  [+9,89],    [+6,48],    [Lievemente sopra budget e in anticipo],    
  ),
  [Cost Variance e Schedule Variance per sprint],
  label-id: "tab-CS-SV",
)

#figure(
  image("../../assets/metriche/PB/cv-sv.svg"),
  caption: [Cost Variance e Schedule Variance per sprint],
)

=== RTB (Sprint 1--9)
- *Cost Variance (CV)*: La CV risulta prevalentemente positiva o nulla, indicando un buon controllo dei costi. Gli unici scostamenti negativi si verificano negli sprint 3, 4 e 5. Lo sprint 1 registra il miglior risultato economico (+€20,71), sebbene esso presenti il peggior valore di SV di tutto il progetto: in questo caso, si può attribuire questa variabilità all'inesperienza del gruppo all'inizio del progetto.

- *Schedule Variance (SV)*: La SV presenta maggiore variabilità. Lo sprint 1 evidenzia il principale ritardo (-€97,50), attribuibile alla fase iniziale di rodaggio del _team_. Gli sprint intermedi mostrano valori positivi significativi, indicando recupero e anticipo sulla pianificazione. Nello sprint 9 si osserva un nuovo rallentamento (-€52,65), possibile causa i rallentamenti dovuti allo svolgimento di esami e alla precedente preparazione del _team_.

*Soglia accettabile CV:* $"CV" > 0$ _violata in 2 sprint su 9 (scostamenti minimi)_ \
*Soglia accettabile SV:* $"SV" >= 0$ _violata negli sprint 1 e 9_

=== PB (Sprint 10--17)
- *Cost Variance (CV)*: Dopo lo sprint 10, la CV risulta molto meno variabile e sempre in pari o in positivo, a dimostrazione della maggiore esperienza ottenuta dal gruppo nella pianificazione e gestione delle attività. Il valore di CV più alto ottenuto in questo periodo è allo sprint 10, con CV pari a +€13,12, in concomitanza con l'inizio delle attività di codifica.

- *Schedule Variance (SV)*: Dopo lo sprint 10, la SV presenta valori positivi fluttuanti tra €0,00 (nello sprint 10) e +€56,00 (nello sprint 12).

*Soglia accettabile CV:* $"CV" > 0$ _sempre rispettata_ \
*Soglia accettabile SV:* $"SV" >= 0$ _sempre rispettata_

== MPC-BAC e MPC-EAC: _Budget At Completion_ ed _Estimate At Completion_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[EAC (€)]],
      [#text(fill: white, weight: "bold")[BAC (€)]],
      [#text(fill: white, weight: "bold")[Stato]],
    ),
    [Sprint 1],   [12.851,10], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 2],   [12.912,00], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 3],   [13.051,62], [12.975,00], [$"EAC" > "BAC"$], 
    [Sprint 4],   [13.027,01], [12.975,00], [$"EAC" > "BAC"$], 
    [Sprint 5],   [12.793,86], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 6],   [12.823,49], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 7],   [12.845,34], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 8],   [12.879,58], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 9],   [12.784,72], [12.975,00], [$"EAC" < "BAC"$], 
    [Sprint 10],  [12.635,34], [12.875,00], [$"EAC" < "BAC"$], 
    [Sprint 11],  [12.659,22], [12.875,00], [$"EAC" < "BAC"$], 
    [Sprint 12],  [12.536,40], [12.875,00], [$"EAC" < "BAC"$], 
    [Sprint 13],  [12.533,68], [12.875,00], [$"EAC" < "BAC"$], 
    [Sprint 14],  [12.641,21], [12.725,00], [$"EAC" < "BAC"$], 
    [Sprint 15],  [12.641,68], [12.725,00], [$"EAC" < "BAC"$], 
    [Sprint 16],  [12.685,81], [12.725,00], [$"EAC" < "BAC"$], 
    [Sprint 17],  [12.671,09], [12.725,00], [$"EAC" < "BAC"$], 

  ),
  [EAC vs BAC per sprint],
  label-id: "tab-EAC-BAC",
)

#figure(
  image("../../assets/metriche/PB/eac-bac.svg"),
  caption: [EAC vs BAC per sprint],
)

=== RTB (Sprint 1--9)

Durante il progetto l'EAC oscilla attorno al BAC, con valori compresi tra €12.793,58 e €13.051,49. Il superamento del BAC si verifica esclusivamente negli sprint 3 e 4; a partire dallo sprint 5 l'EAC rientra stabilmente sotto il budget previsto.

Nel complesso, 7 sprint su 9 presentano EAC inferiore al BAC, indicando una previsione di completamento sotto budget.

*Risparmio stimato finale*: €120,89 (#math.approx -0,9%)

*Soglia accettabile:* $"EAC">= 0,95 times "BAC"$ _rispettata in 7 sprint su 9_

=== PB (Sprint 10--17)

Tra gli sprint 10 e 13, l'EAC è sceso in seguito al ricalcolo del budget compiuto allo sprint 10, per poi risalire dallo sprint 14, stabilizzandosi a €12.671,09 con una differenza minima dal budget finale stabilito di 12.725,00.

*Risparmio stimato finale*: €53,91 (#math.approx -0,42%)

*Soglia accettabile*: $"EAC">= 0,95 times "BAC"$ _sempre rispettata_

== MPC-TCR: _Task Completion Rate_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[Completate]],
      [#text(fill: white, weight: "bold")[In Ritardo]],
      [#text(fill: white, weight: "bold")[TCR (%)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1], 	[12],	[0],	[100,0%], [Ottimo],
    [Sprint 2], 	[11],	[0],	[100,0%], [Ottimo],
    [Sprint 3], 	[10],	[1],	[90,0%],  [Accettabile],
    [Sprint 4], 	[12],	[0],	[100,0%], [Ottimo],
    [Sprint 5], 	[12],	[0],	[100,0%], [Ottimo],
    [Sprint 6], 	[11],	[1],	[90,9%],  [Accettabile],
    [Sprint 7], 	[8],	[2],	[75,0%],  [Critico],
    [Sprint 8], 	[12],	[2],	[83,3%],  [Critico],
    [Sprint 9], 	[25],	[1],	[96,0%],  [Accettabile],

    [Sprint 10],	[18],	[0],	[100,0%], [Ottimo],
    [Sprint 11],	[34],	[0],	[100,0%], [Ottimo],
    [Sprint 12],	[28],	[0],	[100,0%], [Ottimo],
    [Sprint 13],	[19],	[4],	[82,6%],  [Critico],
    [Sprint 14],	[28],	[6],	[88,0%],  [Accettabile],
    [Sprint 15],	[19],	[3],	[86,4%],  [Accettabile],
    [Sprint 16],	[30],	[7],	[86,0%],  [Accettabile],
    [Sprint 17],	[14],	[3],	[82,3%],  [Critico],
  ),
  [Task Completion Rate per sprint],
  label-id: "tab-TCR",
)

#figure(
  image("../../assets/metriche/PB/tcr.svg"),
  caption: [Task Completion Rate per sprint],
)

=== RTB (Sprint 1--9)
Il TCR risulta ottimo (100%) in 4 sprint su 9, accettabile ($>=$ 85%) in 3 sprint su 9 e critico ($< 85%$) in 2 sprint su 9.

Le principali flessioni si osservano nei seguenti sprint:
- Sprint 3 e 6:  circa 91%
- Sprint 7:      80,0% (unico sotto soglia accettabile)

Il recupero completo nello sprint 9 (100% con 24 task completate) dimostra una buona capacità di reazione del team.

*Soglia accettabile:* $"TCR" gt.eq 85%$ _violata solo negli sprint 7 e 8_. \

=== PB (Sprint 10--17)
Su 8 sprint, il TCR risulta ottimo in 3, accettabile in 3 e critico in 2.

Le principali flessioni si osservano nei seguenti sprint:
- Sprint 13: circa 82,6%
- Sprint 14: circa 88,0%
- Sprint 16: circa 86,0%

L'andamento generale della metrica è positivo nella prima metà del periodo analizzato, mentre tra lo sprint 13 e lo sprint 17 si è rilevato un peggioramento del TCR a causa di una serie di ritardi imprevisti nelle attività di codifica e verifica dell'#gloss[MVP].

*Soglia accettabile:* $"TCR" gt.eq 85%$ _violata solo nello sprint 13_. \


== MPC-TS: _Task Slippage_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[Completate]],
      [#text(fill: white, weight: "bold")[In Ritardo]],
      [#text(fill: white, weight: "bold")[TS (%)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1],	[12],	[0],	[0,0%],     [Ottimo],
    [Sprint 2],	[11],	[0],	[0,0%],     [Ottimo],
    [Sprint 3],	[10],	[1],	[10,0%],    [Accettabile],
    [Sprint 4],	[12],	[0],	[0,0%],     [Ottimo],
    [Sprint 5],	[12],	[0],	[0,0%],     [Ottimo],
    [Sprint 6],	[11],	[1],	[9,1%],     [Accettabile],
    [Sprint 7],	[8],	[1],	[12,5%],    [Accettabile],
    [Sprint 8],	[12],	[2],	[16,7%],    [Critico],
    [Sprint 9],	[25],	[1],	[4,0%],     [Accettabile],

    [Sprint 10],	[18],	[0],	[0,0%],   [Ottimo],
    [Sprint 11],	[34],	[0],	[0,0%],   [Ottimo],
    [Sprint 12],	[28],	[0],	[0,0%],   [Ottimo],
    [Sprint 13],	[19],	[3],	[15,8%],  [Critico],
    [Sprint 14],	[28],	[4],	[14,3%],  [Accettabile],
    [Sprint 15],	[19],	[2],	[10,5%],  [Accettabile],
    [Sprint 16],	[30],	[1],	[3,3%],   [Accettabile],
    [Sprint 17],	[14],	[0],	[0,0%],   [Ottimo],
  ),
  [Task Slippage per sprint],
  label-id: "tab-TS",
)

#figure(
  image("../../assets/metriche/PB/ts.svg"),
  caption: [Task Slippage per sprint],
)

=== RTB (Sprint 1--9)

Il Task Slippage conferma quanto osservato nel TCR:
- In 4 sprint su 9 il valore è pari a 0%, indicando pieno rispetto delle scadenze.
- Sprint 7 si colloca al limite (12,5%), mentre sprint 8 è oltre la soglia accettabile (> 15%), in concomitanza con la riduzione nel TCR nei medesimi sprint.
- Sprint 3 e 6 mostrano scostamenti fisiologici contenuti.

*Soglia accettabile:* $"TS" lt.eq 15%$ _violata solo nello sprint 7_. \

=== PB (Sprint 10--17)
Anche in questo caso, il TS conferma quanto si può osservare nel TCR:
- Dallo sprint 10 allo sprint 12, si ha il caso ottimo (0% TS).
- Nello sprint 13, la metrica supera la soglia accettabile (> 15%), per poi diminuire gradualmente fino a tornare alla situazione ottima nello sprint 17, mostrando in maniera tangibile il ritardo compiuto nel completamento delle task, il quale ha portato la metrica TCR a un valore intorno all'85%.

*Soglia accettabile:* $"TS" lt.eq 15%$ _violata solo nello sprint 13_. \


== MPC-PRCT: _Pull Request Cycle Time_

#figure(
  table(
    columns: (auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[PRCT Medio (ore)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1],	[18,6], [Ottimo],
    [Sprint 2],	[0], [Nessuna PR svolta],
    [Sprint 3],	[13], [Ottimo],
    [Sprint 4],	[0], [Nessuna PR svolta],
    [Sprint 5],	[1,7], [Ottimo],
    [Sprint 6],	[16], [Ottimo],
    [Sprint 7],	[0], [Nessuna PR svolta],
    [Sprint 8],	[40,5], [Accettabile],
    [Sprint 9],	[19,6], [Ottimo],

    [Sprint 10],	[11,5], [Ottimo],
    [Sprint 11],	[8], [Ottimo],
    [Sprint 12],	[30,7], [Accettabile],
    [Sprint 13],	[14,4], [Ottimo],
    [Sprint 14],	[63,6], [Critico],
    [Sprint 15],	[25,4], [Accettabile],
    [Sprint 16],	[48,3], [Critico],
    [Sprint 17],	[14,6], [Ottimo],

  ),
  caption: [Pull Request Cycle Time per sprint],
)

#figure(
  image("../../assets/metriche/PB/prct.svg"),
  caption: [Pull Request Cycle Time per sprint],
)

=== RTB (Sprint 1--9)

Il _Pull Request Cycle Time_ medio risulta complessivamente contenuto per la quasi totalità degli sprint, indicando un processo di revisione rapido ed efficace.

Valori moderatamente più elevati si osservano negli sprint 1 (18,6 ore), 6 (16 ore) e 9 (19,6 ore), comunque pienamente entro livelli ottimali. Lo sprint 8 rappresenta l'unica eccezione significativa, con un PRCT medio pari a 40,5 ore.

Nel complesso il _trend_ conferma una buona efficienza collaborativa del _team_.

*Soglia accettabile*: PRCT $gt.eq 48$ ore _sempre rispettata_. \
*Soglia ottima*: PRCT $gt.eq 24$ ore _rispettata in 8 su sprint 9_.

=== PB (Sprint 10--17)
Durante la PB, il PRCT medio è aumentato, superando la soglia ottimale negli sprint 12 (30,7 ore) e 15 (25,4 ore) e superando la soglia accettabile negli sprint 14 (63,6 ore) e 16 (48,3 ore). 

Questo aumento nella metrica dimostra la motivazione dietro l'aumento di TS e TCR riscontrato dallo sprint 13 in poi, in quanto la lentezza nella chiusura delle #gloss[pull request] è stata una delle cause nel ritardo nella chiusura delle task da svolgere durante gli sprint finali.

*Soglia accettabile*: PRCT $gt.eq 48$ ore _rispettata in 6 sprint su 8_. \
*Soglia ottima*: PRCT $gt.eq 24$ ore _rispettata in 4 su sprint 8_.

== MPC-WD: Distribuzione carico ore <mpc-wd>

#figure(
  table(
    columns: (auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[STD DEV (%)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1],   [5,35],    [Ottimo],  
    [Sprint 2],   [5,35],    [Ottimo],  
    [Sprint 3],   [11,78],   [Critico],  
    [Sprint 4],   [10,88],   [Critico],  
    [Sprint 5],   [9,37],    [Accettabile],  
    [Sprint 6],   [8,13],    [Accettabile],  
    [Sprint 7],   [7,06],    [Accettabile],  
    [Sprint 8],   [7,06],    [Accettabile],  
    [Sprint 9],   [8,28],    [Accettabile],  
    [Sprint 10],  [6,81],    [Accettabile],  
    [Sprint 11],  [7,75],    [Accettabile],  
    [Sprint 12],  [3,50],    [Ottimo],  
    [Sprint 13],  [3,51],    [Ottimo],  
    [Sprint 14],  [6,24],    [Ottimo],  
    [Sprint 15],  [5,63],    [Ottimo],  
    [Sprint 16],  [7,93],    [Accettabile],  
    [Sprint 17],  [10,17],   [Critico],  

  ),
  caption: [Distribuzione del carico di lavoro per sprint],
)



#figure(
  image("../../assets/metriche/PB/wd.svg"),
  caption: [Distribuzione del carico di lavoro per sprint],
) <fig-mpc-wd>

=== RTB (Sprint 1--9)
La metrica WD evidenzia una distribuzione del carico di lavoro generalmente equilibrata nella maggior parte degli sprint.

Nei primi due sprint la deviazione standard percentuale risulta inferiore alla soglia ottima ($lt.eq$ 6,30%), indicando una ripartizione particolarmente uniforme delle attività.

Negli sprint 3 e 4 si osservano invece valori superiori alla soglia accettabile del 10% (11,87% e 10,88%), evidenziando uno squilibrio temporaneo nel carico di lavoro tra i membri del team.

A partire dallo sprint 5 la metrica rientra stabilmente entro i limiti accettabili, mantenendosi compresa tra il 7% e il 9%, segno di un progressivo riequilibrio delle attività.

Nel complesso, le criticità risultano circoscritte e correttamente assorbite nel prosieguo del progetto.

*Soglia accettabile*: WD $lt.eq$ 10% _rispettata in 7 sprint su 9_. \
*Soglia ottima*: WD $lt.eq$ 6,30% _rispettata in 2 sprint su 9_.

=== PB (Sprint 10--17)
Dallo sprint 10 in poi, la metrica WD mostra una distribuzione pressoché equa del carico di lavoro.

La @fig-mpc-wd mostra che dallo sprint 12 al 15, ovvero in pieno periodo di progettazione e codifica dell'MVP, la distribuzione del carico di lavoro risiede entro la soglia ottimale. 

Perciò, si può evincere che tra le cause dei ritardi avvenuti negli sprint finali non vi è la mala distribuzione del carico di lavoro: è quindi ragionevole pensare che tali ritardi sono stati causati da una sottostima della mole di lavoro da dover compiere e ripartire tra lo sprint 13 e il 17.

*Soglia accettabile*: WD $lt.eq$ 10% _rispettata in 8 sprint su 8_. \
*Soglia ottima*: WD $lt.eq$ 6,30% _rispettata in 4 sprint su 8_.


== MPC-IG: Indice di Gulpease

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      text(fill: white, weight: "bold")[Sprint],
      text(fill: white, weight: "bold")[AdR],  
      text(fill: white, weight: "bold")[PdQ],  
      text(fill: white, weight: "bold")[NdP],  
      text(fill: white, weight: "bold")[PdP],
      text(fill: white, weight: "bold")[Glossario], 
      text(fill: white, weight: "bold")[ST],
      text(fill: white, weight: "bold")[MU],
    ),
    [Sprint 1], [*90,0*],	[60,0],	[*80,0*],	[73,0],	 [*85,0*],	    [-],	  [-],
    [Sprint 2], [*91,5*],	[72,0],	[74,5],	  [72,5],	 [*85,0*],	    [-],	  [-],
    [Sprint 3], [64,5],	 [72,0],	[72,0],	  [73,0],	 [*84,0*],	    [-],	  [-],
    [Sprint 4], [66,0],	 [72,0],	[71,0],	  [73,0],	 [*83,0*],	    [-],	  [-],
    [Sprint 5], [68,0],	 [69,5],	[71,0],	  [70,0],	 [*82,0*],	    [-],	  [-],
    [Sprint 6], [68,0],	 [68,0],	[71,0],	  [73,0],	 [*82,0*],	    [-],	  [-],
    [Sprint 7], [70,0],	 [66,0],	[71,0],	  [73,0],	 [*82,0*],	    [-],	  [-],
    [Sprint 8], [71,0],	 [63,0],	[73,0],	  [73,0],	 [*83,0*],	    [-],	  [-],
    [Sprint 9], [72,5],	 [63,0],	[73,0],	  [73,5],	 [*83,0*],	    [-],	  [-],
    
    [Sprint 10], [75,0],	[63,0],	[73,0],	  [73,5],	 [*83,0*],	  [*90,0*],	[-],
    [Sprint 11], [75,0],	[63,0],	[72,0],	  [73,5],	 [*81,0*],	  [*91,5*],	[-],
    [Sprint 12], [75,0],	[64,0],	[72,0],	  [73,5],	 [*81,0*],	  [*85,0*],	[-],
    [Sprint 13], [75,0],	[63,0],	[72,0],	  [73,5],	 [*80,0*],	  [79,0],	  [-],
    [Sprint 14], [75,0],	[61,0],	[72,0],	  [75,0],	 [*81,0*],	  [78,0],	  [-],
    [Sprint 15], [75,0],	[68,0],	[71,0],	  [75,0],	 [*82,0*],	  [75,0],	  [-],
    [Sprint 16], [75,0],	[67,0],	[71,0],	  [75,0],	 [*82,0*],	  [72,0],	  [*85,0*],
    [Sprint 17], [75,0],	[69,0],	[71,0],	  [75,0],	 [*81,0*],	  [77,0],	  [*81,0*],
  ),
  caption: [Indice di Gulpease per documento per sprint],
)

Si noti che i valori ottimi nella tabella sono segnati in *grassetto*, mentre i valori nulli sono segnati con un trattino.

#figure(
  image("../../assets/metriche/PB/gulpease.svg"),
  caption: [Indice di Gulpease per documento per sprint],
)

=== RTB (Sprint 1--9)
Nel complesso il _team_ ha mantenuto una buona attenzione alla leggibilità dei documenti prodotti. Il *glossario* e l'#gloss[Analisi dei Requisiti] (AdR) si collocano stabilmente in prossimità o al di sopra della soglia ottima ($>= 80$), indicando la loro elevata comprensibilità.

L'AdR evidenzia un calo significativo tra lo sprint 1 e lo sprint 3 (da 90 a 65), riconducibile all'inserimento massivo di contenuti tecnici, coincidente con l'avvio della redazione dei primi casi d'uso. Successivamente il valore recupera progressivamente fino a 72,5.

Il Piano di Qualifica (PdQ) mostra un andamento leggermente decrescente (da 72 a 63), pur rimanendo sempre superiore alla soglia minima di accettabilità ($>= 40$).

Le Norme di Progetto (NdP) si mantengono invece stabili nell'intervallo 71--73, valori coerenti con la natura normativa del documento, tipicamente meno scorrevole rispetto ai documenti descrittivi.

*Soglia accettabile*: $"IG" >= 40$ _rispettata_ \
*Soglia ottima*: $"IG" >= 60$ _rispettata_

=== PB (Sprint 10--17)
Nel complesso, il gruppo ha continuato a mantenere una buona leggibilità su tutti i documenti prodotto. Si nota che i documenti più leggibili rimangono l'#gloss[Analisi dei Requisiti], il *glossario* e il *Manuale Utente* aggiunto a partire dallo sprint 15.

L'AdR è rimasta stabile, in quanto non vi sono state apportate modifiche significative.

Il PdQ mostra un'oscillazione tra 63 e 69, valore su cui si è stabilizzato allo sprint 17, al fine di renderlo il più leggibile possibile.

L'NdP ha subito un lieve calo da 72 a 71, in quanto sono state aggiunte nuove normative relative alla codifica che hanno leggermente abbassato il grado di leggibilità del documento.

Il PdP ha subito un incremento a 75, in quanto sono state applicate ad esso modifiche per renderlo più leggibile.

Il Glossario ha subito oscillazioni nel range 80--83 per poi stabilizzarsi a 81 in quanto sono stati aggiunti numerosi termini tecnici con grado di leggibilità più basso.

La Specifica Tecnica (ST) è stato aggiunto alla _repository_ durante lo sprint 10 con un indice di Gulpease di 90, in quanto le prime sezioni aggiunte al documento presentano contenuti semplici relativamente alle tecnologie usate. Man mano che il documento è stato ampliato aggiungendo dettagli tecnici che hanno influito negativamente sull'indice, portandolo a 77 durante lo sprint 17.

Infine, il Manuale Utente (MU) è stato aggiunto alla _repository_ durante lo sprint 16 con indice di Gulpease a 85, in quanto le prime sezioni aggiunte al documento presentano descrizioni semplici del sistema ad alto livello e istruzioni rivolte agli utenti. L'indice si è abbassato a 81 nello sprint 17 una volta aggiunti al documento contenuti tecnici rivolti agli sviluppatori.

*Soglia accettabile*: $"IG" >= 40$ _rispettata_ \
*Soglia ottima*: $"IG" >= 60$ _rispettata_

== MPC-CO: Correttezza Ortografica

#figure(
  image("../../assets/metriche/PB/errori.svg"),
  caption: [Numero di errori ortografici per documento per sprint],
)

=== RTB (Sprint 1--9)
Il grafico evidenzia i primi sprint caratterizzati da una gestione non ancora ottimale degli errori ortografici. Infatti nei primi sprint (S1-S4) si registrano infatti picchi significativi, in particolare:
- Analisi dei Requisiti: fino a 34 errori nello sprint 3
- Norme di Progetto: fino a 28 errori nello sprint 4
- Piano di Progetto: 14 errori nello sprint 1

Un'analisi più approfondita ha evidenziato che parte degli errori segnalati dallo script automatico includeva forme linguistiche corrette, come le “d” eufoniche, erroneamente classificate come refusi. Tali segnalazioni sono state individuate, verificate manualmente e successivamente escluse dal conteggio.

A partire dagli sprint successivi si osserva una drastica riduzione degli errori, fino al raggiungimento sistematico del valore ottimo (0 errori) nella maggior parte dei documenti. Persistono solo sporadiche anomalie residue (AdR: 1 errore in S9; NdP: 2 errori in S8; PdQ: 2 errori in S6), fisiologiche in un contesto di aggiornamento continuo dei documenti.

Nel complesso, l'andamento conferma un progressivo miglioramento del processo di revisione e controllo qualitativo.

=== PB (Sprint 10--17)
Per quanto riguarda PdQ, NdP, PdP e Glossario non si sono riscontrati ulteriori errori ortografici dallo sprint 10 in poi, in quanto sono state applicate modifiche minori a questi documenti e si è utilizzata maggiore discrezione nella scrittura di tali.

Per quanto riguarda l'AdR si nota un picco trascurabile allo sprint 14 di un errore ortografico, risolto negli sprint successivi

Per quanto riguarda la Specifica Tecnica, si sono riscontrati tra i 12 e i 21 errori costanti dallo sprint 10 allo sprint 16, sintomo di mancata attenzione agli errori ortografici, aggiunti a pari passo con la stesura del documento stesso. Tutti gli errori sono stati risolti dallo sprint 16 in vista della consegna finale del progetto.

Per quanto riguarda il Manuale Utente si sono rilevati 15 errori alla creazione del documento (sprint 16), i quali sono stati risolti nello sprint successivo, in preparazione alla consegna finale del progetto.

== MPC-TE : _Time Efficiency_

#figure(
  table(
    columns: (auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[TE (%)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1],	  [41,0%], [Critico],
    [Sprint 2],	  [48,0%], [Critico],
    [Sprint 3],	  [52,0%], [Accettabile],
    [Sprint 4],	  [50,0%], [Accettabile],
    [Sprint 5],	  [71,0%], [Accettabile],
    [Sprint 6],	  [94,0%], [Ottimo],
    [Sprint 7],	  [83,3%], [Accettabile],
    [Sprint 8],	  [52,6%], [Accettabile],
    [Sprint 9],	  [55,5%], [Accettabile],
    [Sprint 10],	[48,8%], [Critico],
    [Sprint 11],	[60,7%], [Accettabile],
    [Sprint 12],	[62,0%], [Accettabile],
    [Sprint 13],	[58,5%], [Accettabile],
    [Sprint 14],	[71,2%], [Accettabile],
    [Sprint 15],	[83,3%], [Accettabile],
    [Sprint 16],	[90,5%], [Ottimo],
    [Sprint 17],	[94,0%], [Ottimo],
  ),
  caption: [_Time Efficiency_ per sprint],
)

#figure(
  image("../../assets/metriche/PB/te.svg"),
  caption: [_Time Efficiency_ sprint],
)

=== RTB (Sprint 1--9)
La metrica evidenzia gli sprint iniziali caratterizzati da un'elevata quantità di ore dedicate alle attività di palestra, con valori che scendono al di sotto della soglia accettabile.
Successivamente si osserva un incremento progressivo fino al raggiungimento di un picco di circa il 94% nello sprint 6.

Nei successivi sprint il rapporto diminuisce nuovamente.

*Soglia accettabile*: TE $gt.eq$ 50% _rispettata sempre_,\
*Soglia ottima*: TE $gt.eq$ 90% _rispettata in 1 sprint su 9_.

=== PB (Sprint 10--17)
Allo sprint 10, la metrica assume valore critico, dovuto all'alto numero di _task_ di studio non rendicontabili che sono emerse, relative alla progettazione dell'#gloss[MVP].

Dallo sprint 10, il valore della metrica cresce quasi costantemente partendo da un valore poco sotto la soglia accettabile (48,8%), fatta eccezione per la diminuzione allo sprint 13, momento in cui sono state compiute più _task_ non rendicontabili del previsto.

L'andamento della metrica mostra che dallo sprint 10 in poi, le attività di progetto hanno richiesto una considerevole quantità di studio prima di ritornare ai valori raggiunti durante lo sprint 6.

*Soglia accettabile*: TE $gt.eq$ 50% _rispettata in 7 sprint su 8_,\
*Soglia ottima*: TE $gt.eq$ 90% _rispettata in 2 sprint su 8_.

== MPC-QMS: _Quality Metrics Satisfied_
// TODO: da rivedere in caso
#figure(
  table(
    columns: (auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[Sprint]],
      [#text(fill: white, weight: "bold")[MPC-QMS]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1],   [81,8%],   [Accettabile],      
    [Sprint 2],   [100,0%],  [Ottimo], 
    [Sprint 3],   [90,9%],   [Accettabile], 
    [Sprint 4],   [91,7%],   [Accettabile], 
    [Sprint 5],   [92,3%],   [Accettabile], 
    [Sprint 6],   [80,0%],   [Accettabile], 
    [Sprint 7],   [90,2%],   [Accettabile], 
    [Sprint 8],   [84,6%],   [Accettabile], 
    [Sprint 9],   [76,9%],   [Critico],

    [Sprint 10],  [100,0%],  [Ottimo], 
    [Sprint 11],  [92,3%],   [Accettabile], 
    [Sprint 12],  [86,9%],   [Accettabile], 
    [Sprint 13],  [86,9%],   [Accettabile], 
    [Sprint 14],  [86,9%],   [Accettabile], 
    [Sprint 15],  [79,2%],   [Critico], 
    [Sprint 16],  [89,2%],   [Accettabile], 
  ),
  caption: [_Quality Metrics Satisfied_ per sprint],
)

#figure(
  image("../../assets/metriche/PB/qm.svg"),
  caption: [_Quality Metrics Satisfied_ per sprint],
)

=== RTB (Sprint 1--9)
L'indicatore QMS evidenzia un'elevata percentuale di metriche di qualità soddisfatte lungo gli sprint. Il valore ottimo (100%) viene raggiunto in quattro sprint (S2, S4, S5, S6), a conferma della piena conformità agli obiettivi di qualità prefissati.

Negli altri sprint il valore si mantiene comunque sopra l'80%, rientrando sempre nella soglia di accettabilità. Le flessioni osservate negli sprint 1 e 7 (rispettivamente 81,8% e 80,0%) risultano contenute e non critiche.

L'andamento complessivo mostra una costante attenzione al rispetto delle metriche di qualità, senza mai scendere sotto i livelli minimi previsti.

*Soglia accettabile*: QMS $gt.eq 80$% _sempre rispettata_. \
*Soglia ottima*: QMS $= 100%$ _rispettata in 1 sprint su 9_.

=== PB (Sprint 10--17)
Allo sprint 10, la metrica QMS è sotto la soglia accettabile poiché la transizione verso la PB ha fatto emergere la necessità di svolgere numerose _task_ di "palestra" non rendicontabili e ha esacerbato le criticità organizzative emerse negli sprint precedenti.

A partire dallo sprint 11, il gruppo ha dimostrato grande capacità di ripresa mantenendo la metrica QMS entro la soglia accettabile fino allo sprint 17, fatta eccezione per lo sprint 16, in cui si è registrata un valore critico di 79,2% il quale rimane comunque vicino alla soglia accettabile.

*Soglia accettabile*: QMS $gt.eq 80$% _rispettata in 6 sprint su 8_. \
*Soglia ottima*: QMS $= 100%$ _rispettata in 1 sprint su 9_.

= Iniziative di miglioramento <iniziative-miglioramento>
Le iniziative di miglioramento hanno lo scopo di analizzare l'andamento del progetto, soprattutto i problemi, e applicare correzioni incrementali sia ai processi interni che al prodotto. Il gruppo adotta un approccio basato sul miglioramento continuo per minimizzare i rischi e massimizzare l'efficienza. \

== Valutazione sull'organizzazione

#tabella-paginata(
  table(
    columns: (1.4fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],

    [Rendicontazione dei compiti],
    [La rendicontazione dei compiti non è sempre tempestiva, causando difficoltà nella pianificazione e nella gestione delle attività],
    [Creazione di nuove GitHub View per facilitare la rendicontazione e monitoraggio più frequente delle task],

    [Aggiornamento tempestivo documenti incrementali],
    [Mancanza di aggiornamento periodico dei documenti incrementali, quali #gloss[NdP] e #gloss[glossario], con conseguente accumulo di modifiche],
    [Creazione di una #gloss[GitHub Issue] dedicata per ogni nuova modifica e successiva assegnazione a un membro del team],

    [Divisione atomica dei compiti],
    [Difficoltà nel completamento di task troppo ampie o complesse, con conseguente rallentamento del progresso],
    [Scomposizione dei compiti in unità più piccole e gestibili, facilitando il completamento e migliorando la tracciabilità delle attività],

    [Pianificazione delle attività a lungo termine],
    [Mancanza di pianificazione strategica a lungo termine, con conseguente difficoltà nella definizione delle attività a breve termine],
    [Istanziazione di Milestone interne a lungo termine e utilizzo di diagramma di Gantt per pianificazione a lungo termine],

    [Distribuzione del carico],
    [Sovraccarichi per alcuni membri a causa della suddivisione non omogenea del lavoro],
    [Istanziazione della metrica *WSD*(@mpc-wd) per monitorare la distribuzione del carico e adottare misure correttive in caso di squilibri],

    [Dissidi interni],
    [Tensioni emerse a causa di differenti personalità o approcci lavorativi],
    [Discussione privata e mirata con i diretti interessati per favorire un confronto sereno],
  ),
  [Azioni adottate per migliorare l'organizzazione.],
  label-id: "tab-azioni-org",
)

== Valutazione sui ruoli

#tabella-paginata(
  table(
    columns: (1.4fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],
    [Verificatore],
    [Necessità di una maggiore frequenza di verifica dei documenti e del codice per garantire un'alta qualità],
    [Definizione di un nuovo stato per le GitHub Issue, denominato "In Review", per obbligare una issue ad essere verificata prima di essere chiusa. Inoltre definizione a monte, in fase di #gloss[Sprint Planning], delle task di verifica.],
  ),
  [Azioni adottate per migliorare la gestione dei ruoli.],
  label-id: "tab-azioni-ruoli",
)

== Valutazione sugli strumenti

#tabella-paginata(
  table(
    columns: (1.5fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],

    [Utilizzo di GitHub Project],
    [Difficoltà nell'utilizzo di GitHub Project e delle relative issue con i campi custom, con conseguente difficoltà nella rendicontazione],
    [Sessioni di affiancamento per l'utilizzo di GitHub Project, creazione di template per la creazione delle issue e creazione di GitHub View più intuitive],

    [NATS],
    [Difficoltà nello studio e nell'utilizzo di NATS per la scarsa esperienza del team],
    [Creazione di un documento interno che riassume le principali funzionalità di NATS, basato sulla documentazione ufficiale],

    [Glossario],
    [Difficoltà nel controllo della presenza di una parola nel #gloss[glossario]],
    [Al posto del solo documento PDF è stato creato, a partire dallo stesso file JSON, una sezione dedicata nella repository del gruppo],
  ),
  [Azioni adottate per migliorare l'uso degli strumenti],
  label-id: "tab-azioni-str",
)
