#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

#show: report.with(
  titolo: "Piano di Qualifica",
  stato: "Da verificare",
  registro-modifiche: (
			(
			"0.9.0", 
			"07/02/2026", 
			"Siria Salvalaio", 
			"-", 
			[Stesura test di sistema da *TS-191* a *TS-254*]
		),
		(
			"0.8.0",
			"05/02/2026",
			"Elia Ernesto Stellin",
			"-",
			[Modifiche di formattazione varie; Modificata formattazione tabella @tracciamento-test-funzionali; Sistemato versionamento documento; Rimosso test relativo a ex *RF-149-Obb*]
		),
		(
			"0.7.0", 
			"05/02/2026", 
			"Riccardo Graziani", 
			"-", 
			[Stesura test di sistema da *TS-257* a *TS-294*]
		),
		(
			"0.6.0", 
			"04/02/2026", 
			"Michele Dioli", 
			"-", 
			[Stesura test di sistema da *TS-1* a *TS-64*]
		),
    (
			"0.5.0", 
			"03/02/2026", 
			"Hossam Ezzemouri", 
			"-", 
			[Correzione tabella + stesura test di sistema da *TS-129* a *TS-192*]
		),
    (
			"0.4.0",
			"03/02/2026",
			"Jaume Bernardi",
			"-", 
			"Stesura test di sistema"
		),
    (
			"0.3.2",
			"24/01/2026",
			"Siria Salvalaio",
			"Riccardo Graziani", 
			"Piccole modifiche"
		),
    (
			"0.3.1",
			"24/01/2026",
			"Siria Salvalaio",
			"Riccardo Graziani", 
			[Miglioramento descrizione metriche, aggiunta formule e migliorate @iniziative-miglioramento]
		),
    (
			"0.3.0",
			"17/01/2026",
			"Michele Dioli",
			"Riccardo Graziani", 
			"Inizio stesura formule metriche"
		),
    (
			"0.2.1",
			"13/01/2026",
			"Siria Salvalaio",
			"Riccardo Graziani", 
			[Inizio stesura @iniziative-miglioramento (bozza)]
		),
    (
			"0.2.0",
			"03/01/2026",
			"Hossam Ezzemouri",
			"Siria Salvalaio", 
			"Aggiunta di metriche"
		),
    (
			"0.1.0",
			"29/12/2025",
			"Siria Salvalaio",
			"Hossam Ezzemouri", 
			"Stesura metriche"
		),
    (
			"0.0.1",
			"21/12/2025",
			"Siria Salvalaio",
			"Hossam Ezzemouri", 
			"Bozza prime metriche e struttura documento"
		),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-documento: "Piano di Qualifica",
)

#let ts-counter = counter("ts-counter")

#let ts = () => {
  ts-counter.step()
  context ts-counter.display(value => {
    [*TS\-#value*]
  })
}

#let rf-counter = counter("rf-counter")

#let rf = (..args) => {
  rf-counter.step()
  let rilevanza = if args.at(0, default: []) != [] { args.at(0) } else { "Obb" }
  context rf-counter.display(value => {
    [*RF\-#value\-#rilevanza*]
  })
}

#let get-tracciamento = (lista-test) => {
  lista-test
    .enumerate()
    .filter(value => {
      let (index, cell) = value
      let col = calc.rem(index, 4)
      col == 0 or col == 2
    })
    .map(value => {
      let (index, cell) = value
      cell
    })
}

= Introduzione <introduzione>
== Finalità del documento
Questo documento, #gloss[Piano di Qualifica], rappresenta un riferimento fondamentale che organizza e coordina tutte le attività di qualifica per il prodotto software, integrando pianificazione, verifica e miglioramento.
Il Piano di qualifica determina 3 elementi essenziali:
- Il *Piano di Qualità*, cioè l'insieme delle attività e obiettivi di qualità
- Le attività di *Controllo di qualità*
- Le iniziative di *Miglioramento continuo*

== Riferimenti
=== Riferimenti normativi
- *Norme di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf \
  *Ultimo accesso*: versione 0.2.1

- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori"* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf \
  *Ultimo accesso*: 5 febbraio 2026

- *Piano di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf \
  *Ultimo accesso*: versione 0.7.4

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
- *MPC-PV (Planned Value)* \
  Valore economico del lavoro che si era pianificato di completare entro una certa data.
  $ "PV" = sum_(i=1)^(n) ("Ore Previste"_i times "Tariffa Oraria"_i) $

- *MPC-AC (Actual Cost)* \
  Costo effettivamente sostenuto per le ore lavorate.
  $ "AC" = sum_(i=1)^(n) ("Ore Effettive"_i times "Tariffa Oraria"_i) $

- *MPC-EV (Earned Value)* \
  Valore del lavoro effettivamente completato, misurato rispetto al budget totale. 
  $ "EV" = "PV" times ("Ore Completate" / "Ore Pianificate") $
  
- *MPC-BAC (Budget At Completion)* \
  Budget totale preventivato per l'intero progetto.
  $ "BAC" = 12.975 € $

- *MPC-EAC (Estimated At Completion)* \
  Stima del costo totale finale a completamento del progetto, basata sulle performance attuali.
  $ "EAC" = "BAC" / "CPI" $
  
  - *Interpretazione:* \
    $"EAC" < "BAC"$: Il progetto finirà *sotto budget* \
    $"EAC" = "BAC"$: Il progetto finirà *in linea* con il budget \
    $"EAC" > "BAC"$: Il progetto finirà *sopra budget*

- *MPC-ETC (Estimated To Complete)* \
  Stima del costo rimanente per completare il progetto.
  $ "ETC" = "EAC" - "AC"_"acc" $

  - *Interpretazione:* \
    Rappresenta quanto ancora si dovrà spendere per finire il progetto, considerando le performance attuali.

