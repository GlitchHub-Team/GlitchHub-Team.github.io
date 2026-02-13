#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Piano di Qualifica",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    ("0.0.3","3/01/2026", "Hossam Ezzemouri", "-", "Aggiunta di metriche"),
    ("0.0.2", "29/12/2025", "-", "Siria Salvalaio", "Stesura metriche"),
    ("0.0.1", "21/12/2025", "-", "Siria Salvalaio", "Bozza prime metriche e struttura documento"),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Piano di Qualifica",
)

= Introduzione <introduzione>
== Finalità del documento
Questo documento, #gloss[Piano di Qualifica], rappresenta un riferimento fondamentale che organizza e coordina tutte le attività di qualifica per il prodotto software, integrando pianificazione, verifica e miglioramento.
Il Piano di qualifica determina 3 elementi essenziali:
- Il *Piano di Qualità*, cioò l'insieme delle attività e obiettivi di qualità
- Le attività di *Controllo di qualità*
- Le iniziative di *Miglioramento continuo*

== Riferimenti
=== Riferimenti normativi
// Norme di Progetto?
- *Norme di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf
- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf
- *Piano di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf

=== Riferimenti informativi
- *Glossario*
  https://glitchhub-team.github.io/pdf/glossary.pdf
- *Slide T07 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf
- *Slide T08 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf
- *ISO/IEC 25010* \
  https://iso25000.com/index.php/en/iso-25000-standards/iso-25010
- *Metrica software - wikipedia*
  https://it.wikipedia.org/wiki/Metrica_software

= Metriche di Qualità del Processo
Le metriche di qualità del processo misurano l'efficacia, l'efficienza e il controllo delle attività necessarie per sviluppare, gestire e consegnare il prodotto software. Il loro scopo è di monitorare l'aderenza alla pianificazione, la stabilità dei processi, la sostenibilità dei costi e di migliorare costantemente i propri risultati. Queste metriche non valutano il prodotto finito, ma il modo in cui il prodotto viene realizzato.

In questo documento, tali misure vengono identificate tramite la sigla _MPC_ (Metriche di processo e controllo). Questo identificatio permette di classificare e tracciare tutte le misurazioni relative alla gestione dei costi, all'avanzamento temporale, alla qualità della documentazione e all'efficienza dei processi interni al team di sviluppo.

== Fornitura
- *MPC-PV (Planned Value)* \
  Valore del lavoro che si era pianificato di completare entro una certa data.
- *MPC-AC (Actual Cost)* \
  Costo effettivamente sostenuto per il lavoro svolto.
- *MPC-EV (Earned Value)* \
  Valore del lavoro effettivamente completato rispetto al budget totale.
- *MPC-BAC (Budget At Completion)* \
  Budget totale preventivato per l'intero Progetto.
- *MPC-EAC (Estimated At Completion)* \
  Stima del costo totale finale basata sulla performance attuale.
- *MPC-ETC (Estimated To Complete)* \
  Stima di quanto manca (in termini economici) per finire il progetto.
- *MPC-CV (Cost Variance)* \
  Differenza tra valore guadagnato e costo reale (*EV*-*AC*).
- *MPC-SV (Schedule Variance)* \
  Differenza tra lavoro fatto e lavoro pianificato (*EV*-*PV*).
- *MPC-TCR (Task Completion Rate)* \
  Percentuale di task completate rispetto a quelle pianificate per uno sprint.
- *MPC-TS (Task Slippage)* \
  Percentuale di task slittate allo sprint successivo rispetto alle task totali.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-PV], [Planned Value], [$>= 0$], [$= "Pianificato"$],
    [MPC-AC], [Actual Cost], [$>= 0$], [$<= "EAC"$],
    [MPC-EV], [Earned Value], [$>= 0$], [$> "PV"$],
    [MPC-BAC], [Budget At Completion], [$"(valore già fissato)"$], [$$],
    [MPC-EAC], [Estimated At Completion], [$<= "BAC"* 1.05$], [$< "BAC"$],
    [MPC-ETC], [Estimated To Complete], [$"(valore da definire)"$], [$$],
    [MPC-CV], [Cost Variance], [$>= 0$], [$> 0$],
    [MPC-SV], [Schedule Variance], [$>= 0$], [$> 0$],
    [MPC-TCR],[Task Completion Rate], [$"(da definire)"$],[$100%$],
    [MPC-TS], [Task Slippage], [$"(da definire)"$], [$0%$]

  ),
  caption: [Valori per misurare la qualità della fornitura.],
  kind: table,
  supplement: [Tabella]
)
\
== Sviluppo
- *MPC-RSI (Requirements Stability Index)* \
  Misura la stabilità dei requisiti; un valore basso indica troppi cambiamenti (instabilità).
- *MPC-PRCT (Pull Request Cycle Time)* \
  Tempo medio per revisionare e integrare una modifica nel codice.

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
  Valutazione automatica della leggibilità dei testi (in italiano).
