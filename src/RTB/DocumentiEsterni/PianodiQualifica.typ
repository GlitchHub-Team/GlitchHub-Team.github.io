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
  stato: "Da verificare",
  registro-modifiche: (
    (
      "0.12.1",
      "17/02/2026",
      "Michele Dioli",
      "-",
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
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "",
  left-signature: "",
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
- Le attività di *Controllo di qualità*
- Le iniziative di *Miglioramento continuo*

// TODO: Per i documenti con versione sarebbe meglio indicare la versione nel nome e la data di ultimo accesso
== Riferimenti
=== Riferimenti normativi
- *Norme di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf \
  *Ultimo accesso*: versione 1.0.0

- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori"* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf \
  *Ultimo accesso*: 5 febbraio 2026

- *Piano di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf \
  *Ultimo accesso*: versione 0.8.0

=== Riferimenti informativi
- *Glossario* \
  https://glitchhub-team.github.io/pdf/glossary.pdf \
  *Ultimo accesso*: 29 dicembre 2025

- *Slide T07 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf \
  *Ultimo accesso*: 29 dicembre 2025

- *Slide T08 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf \
  *Ultimo accesso*: 29 dicembre 2025

- *ISO/IEC 25010* \
  https://iso25000.com/index.php/en/iso-25000-standards/iso-25010 \
  *Ultimo accesso*: 29 dicembre 2025

- *Metrica software -- Wikipedia* \
  https://it.wikipedia.org/wiki/Metrica_software \
  *Ultimo accesso*: 24 gennaio 2026

= Metriche di Qualità del Processo
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
    [MPC-TE], [Time efficiency], [$>= 50%$], [$>= 90%$],
    [MPC-WD], [Work Distribution], [$$], [$$],
    [MPC-SPF], [Single Point of Failure Risk], [$15%$], [$<10%$],
  ),
  [Valori per misurare l'efficacia della qualità e dei processi.],
  label-id: "tab-qual-qual-proc",
)

\
= Metriche di Qualità del Prodotto
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
    [MPD-AD], [API Documentation], [$>=90%$], [$100%$],
    [MPD-DL], [Data Loss], [$0,1%-1%$], [$<0,01%$],
  ),
  [Valori per misurare la qualità delle funzionalità.],
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
  [Valori per misurare la qualità dell'affidabilità.],
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

    [MPD-LT], [Learning Time], [$<= "30 min"$], [$<= "10 min"$],
  ),
  [Valori per misurare la qualità dell'usabilità.],
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
  [Valori per misurare la qualità dell'efficienza.],
  label-id: "tab-qual-eff",
)


== Manutenibilità

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-CD], [Code Smell], [$<= "3"$], [$<= "1"$],
    [MPD-COC], [Coefficient of Coupling], [$<= "0.5"$], [$<= "0.2"$],
    [MPD-CYC], [Cyclomatic Complexity], [$<= "15"$], [$<= "10"$],
  ),
  [Valori per misurare la qualità della manutenibilità.],
  label-id: "tab-qual-manut",
)

#pagebreak()
== Sicurezza

#tabella-paginata(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],

    [MPD-DE], [Data encryption], [$"100% dati sensibili"$], [$"100% dati sensibili"$],
  ),
  [Valori per misurare la qualità della sicurezza.],
  label-id: "tab-qual-sicur",
)

\

= Metodi di Testing
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

Il valore minimo accettabile è fissato all' 80%

== Test Unitari
I test unitari hanno l'obiettivo di verificare il corretto funzionamento delle singole unità software in isolamento. Particolare attenzione viene posta alle funzioni critiche e a quelle che implementano la logica di business principale del sistema. Considerata la natura distribuita dell'architettura, tali test risultano fondamentali per individuare errori che possono insorgere in particolare durante la comunicazione tra sensori, gateway e infrastruttura cloud, ambito in cui è più probabile che si verifichino rispetto alle singole componenti isolate. \
L'esecuzione dei test unitari contribuisce al miglioramento delle metriche *MPC-TSR (Test Success Rate)* e *MPC-CC (Code Coverage)*, riducendo il numero di difetti introdotti nelle fasi successive.

== Test di Integrazione
I test di integrazione verificano il corretto comportamento delle interazioni tra i vari componenti del sistema. Considerata la natura distribuita dell'architettura, tali test risultano fondamentali per il raggiungimento di un solido risultato.