- *MPC-CV (Cost Variance)* \
  Misura la deviazione dal budget. Indica se il progetto è sotto o sopra budget.
  $ "CV" = "EV" - "AC" $

- *MPC-SV (Schedule Variance)* \
  Misura la deviazione dalla schedulazione. Indica se il progetto è in anticipo o in ritardo rispetto al piano.
  $ "SV" = "EV" - "PV" $

- *MPC-TCR (Task Completion Rate)* \
  Indica la percentuale di task completati rispetto a quelli chiusi in ritardo per un determinato periodo (es. Sprint). Rappresenta la capacità del team di completare il lavoro previsto.
  $ "TCR" = ("Task Completati" / ("Task Completati" + "Task Ritardo")) times 100 $

- *MPC-TS (Task Slippage)* \ //----------------------------------------
  Percentuale di task che non sono state portate a termine entro la fine dello sprint e che vengono posticipate a quello successivo.

#figure(
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
    [MPC-TCR],[Task Completion Rate], [$>=85%$],[$100%$],
    [MPC-TS], [Task Slippage], [$<= 15%$], [$0%$]

  ),
  caption: [Valori per misurare la qualità della fornitura.],
  kind: table,
  supplement: [Tabella]
)
\
== Sviluppo
- *MPC-RSI (Requirements Stability Index)* \
  Indica la stabilità dei requisiti nel tempo. Un valore elevato segnala che l'analisi iniziale è solida; un valore basso evidenzia frequenti cambiamenti che possono rallentare lo sviluppo.

 $ "RSI" = (1-("Requisiti Modificati" + "Aggiunti" + "Rimossi")/"Totale Requisiti Iniziali") times 100 $

- *MPC-PRCT (Pull Request Cycle Time)* \
  Misura il tempo medio che intercorre tra l'apertura di una Pull Request e la sua integrazione (merge) nel ramo principale. Monitora l'efficienza delle revisioni.
  $ "PRCT" = "Data e Ora del Merge" - "Data e Ora dell'Apertura" $

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-RSI], [Requirements Stability Index], [$>= 80%$], [$= 100%$],
    [MPC-PRCT], [Pull Request Cycle Time], [$<= "48 ore"$], [$<= "24 ore"$],

  ),
  caption: [Valori per misurare la qualità dello sviluppo.],
  kind: table,
  supplement: [Tabella]
)
\
== Documentazione
- *MPC-IG (Indice di Gulpease)* \
  Indice di leggibilità calibrato specificamente per la lingua italiana. Valuta la complessità del testo in base alla lunghezza delle parole e delle frasi.
  $ "Gulpease" = 89 + (300 times "Numero Frasi" - 10 times "Numero Lettere") / "Numero Parole" $

- *MPC-CO (Correttezza Ortografica)* \
  Numero di errori grammaticali o di battitura rilevati nei documenti.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-IG], [Indice di Gulpease], [$>= 40$], [$>= 60$],
    [MPC-CO], [Correttezza Ortografica], [$0$], [$0$],
  ),
  caption: [Valori per misurare la qualità della documentazione.],
  kind: table,
  supplement: [Tabella]
)
\
== Verifica
- *MPC-CC (Code Coverage)* \
  Percentuale di righe di codice sorgente effettivamente eseguite durante i test automatici.
  $ "CC" = ("Linee di Codice Testate" / "Linee di Codice Totali") times 100 $

- *MPC-TSR (Test Success Rate)* \
  Percentuale di test passati con successo sul totale dei test eseguiti.
  $ "TSR" = ("Test Superati" / "Test Eseguiti") times 100 $

- *MPC-DD (Bug Density)* \
  Misura la qualità del codice calcolando quanti bug vengono trovati per ogni cento righe di codice (CRG).
  $ "DD" = ("Numero di Bug Rilevati" / "Centinaia di Righe di Codice (CRG)") $

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-CC], [Code Coverage], [$>= 80%$], [$= 100%$],
    [MPC-TSR], [Test Success Rate], [$= 100%$], [$= 100%$],
    [MPC-DD], [Bug Density], [$<= "2 per CRG"$], [$= "0 per CRG"$],
  ),
  caption: [Valori per misurare la qualità della verifica.],
  kind: table,
  supplement: [Tabella]
)
\
== Gestione della qualità e processi
- *MPC-QMS (Quality Metrics Satisfied)* \
  Percentuale di metriche di qualità che rientrano nel range accettabile.
  $ "QMS" = ("Metriche in Range Accettabile" / "Totale Metriche Monitorate") times 100 $

- *MPC-TE (Time efficiency)* \
  Rapporto tra tempo di produzione effettivo e tempo totale di lavoro.
  $ "TE" = ("Ore Lavoro Effettive" / "Ore Totali Disponibili") times 100 $ 

- *MPC-WD (Work Distribution)* \ //-----------------------
  Misura la distribuzione in percentuale delle attività (task) tra i membri del team per garantire un carico di lavoro equilibrato. (numero totale task/ numero task per persona -> varianza)

- *MPC-SPF (Single Point of Failure Risk)* \ //-----------------------
  Indice che valuta la concentrazione di attività (task) critiche su un numero limitato di membri del team, al fine di ridurre il rischio di dipendenza da un singolo componente del gruppo.


#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-QMS], [Quality Metrics Satisfied], [$>= 80%$], [$= 100%$],
    [MPC-TE], [Time efficiency], [$>= 50%$], [$>= 90%$],
    [MPC-WD],[Work Distribution], [$$], [$$],
    [MPC-SPF],[Single Point of Failure Risk], [$15%$], [$<10%$]

  ),
  caption: [Valori per misurare la qualità della qualità e dei processi.],
  kind: table,
  supplement: [Tabella]
)
\
= Metriche di Qualità del Prodotto
Le metriche di qualità del prodotto misurano le proprietà interne ed esterne del prodotto software finale: comportamento funzionale, affidabilità, usabilità, l'efficienza, la manutenibilità e la sicurezza. Il loro scopo è di verificare quanto il prodotto soddisfa i requisiti che si aspetta l'utente, quanto è robusto in condizioni reali e quanto può essere compreso, modificato, testato e protetto. In sintesi, valutano la qualità del software in esecuzione in circostanze reali.