- *MPC-CO (Correttezza Ortografica)* \
  Percentuale di errori ortografici rilevati nei documenti.
- *MPC-CD (Completezza Documentazione)* \
  Rapporto tra funzionalità software e sezione documentate.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-IG], [Indice di Gulpease], [$>= 40$], [$>= 60$],
    [MPC-CO], [Correttezza Ortografica], [$= 100%$], [$= 100%$],
    [MPC-CD], [Completezza Documentazione], [$= 100%$], [$= 100%$],
  ),
  caption: [Valori per misurare la qualità della documentazione.],
  kind: table,
  supplement: [Tabella]
)
\
== Verifica
- *MPC-CC (Code Coverage)* \
  Percentuale di righe di codice coperte dai test.
- *MPC-TSR (Test Success Rate)* \
  Percentuale di test passati con successo sul totale dei test eseguiti.
- *MPC-DD (Bug Density)* \
  Numero di bug trovati durante i test per ogni centinaia di righe di codice (CRG).

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-CC], [Code Coverage], [$>= 80%$], [$= 100%$],
    [MPC-TSR], [Test Success Rate], [$= 100%$], [$= 100%$],
    [MPC-DD], [Bug Density], [$<= "5 per CRG"$], [$<= "1 per CRG"$],
  ),
  caption: [Valori per misurare la qualità della verifica.],
  kind: table,
  supplement: [Tabella]
)
\
== Gestione della qualità e processi
- *MPC-QMS (Quality Metrics Satisfied)* \
  Percentuale di metriche di qualità che rientrano nel range accettabile.
- *MPC-CQ (Cost of Quality)* \
  Rapporto tra i costi di prevenzione/test e il costo totale.
- *MPC-TE (Time efficiency)* \
  Rapporto tra tempo di produzione effettivo e tempo totale di lavoro.
- *MPC-WD (Work Distribution)* \
  Misura la distribuzione in percentuale delle task tra i membri del team per garantire un carico di lavoro equilibrato.
- *MPC-SPF (Single Point of Failure Risk)* \
  Indice che valuta la concentrazione di task critiche su un numero limitato di membri del team, al fine di ridurre il rischio di dipendenza da un singolo componente del gruppo.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPC-QMS], [Quality Metrics Satisfied], [$>= 80%$], [$= 100%$],
    [MPC-CQ], [Cost of Quality], [$15%-25%$], [$<=15%$],
    [MPC-TE], [Time efficiency], [$>= 0.8$], [$>= 0.95$],
    [MPC-WD],[Work Distribution], [$"(da definire)"$], [$"(da definire)"$],
    [MPC-SPF],[Single Point of Failure Risk], [$"(da definire)"$], [$"(da definire)"$]

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
- *MPD-CRP (Copertura Requisiti Opzionali)* \
  Percentuale di requisiti opzionali implementati.
- *MPD-AD (API Documentation)*
  Presenza e completezza della documentazione delle API.
- *MPD-DL (Data Loss)*
  Percentuale di messaggi persi durante la trasmissione dei dati dal gateway al cloud. (messaggi inviati-messaggi ricevuti)/messaggi inviati

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-CRO], [Copertura Requisiti Obbligatori], [$= 100%$], [$= 100%$],
    [MPD-CRP], [Copertura Requisiti Opzionali], [$>= 0$], [$>=70%$],
    [MPD-AD],[API Documentation], [$"(da definire)"$], [$"(da definire)"$],
    [MPD-DL],[Data Loss], [$"(da definire)"$], [$0%$]
  ),
  caption: [Valori per misurare la qualità delle funzionalità.],
  kind: table,
  supplement: [Tabella]
)
\
== Affidabilità
- *MPD-FT (Failure Tolerance)* \
  Capacità del sistema di resistere a guasti senza bloccarsi.
- *MPD-FF (Failure Frequency)* \
  Frequenza con cui si presentano malfunzionamenti in funzionamento.
- *MPD-MTBF (Mean Time Beetween Failures)* \
  Tempo medio di funzionamento tra un guasto e l'altro.
- *MPD-MTTR (Mean Time To Restoration)* \
  Tempo medio necessario per ripristinare il servizio dopo un errore.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-FT], [Failure Tolerance], [$>= 80%$], [$= 100%$],
    [MPD-FF], [Failure Frequency], [$<= "2 al mese"$], [$=0$],
    [MPD-MRBF], [Mean Time Beetween Failures], [$>= "4 giorni"$], [$>= "7 giorni"$],
    [MPD-MTTR], [Mean Time To Restoration], [$<= "4 ore"$], [$<= "1 ora"$],
  ),
  caption: [Valori per misurare la qualità dell'affidabilità.],
  kind: table,
  supplement: [Tabella]
)
\
== Usabilità
- *MPD-LT (Learning Time)* \
  Tempo necessario a un utente per imparare a usare una funzione.
- *MPD-MUM (Mistakes User Makes)* \
  Numero medio di errori commessi dall'utente nell'uso del software.