== Test di Regressione
I test di regressione vengono eseguiti in seguito all'implementazione di nuove funzionalità o modifiche al sistema, in modo da accertarsi che il corretto comportamento precedente non sia stato compromesso.
Essi consistono nella riesecuzione dei test unitari e di integrazione già esistenti. Un aumento del numero di test di regressione falliti rappresenta un indicatore di instabilità e deve essere strettamente monitorato per evitare regressioni funzionali.

== Test di Sistema
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
          [#eval(test.descr, mode: "markup")],
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


== Test di Accettazione
I Test di Accettazione verificano che il sistema soddisfi i *requisiti utente* relativi al #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[capitolato d'appalto].\
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
  [Test di Accettazione con descrizione e requisito utente di riferimento],
  label-id: "tab-test-accettazione",
)

= Cruscotto di Valutazione // aka DASHBOARD

In questa sezione vengono presentate le misurazioni raccolte negli sprint compresi tra l'aggiudicazione del capitolato e il raggiungimento della RTB.
Le metriche sono state rilevate a ogni sprint e vengono qui riportate tramite tabelle riepilogative, grafici di andamento e relativa interpretazione qualitativa.

L'obiettivo del cruscotto è monitorare l'andamento di costi, tempi e produttività del team, individuando eventuali scostamenti rispetto alla pianificazione.

== MPC-PV e MPC-EV: _Planned Value_ e _Earned Value_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[sprint]],
      [#text(fill: white, weight: "bold")[PV (€)]],
      [#text(fill: white, weight: "bold")[EV (€)]],
      [#text(fill: white, weight: "bold")[PV acc. (€)]],
      [#text(fill: white, weight: "bold")[EV acc. (€)]],
    ),
    [Sprint 1], [315,00], [242,31], [315,00], [242,31],
    [Sprint 2], [240,00], [240,00], [555,00], [482,31],
    [Sprint 3], [120,00], [144,00], [675,00], [626,31],
    [Sprint 4], [290,00], [290,00], [965,00], [916,31],
    [Sprint 5], [200,00], [250,00], [1.165,00], [1.166,31],
    [Sprint 6], [345,00], [366,56], [1.510,00], [1.532,87],
    [Sprint 7], [260,00], [260,00], [1.770,00], [1.792,87],
    [Sprint 8], [445,00], [519,17], [2.215,00], [2.312,04],
    [Sprint 9], [895,00], [842,35], [3.110,00], [3.154,39],
  ),
  [Valori di PV e EV per sprint],
  label-id: "tab-valori-EP-EV",
)


#figure(
  image("../../assets/metriche/pv-ev.svg"),
  caption: [Valori di PV e EV per sprint],
)

Il valore pianificato (PV) mostra un incremento progressivo coerente con l'avanzamento del progetto.

Nel primo sprint l'EV risulta inferiore al PV (€242,31 contro €315,00). A partire dallo sprint 3 si osserva un miglioramento delle _performance_, con diversi periodi in cui l'EV supera il PV (S3, S5, S6, S8), segnale di una produzione di valore superiore alle attese.

L'EV accumulato raggiunge €3.154,39, leggermente superiore al PV accumulato di €3.110,00, indicando un avanzamento complessivamente in anticipo rispetto alla pianificazione.

*Soglia accettabile:* $"PV" > 0€$ _sempre rispettata_. \
*Soglia ottima:* $"EV" > "PV"$ _rispettata nella maggioranza degli sprint_


== MPC-AC e MPC-ETC: _Actual Cost_ e _Estimate To Complete_

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[sprint]],
      [#text(fill: white, weight: "bold")[AC (€)]],
      [#text(fill: white, weight: "bold")[AC acc. (€)]],
      [#text(fill: white, weight: "bold")[ETC (€)]],
      [#text(fill: white, weight: "bold")[EAC (€)]],
    ),
    [Sprint 1], [240,00], [240,00], [12.611,43], [12.851,43],
    [Sprint 2], [240,00], [480,00], [12.432,92], [12.912,92],
    [Sprint 3], [150,00], [630,00], [12.421,49], [13.051,49],
    [Sprint 4], [290,00], [920,00], [12.107,28], [13.027,28],
    [Sprint 5], [230,00], [1.150,00], [11.643,58], [12.793,58],
    [Sprint 6], [365,00], [1.515,00], [11.308,74], [12.823,74],
    [Sprint 7], [260,00], [1.775,00], [11.070,67], [12.845,67],
    [Sprint 8], [520,00], [2.295,00], [10.584,39], [12.879,39],
    [Sprint 9], [830,00], [3.125,00], [9.729,11], [12.854,11],
  ),
  [Valori di AC, ETC e EAC per sprint],
  label-id: "tab-valori-AC-ETC-EAC",
)

#figure(
  image("../../assets/metriche/ac-etc.svg"),
  caption: [Valori di AC, ETC e EAC per sprint],
)