In questo documento, tali misure vengono identificate tramite la sigla *MPD* (#strong[M]etriche di #strong[P]ro#strong[d]otto). Questo identificativo permette di classificare e monitorare le caratteristiche del software, facilitando la verifica del raggiungimento degli obiettivi qualitativi prefissati per il prodotto finale.

== Funzionalità
- *MPD-CRO (Copertura Requisiti Obbligatori)* \
  Percentuale di requisiti obbligatori implementati.
- *MPD-CRP (Copertura Requisiti Desiderabili)* \
  Percentuale di requisiti desiderabili implementati.
- *MPD-CRP (Copertura Requisiti Opzionali)* \
  Percentuale di requisiti opzionali implementati.
- *MPD-AD (API Documentation)* \ //-----------------------
  Misura il grado di copertura, accuratezza e aggiornamento della documentazione delle API.
- *MPD-DL (Data Loss)* \
  Misura l'affidabilità della trasmissione dati tra gateway e cloud.
  $ "DL" = (( "Messaggi Inviati" - "Messaggi Ricevuti" ) / "Messaggi Inviati") times 100 $
\
#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-CRO], [Copertura Requisiti Obbligatori], [$= 100%$], [$= 100%$],
    [MPD-CRP], [Copertura Requisiti Desiderabili], [$>= 0$], [$>=70%$],
    [MPD-CRP], [Copertura Requisiti Opzionali], [$>= 0$], [$>=70%$],
    [MPD-AD],[API Documentation], [$>=90%$], [$100%$],
    [MPD-DL],[Data Loss], [$0,1%-1%$], [$<0,01%$]
  ),
  caption: [Valori per misurare la qualità delle funzionalità.],
  kind: table,
  supplement: [Tabella]
)
\
== Affidabilità
- *MPD-BC (Branch Coverage)* \
  Misura la percentuale di rami decisionali (es. i rami true e false di un if) che sono stati eseguiti dai test. Garantisce che tutte le possibili direzioni del flusso logico siano state verificate.
  $ "BC" = ("Rami Decisionali Eseguiti" / "Totale rami decisionali presenti") times 100 $
- *MPD-SC (Statement Coverage)* \
  Rappresenta la percentuale di singole istruzioni (statement) che sono state percorse durante l'esecuzione dei test. È una metrica importante per assicurarsi che non vi siano porzioni di codice completamente "oscure" ai test.
  $ "SC" = ("Istruzioni eseguite" / "Totale istruzioni presenti") times 100 $
  

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-BC], [Branch Coverage], [$>= "60%"$], [$>= "80%"$],
    [MPD-SC], [Statement Coverage], [$>= "70%"$], [$>= "90%"$],
  ),
  caption: [Valori per misurare la qualità dell'affidabilità.],
  kind: table,
  supplement: [Tabella]
)
\
== Usabilità
- *MPD-TT (Time on Task)* \ 
  Tempo necessario a un utente per imparare a usare una funzione.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-LT], [Learning Time], [$<= "30 min"$], [$<= "10 min"$],
  ),
  caption: [Valori per misurare la qualità dell'usabilità.],
  kind: table,
  supplement: [Tabella]
)
\
== Efficienza
- *MPD-RT (Response Time)* \
  Tempo di risposta del sistema ad un input dell'utente.
  $ "RT" = "Ora Risposta" - "Ora Richiesta" $

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-RT], [Response Time], [$<= "2 secondi"$], [$<= "0,5 secondi"$],
  ),
  caption: [Valori per misurare la qualità dell'efficienza.],
  kind: table,
  supplement: [Tabella]
)
\
== Manutenibilità
- *MPD-CD (Code Smell)*\
  Identifica "sintomi" nel codice che indicano una progettazione debole (es. metodi troppo lunghi, classi troppo grandi o duplicazione). Non sono errori bloccanti, ma rendono il sistema fragile.
  $ "CD" = ("Numero di Code Smell rilevati" / "CRG (Centinaia di Righe di Codice)") $
  
  // Capire meglio che formula è
- *MPD-COC (Coefficient of Coupling)*
  Misura il grado di interdipendenza tra i diversi moduli o classi del software. Un accoppiamento elevato significa che una modifica in una parte del codice rischia di rompere molte altre sezioni (effetto a catena).

- *MPD-CYC (Cyclomatic Complexity)*
  Misura la complessità logica del codice contando il numero di percorsi linearmente indipendenti attraverso il flusso di controllo (if, switch, loop). Più è alta, più il codice è difficile da testare e comprendere.
  $ "M" = "E" - "N" + "2P" $
   - Dove:
      - $"E"$ : numero di archi (collegamenti nel grafo di controllo);
      - $"N"$ : numero di nodi (istruzioni);
      - $"P"$ : numero di componenti connesse (solitamente 1).

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-CD], [Code Smell], [$<= "3"$], [$<= "1"$],
    [MPD-COC], [Coefficient of Coupling], [$<= "0.5"$], [$<= "0.2"$],
    [MPD-CYC], [Cyclomatic Complexity], [$<= "15"$], [$<= "10"$]
  ),
  caption: [Valori per misurare la qualità della manutenibilità.],
  kind: table,
  supplement: [Tabella]
)
\
== Sicurezza
- *MPD-DE (Data encryption)* \
  Livello di copertura della cifratura sui dati sensibili.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-DE], [Data encryption], [$"100% dati sensibili"$], [$"100% dati sensibili"$],
  ),
  caption: [Valori per misurare la qualità della sicurezza.],
  kind: table,
  supplement: [Tabella]
)
\