- *MPD-TSR (Task Success Rate)* \
  Percentuale di compiti portate a termine con successo dall'utente.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-LT], [Learning Time], [$<= "30 min"$], [$<= "10 min"$],
    [MPD-MUM], [Mistakes User Makes], [$<= "3 per task"$], [$<= "1 per task"$],
    [MPD-TSR], [Task Success Rate], [$>= 90%$], [$= 100%$],
  ),
  caption: [Valori per misurare la qualità dell'usabilità.],
  kind: table,
  supplement: [Tabella]
)
\
== Efficienza
- *MPD-RT (Response Time)* \
  Tempo di risposta del sistema a un input dell'utente.
- *MPD-UR (Use of Resources)* \
  Consumo di risorse hardware (memoria).

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-RT], [Response Time], [$<= "2 secondi"$], [$<= "0,5 secondi"$],
    [MPD-UR], [Use of Resources], [$"da stabilire"$], [$"da stabilire"$],
  ),
  caption: [Valori per misurare la qualità dell'efficienza.],
  kind: table,
  supplement: [Tabella]
)
\
== Manutenibilità
- *MPD-AN (Analyzability)*\
  Facilità di identificare la causa di un errore osservando il log e il codice.
- *MPD-MO (Modifiability)* \
  Facilità con cui è possibile modificare il codice senza causare "effetti collaterali".
- *MPD-TE (Testability)* \
  Semplicità con cui il software può essere sottoposto a nuovi test.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-AN], [Analyzability], [$<= "2 ore"$], [$<= "30 min"$],
    [MPD-MO], [Modifiability], [$<= "8 ore/feature"$], [$<= "3 ore/feature"$],
    [MPD-TE], [Testability], [$>= 70%$], [$>= 90%$],
  ),
  caption: [Valori per misurare la qualità della manutenibilità.],
  kind: table,
  supplement: [Tabella]
)
\
== Sicurezza
- *MPD-AFR (Authentication Failure Rate)* \
  Tasso di fallimento dei tentativi di login (per rilevare attacchi).
- *MPD-DE (Data encryption)* \
  Livello di copertura della cifratura sui dati sensibili.

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-AFR], [Authentication Failure Rate], [$<= 5%$], [$<= 1%$],
    [MPD-DE], [Data encryption], [$"100% dati sensibili"$], [$"100% dati sensibili"$],
  ),
  caption: [Valori per misurare la qualità della sicurezza.],
  kind: table,
  supplement: [Tabella]
)
\
= Metriche di Testing
La presente sezione descrive le attività di testing adottate nel progetto e le metriche utilizzate per valutare l'efficacia del processo di verifica.

Le attivita di testing forniscono evidenza oggettiva del corretto funzionamento dell'intero sistema e supportano la valutazione delle metriche di qualità del perodotto discusse in questo documento.

== Copertura del codice
La copertura del codice (detta anche *Code Coverage*) misura la percentuale di codice sorgente eseguita durante l'esecuzione dei test automatici. Tale metrica consente di valutare il grado di verifica del software ed è direttamente collegata alla metrica *MPC-CC (Code Coverage)*.

Il valore minimo accettabile è fissato al 75%

== Test Unitari
I test unitari hanno l'obiettivo di verificare il corretto funzionamento delle singole unità software in isolamento. Particolare attenzione viene posta aalle funzioni critiche e a quelle che implementano la logica di business principale del sistema. Considerata la natura distribuita dell'architettura, tali test risultano fondamentali per individuare errori che possono insorgere in particolare durante la comunicazione tra sensori, gateway e infrastruttura cloud, ambito in cui è più probabile che si verifichino rispetto alle singole componenti isolate.
L'esecuzione dei test unitari contribuisce al miglioramento delle metriche *MPC-TSR (Test Success Rate)* e *MPC-CC (Code Coverage)*, riducendo il numero di difetti introdotti nelle fasi successive.

== Test di Integrazione
I test di integrazione verificano il corretto comportamento delle interazioni tra i vari componenti del sistema. Considerata la natura distribuita dell'architettura,
tali test risultano fondamentali per il raggiungimento di un solido risultato.

== Test di Regressione
I test di regressione vengono eseguiti in seguito all'implementazione di nuove funzionalità o modifiche al sistema, in modo da accertarsi che il corretto comportamento precedente non sia 
stato compromesso.
Essi consistono nella riesecuzione dei test unitari e di integrazione già esistenti. Un aumento del numero di test di regressione falliti
rappresenta un indicatore di instabilità e deve essere strettamente monitorato per evitare regressioni funzionali.

== Test di Sistema
I test di sistema verificano il corretto comportamento complessivo dell' applicazione in un ambiente il più possibile simile a quello di utilizzo reale.
Essi coprono l'insieme dei requisiti funzionali definiti nel capitolato. //DA COMPLETARE
= Cruscotto di Valutazione

= Iniziative di miglioramento