Il costo effettivo sostenuto (AC) cresce progressivamente fino a raggiungere €3.125,00 allo sprint 9. Il valore massimo di spesa per singolo sprint si registra nello sprint 9 (€830,00), in corrispondenza del picco di attività operative.

L'ETC mostra una riduzione costante nel tempo, passando da €12.611,43 a €9.729,11, a conferma del regolare avanzamento del progetto verso il completamento.

Il valore di EAC si stabilizza attorno a €12.854,11, risultando inferiore rispetto al BAC di €12.975,00, con uno scostamento positivo di circa lo 0,9%.

*Soglia accettabile:* $"AC" > 0€$ _sempre rispettata_. \
*Soglia ottima:* $"AC" lt.eq "EAC"$ _sempre rispettata_.

*Soglia accettabile:* $"ETC" gt.eq 0$  _sempre rispettata_. \
*Soglia ottima:* $"ETC" gt.eq 0$  _sempre rispettata_.

== MPC-CV e MPC-SV: _Cost Variance_ e _Schedule Variance_


#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[sprint]],
      [#text(fill: white, weight: "bold")[CV (€)]],
      [#text(fill: white, weight: "bold")[SV (€)]],
      [#text(fill: white, weight: "bold")[Giudizio]],
    ),
    [Sprint 1], [+2,31], [-72,69], [Ritardo schedulazione],
    [Sprint 2], [0,00], [0,00], [In linea],
    [Sprint 3], [-6,00], [+24,00], [Lieve costo extra],
    [Sprint 4], [0,00], [0,00], [In linea],
    [Sprint 5], [+20,00], [+50,00], [Sotto budget e in anticipo],
    [Sprint 6], [+1,56], [+21,56], [Sotto budget e in anticipo],
    [Sprint 7], [0,00], [0,00], [In linea],
    [Sprint 8], [-0,83], [+74,17], [In anticipo (costo ~in linea)],
    [Sprint 9], [+12,35], [-52,65], [Ritardo schedulazione],
  ),
  [Cost Variance e Schedule Variance per sprint],
  label-id: "tab-CS-SV",
)

#figure(
  image("../../assets/metriche/cv-sv.svg"),
  caption: [Cost Variance e Schedule Variance per sprint],
)

- *Cost Variance (CV)*: La CV risulta prevalentemente positiva o nulla, indicando un buon controllo dei costi. Gli unici scostamenti negativi si verificano negli sprint 3 (-€6,00) e 8 (-€0,83), entrambi di entità trascurabile. Lo sprint 5 registra il miglior risultato economico (+€20,00), dove vengono spese maggiori ore di analista coerentemente coincidenti con la scrittura della documentazione.

- *Schedule Variance (SV)*: La SV presenta maggiore variabilità. Lo sprint 1 evidenzia il principale ritardo (-€72,69), attribuibile alla fase iniziale di rodaggio del _team_. Gli sprint intermedi mostrano valori positivi significativi, indicando recupero e anticipo sulla pianificazione. Nello sprint 9 si osserva un nuovo rallentamento (-€52,65), possibile causa i rallentamenti dovuti allo svolgimento di esami e alla precedente preparazione del _team_.

*Soglia accettabile CV:* $"CV" > 0$ _violata in 2 sprint su 9 (scostamenti minimi)_ \
*Soglia accettabile SV:* $"SV" gt.eq 0$ _violata negli sprint 1 e 9_


== MPC-BAC e MPC-EAC: _Budget At Completion_ e _Estimate At Completion_

$ "BAC" = 12.975 € $