= Metodi di Testing
La presente sezione descrive le attività di testing adottate nel progetto e le metriche utilizzate per valutare l'efficacia del processo di verifica.

Le attività di testing forniscono evidenza oggettiva del corretto funzionamento dell'intero sistema e supportano la valutazione delle metriche di qualità del prodotto discusse in questo documento.

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



/*
	aggiunge i test SOLO in questa lista
*/


#let lista-test = (

  [#ts()], 
	[Verificare che l'Utente non autenticato possa accedere alla funzionalità di autenticazione presso il Sistema], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa inserire la propria email per autenticarsi], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa inserire la propria password per autenticarsi], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato riceva un messaggio di errore in caso di inserimento di credenziali errate], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato riceva un messaggio di errore nel caso in cui tenti di accedere ad un account sospeso], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato, dopo aver inserito credenziali corrette per un account con 2FA attiva, riceva una mail con il codice di verifica], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato, una volta autenticato con credenziali corrette per un account con 2FA attiva, possa richiedere il re-invio del codice di verifica], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato, dopo aver inserito credenziali corrette per un account con 2FA attiva, possa completare l'autenticazione a due fattori], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa inserire il codice di verifica ricevuto via mail per completare l'autenticazione 2FA], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato riceva un messaggio di errore in caso il codice di verifica inserito per la 2FA sia errato o scaduto], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa impostare la sua prima password tramite il link ricevuto via mail], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa inserire la nuova password durante l'impostazione o reimpostazione della password], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa inserire la conferma della nuova password durante l'impostazione o reimpostazione della password], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema mostri un messaggio di errore se la nuova password e la conferma non coincidono], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema mostri un messaggio di errore se la nuova password non rispetta i criteri di sicurezza], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema mostri un messaggio di errore se l'Utente tenta di usare un link di impostazione password scaduto], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa richiedere il link di reimpostazione della password via email nel caso in cui l'abbia dimenticata], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa inserire l'indirizzo mail a cui è associato il proprio account per richiedere la reimpostazione della password], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato riceva un messaggio di errore se inserisce un indirizzo email non associato ad alcun account durante la richiesta di reimpostazione password], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema invii la mail per la reimpostazione della password, contenente il link di reimpostazione, all'Utente non autenticato che ne fa richiesta], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente non autenticato possa reimpostare la propria password tramite il link ricevuto via email], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente autenticato possa visualizzare la lista dei sensori associati al proprio tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente autenticato, visualizzando la lista dei sensori associati al proprio tenant, visualizzi l'identificativo di ciascun sensore nella lista], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente autenticato possa visualizzare la sua dashboard personale], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente autenticato, visualizzando la propria dashboard personale, visualizzi la lista degli alert relativi al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente autenticato, visualizzando la propria dashboard personale, visualizzi il numero dei sensori attivi e non attivi associati al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Utente autenticato, visualizzando la propria dashboard personale, visualizzi il numero dei gateway attivi e non attivi associati al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi l'Admin generico nel caso in cui il gateway a cui ha inviato dei comandi non sia raggiungibile], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema mostri un messaggio di errore all'Admin generico nel caso in cui venga inserita un'email già associata ad un altro Tenant User durante la registrazione di un nuovo Tenant User], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa registrare un nuovo Tenant User all'interno del Sistema], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, registrando un nuovo utente, possa inserire l'indirizzo email associato al nuovo Tenant User], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema invii una mail al nuovo Tenant User contenente il link per impostare la propria password iniziale dopo la registrazione effettuata dall'Admin generico], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa sospendere l'accesso di un Tenant User al Sistema], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema richieda conferma all'Admin generico prima di sospendere l'accesso di un Tenant User al Sistema], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa riattivare l'accesso di un Tenant User al Sistema], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema richieda conferma all'Admin generico prima di riattivare l'accesso di un Tenant User al Sistema], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa eliminare un Tenant User dal Sistema], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema richieda conferma all'Admin generico prima di eliminare un Tenant User dal Sistema], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare la lista di tutte le richieste di commissioning e decommissioning di gateway associate al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista di tutte le richieste di commissioning e decommissioning di gateway, possa visualizzare lo stato della richiesta], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare la lista di tutti gli utenti associati al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista di tutti gli utenti associati al proprio Tenant, possa vedere l'email di ciascun utente nella lista], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista di tutti gli utenti associati al proprio Tenant, possa vedere lo stato (attivo/sospeso) di ciascun utente nella lista], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare la lista dei gateway associati al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista dei gateway associati al proprio Tenant, visualizzi il nome del gateway nella lista], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista dei gateway associati al proprio Tenant, visualizzi lo stato del gateway nella lista], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare un gateway associato al proprio Tenant nel dettaglio], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando un gateway associato al proprio Tenant nel dettaglio, visualizzi il nome del gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando un gateway associato al proprio Tenant nel dettaglio, visualizzi lo stato del gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando un gateway associato al proprio Tenant nel dettaglio, visualizzi i sensori collegati al gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista dei sensori collegati al gateway, possa visualizzare per ogni sensore l'identificativo], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa registrare una nuova API key associata al proprio Tenant], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, registrando una nuova API key, possa inserire un nome identificativo per la chiave], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, registrando una nuova API key, possa inserire la data di scadenza della chiave], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema mostri un messaggio di errore se l'Admin generico inserisce un nome identificativo già esistente per una API key durante la registrazione di una nuova chiave], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema mostri un messaggio di errore se l'Admin generico inserisce una data di scadenza già passata durante la registrazione di una nuova API key], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare la lista di tutte le API key associate al proprio Tenant], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista di tutte le API key associate al proprio Tenant, possa vedere il nome dell'API key], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista di tutte le API key associate al proprio Tenant, possa vedere la data di creazione dell'API key], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando la lista di tutte le API key associate al proprio Tenant, possa vedere la data di scadenza dell'API key], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare una API key associata al proprio Tenant nel dettaglio], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando una API key associata al proprio Tenant nel dettaglio, visualizzi il nome dell'API key], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, visualizzando una API key associata al proprio Tenant nel dettaglio, visualizzi la data di creazione dell'API key], 
	[#rf[Des]],
	[Non implementato],
    
	[#ts()], 
	[Verificare che l'Admin generico, accedendo al dettaglio di una API key del proprio Tenant, visualizzi la data di scadenza associata], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, accedendo al dettaglio di una API key del proprio Tenant, visualizzi un grafico che mostri l'utilizzo della API key], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa eliminare una API key associata al proprio Tenant], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema richieda la conferma all'Admin generico prima di eliminare una API key associata al proprio Tenant], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa visualizzare la lista di tutti gli audit log relativi al proprio Tenant], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il nome dell'utente che l'ha generato], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il tipo di azione eseguita], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il corrispettivo timestamp], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa filtrare gli audit log in base al tipo di azione eseguita], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa filtrare gli audit log in base ad un intervallo temporale], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico possa filtrare gli audit log in base all'utente che ha generato l'evento], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il corrispettivo timestamp], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa visualizzare la sua dashboard personale], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi il numero di sensori attivi e non associati al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi il numero di gateway attivi e non associati al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi la lista degli alert relativi al proprio Tenant], 
	[#rf[Opt]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi il numero di API key valide e scadute], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi lo stato delle richieste di commissioning gateway associate al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale visualizzi lo stato delle richieste di decommissioning gateway associate al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa creare una nuova richiesta di commissioning gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa creare una nuova richiesta di decommissioning gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa eliminare una richiesta di commissioning o decommissioning gateway precedentemente creata non ancora evasa], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema richieda una conferma al Tenant Admin prima di eliminare una richiesta di commissioning o decommissioning gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa sospendere l'invio di dati da parte di un sensore appartenente al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi l'impossibilità di sospendere l'invio dati del sensore selezionato poiché il gateway associato è in stato di errore],
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa riattivare l'invio di dati da parte di un sensore appartenente al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi l'impossibilità di riattivare l'invio di dati del sensore selezionato poiché il gateway associato è in stato di errore], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa sospendere l'invio di dati da parte di un gateway appartenente al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi l'impossibilità di sospendere l'invio di dati da parte del gateway selezionato poiché in stato di errore], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa riattivare l'invio di dati da parte di un gateway appartenente al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi l'impossibilità di riattivare l'invio di dati da parte del gateway selezionato poiché in stato di errore], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa riavviare un gateway appartenente al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Tenant Admin possa modificare il target di frequenza d'invio dati per tipologia di sensore di un gateway associato al proprio Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi l'impossibilità di riavviare il gateway selezionato poiché in stato di errore], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato nel caso in cui il processo di commissioning sia stato completato con successo, confermi ciò al Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato, una volta completato il processo di commissioning, inizi l'invio dei dati], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato invii al Cloud la presenza di eventuali errori durante il processo di commissioning], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato nel caso in cui il processo di decommissioning sia stato completato con successo, confermi ciò al Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato, dopo aver eseguito il decommissioning, rimuova l'associazione con il tenant, la chiave di cifratura e interrompa l'invio dei dati IoT al Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato, dopo aver eseguito il decommissioning, ammetta un nuovo commissioning], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato segnali al Cloud eventuali errori riscontrati durante l'esecuzione del decommissioning], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema possa annullare il processo di decommissioning quando riceve una notifica di errore dal gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Sistema notifichi il Super Admin quando un decommissioning viene annullato a causa di un errore segnalato dal gateway], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato confermi al Cloud il corretto riavvio in seguito al comando ricevuto dallo stesso], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Cloud si accorga se un gateway simulato non risponda entro un timeout specifico a comando di riavvio e notificare lo stato di errore del gateway agli utenti del Tenant associato], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa reimpostare correttamente tutte le configurazioni e i dati locali alle impostazioni di fabbrica, ovvero reset], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato, dopo aver eseguito il reset correttamente, invii la conferma di successo al Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa confermare la sospensione di invio dei dati al Cloud in seguito al comando di sospensione ricevuto dallo stesso], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa confermare la riattivazione dell'invio dei dati al Cloud in seguito al comando di riattivazione ricevuto dallo stesso], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa confermare la sospensione dell'invio dei dati di un sensore simulato specifico in seguito al comando di sospensione ricevuto dal Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa confermare la riattivazione dell'invio dei dati di un sensore simulato specifico in seguito al comando di riattivazione ricevuto dal Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa inviare la conferma del cambiamento della frequenza di invio dati al Cloud in seguito al comando di modifica ricevuto dallo stesso], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato, all'avvio, invii un comando di hello, provvisto di proprio ID univoco, al Cloud per autenticarsi], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Cloud rifiuti l'autenticazione del gateway in caso quest'ultimo invii credenziali errate], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Cloud rifiuti l'autenticazione del gateway in caso l'ID univoco inviato dal gateway non sia presente nel proprio database], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato possa inviare i dati dei sensori al Cloud in modo crittografato utilizzando la chiave pubblica ricevuta dal Cloud durante l'assegnazione del Tenant], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato raccolga i dati dei sensori all'interno di un buffer interno prima di inviarli al Cloud], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato, in caso di overflow del buffer, elimini i dati più vecchi], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il gateway simulato ritenti l'invio dei dati al Cloud in caso non sia raggiungibile, mantenendo i dati nel buffer fino al successo dell'invio], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Cloud notifichi gli utenti del Tenant nel caso in cui non riceva dati dal gateway associato per un periodo di tempo superiore ad una soglia predefinita], 
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il Cloud rilevi l'assenza di dati da un sensore specifico di un gateway simulato allo scadere di un timeout predefinito], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che il Cloud, nel caso in cui venga rilevata l'assenza di dati di un sensore di un gateway, notifichi gli utenti del tenant associato], 
	[#rf()],
	[Non implementato],

	[#ts()], 
	[Verificare che l'API Client possa richiedere i dati real-time di un sensore specifico associato al proprio tenant], 
	[#rf[Des]],
	[Non implementato],

	[#ts()], 
	[Verificare che l'API Client, dopo aver richiesto i dati real-time di un sensore specifico, possa ricevere tali dati in forma coppia valore-timestamp], 
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa richiedere lo storico dei dati di un sensore appartenente al proprio tenant],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* dopo aver richiesto lo storico dei dati di un sensore specifico possa ricevere tali dati in forma coppia valore-timestamp],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non esistente],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore per cui non sono disponibili dati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non associato al proprio tenant],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa autenticarsi nel Sistema utilizzando un'API Key valida],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione non siano valide],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione siano scadute],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sensore simulato* possa inviare i dati rilevati al gateway a cui è collegato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa normalizzarli],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa formattarli secondo un formato interno standardizzato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa salvarli in un buffer interno prima di inviarli al Cloud],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che in caso un o più Sensori simulati inviino una quantità di dati superiore alla capacità di invio del gateway verso il Cloud, il *gateway* possa salvare i dati più recenti nel buffer interno eliminando i dati più vecchi per fare spazio ai nuovi dati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Heart Rate Service (GATT)],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Pulse Oximeter Service (GATT)],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi ad un profilo custom per l'elettrocardiogramma (ECG)],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Health Thermometer Service (GATT)],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Environmental Sensing Service (GATT)],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare la conferma di autenticazione avvenuta correttamente al gateway, in seguito ad un tentativo di autenticazione andato a buon fine],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare il rifiuto di autenticazione al gateway, in seguito ad un tentativo di autenticazione fallito],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway, non commissionato, l'assegnazione del tenant, in seguito ad un commissioning andato a buon fine],
	[#rf()],
	[Non implementato],

	// [#ts()],
	// [Verificare che il *Cloud* possa inviare al gateway, non commissionato, la chiave pubblica per la cifratura dei dati, in seguito ad un commissioning andato a buon fine],
	// [#rf()],
	// [Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway sospeso il comando di riattivazione di un Sensore simulato sospeso specifico. In seguito alla ricezione del comando il gateway deve ricominciare ad inviare dati IoT crittografati relativi a tale Sensore],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway il comando di sospensione di un Sensore simulato non sospeso specifico. In seguito alla ricezione del comandi il gateway deve interrompere l'invio di dati IoT crittografati relativi a tale Sensore],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare, al gateway sospeso, il comando di riattivazione. In seguito alla ricezione del comando il gateway deve ricominciare l'invio di tutti i dati IoT crittografati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare, al gateway attivo, il comando di sospensione. In seguito alla ricezione del comando il gateway deve interrompere l'invio di tutti i dati IoT crittografati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway il comando di riavvio. In seguito alla ricezione del comando il gateway deve spegnersi e riaccendersi, mantenendo le configurazioni e i dati salvati localmente],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway il comando di modifica della frequenza di invio dati per uno specifico tipo di sensore. In seguito alla ricezione di tale comando il gateway deve aggiornare la configurazione della frequenza di invio dati per i dati inviati al Cloud relativi a tutti i sensori di tale tipologia, così da inviare un dato ogni intervallo di tempo specificato nel comando.],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway il comando di decommissioning. In seguito alla ricezione del comando il gateway deve cancellare l'associazione al tenant, la chiave di cifratura e deve eseguire un reset. Dopo aver eseguito il decommissioning il gateway deve ammettere un nuovo commissioning],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Cloud* possa inviare al gateway il comando di reset. In seguito alla ricezione del comando il gateway deve cancellare tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa effettuare il logout dal Sistema],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema*, a seguito del logout possa registrare l'evento negli audit log salvando nome utente, timestamp e azione eseguita],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa modificare la propria password],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, per modificare la password, possa inserire la vecchia password],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa mostrare un messaggio di errore se la vecchia password inserita non è corretta durante la modifica password],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare i dettagli di un singolo alert],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert, possa vedere il titolo dell'alert],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert, possa vedere la descrizione dell'alert],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare gli alert relativi alla mancata ricezione dati da un Gateway],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere l'identificativo del gateway],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere il timestamp dell'ultimo dato ricevuto],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere il tempo di inattività],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare gli alert relativi alla mancata ricezione dati da un sensore],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere l'identificativo del sensore],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere il timestamp dell'ultimo dato ricevuto],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere il tempo di inattività],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa selezionare un sensore dalla lista dei sensori associati al proprio tenant],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare i dati in tempo reale di un sensore selezionato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare i dati real-time del sensore attraverso un grafico time-series con assi etichettati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *grafico dei dati real-time* possa aggiornarsi automaticamente alla ricezione di nuovi dati dal Gateway],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare lo storico dei dati di un sensore selezionato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa visualizzare lo storico dei dati del sensore attraverso un grafico time-series con assi etichettati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa filtrare lo storico dei dati del sensore per intervallo temporale],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa visualizzare il grafico dei dati del sensore filtrato per l'intervallo temporale selezionato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa mostrare un messaggio di errore se l'intervallo temporale inserito non è valido],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che l'*Utente autenticato* possa filtrare i dati del sensore per intervallo di valori],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa visualizzare il grafico dei dati del sensore filtrato per l'intervallo di valori selezionato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa mostrare un messaggio di errore se l'intervallo di valori inserito non è valido],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa mostrare un messaggio informativo se non sono disponibili dati per il sensore selezionato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa creare un nuovo tenant nel Sistema],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un nuovo tenant, possa inserire il nome del tenant],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un nuovo tenant, possa specificare l'accettazione o meno della clausola di impersonificazione],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* possa mostrare un messaggio di errore se il nome del tenant inserito è già in uso],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa eliminare un tenant esistente dal Sistema],
	[#rf()],
	[Non implementato],

	// RF191 - RF256
  [#ts()],
  [Verificare che il *Sistema* richieda conferma al *Super Admin* prima di eliminare un tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema*, prima di eliminare un tenant, debba eseguire il decommissioning di tutti i Gateway associati],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema*, eliminando un tenant, debba eliminare tutti i dati e gli utenti associati al tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema* debba completare l’eliminazione del tenant dopo aver rimosso dati, utenti e Gateway associati],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema* debba notificare il *Super Admin* se il decommissioning di un Gateway fallisce durante l’eliminazione del tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare la propria dashboard],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando la dashboard, possa vedere lo stato globale dei gateway (attivi/non attivi)],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando la dashboard, possa vedere la lista di tutti i tenant nel Sistema],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare la lista di tutti i Gateway registrati nel Sistema],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando la lista dei Gateway, possa vedere l’identificativo univoco di ogni gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando la lista dei Gateway, possa vedere lo stato di autenticazione di ogni gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando la lista dei Gateway, possa vedere lo stato operativo di ogni gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando la lista dei Gateway, possa vedere il tenant associato a ogni gateway],
  [#rf()],
  [Non implementato],

	[#ts()],
  [Verificare che il *Super Admin* possa visualizzare i dettagli di un singolo Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa autenticare un nuovo Gateway nel Sistema],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema* mostri un messaggio di errore se il certificato del Gateway non è valido durante l’autenticazione],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema* mostri un messaggio di errore se l’identificativo del Gateway è già utilizzato],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa associare un Gateway a un tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, associando un Gateway a un tenant, debba selezionare il Gateway da associare],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, associando un Gateway a un tenant, debba selezionare il tenant di destinazione],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa configurare i parametri di un Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema* mostri un messaggio di errore se la configurazione del Gateway inserita non è valida],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa eseguire il decommissioning di un Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Sistema*, durante il decommissioning, debba disassociare il Gateway dal tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa eseguire il reset di un Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa riavviare un Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa sospendere l’invio dati di un Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa riattivare l’invio dati di un Gateway sospeso],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa modificare il parametro di rolling average di un Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa sospendere un sensore],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa riattivare un sensore sospeso],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa selezionare un Gateway dalla lista per inviare comandi],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa selezionare un sensore dalla lista per inviare comandi],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare la lista di tutti i tenant nel Sistema],
  [#rf()],
  [Non implementato],

	[#ts()],
  [Verificare che il *Super Admin*, visualizzando la lista dei tenant, possa vedere l’identificativo di ogni tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa impersonificare un tenant, se la clausola d’impersonazione è stata accettata],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare i dettagli di un singolo tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando un tenant, possa vedere l’identificativo del tenant],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare la lista delle richieste di commissioning Gateway in corso],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di commissioning in lista, possa vedere data e ora della richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di commissioning in lista, possa vedere il tenant richiedente],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di commissioning in lista, possa vedere il numero di gateway richiesti],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare la lista delle richieste di decommissioning Gateway in corso],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di decommissioning in lista, possa vedere data e ora della richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di decommissioning in lista, possa vedere il tenant richiedente],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di decommissioning in lista, possa vedere il numero di gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di decommissioning in lista, possa vedere lo stato della richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare lo storico delle richieste di commissioning Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando lo storico commissioning, possa vedere data e ora di ogni richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando lo storico commissioning, possa vedere il tenant richiedente di ogni richiesta],
  [#rf()],
  [Non implementato],

	[#ts()],
  [Verificare che il *Super Admin*, visualizzando lo storico commissioning, possa vedere il numero di gateway di ogni richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando lo storico commissioning, possa vedere lo stato di ogni richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa visualizzare lo storico delle richieste di decommissioning Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa vedere i dettagli di una richiesta di commissioning],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di commissioning, possa vedere data e ora della richiesta],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di commissioning, possa vedere il tenant richiedente],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di commissioning, possa vedere il numero di gateway richiesti],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa vedere i dettagli di una richiesta di decommissioning],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, visualizzando una richiesta di decommissioning, possa visualizzare i gateway interessati],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa accettare una richiesta di commissioning/decommissioning Gateway],
  [#rf()],
  [Non implementato],

	[#ts()],
  [Verificare che il *Super Admin* possa rifiutare una richiesta di commissioning/decommissioning Gateway],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin* possa creare un nuovo utente Tenant Admin],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, creando un Tenant Admin, debba selezionare il tenant di appartenenza],
  [#rf()],
  [Non implementato],

  [#ts()],
  [Verificare che il *Super Admin*, creando un Tenant Admin, debba inserire l'email del nuovo utente],
  [#rf()],
  [Non implementato],

	// RF255 - RF294
	[#ts()],
	[Verificare che il *Sistema* debba inviare un'email per l'impostazione password al nuovo Tenant Admin],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa sospendere un account Tenant Admin],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa selezionare il Tenant Admin che vuole sospendere],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* richieda conferma prima di sospendere un account Tenant Admin],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa riattivare un account Tenant Admin sospeso],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa selezionare il Tenant Admin che desidera riattivare],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* richieda conferma prima di riattivare il Tenant Admin selezionato],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa eliminare un account Tenant Admin],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa selezionare il Tenant Admin da eliminare],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* richieda conferma prima di eliminare un account Tenant Admin],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa creare un gateway simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un gateway simulato, inserisca il nome del gateway],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un gateway simulato, inserisca la soglia di timeout di inattività],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un gateway simulato, inserisca la dimensione del buffer],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa creare un sensore simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un sensore simulato, selezioni il servizio GATT da simulare],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un sensore simulato, inserisca la soglia di timeout per gli alert],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, creando un sensore simulato, lo associ ad un gateway simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa eliminare un gateway simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa selezionare il gateway simulato da eliminare],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* richieda conferma prima di eliminare un gateway simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa eliminare un sensore simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa selezionare il sensore simulato da eliminare],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Sistema* richieda conferma prima di eliminare un sensore simulato],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa monitare le metriche di sistema],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare il numero di gateway online/offline],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare il throughput dei dati],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare l'utilizzo delle risorse dei nodi cloud],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare la frequenza delle disconnessioni dei gateway],
	[#rf[Des]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare le dimensioni dei payload dei pacchetti],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare la data staleness dei dati],
	[#rf()],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare i valori out-of-range rilevati],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare lo storico dei tenant possessori di un sensore],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, visualizzando lo storico dei tenant possessori di un sensore, ne visualizzi il nome],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, visualizzando lo storico dei tenant possessori di un sensore, ne visualizzi il periodo di associazione],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin* possa visualizzare lo storico dei tenant possessori di un gateway],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, visualizzando lo storico dei tenant possessori di un gateway, ne visualizzi il nome],
	[#rf[Opt]],
	[Non implementato],

	[#ts()],
	[Verificare che il *Super Admin*, visualizzando lo storico dei tenant possessori di un gateway, ne visualizzi il periodo di associazione],
	[#rf[Opt]],
	[Non implementato],
)

#figure(
  table(
    columns: (1fr, 3fr, 1fr, 1fr),
	  align: center + horizon,
	  inset: 8pt,
	  fill: (x, y) => if y == 0 { gray.lighten(70%) },
	  [*Identificativo*], [*Descrizione*], [*Requisito di riferimento*], [*Stato*],
	..lista-test

  ),
  caption: [Test di Sistema con descrizione e requisito di riferimento],
  kind: table,
  supplement: [Tabella]
)


== Tracciamento test funzionali <tracciamento-test-funzionali>
#v(2em)

/*
NON TOCCARE 
*/

#rf-counter.update(0)
#ts-counter.update(0)

// #let spezza-tabella = (data) => {
//   let num-rows = calc.floor(data.len() / 2)
//   let half = calc.ceil(num-rows / 2)
  
//   let left-data = data.slice(0, half * 2)
//   let right-data = data.slice(half * 2)
  
//   let combined = ()
//   for i in range(half) {
//     let left-test = left-data.at(i * 2, default: [])
//     let left-req = left-data.at(i * 2 + 1, default: [])
//     let right-test = right-data.at(i * 2, default: [])
//     let right-req = right-data.at(i * 2 + 1, default: [])
    
//     combined.push(left-test)
//     combined.push(left-req)
//     combined.push([])
//     combined.push(right-test)
//     combined.push(right-req)
//   }
//   combined
// }

/*
Non usare questa tabella usare lista sopra
*/

#columns(2)[
	#align(center)[
		#table(
			columns: (auto, auto), 
			align: center,
			table.header(
				[*Test*], [*Requisito*], 
			),
			..get-tracciamento(lista-test)
		)
	]
]

