#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Piano di Qualifica",
  stato: "Bozza",
  versione: "0.0.5",
  registro-modifiche: (
    ("0.0.6", "24/01/2026", "Siria Salvalaio", "-", "Miglioramento descrizione metriche e aggiunta formule"),
    ("0.0.5", "17/01/2026", "Michele Dioli", "-", "Inizio stesura sezione del cruscotto"),
    ("0.0.4", "13/01/2026", "Siria Salvalaio", "-", "Inizio stesura iniziative di miglioramento (bozza)"),
    ("0.0.3", "03/01/2026", "Hossam Ezzemouri", "Siria Salvalaio", "Aggiunta di metriche"),
    ("0.0.2", "29/12/2025", "Siria Salvalaio", "Hossam Ezzemouri", "Stesura metriche"),
    ("0.0.1", "21/12/2025", "Siria Salvalaio", "Hossam Ezzemouri", "Bozza prime metriche e struttura documento"),
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
- Il *Piano di Qualità*, ciò l'insieme delle attività e obiettivi di qualità
- Le attività di *Controllo di qualità*
- Le iniziative di *Miglioramento continuo*

== Riferimenti
=== Riferimenti normativi
// Norme di Progetto?
- *Norme di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/NormeProgetto.pdf
- *Capitolato di appalto C7, "Sistemi di acquisizione dati da sensori"* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf
- *Piano di Progetto* \
  https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf

=== Riferimenti informativi
- *Glossario* \
  https://glitchhub-team.github.io/pdf/glossary.pdf
- *Slide T07 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf
- *Slide T08 - Qualità del software* \
  https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T08.pdf
- *ISO/IEC 25010* \
  https://iso25000.com/index.php/en/iso-25000-standards/iso-25010
- *Metrica software - wikipedia* \ 
//scrivi ultima data per file esterni, versione per quelli interni 
  https://it.wikipedia.org/wiki/Metrica_software

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
//rivedere se ha senso sennò togliere (branch per sprint e statement (test) coverage)
- *MPD-BC (Branch Coverage)* \
  
- *MPD-SC (Statement Coverage)* \
  

#figure(
  table(
    columns: (auto, 2fr, 1fr, 1fr),
    align: center + horizon,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*ID*], [*Nome Metrica*], [*Accettabile*], [*Ottimo*],
    
    [MPD-], [Failure Frequency], [$<= "1 settimana"$], [$=0$],
    [MPD-], [Mean Time Between Failures], [$>= "4 giorni"$], [$>= "7 giorni"$],
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
= Metriche di Testing
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
Essi coprono l'insieme dei requisiti funzionali definiti nel capitolato. //DA COMPLETARE
= Cruscotto di Valutazione

= Iniziative di miglioramento //guarda pdq
Le iniziative di miglioramento hanno lo scopo di analizzare l'andamento del progetto, soprattutto i problemi, e applicare correzioni incrementali sia ai processi interni che al prodotto. Il gruppo adotta un approccio basato sul miglioramento continuo per minimizzare i rischi e massimizzare l'efficienza. \

== Valutazione sull'organizzazione
#figure(
  table(
    columns: (1.4fr, 2fr, 2fr),
    align: center + horizon,
    inset: 8pt,
    fill: (x, y) => if y == 0 { gray.lighten(70%) },
    [*Problema*], [*Descrizione*], [*Azioni di correzione*],
    
    [Pianificazione temporale e scadenze], [Difficoltà nel definire la durata degli sprint e stabilire scadenze equilibrate per le task], [Adozione di sprint a durata fissa (due settimane, posso essere fatte eccezioni) e ???],
    [Coordinamento del gruppo], [], [],
    [Interpretazione normativa], [Difficoltà nel comprendere appieno alcuni documenti da redigere], [Sessioni di riallineamento interno e revisione collettiva dei documenti normativi per garantire una visione comune],
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
    
    [Gestione e rotazione dei ruoli], [Difficoltà nell'assegnare i ruoli nel breve periodo e scegliere la cadenza per il cambio], [Definizione di una tabella di rotazione che garantisca a tutti di ricoprire ogni ruolo, con cambi programmati a fine Sprint],
    [Allocazione delle risorse], [Complessità nello stabilire a quanti membri assegnare ogni attività], [Valutazione della criticità della task; assegnazione di almeno due persone per le task complesse per favorire il pair word e ridurre il rischio di stallo e/o di ritardi],
    [Efficienza comunicativa intra-task], [Scambio di informazioni non sempre ottimale tra membri che lavorano allo stesso compito], [Creazione di sotto-canali di comunicazione specifici e utilizzo di commenti dettagliati, discussi in riunione, sulle issue di Github],
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

    [Creare use case adeguati?], [], [],
    [Definire le metriche?], [], [-> riunione straordinaria di brainstorming],
    [?], [], [],
  ),
  caption: [Azioni adottate per migliorare l'uso degli strumenti.],
  kind: table,
  supplement: [Tabella]
)