#tabella-paginata(
  table(
    columns: (auto, auto, auto, auto),
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 { rgb("#1B2A4A") } else if calc.rem(y, 2) == 0 { rgb("#F4F6F7") } else { white },
    table.header(
      [#text(fill: white, weight: "bold")[sprint]],
      [#text(fill: white, weight: "bold")[EAC (€)]],
      [#text(fill: white, weight: "bold")[BAC (€)]],
      [#text(fill: white, weight: "bold")[Stato]],
    ),
    [Sprint 1], [12.851,43], [12.975,00], [EAC < BAC],
    [Sprint 2], [12.912,92], [12.975,00], [EAC < BAC],
    [Sprint 3], [13.051,49], [12.975,00], [EAC > BAC],
    [Sprint 4], [13.027,28], [12.975,00], [EAC > BAC],
    [Sprint 5], [12.793,58], [12.975,00], [EAC < BAC],
    [Sprint 6], [12.823,74], [12.975,00], [EAC < BAC],
    [Sprint 7], [12.845,67], [12.975,00], [EAC < BAC],
    [Sprint 8], [12.879,39], [12.975,00], [EAC < BAC],
    [Sprint 9], [12.854,11], [12.975,00], [EAC < BAC],
  ),
  [EAC vs BAC per sprint],
  label-id: "tab-EAC-BAC",
)

#figure(
  image("../../assets/metriche/eac-bac.png"),
  caption: [EAC vs BAC per sprint],
)

Durante il progetto l'EAC oscilla attorno al BAC, con valori compresi tra €12.793,58 e €13.051,49. Il superamento del BAC si verifica esclusivamente negli sprint 3 e 4; a partire dallo sprint 5 l'EAC rientra stabilmente sotto il budget previsto.

Nel complesso, 8 sprint su 9 presentano EAC inferiore al BAC, indicando una previsione di completamento sotto budget.

*Risparmio stimato finale*: €120,89 (≈ -0,9%)

*Soglia accettabile: EAC* $>= 0,95$ x BAC = €12.326,25 _sempre rispettata_


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
    [Sprint 1], [12], [0], [100,0%], [Ottimo],
    [Sprint 2], [11], [0], [100,0%], [Ottimo],
    [Sprint 3], [10], [1], [90,9%], [Accettabile],
    [Sprint 4], [11], [0], [100,0%], [Ottimo],
    [Sprint 5], [11], [0], [100,0%], [Ottimo],
    [Sprint 6], [11], [1], [91,7%], [Accettabile],
    [Sprint 7], [8], [2], [80,0%], [Critico],
    [Sprint 8], [12], [2], [85,7%], [Accettabile],
    [Sprint 9], [24], [0], [100,0%], [Ottimo],
  ),
  [Task Completion Rate per sprint],
  label-id: "tab-TCR",
)

#figure(
  image("../../assets/metriche/tcr.svg"),
  caption: [Task Completion Rate per sprint],
)

Il TCR risulta ottimo (100%) in 6 sprint su 9.

Le principali flessioni si osservano:

- Sprint 7:  80,0% (unico sotto soglia accettabile)
- Sprint 8:  85,7%
- Sprint 3: e 6  circa 91%

Il recupero completo nello sprint 9 (100% con 24 task completate) dimostra una buona capacità di reazione del team.

*Soglia accettabile:* $"TCR" gt.eq 85%$ _violata solo nello sprint 7_. \


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
    [Sprint 1], [12], [0], [0,0%], [Ottimo],
    [Sprint 2], [11], [0], [0,0%], [Ottimo],
    [Sprint 3], [10], [1], [9,1%], [Accettabile],
    [Sprint 4], [11], [0], [0,0%], [Ottimo],
    [Sprint 5], [11], [0], [0,0%], [Ottimo],
    [Sprint 6], [11], [1], [8,3%], [Accettabile],
    [Sprint 7], [8], [2], [20,0%], [Critico],
    [Sprint 8], [12], [2], [14,3%], [Accettabile],
    [Sprint 9], [24], [0], [0,0%], [Ottimo],
  ),
  [Task Slippage per sprint],
  label-id: "tab-TS",
)

#figure(
  image("../../assets/metriche/ts.svg"),
  caption: [Task Slippage per sprint],
)

Il Task Slippage conferma quanto osservato nel TCR:
- In 6 sprint su 9 il valore è pari a 0%, indicando pieno rispetto delle scadenze
- Sprint 7 rappresenta il punto critico (20,0%), superando la soglia accettabile
- Sprint 8 si colloca al limite (14,3%)
- Sprint 3 e 6 mostrano scostamenti fisiologici contenuti

*Soglia accettabile:* $"TS" lt.eq 15%$ _violata solo nello sprint 7_. \

#pagebreak()

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
    [Sprint 1], [18.6], [Ottimo],
    [Sprint 2], [0], [Ottimo],
    [Sprint 3], [13], [Ottimo],
    [Sprint 4], [0], [Ottimo],
    [Sprint 5], [1.7], [Ottimo],
    [Sprint 6], [16], [Ottimo],
    [Sprint 7], [0], [Ottimo],
    [Sprint 8], [40.5], [Accettabile],
    [Sprint 9], [19.6], [Ottimo],
  ),
  caption: [Pull Request Cycle Time per sprint],
)