= Cruscotto di Valutazione

= Iniziative di miglioramento <iniziative-miglioramento>
Le iniziative di miglioramento hanno lo scopo di analizzare l'andamento del progetto, soprattutto i problemi, e applicare correzioni incrementali sia ai processi interni che al prodotto. Il gruppo adotta un approccio basato sul miglioramento continuo per minimizzare i rischi e massimizzare l'efficienza. \

== Valutazione sull'organizzazione
#figure(
  table(
    columns: (1.4fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],
    
    [Rispetto delle scadenze], [Ritardi nello svolgimento delle task che rischiano di bloccare le attività successive], [Comunicazione tempestiva dei ritardi per consentire una rapida riorganizzazione delle attività coinvolte],
    [Pianificazione impegni], [Variazioni della disponibilità dei membri per motivi personali o accademici], [Previsione dei periodi di difficoltà e mantenimento di una comunicazione trasparente sulle variazioni],
    [Gestione dei requisiti], [Incomprensione dei requisiti dovuta a un coinvolgimento insufficiente del cliente], [Incontri di review con M31 ogni due settimane e comunicazione costante per chiarire i dubbi],
  ),
  caption: [Azioni adottate per migliorare l'organizzazione.],
  kind: table,
  supplement: [Tabella]
)

== Valutazione sui ruoli
#figure(
  table(
    columns: (1.4fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],
    
  [Distribuzione del carico], [Sovraccarichi per alcuni membri a causa della suddivisione non omogenea del lavoro], [Adattamento tempestivo della pianificazione e ridefinizione chiara delle responsabilità],
  [Flessibilità dei ruoli], [Necessità di adattare i carichi di lavoro alle esigenze variabili dei membri], [Assegnazione di ruoli e attività in modo flessibile, adattandoli ai carichi di ciascun membro],
  [Gestione dei dissidi], [Tensioni emerse a causa di differenti personalità o approcci lavorativi], [Discussione privata e mirata con i diretti interessati per favorire un confronto sereno],
  ),
  caption: [Azioni adottate per migliorare la gestione dei ruoli.],
  kind: table,
  supplement: [Tabella]
)

== Valutazione sugli strumenti
#figure(
  table(
    columns: (1.5fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],

  [Gestione del versionamento e dei documenti], [Rischio di incoerenza nella redazione dei documenti e perdita di modifiche], [Utilizzo di *GitHub* per il controllo di versione e di *Typst* per garantire una formattazione professionale e uniforme di tutti i file di progetto.],
  [Inesperienza tecnologica], [Possibile difficoltà nell'apprendimento di nuovi strumenti ], [Studio individuale preventivo e condivisione di template/guide per standardizzare l'uso degli strumenti]
  ),
  caption: [Azioni adottate per migliorare l'uso degli strumenti],
  kind: table,
  supplement: [Tabella]
)
