#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

#show: report.with(
  titolo: "Piano di Qualifica",
  stato: "da verificare",
  versione: "0.0.9",
  registro-modifiche: (
    ("0.0.9", "03/02/2026", "Hossam Ezzemouri", "", "Correzione tabella + stesura test di sistema da #129 a #192"),
    ("0.0.8", "03/02/2026", "Jaume Bernardi", "", "Stesura test di sistema"),

    ("0.0.7", "24/01/2026", "Siria Salvalaio", "Riccardo Graziani", "Piccole modifiche"),
    ("0.0.6", "24/01/2026", "Siria Salvalaio", "Riccardo Graziani", [Miglioramento descrizione metriche, aggiunta formule e migliorate @iniziative-miglioramento]),
    ("0.0.5", "17/01/2026", "Michele Dioli", "Riccardo Graziani", "Inizio stesura formule metriche"),
    ("0.0.4", "13/01/2026", "Siria Salvalaio", "Riccardo Graziani", [Inizio stesura @iniziative-miglioramento (bozza)]),
    ("0.0.3", "03/01/2026", "Hossam Ezzemouri", "Siria Salvalaio", "Aggiunta di metriche"),
    ("0.0.2", "29/12/2025", "Siria Salvalaio", "Hossam Ezzemouri", "Stesura metriche"),
    ("0.0.1", "21/12/2025", "Siria Salvalaio", "Hossam Ezzemouri", "Bozza prime metriche e struttura documento"),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiInterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-documento: "Piano di Qualifica",
)

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
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf
  *Ultimo accesso*: versione 0.2.1
- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori"* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf
  *Ultimo accesso*: 29 Dicembre 2025
- *Piano di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf
  *Ultimo accesso*: versione 0.7.4

=== Riferimenti informativi
- *Glossario* \
  https://glitchhub-team.github.io/pdf/glossary.pdf
  *Ultimo accesso*: 29 Dicembre 2025
- *Slide T07 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf
  *Ultimo accesso*: 29 Dicembre 2025
- *Slide T08 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf
  *Ultimo accesso*: 29 Dicembre 2025
- *ISO/IEC 25010* \
  https://iso25000.com/index.php/en/iso-25000-standards/iso-25010
  *Ultimo accesso*: 29 Dicembre 2025
- *Metrica software - wikipedia* \  
  https://it.wikipedia.org/wiki/Metrica_software
  *Ultimo accesso*: 24 gennaio 2026

= Metriche di Qualità del Processo
Le metriche di qualità del processo misurano l'efficacia, l'efficienza e il controllo delle attività necessarie per sviluppare, gestire e consegnare il prodotto software. Il loro scopo è di monitorare l'aderenza alla pianificazione, la stabilità dei processi, la sostenibilità dei costi e di migliorare costantemente i propri risultati. Queste metriche non valutano il prodotto finito, ma il modo in cui il prodotto viene realizzato.

In questo documento, tali misure vengono identificate tramite la sigla _MPC_ (Metriche di processo e controllo). Questo identificativo permette di classificare e tracciare tutte le misurazioni relative alla gestione dei costi, all'avanzamento temporale, alla qualità della documentazione e all'efficienza dei processi interni al team di sviluppo.

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