#figure(
  image("../../assets/metriche/prct.svg"),
  caption: [Task Slippage per sprint],
)

Il _Pull Request Cycle Time_ medio risulta complessivamente contenuto per la quasi totalità degli sprint, indicando un processo di revisione rapido ed efficace.

Valori moderatamente più elevati si osservano negli sprint 1 (18,6 ore), 6 (16 ore) e 9 (19,6 ore), comunque pienamente entro livelli ottimali. Lo sprint 8 rappresenta l'unica eccezione significativa, con un PRCT medio pari a 40,5 ore.

Nel complesso il _trend_ conferma una buona efficienza collaborativa del _team_.

*Soglia accettabile*: PRCT $gt.eq 48$ ore _sempre rispettata_ \
*Soglia ottima*: PRCT $gt.eq 24$ ore

== MPC-WSD Distribuzione carico ore <mpc-wsd>

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
    [Sprint 1], [5.35], [Ottimo],
    [Sprint 2], [5.35], [Ottimo],
    [Sprint 3], [11.87], [Critico],
    [Sprint 4], [10.88], [Critico],
    [Sprint 5], [9.37], [Accettabile],
    [Sprint 6], [8.13], [Accettabile],
    [Sprint 7], [8.99], [Accettabile],
    [Sprint 8], [7.06], [Accettabile],
    [Sprint 9], [8.28], [Accettabile],
  ),
  caption: [Distribuzione del carico di lavoro per sprint],
)

#figure(
  image("../../assets/metriche/wsd.svg"),
  caption: [wsd per sprint],
)

La metrica MPC-WD evidenzia una distribuzione del carico di lavoro generalmente equilibrata nella maggior parte degli sprint.

Nei primi due sprint la deviazione standard percentuale risulta inferiore alla soglia ottima ($lt.eq$ 6,30%), indicando una ripartizione particolarmente uniforme delle attività.

Negli sprint 3 e 4 si osservano invece valori superiori alla soglia accettabile del 10% (11,87% e 10,88%), evidenziando uno squilibrio temporaneo nel carico di lavoro tra i membri del team.

A partire dallo sprint 5 la metrica rientra stabilmente entro i limiti accettabili, mantenendosi compresa tra il 7% e il 9%, segno di un progressivo riequilibrio delle attività.

Nel complesso, le criticità risultano circoscritte e correttamente assorbite nel prosieguo del progetto.

Soglia ottima: MPC-WD $lt.eq$ 6,30%
Soglia accettabile: MPC-WD $lt.eq$ 10%

== MPC-IG: Indice di Gulpease

#figure(
  image("../../assets/metriche/gulpease.svg"),
  caption: [Indice di Gulpease per sprint],
)

Nel complesso il _team_ ha mantenuto una buona attenzione alla leggibilità dei documenti prodotti. Il Glossario e l'Analisi dei Requisiti (AdR) si collocano stabilmente in prossimità o al di sopra della soglia ottima ($>= 60$), indicando un'elevata comprensibilità dei testi.

L'AdR evidenzia un calo significativo tra lo sprint 1 e lo sprint 3 (da 90 a 65), riconducibile all'inserimento massivo di contenuti tecnici, coincidente con l'avvio della redazione dei primi casi d'uso. Successivamente il valore recupera progressivamente fino a 72,3.

Il Piano di Qualifica (PdQ) mostra un andamento leggermente decrescente (da 72 a 63), pur rimanendo sempre superiore alla soglia minima di accettabilità ($>= 40$).

Le Norme di Progetto (NdP) si mantengono invece stabili nell'intervallo 71-73, valori coerenti con la natura normativa del documento, tipicamente meno scorrevole rispetto ai documenti descrittivi.

Soglia accettabile: IG $>= 40$ _rispettata_
Soglia ottima: IG $>= 60$ _rispettata_


== MPC-CO: Correttezza Ortografica

#figure(
  image("../../assets/metriche/errori.svg"),
  caption: [Numero di errori ortografici per documento],
)

Il grafico evidenzia i primi sprint caratterizzati da una gestione non ancora ottimale degli errori ortografici. Infatti nei primi sprint (S1-S4) si registrano infatti picchi significativi, in particolare:
- Analisi dei Requisiti: fino a 34 errori nello sprint 3
- Norme di Progetto: fino a 28 errori nello sprint 4
- Piano di Progetto: 14 errori nello sprint 1