In questo documento, tali misure vengono identificate tramite la sigla _MPD_ (Metriche di Prodotto). Questo identificativo permette di classificare e monitorare le caratteristiche del software, facilitando la verifica del raggiungimento degli obiettivi qualitativi prefissati per il prodotto finale.

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
#figure(
  table(
    columns: (1.5fr, 3fr, 1.3fr, 1.7fr),
	  align: center + horizon,
	  inset: 8pt,
	  fill: (x, y) => if y == 0 { gray.lighten(70%) },
	  [*Identificativo*], [*Descrizione*], [*Requisito di riferimento*], [*Stato*],
    
    [TS-65], 
	[Verificare che l’Admin generico, accedendo al dettaglio di una API key del proprio Tenant, visualizzi la data di scadenza associata], 
	[RF-65-Des],
	[Non implementato],

	[TS-66], 
	[Verificare che l’Admin generico, accedendo al dettaglio di una API key del proprio Tenant, visualizzi un grafico che mostri l'utilizzo della API key], 
	[RF-66-Des],
	[Non implementato],

	[TS-67], 
	[Verificare che l'Admin generico possa eliminare una API key associata al proprio Tenant], 
	[RF-67-Des],
	[Non implementato],

	[TS-68], 
	[Verificare che il Sistema richieda la conferma all'Admin generico prima di eliminare una API key associata al proprio Tenant], 
	[RF-68-Des],
	[Non implementato],

	[TS-69], 
	[Verificare che l'Admin generico possa visualizzare la lista di tutti gli audit log relativi al proprio Tenant], 
	[RF-69-Opt],
	[Non implementato],

	[TS-70], 
	[Verificare che l’Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il nome dell’utente che l'ha generato], 
	[RF-70-Opt],
	[Non implementato],

	[TS-71], 
	[Verificare che l’Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il tipo di azione eseguita], 
	[RF-71-Opt],
	[Non implementato],

	[TS-72], 
	[Verificare che l’Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il corrispettivo timestamp], 
	[RF-72-Opt],
	[Non implementato],

	[TS-73], 
	[Verificare che l’Admin generico possa filtrare gli audit log in base al tipo di azione eseguita], 
	[RF-73-Opt],
	[Non implementato],

	[TS-74], 
	[Verificare che l’Admin generico possa filtrare gli audit log in base ad un intervallo temporale], 
	[RF-74-Opt],
	[Non implementato],

	[TS-75], 
	[Verificare che l’Admin generico possa filtrare gli audit log in base all'utente che ha generato l'evento], 
	[RF-75-Opt],
	[Non implementato],

	[TS-76], 
	[Verificare che l’Admin generico, accedendo alla lista degli audit log, visualizzi per ogni evento il corrispettivo timestamp], 
	[RF-76-Opt],
	[Non implementato],

	[TS-77], 
	[Verificare che il Tenant Admin possa visualizzare la sua dashboard personale], 
	[RF-77-Obb],
	[Non implementato],

	[TS-78], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi il numero di sensori attivi e non associati al proprio Tenant], 
	[RF-78-Obb],
	[Non implementato],

	[TS-79], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi il numero di gateway attivi e non associati al proprio Tenant], 
	[RF-79-Obb],
	[Non implementato],

	[TS-80], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi la lista degli alert relativi al proprio Tenant], 
	[RF-80-Opt],
	[Non implementato],

	[TS-81], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi il numero di API key valide e scadute], 
	[RF-81-Des],
	[Non implementato],

	[TS-82], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale, visualizzi lo stato delle richieste di commissioning gateway associate al proprio Tenant], 
	[RF-82-Obb],
	[Non implementato],

	[TS-83], 
	[Verificare che il Tenant Admin, accedendo alla sua dashboard personale visualizzi lo stato delle richieste di decommissioning gateway associate al proprio Tenant], 
	[RF-83-Obb],
	[Non implementato],

	[TS-84], 
	[Verificare che il Tenant Admin possa creare una nuova richiesta di commissioning gateway], 
	[RF-84-obb],
	[Non implementato],

	[TS-85], 
	[Verificare che il Tenant Admin possa creare una nuova richiesta di decommissioning gateway], 
	[RF-85-Obb],
	[Non implementato],

	[TS-86], 
	[Verificare che il Tenant Admin possa eliminare una richiesta di commissioning o decommissioning gateway precedentemente creata non ancora evasa], 
	[RF-86-Obb],
	[Non implementato],

	[TS-87], 
	[Verificare che il Sistema richieda una conferma al Tenant Admin prima di eliminare una richiesta di commissioning o decommissioning gateway], 
	[RF-87-Obb],
	[Non implementato],

	[TS-88], 
	[Verificare che il Tenant Admin possa sospendere l’invio di dati da parte di un sensore appartenente al proprio Tenant], 
	[RF-88-Obb],
	[Non implementato],

	[TS-89], 
	[Verificare che il Sistema notifichi l’impossibilità di sospendere l’invio dati del sensore selezionato poiché il gateway associato è in stato di errore],
	[RF-89-obb],
	[Non implementato],

	[TS-90], 
	[Verificare che il Tenant Admin possa riattivare l’invio di dati da parte di un sensore appartenente al proprio Tenant], 
	[RF-90-Obb],
	[Non implementato],

	[TS-91], 
	[Verificare che il Sistema notifichi l'impossibilità di riattivare l’invio di dati del sensore selezionato poiché il gateway associato è in stato di errore], 
	[RF-91-Obb],
	[Non implementato],

	[TS-92], 
	[Verificare che il Tenant Admin possa sospendere l’invio di dati da parte di un gateway appartenente al proprio Tenant], 
	[RF-92-Obb],
	[Non implementato],

	[TS-93], 
	[Verificare che il Sistema notifichi l'impossibilità di sospendere l’invio di dati da parte del gateway selezionato poiché in stato di errore], 
	[RF-93-Obb],
	[Non implementato],

	[TS-94], 
	[Verificare che il Tenant Admin possa riattivare l’invio di dati da parte di un gateway appartenente al proprio Tenant], 
	[RF-94-Obb],
	[Non implementato],

	[TS-95], 
	[Verificare che il Sistema notifichi l'impossibilità di riattivare l’invio di dati da parte del gateway selezionato poiché in stato di errore], 
	[RF-95-Obb],
	[Non implementato],

	[TS-96], 
	[Verificare che il Tenant Admin possa riavviare un gateway appartenente al proprio Tenant], 
	[RF-96-Obb],
	[Non implementato],

	[TS-97], 
	[Verificare che il Tenant Admin possa modificare il target di frequenza d’invio dati per tipologia di sensore di un gateway associato al proprio Tenant], 
	[RF-97-Obb],
	[Non implementato],

	[TS-98], 
	[Verificare che il Sistema notifichi l'impossibilità di riavviare il gateway selezionato poiché in stato di errore], 
	[RF-98-Obb],
	[Non implementato],

	[TS-99], 
	[Verificare che il gateway simulato nel caso in cui il processo di commissioning sia stato completato con successo, confermi ciò al Cloud], 
	[RF-99-Obb],
	[Non implementato],

	[TS-100], 
	[Verificare che il gateway simulato, una volta completato il processo di commissioning, inizi l'invio dei dati], 
	[RF-100-Obb],
	[Non implementato],

	[TS-101], 
	[Verificare che il gateway simulato invii al Cloud la presenza di eventuali errori durante il processo di commissioning], 
	[RF-101-Obb],
	[Non implementato],

	[TS-102], 
	[Verificare che il gateway simulato nel caso in cui il processo di decommissioning sia stato completato con successo, confermi ciò al Cloud], 
	[RF-102-Obb],
	[Non implementato],

	[TS-103], 
	[Verificare che il gateway simulato, dopo aver eseguito il decommissioning, rimuova l’associazione con il tenant, la chiave di cifratura e interrompa l’invio dei dati IoT al Cloud], 
	[RF-103-Obb],
	[Non implementato],

	[TS-104], 
	[Verificare che il gateway simulato, dopo aver eseguito il decommissioning, ammetta un nuovo commissioning], 
	[RF-104-Obb],
	[Non implementato],

	[TS-105], 
	[Verificare che il gateway simulato segnali al Cloud eventuali errori riscontrati durante l’esecuzione del decommissioning], 
	[RF-105-Obb],
	[Non implementato],

	[TS-106], 
	[Verificare che il Sistema possa annullare il processo di decommissioning quando riceve una notifica di errore dal gateway], 
	[RF-106-Obb],
	[Non implementato],

	[TS-107], 
	[Verificare che il Sistema notifichi il Super Admin quando un decommissioning viene annullato a causa di un errore segnalato dal gateway], 
	[RF-107-Obb],
	[Non implementato],

	[TS-108], 
	[Verificare che il gateway simulato confermi al Cloud il corretto riavvio in seguito al comando ricevuto dallo stesso], 
	[RF-108-Obb],
	[Non implementato],

	[TS-109], 
	[Verificare che il Cloud si accorga se un gateway simulato non risponda entro un timeout specifico a comando di riavvio e notificare lo stato di errore del gateway agli utenti del Tenant associato], 
	[RF-109-Obb],
	[Non implementato],

	[TS-110], 
	[Verificare che il gateway simulato possa reimpostare correttamente tutte le configurazioni e i dati locali alle impostazioni di fabbrica, ovvero reset], 
	[RF-110-Obb],
	[Non implementato],

	[TS-111], 
	[Verificare che il gateway simulato, dopo aver eseguito il reset correttamente, invii la conferma di successo al Cloud], 
	[RF-111-Obb],
	[Non implementato],

	[TS-112], 
	[Verificare che il gateway simulato possa confermare la sospensione di invio dei dati al Cloud in seguito al comando di sospensione ricevuto dallo stesso], 
	[RF-112-Obb],
	[Non implementato],

	[TS-113], 
	[Verificare che il gateway simulato possa confermare la riattivazione dell’invio dei dati al Cloud in seguito al comando di riattivazione ricevuto dallo stesso], 
	[RF-113-Obb],
	[Non implementato],

	[TS-114], 
	[Verificare che il gateway simulato possa confermare la sospensione dell’invio dei dati di un sensore simulato specifico in seguito al comando di sospensione ricevuto dal Cloud], 
	[RF-114-Obb],
	[Non implementato],

	[TS-115], 
	[Verificare che il gateway simulato possa confermare la riattivazione dell’invio dei dati di un sensore simulato specifico in seguito al comando di riattivazione ricevuto dal Cloud], 
	[RF-115-Obb],
	[Non implementato],

	[TS-116], 
	[Verificare che il gateway simulato possa inviare la conferma del cambiamento della frequenza di invio dati al Cloud in seguito al comando di modifica ricevuto dallo stesso], 
	[RF-116-Obb],
	[Non implementato],

	[TS-117], 
	[Verificare che il gateway simulato, all’avvio, invii un comando di hello, provvisto di proprio ID univoco, al Cloud per autenticarsi], 
	[RF-117-Obb],
	[Non implementato],

	[TS-118], 
	[Verificare che il Cloud rifiuti l’autenticazione del gateway in caso quest’ultimo invii credenziali errate], 
	[RF-118-Obb],
	[Non implementato],

	[TS-119], 
	[Verificare che il Cloud rifiuti l’autenticazione del gateway in caso l’ID univoco inviato dal gateway non sia presente nel proprio database], 
	[RF-119-Obb],
	[Non implementato],

	[TS-120], 
	[Verificare che il gateway simulato possa inviare i dati dei sensori al Cloud in modo crittografato utilizzando la chiave pubblica ricevuta dal Cloud durante l’assegnazione del Tenant], 
	[RF-120-Obb],
	[Non implementato],

	[TS-121], 
	[Verificare che il gateway simulato raccolga i dati dei sensori all’interno di un buffer interno prima di inviarli al Cloud], 
	[RF-121-Obb],
	[Non implementato],

	[TS-122], 
	[Verificare che il gateway simulato, in caso di overflow del buffer, elimini i dati più vecchi], 
	[RF-122-Obb],
	[Non implementato],

	[TS-123], 
	[Verificare che il gateway simulato ritenti l’invio dei dati al Cloud in caso non sia raggiungibile, mantenendo i dati nel buffer fino al successo dell’invio], 
	[RF-123-Obb],
	[Non implementato],

	[TS-124], 
	[Verificare che il Cloud notifichi gli utenti del Tenant nel caso in cui non riceva dati dal gateway associato per un periodo di tempo superiore ad una soglia predefinita], 
	[RF-124-Obb],
	[Non implementato],

	[TS-125],
	[Verificare che il Cloud rilevi l’assenza di dati da un sensore specifico di un gateway simulato allo scadere di un timeout predefinito], 
	[RF-125-Obb],
	[Non implementato],

	[TS-126], 
	[Verificare che il Cloud, nel caso in cui venga rilevata l’assenza di dati di un sensore di un gateway, notifichi gli utenti del tenant associato], 
	[RF-126-Obb],
	[Non implementato],

	[TS-127], 
	[Verificare che l’API Client possa richiedere i dati real-time di un sensore specifico associato al proprio tenant], 
	[RF-127-Des],
	[Non implementato],

	[TS-128], 
	[Verificare che l’API Client, dopo aver richiesto i dati real-time di un sensore specifico, possa ricevere tali dati in forma coppia valore-timestamp], 
	[RF-128-Des],
	[Non implementato],


    [TS-129],
	  [Verificare che l'*API Client* possa richiedere lo storico dei dati di un sensore appartenente al proprio tenant],
	  [RF-129-Obb],
	  [Non implementato],

    [TS-130],
	  [Verificare che l'*API Client* dopo aver richiesto lo storico dei dati di un sensore specifico possa ricevere tali dati in forma coppia valore-timestamp],
	  [RF-130-Obb],
	  [Non implementato],

	  [TS-131],
	  [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non esistente],
	  [RF-131-Obb],
	  [Non implementato],

	  [TS-132],
	  [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore per cui non sono disponibili dati],
	  [RF-132-Obb],
	  [Non implementato],

	  [TS-133],
	  [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non associato al proprio tenant],
	  [RF-133-Obb],
	  [Non implementato],

	  [TS-134],
	  [Verificare che l'*API Client* possa autenticarsi nel Sistema utilizzando un'API Key valida],
	  [RF-134-Obb],
	  [Non implementato],

	  [TS-135],
	  [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione non siano valide],
	  [RF-135-Obb],
	  [Non implementato],

	  [TS-136],
	  [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione siano scadute],
	  [RF-136-Obb],
	  [Non implementato],

	  [TS-137],
	  [Verificare che il *Sensore simulato* possa inviare i dati rilevati al gateway a cui è collegato],
	  [RF-137-Obb],
	  [Non implementato],

	  [TS-138],
	  [Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa normalizzarli],
	  [RF-138-Obb],
	  [Non implementato],

	  [TS-139],
	  [Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa formattarli secondo un formato interno standardizzato],
	  [RF-139-Obb],
	  [Non implementato],

	  [TS-140],
	  [Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa salvarli in un buffer interno prima di inviarli al Cloud],
	  [RF-140-Obb],
	  [Non implementato],

	  [TS-141],
	  [Verificare che in caso un o più Sensori simulati inviino una quantità di dati superiore alla capacità di invio del gateway verso il Cloud, il *gateway* possa salvare i dati più recenti nel buffer interno eliminando i dati più vecchi per fare spazio ai nuovi dati],
	  [RF-141-Obb],
	  [Non implementato],

	  [TS-142],
	  [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Heart Rate Service (GATT)],
	  [RF-142-Obb],
	  [Non implementato],

	  [TS-143],
	  [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Pulse Oximeter Service (GATT)],
	  [RF-143-Obb],
	  [Non implementato],

	  [TS-144],
	  [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi ad un profilo custom per l'elettrocardiogramma (ECG)],
	  [RF-144-Obb],
	  [Non implementato],

	  [TS-145],
	  [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Health Thermometer Service (GATT)],
	  [RF-145-Obb],
	  [Non implementato],

	  [TS-146],
	  [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Environmental Sensing Service (GATT)],
	  [RF-146-Obb],
	  [Non implementato],

	  [TS-147],
	  [Verificare che il *Cloud* possa inviare la conferma di autenticazione avvenuta correttamente al gateway, in seguito ad un tentativo di autenticazione andato a buon fine],
	  [RF-147-Obb],
	  [Non implementato],

	  [TS-148],
	  [Verificare che il *Cloud* possa inviare il rifiuto di autenticazione al gateway, in seguito ad un tentativo di autenticazione fallito],
	  [RF-148-Obb],
	  [Non implementato],

	  [TS-149],
	  [Verificare che il *Cloud* possa inviare al gateway, non commissionato, l'assegnazione del tenant, in seguito ad un commissioning andato a buon fine],
	  [RF-149-Obb],
	  [Non implementato],

	  [TS-150],
	  [Verificare che il *Cloud* possa inviare al gateway, non commissionato, la chiave pubblica per la cifratura dei dati, in seguito ad un commissioning andato a buon fine],
	  [RF-150-Obb],
	  [Non implementato],

	  [TS-151],
	  [Verificare che il *Cloud* possa inviare al gateway sospeso il comando di riattivazione di un Sensore simulato sospeso specifico. In seguito alla ricezione del comando il gateway deve ricominciare ad inviare dati IoT crittografati relativi a tale Sensore],
	  [RF-151-Obb],
	  [Non implementato],

	  [TS-152],
	  [Verificare che il *Cloud* possa inviare al gateway il comando di sospensione di un Sensore simulato non sospeso specifico. In seguito alla ricezione del comandi il gateway deve interrompere l'invio di dati IoT crittografati relativi a tale Sensore],
	  [RF-152-Obb],
	  [Non implementato],

	  [TS-153],
	  [Verificare che il *Cloud* possa inviare, al gateway sospeso, il comando di riattivazione. In seguito alla ricezione del comando il gateway deve ricominciare l'invio di tutti i dati IoT crittografati],
    [RF-153-Obb],
    [Non implementato],

	  [TS-154],
	  [Verificare che il *Cloud* possa inviare, al gateway attivo, il comando di sospensione. In seguito alla ricezione del comando il gateway deve interrompere l'invio di tutti i dati IoT crittografati],
	  [RF-154-Obb],
	  [Non implementato],

	  [TS-155],
	  [Verificare che il *Cloud* possa inviare al gateway il comando di riavvio. In seguito alla ricezione del comando il gateway deve spegnersi e riaccendersi, mantenendo le configurazioni e i dati salvati localmente],
	  [RF-155-Obb],
	  [Non implementato],

	  [TS-156],
	  [Verificare che il *Cloud* possa inviare al gateway il comando di modifica della frequenza di invio dati per uno specifico tipo di sensore. In seguito alla ricezione di tale comando il gateway deve aggiornare la configurazione della frequenza di invio dati per i dati inviati al Cloud relativi a tutti i sensori di tale tipologia, così da inviare un dato ogni intervallo di tempo specificato nel comando.],
	  [RF-156-Obb],
	  [Non implementato],

	  [TS-157],
	  [Verificare che il *Cloud* possa inviare al gateway il comando di decommissioning. In seguito alla ricezione del comando il gateway deve cancellare l'associazione al tenant, la chiave di cifratura e deve eseguire un reset. Dopo aver eseguito il decommissioning il gateway deve ammettere un nuovo commissioning],
	  [RF-157-Obb],
	  [Non implementato],

	  [TS-158],
	  [Verificare che il *Cloud* possa inviare al gateway il comando di reset. In seguito alla ricezione del comando il gateway deve cancellare tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica],
	  [RF-158-Obb],
	  [Non implementato],

	  [TS-159],
	  [Verificare che l'*Utente autenticato* possa effettuare il logout dal Sistema],
	  [RF-159-Obb],
	  [Non implementato],

	  [TS-160],
	  [Verificare che il *Sistema*, a seguito del logout possa registrare l'evento negli audit log salvando nome utente, timestamp e azione eseguita],
	  [RF-160-Obb],
	  [Non implementato],

	  [TS-161],
	  [Verificare che l'*Utente autenticato* possa modificare la propria password],
	  [RF-161-Obb],
	  [Non implementato],

	  [TS-162],
	  [Verificare che l'*Utente autenticato*, per modificare la password, possa inserire la vecchia password],
	  [RF-162-Obb],
	  [Non implementato],

	  [TS-163],
	  [Verificare che il *Sistema* possa mostrare un messaggio di errore se la vecchia password inserita non è corretta durante la modifica password],
	  [RF-163-Obb],
	  [Non implementato],

	  [TS-164],
	  [Verificare che l'*Utente autenticato* possa visualizzare i dettagli di un singolo alert],
	  [RF-164-Obb],
	  [Non implementato],

	  [TS-165],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert, possa vedere il titolo dell'alert],
	  [RF-165-Obb],
	  [Non implementato],

	  [TS-166],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert, possa vedere la descrizione dell'alert],
	  [RF-166-Obb],
	  [Non implementato],

	  [TS-167],
	  [Verificare che l'*Utente autenticato* possa visualizzare gli alert relativi alla mancata ricezione dati da un Gateway],
	  [RF-167-Obb],
	  [Non implementato],

	  [TS-168],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere l'identificativo del gateway],
	  [RF-168-Obb],
	  [Non implementato],

	  [TS-169],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere il timestamp dell'ultimo dato ricevuto],
	  [RF-169-Obb],
	  [Non implementato],

	  [TS-170],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere il tempo di inattività],
	  [RF-170-Obb],
	  [Non implementato],

	  [TS-171],
	  [Verificare che l'*Utente autenticato* possa visualizzare gli alert relativi alla mancata ricezione dati da un sensore],
	  [RF-171-Obb],
	  [Non implementato],

	  [TS-172],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere l'identificativo del sensore],
	  [RF-172-Obb],
	  [Non implementato],

	  [TS-173],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere il timestamp dell'ultimo dato ricevuto],
	  [RF-173-Obb],
	  [Non implementato],

	  [TS-174],
	  [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere il tempo di inattività],
	  [RF-174-Obb],
	  [Non implementato],

	  [TS-175],
	  [Verificare che l'*Utente autenticato* possa selezionare un sensore dalla lista dei sensori associati al proprio tenant],
	  [RF-175-Obb],
	  [Non implementato],

	  [TS-176],
	  [Verificare che l'*Utente autenticato* possa visualizzare i dati in tempo reale di un sensore selezionato],
	  [RF-176-Obb],
	  [Non implementato],

	  [TS-177],
	  [Verificare che l'*Utente autenticato* possa visualizzare i dati real-time del sensore attraverso un grafico time-series con assi etichettati],
	  [RF-177-Obb],
	  [Non implementato],

	  [TS-178],
	  [Verificare che il *grafico dei dati real-time* possa aggiornarsi automaticamente alla ricezione di nuovi dati dal Gateway],
	  [RF-178-Obb],
	  [Non implementato],

	  [TS-179],
	  [Verificare che l'*Utente autenticato* possa visualizzare lo storico dei dati di un sensore selezionato],
	  [RF-179-Obb],
	  [Non implementato],

	  [TS-180],
	  [Verificare che l'*Utente autenticato* possa visualizzare lo storico dei dati del sensore attraverso un grafico time-series con assi etichettati],
	  [RF-180-Obb],
	  [Non implementato],

	  [TS-181],
	  [Verificare che l'*Utente autenticato* possa filtrare lo storico dei dati del sensore per intervallo temporale],
	  [RF-181-Obb],
	  [Non implementato],

	  [TS-182],
	  [Verificare che il *Sistema* possa visualizzare il grafico dei dati del sensore filtrato per l'intervallo temporale selezionato],
	  [RF-182-Obb],
	  [Non implementato],

	  [TS-183],
	  [Verificare che il *Sistema* possa mostrare un messaggio di errore se l'intervallo temporale inserito non è valido],
	  [RF-183-Obb],
	  [Non implementato],

	  [TS-184],
	  [Verificare che l'*Utente autenticato* possa filtrare i dati del sensore per intervallo di valori],
	  [RF-184-Obb],
	  [Non implementato],

	  [TS-185],
	  [Verificare che il *Sistema* possa visualizzare il grafico dei dati del sensore filtrato per l'intervallo di valori selezionato],
	  [RF-185-Obb],
	  [Non implementato],

	  [TS-186],
	  [Verificare che il *Sistema* possa mostrare un messaggio di errore se l'intervallo di valori inserito non è valido],
	  [RF-186-Obb],
	  [Non implementato],

	  [TS-187],
	  [Verificare che il *Sistema* possa mostrare un messaggio informativo se non sono disponibili dati per il sensore selezionato],
	  [RF-187-Obb],
	  [Non implementato],

	  [TS-188],
	  [Verificare che il *Super Admin* possa creare un nuovo tenant nel Sistema],
	  [RF-188-Obb],
	  [Non implementato],

	  [TS-189],
	  [Verificare che il *Super Admin*, creando un nuovo tenant, possa inserire il nome del tenant],
	  [RF-189-Obb],
	  [Non implementato],

	  [TS-190],
	  [Verificare che il *Super Admin*, creando un nuovo tenant, possa specificare l'accettazione o meno della clausola di impersonificazione],
	  [RF-190-Obb],
	  [Non implementato],

	  [TS-191],
	  [Verificare che il *Sistema* possa mostrare un messaggio di errore se il nome del tenant inserito è già in uso],
	  [RF-191-Obb],
	  [Non implementato],

	  [TS-192],
	  [Verificare che il *Super Admin* possa eliminare un tenant esistente dal Sistema],
	  [RF-192-Obb],
	  [Non implementato],


  ),
  caption: [Test di Sistema con descrizione e requisito di riferimento],
  kind: table,
  supplement: [Tabella]
)

=======
Essi coprono l'insieme dei requisiti funzionali definiti nel capitolato. //DA COMPLETARE

  #table(
	    columns: (1.5fr, 3fr, 1.3fr, 1.7fr),
	    align: center + horizon,
	    inset: 8pt,
	    fill: (x, y) => if y == 0 { gray.lighten(70%) },
	    [*Identificativo*], [*Descrizione*], [*Requisito di riferimento*], [*Stato*],
	    
      [TS-129],
	    [Verificare che l'*API Client* possa richiedere lo storico dei dati di un sensore appartenente al proprio tenant],
	    [RF-129-Obb],
	    [Non implementato],

	    [TS-130],
	    [Verificare che l'*API Client* dopo aver richiesto lo storico dei dati di un sensore specifico possa ricevere tali dati in forma coppia valore-timestamp],
	    [RF-130-Obb],
	    [Non implementato],

	    [TS-131],
	    [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non esistente],
	    [RF-131-Obb],
	    [Non implementato],

	    [TS-132],
	    [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore per cui non sono disponibili dati],
	    [RF-132-Obb],
	    [Non implementato],

	    [TS-133],
	    [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non associato al proprio tenant],
	    [RF-133-Obb],
	    [Non implementato],

	    [TS-134],
	    [Verificare che l'*API Client* possa autenticarsi nel Sistema utilizzando un'API Key valida],
	    [RF-134-Obb],
	    [Non implementato],

	    [TS-135],
	    [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione non siano valide],
	    [RF-135-Obb],
	    [Non implementato],

	    [TS-136],
	    [Verificare che l'*API Client* possa ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione siano scadute],
	    [RF-136-Obb],
	    [Non implementato],

	    [TS-137],
	    [Verificare che il *Sensore simulato* possa inviare i dati rilevati al gateway a cui è collegato],
	    [RF-137-Obb],
	    [Non implementato],

	    [TS-138],
	    [Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa normalizzarli],
	    [RF-138-Obb],
	    [Non implementato],

	    [TS-139],
	    [Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa formattarli secondo un formato interno standardizzato],
	    [RF-139-Obb],
	    [Non implementato],

	    [TS-140],
	    [Verificare che il *Sistema Gateway* alla ricezione dei dati dei sensori possa salvarli in un buffer interno prima di inviarli al Cloud],
	    [RF-140-Obb],
	    [Non implementato],

	    [TS-141],
	    [Verificare che in caso un o più Sensori simulati inviino una quantità di dati superiore alla capacità di invio del gateway verso il Cloud, il *gateway* possa salvare i dati più recenti nel buffer interno eliminando i dati più vecchi per fare spazio ai nuovi dati],
	    [RF-141-Obb],
	    [Non implementato],

	    [TS-142],
	    [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Heart Rate Service (GATT)],
	    [RF-142-Obb],
	    [Non implementato],

	    [TS-143],
	    [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Pulse Oximeter Service (GATT)],
	    [RF-143-Obb],
	    [Non implementato],

	    [TS-144],
	    [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi ad un profilo custom per l'elettrocardiogramma (ECG)],
	    [RF-144-Obb],
	    [Non implementato],

	    [TS-145],
	    [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Health Thermometer Service (GATT)],
	    [RF-145-Obb],
	    [Non implementato],

	    [TS-146],
	    [Verificare che il *Sensore simulato* possa inviare al gateway i dati relativi al servizio Environmental Sensing Service (GATT)],
	    [RF-146-Obb],
	    [Non implementato],

	    [TS-147],
	    [Verificare che il *Cloud* possa inviare la conferma di autenticazione avvenuta correttamente al gateway, in seguito ad un tentativo di autenticazione andato a buon fine],
	    [RF-147-Obb],
	    [Non implementato],

	    [TS-148],
	    [Verificare che il *Cloud* possa inviare il rifiuto di autenticazione al gateway, in seguito ad un tentativo di autenticazione fallito],
	    [RF-148-Obb],
	    [Non implementato],

	    [TS-149],
	    [Verificare che il *Cloud* possa inviare al gateway, non commissionato, l'assegnazione del tenant, in seguito ad un commissioning andato a buon fine],
	    [RF-149-Obb],
	    [Non implementato],

	    [TS-150],
	    [Verificare che il *Cloud* possa inviare al gateway, non commissionato, la chiave pubblica per la cifratura dei dati, in seguito ad un commissioning andato a buon fine],
	    [RF-150-Obb],
	    [Non implementato],

	    [TS-151],
	    [Verificare che il *Cloud* possa inviare al gateway sospeso il comando di riattivazione di un Sensore simulato sospeso specifico. In seguito alla ricezione del comando il gateway deve ricominciare ad inviare dati IoT crittografati relativi a tale Sensore],
	    [RF-151-Obb],
	    [Non implementato],

	    [TS-152],
	    [Verificare che il *Cloud* possa inviare al gateway il comando di sospensione di un Sensore simulato non sospeso specifico. In seguito alla ricezione del comandi il gateway deve interrompere l'invio di dati IoT crittografati relativi a tale Sensore],
	    [RF-152-Obb],
	    [Non implementato],

	    [TS-153],
	    [Verificare che il *Cloud* possa inviare, al gateway sospeso, il comando di riattivazione. In seguito alla ricezione del comando il gateway deve ricominciare l'invio di tutti i dati IoT crittografati],
	    [RF-153-Obb],
	    [Non implementato],

	    [TS-154],
	    [Verificare che il *Cloud* possa inviare, al gateway attivo, il comando di sospensione. In seguito alla ricezione del comando il gateway deve interrompere l'invio di tutti i dati IoT crittografati],
	    [RF-154-Obb],
	    [Non implementato],

	    [TS-155],
	    [Verificare che il *Cloud* possa inviare al gateway il comando di riavvio. In seguito alla ricezione del comando il gateway deve spegnersi e riaccendersi, mantenendo le configurazioni e i dati salvati localmente],
	    [RF-155-Obb],
	    [Non implementato],

	    [TS-156],
	    [Verificare che il *Cloud* possa inviare al gateway il comando di modifica della frequenza di invio dati per uno specifico tipo di sensore. In seguito alla ricezione di tale comando il gateway deve aggiornare la configurazione della frequenza di invio dati per i dati inviati al Cloud relativi a tutti i sensori di tale tipologia, così da inviare un dato ogni intervallo di tempo specificato nel comando.],
	    [RF-156-Obb],
	    [Non implementato],

	    [TS-157],
	    [Verificare che il *Cloud* possa inviare al gateway il comando di decommissioning. In seguito alla ricezione del comando il gateway deve cancellare l'associazione al tenant, la chiave di cifratura e deve eseguire un reset. Dopo aver eseguito il decommissioning il gateway deve ammettere un nuovo commissioning],
	    [RF-157-Obb],
	    [Non implementato],

	    [TS-158],
	    [Verificare che il *Cloud* possa inviare al gateway il comando di reset. In seguito alla ricezione del comando il gateway deve cancellare tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica],
	    [RF-158-Obb],
	    [Non implementato],

	    [TS-159],
	    [Verificare che l'*Utente autenticato* possa effettuare il logout dal Sistema],
	    [RF-159-Obb],
	    [Non implementato],

	    [TS-160],
	    [Verificare che il *Sistema*, a seguito del logout possa registrare l'evento negli audit log salvando nome utente, timestamp e azione eseguita],
	    [RF-160-Obb],
	    [Non implementato],

	    [TS-161],
	    [Verificare che l'*Utente autenticato* possa modificare la propria password],
	    [RF-161-Obb],
	    [Non implementato],

	    [TS-162],
	    [Verificare che l'*Utente autenticato*, per modificare la password, possa inserire la vecchia password],
	    [RF-162-Obb],
	    [Non implementato],

	    [TS-163],
	    [Verificare che il *Sistema* possa mostrare un messaggio di errore se la vecchia password inserita non è corretta durante la modifica password],
	    [RF-163-Obb],
	    [Non implementato],

	    [TS-164],
	    [Verificare che l'*Utente autenticato* possa visualizzare i dettagli di un singolo alert],
	    [RF-164-Obb],
	    [Non implementato],

	    [TS-165],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert, possa vedere il titolo dell'alert],
	    [RF-165-Obb],
	    [Non implementato],

	    [TS-166],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert, possa vedere la descrizione dell'alert],
	    [RF-166-Obb],
	    [Non implementato],

	    [TS-167],
	    [Verificare che l'*Utente autenticato* possa visualizzare gli alert relativi alla mancata ricezione dati da un Gateway],
	    [RF-167-Obb],
	    [Non implementato],

	    [TS-168],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere l'identificativo del gateway],
	    [RF-168-Obb],
	    [Non implementato],

	    [TS-169],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere il timestamp dell'ultimo dato ricevuto],
	    [RF-169-Obb],
	    [Non implementato],

	    [TS-170],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da Gateway, possa vedere il tempo di inattività],
	    [RF-170-Obb],
	    [Non implementato],

	    [TS-171],
	    [Verificare che l'*Utente autenticato* possa visualizzare gli alert relativi alla mancata ricezione dati da un sensore],
	    [RF-171-Obb],
	    [Non implementato],

	    [TS-172],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere l'identificativo del sensore],
	    [RF-172-Obb],
	    [Non implementato],

	    [TS-173],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere il timestamp dell'ultimo dato ricevuto],
	    [RF-173-Obb],
	    [Non implementato],

	    [TS-174],
	    [Verificare che l'*Utente autenticato*, visualizzando un alert di mancata ricezione dati da sensore, possa vedere il tempo di inattività],
	    [RF-174-Obb],
	    [Non implementato],

	    [TS-175],
	    [Verificare che l'*Utente autenticato* possa selezionare un sensore dalla lista dei sensori associati al proprio tenant],
	    [RF-175-Obb],
	    [Non implementato],

	    [TS-176],
	    [Verificare che l'*Utente autenticato* possa visualizzare i dati in tempo reale di un sensore selezionato],
	    [RF-176-Obb],
	    [Non implementato],

	    [TS-177],
	    [Verificare che l'*Utente autenticato* possa visualizzare i dati real-time del sensore attraverso un grafico time-series con assi etichettati],
	    [RF-177-Obb],
	    [Non implementato],

	    [TS-178],
	    [Verificare che il *grafico dei dati real-time* possa aggiornarsi automaticamente alla ricezione di nuovi dati dal Gateway],
	    [RF-178-Obb],
	    [Non implementato],

	    [TS-179],
	    [Verificare che l'*Utente autenticato* possa visualizzare lo storico dei dati di un sensore selezionato],
	    [RF-179-Obb],
	    [Non implementato],

	    [TS-180],
	    [Verificare che l'*Utente autenticato* possa visualizzare lo storico dei dati del sensore attraverso un grafico time-series con assi etichettati],
	    [RF-180-Obb],
	    [Non implementato],

	    [TS-181],
	    [Verificare che l'*Utente autenticato* possa filtrare lo storico dei dati del sensore per intervallo temporale],
	    [RF-181-Obb],
	    [Non implementato],

	    [TS-182],
	    [Verificare che il *Sistema* possa visualizzare il grafico dei dati del sensore filtrato per l'intervallo temporale selezionato],
	    [RF-182-Obb],
	    [Non implementato],

	    [TS-183],
	    [Verificare che il *Sistema* possa mostrare un messaggio di errore se l'intervallo temporale inserito non è valido],
	    [RF-183-Obb],
	    [Non implementato],

	    [TS-184],
	    [Verificare che l'*Utente autenticato* possa filtrare i dati del sensore per intervallo di valori],
	    [RF-184-Obb],
	    [Non implementato],

	    [TS-185],
	    [Verificare che il *Sistema* possa visualizzare il grafico dei dati del sensore filtrato per l'intervallo di valori selezionato],
	    [RF-185-Obb],
	    [Non implementato],

	    [TS-186],
	    [Verificare che il *Sistema* possa mostrare un messaggio di errore se l'intervallo di valori inserito non è valido],
	    [RF-186-Obb],
	    [Non implementato],

	    [TS-187],
	    [Verificare che il *Sistema* possa mostrare un messaggio informativo se non sono disponibili dati per il sensore selezionato],
	    [RF-187-Obb],
	    [Non implementato],

	    [TS-188],
	    [Verificare che il *Super Admin* possa creare un nuovo tenant nel Sistema],
	    [RF-188-Obb],
	    [Non implementato],

	    [TS-189],
	    [Verificare che il *Super Admin*, creando un nuovo tenant, possa inserire il nome del tenant],
	    [RF-189-Obb],
	    [Non implementato],

	    [TS-190],
	    [Verificare che il *Super Admin*, creando un nuovo tenant, possa specificare l'accettazione o meno della clausola di impersonificazione],
	    [RF-190-Obb],
	    [Non implementato],

	    [TS-191],
	    [Verificare che il *Sistema* possa mostrare un messaggio di errore se il nome del tenant inserito è già in uso],
	    [RF-191-Obb],
	    [Non implementato],

	    [TS-192],
	    [Verificare che il *Super Admin* possa eliminare un tenant esistente dal Sistema],
	    [RF-192-Obb],
	    [Non implementato],

	  ),
	  caption: [Elenco dei test di sistema.],
	  kind: table,
  supplement: [Tabella]
)
>>>>>>> 09bd795 (creazione tabella test di sistema)
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