Un'analisi più approfondita ha evidenziato che parte degli errori segnalati dallo script automatico includeva forme linguistiche corrette, come le “d” eufoniche, erroneamente classificate come refusi. Tali segnalazioni sono state individuate, verificate manualmente e successivamente escluse dal conteggio.

A partire dagli sprint successivi si osserva una drastica riduzione degli errori, fino al raggiungimento sistematico del valore ottimo (0 errori) nella maggior parte dei documenti. Persistono solo sporadiche anomalie residue (AdR: 1 errore in S9; NdP: 2 errori in S8; PdQ: 2 errori in S6), fisiologiche in un contesto di aggiornamento continuo dei documenti.

Nel complesso, l'andamento conferma un progressivo miglioramento del processo di revisione e controllo qualitativo.

== MPC-TE : _Time efficiency_

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
    [Sprint 1], [41%], [Non acc.],
    [Sprint 2], [48%], [Non acc.],
    [Sprint 3], [52%], [Accettabile],
    [Sprint 4], [50%], [Accettabile],
    [Sprint 5], [71%], [Accettabile],
    [Sprint 6], [94%], [Ottimo],
    [Sprint 7], [90%], [Ottimo],
    [Sprint 8], [52%], [Non acc.],
    [Sprint 9], [55%], [Accettabile],
  ),
  caption: [_Time Efficiency_ per sprint],
)

#figure(
  image("../../assets/metriche/te.svg"),
  caption: [_Time Efficiency_ sprint],
)

La metrica evidenzia gli _sprint_ iniziali caratterizzati da un'elevata quantità di ore dedicate alle attività di palestra, con valori che scendono al di sotto della soglia accettabile.
Successivamente si osserva un incremento progressivo fino al raggiungimento di un picco di circa il 94% nello _sprint_ 6.

Nei successivi _sprint_ il rapporto diminuisce nuovamente.

*Soglia accettabile*: TE $gt.eq$ 50%\
*Soglia ottima*: TE $gt.eq$ 90%


== MPC-QMS: _Quality Metrics Satisfied_
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
    [Sprint 1], [81.8], [Accettabile],
    [Sprint 2], [100.0%], [Ottimo],
    [Sprint 3], [90.9%], [Accettabile],
    [Sprint 4], [100.0%], [Ottimo],
    [Sprint 5], [100.0%], [Ottimo],
    [Sprint 6], [100.0%], [Ottimo],
    [Sprint 7], [80.0%], [Accettabile],
    [Sprint 8], [90.9%], [Accettabile],
    [Sprint 9], [90.9%], [Accettabile],
  ),
  caption: [_Quality Metrics Satisfied_ per sprint],
)

#figure(
  image("../../assets/metriche/qm.svg"),
  caption: [_Quality Metrics Satisfied_ sprint],
)

L'indicatore MPC-QMS evidenzia un'elevata percentuale di metriche di qualità soddisfatte lungo gli sprint. Il valore ottimo (100%) viene raggiunto in quattro sprint (S2, S4, S5, S6), a conferma della piena conformità agli obiettivi di qualità prefissati.

Negli altri sprint il valore si mantiene comunque sopra l'80%, rientrando sempre nella soglia di accettabilità. Le flessioni osservate negli sprint 1 e 7 (rispettivamente 81,8% e 80,0%) risultano contenute e non critiche.

L'andamento complessivo mostra una costante attenzione al rispetto delle metriche di qualità, senza mai scendere sotto i livelli minimi previsti.

*Soglia accettabile*: MPC-QMS $gt.eq 80$% _sempre rispettata_ \
*Soglia ottima*: MPC-QMS = 100%


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
    [Istanziazione della metrica *WSD*(@mpc-wsd) per monitorare la distribuzione del carico e adottare misure correttive in caso di squilibri],

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
    [Definizione di un nuovo stato per le GitHub Issue, denominato "In Review", per obbligare una Issue ad essere verificata prima di essere chiusa. Inoltre definizione a monte, in fase di #gloss[Sprint Planning], delle task di verifica.],
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
    [Difficoltà nell'utilizzo di GitHub Project e delle relative Issue con i campi custom, con conseguente difficoltà nella rendicontazione],
    [Sessioni di affiancamento per l'utilizzo di GitHub Project, creazione di template per la creazione delle Issue e creazione di GitHub View più intuitive],

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
