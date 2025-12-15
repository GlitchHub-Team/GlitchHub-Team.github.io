#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
  titolo: "Analisi dei Requisiti",
  stato: "Bozza",
  versione: "0.3.0",
  registro-modifiche: (
    ("0.3.0", "16/11/2025", "Hossam Ezzemouri", "-", "Stesura degli Use Case 3, 3.1, 3.2, 3.3, 4, 5 e 6"),
    (
      "0.2.0",
      "16/11/2025",
      "Riccardo Graziani",
      "-",
      "Stesura descrizione struttura dei casi d'uso, aggiunta sezione 2.2",
    ),
    ("0.1.0", "15/11/2025", "Hossam Ezzemouri", "-", "Stesura introduzione e inizio dei Casi d'uso"),
  ),

  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Analisi dei Requisiti",
)

= Introduzione
Questo documento ha come obiettivo quello di fornire informazioni  dettagliate e chiare riguardo i requisiti che il software progettato possiede: questo per poter esser un punto di riferimento sia per i soggetti coinvolti nello sviluppo sia per gli appaltanti, consentendo ad entrambi di verificare che il progetto soddisfi i requisiti funzionali e non funzionali esplicitati.

== Panoramica del prodotto
//da approfondire
Il progetto tratta la realizzazione di un sistema distribuito per l'acquisizione, l'elaborazione e la gestione dei dati provenienti da sensori Bluetooth Low Energy (BLE). In un contesto in cui la raccolta capillare (e affidabile soprattutto) rappresenta un elemento centrale per varie applicazioni (industriali,logistiche,sanitarie, ecc...), il capitolato evidenzia la necessità di una piattaforma in grado di ricevere e normalizzare dati eterogenei provenienti da un numero non trascurabile di sensori, garantendo al contempo sicurezza e scalabilità.

== Architettura
L'architettura prevista si articola in tre principali livelli che collaborano per garantire un flusso dati continuo e sicuro:
- *Sensori BLE*
- *Gateway BLE WiFI*
- *Cloud*

I sensori svolgono la funzione di acquisizione locale mentre i gateway aggregano e inoltrano i dati verso il cloud, che rappresenta il core del sistema. Quest'ultimo si occupa di archiviazione, gestione dei tenant, esposizione delle API e monitoraggio tramite dashboard.

= Casi d'uso
== Introduzione
La definizione dei casi d'uso rappresenta una fase fondamentale nell'analisi dei requisiti di sistema previsto dal capitolato M31. I casi d'uso permettono di descrivere in maniera chiara e strutturata come gli *attori* interagiscono con il sistema per raggiungere un determinato obiettivo.

I casi d'uso si compongono di un diagramma UML, che offre una rappresentazione sintetica delle relazioni tra attori e funzionalità, e di una descrizione testuale dettagliata. Quest'ultima specifica gli elementi principali del comportamento del sistema attraverso i seguenti punti:
- *Attori primari*: indicano gli attori che interagiscono attivamente con il sistema e che avviano o guidano il flusso principale del caso d'uso;
- *Attori secondari*: rappresentano gli attori che intervengono in modo indiretto o passivo;
- *Precondizioni*: descrizione delle condizioni che devono essere vere affinchè l'attore possa avviare il caso d'uso;
- *Postcondizioni*: descrizione dello stato interno del sistema al completamento del caso d'uso;
- *Scenario principale*: sequenza ordinata di passi che descrive il flusso di interazione tra attori e sistema in assenza di errori o di situazioni eccezionali;
- *Scenario secondario*: deviazioni dal flusso principale che si verificano quando l'attore compie una scelta alternativa o si verificano condizioni particolari previste dal caso d'uso;
- *Inclusioni*: riferimenti a casi d'uso che l'attore deve completare per poter portare a termine il caso d'uso corrente;
- *Estensioni*: riferimenti a casi d'uso che posso verificarsi durante il flusso principale del caso d'uso;
- *Trigger*: descrizione dell'evento o condizione che dà avvio al caso d'uso;

== Attori
Come scritto precedentemente, il sistema si compone di più livelli e coinvolge attori eterogenei, sia umani che automatici. L'utilizzo dei casi d'uso consente quindi di modellare le interazioni tra tali attori, traducendo i requisiti funzionali individuati in scenari operativi concreti. Essi permettono di focalizzarsi quindi sugli aspetti fondamentali del sistema, quali l'acquisizione e l'aggregazione dei dati, l'inoltro verso il cloud, il provisioning sicuro dei dispositivi, la gestione multi-tenant e la visualizzazione dei dati tramite dashboard.


== Lista dei casi d'uso

=== Attore principale - Utente (non autenticato)
//Dina

=== Attore principale - Tenant User
//Dina

=== Attore principale - Tenant Admin
//Hoss, Michele

=== Attore principale - Super Admin
//Riccardo, Elia

=== Attore principale - Gateway
//Siria, Jaume
=== UC1 - Gestione persistenza dati di commissioning 
- *Attore primario*: Gateway (simulato)
- *Trigger*: Avvio o riavvio del gateway
- *Pre-condizione*: I dati di commissioning sono stati inviati e salvati precedentemente
- *Post-condizione*: Le informazioni di commissioning sono caricate in memoria e garantiscono consistenza per i successivi flussi di lavoro
- *Scenario principale*: 
  - Il gateway si avvia
  - Il gateway carica le informazioni persistenti dalla sua memoria locale
  - Le informazioni sono rese disponibili ai moduli interni per garantire la consistenza
- *Scenario secondario*: Le informazioni di autenticazione di commissioning risultano assenti o corrotte
- *Estensioni*: Dati di Commissioning Assenti/Corrotti (UC1.1)
- *Inclusioni*: Autenticazione e provisioning (UC2)

=== UC1.1 - Dati di Commissioning Assenti/Corrotti
- *Attore primario*:  Gateway (simulato)
- *Trigger*: La verifica dell'integrità e della validità delle informazioni di commissioning fallisce
- *Pre-condizione*: Il gateway ha tentato di caricare le informazioni di commissioning dalla memoria locale ma i dati risultano assenti, illeggibili o non superano il controllo dal Cloud
- *Post-condizione*: Il gateway è in uno stato di errore e non può proseguire il flusso di lavoro
- *Scenario principale*: 
  - Il processo di verifica delle informazioni di commissioning fallisce
  - Il gateway entra in uno stato di errore e blocca i flussi di lavoro
  - Il gateway attende comandi o un riavvio
- *Estensioni*: 
- *Inclusioni*:

=== UC2 - Autenticazione e provisioning
- *Attore primario*:  Gateway (simulatore)
- *Trigger*: Il gateway si avvia per la prima volta
- *Pre-condizione*:
  - Il gateway è avviato
  - Il gateway possiede i parametri di connessione al Cloud e le credenziali iniziali
- *Post-condizione*: 
  - Il gataway è autenticato, è associato in modo univoco
  - Le informazioni di commissioning sono persistenti
- *Scenario principale*: 
  - Il gateway tenta di stabilire una connessione sicura con il Cloud
  - Il gateway presenta i certificati/chiavi d'accesso per l'autenticazione
  - Il cloud valida le credenziali e associa il gateway ad un tenant
  - Il gateway riceve conferma del provisioning
- *Estensioni*: Gestione autenticazione fallita (UC2.1)
- *Inclusioni*: 

//non so se l'attore primario sia il gateway o il cloud
=== UC2.1 - Gestione Autenticazione Fallita
- *Attore primario*:  gateway (simulato)
- *Trigger*: Rifiuto di connessione da parte del Cloud dovuto a credenziali non valide
- *Pre-condizione*:
  - Il gateway ha tentato la connessione
  - Il cloud ha determinato che le credenziali non sono valide
- *Post-condizione*: 
  - il cloud rifiuta la connessione
  - Il gateway è in stato di errore (e interrompe i tentativi di invio dati)
- *Scenario principale*: 
  - Il cloud respinge la richiesta di connessione
  - il cloud invia un messaggio di errore al gateway
  - il gateway registra l'errore di autenticazione e sospende i tentativi di connessione
  - Il gateway attende il riavvio o un intervento di un user
- *Estensioni*: 
- *Inclusioni*:

=== UC3 - Trasmissione sicura e cifrata dati al cloud
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Sono disponibili nuovi dati da mandare al cloud
- *Pre-condizione*: 
  - Il gateway è autenticato, autorizzato e dispone dei certificati necessari per la cifratura
  - I dati in un formato standardizzato interno sono disponibili
  - Il gateway è online
- *Post-condizione*: 
  - La comunicazione tra gateway e cloud è stabilita su un canale cifrato
  - I dati sono stati inviati al Cloud con protocolli sicuri e la trasmissione è stata confermata
- *Scenario principale*: 
  - Il gateway prepara i dati da inviare
  - Il gateway avvia la connessione con il cloud e negozia il protocollo di cifratura
  - La connessione sicura con il Cloud viene stabilita
  - Il gateway invia i dati al cloud in modo cifrato
  - Il gateway riceve conferma di ricezione dal cloud
*Estensioni*: Salvataggio (buffer) dati per disconnessione (UC3.1)
*Inclusioni*: 

=== UC3.1 - Salvataggio (buffer) dati per disconnessione
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Tentativo fallito di invio dati al cloud
- *Pre-condizione*: 
  - Il gateway ha dati da inviare
  - La connessione al Cloud si è interrotta o non è disponibile
- *Post-condizione*: 
  - Il pacchetto di dati è salvato in un buffer locale
  - La connessione al cloud viene ripristinata 
  - I dati vengono inviati in ordine (definito)
- *Scenario principale*: 
  - Il tentativo di invio dati fallisce
  - Il gateway memorizza il pacchetto dati non inviato nel suo buffer locale
  - Il gateway continua a tentare periodicamente di ristabilire la connessione al cloud
  - La connessione viene ristabilita
  - Il gateway invia i dati memorizzati nel buffer al cloud in ordine (definito)
  - Il gateway riceve conferma e svuota il buffer con i dati inviati con successo
- *Scenario secondario*: Se il buffer raggiungere la capacità massima, i dati più vecchi vengono eliminati per scartati per aggiungere i nuovi
- *Estensioni*: 
- *Inclusioni*: 

// quindi da togliere questo?
=== UC4 - Normalizzazione e Formattazione interna dei dati 
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Sono pronti dati grezzi da normalizzare
- *Pre-condizione*: I dati grezzi sono stati acquisiti con successo dai sensori simulati
- *Post-condizione*: I dati sono stati convertiti in un formato interno standardizzato
- *Scenario principale*: 
  - Il gateway riceve i dati grezzi
  - Il gateway applica la logica di normalizzazione dei dati
  - I dati risultano uniformati in un formato interno standardizzato
- *Estensioni*: 
- *Inclusioni*: 

=== UC5 - Aggiornamento sicuro delle credenziali di autenticazione
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Il certificato di autenticazione sta scadendo
- *Pre-condizione*: Le credenziali attuali (certificati) sono in scadenza 
- *Post-condizione*: Le nuove credenziali di autenticazione sono state generate, acquisite e persistono nel gateway
- *Scenario principale*: 
  - Il gateway rileva che le credenziali attuali sono in scadenza o non valide
  - Il gateway avvia un processo di rinnovo automatico/manuale con il cloud
  - Il gateway riceve le nuove credenziali tramite una sessione sicura
  - Il gateway si salva le nuove informazioni e tenta l'autenticazione con le nuove credenziali
- *Inclusioni*: 
  - Autenticazione e Provisioning (UC2)
  - Gestione persistenza dati di commissioning (UC1)
- *Estensioni*:

=== UC06 - Ricezione e risposta a messaggi dal Cloud
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di un messaggio di controllo del Cloud
- *Pre-condizione*: il gateway è connesso e autenticato con il cloud, il gateway ha la possibilità di rispondere ai messaggi del Cloud
- *Post-condizione*: il messaggio è stato elaborato, il gateway manda una risposta coerente
- *Scenario principale*: 
  - Il gateway riceve un messaggio dal Cloud
  - Il gateway elabora la richiesta, se possibile, come la modifica di parametri
  - Il gateway invia una risposta adatta al Cloud
- *Estensioni*:
  - (UC06.1) Comando del Cloud fallito
  - (UC06.2) Creazione sensore simulato
  - (UC06.3) Cancellazione sensore simulato
  - (UC06.4) Modifica parametri sensore simulato
  - (UC06.5) Avvio simulazione di specifico sensore
  - (UC06.6) Stop simulazione di specifico sensore

=== UC06.1 - Comando del Cloud fallito
- *Attore primario*: Gateway (simulato)
- *Trigger*: Non è possibile soddisfare il comando ricevuto dal Cloud
- *Pre-condizione*: il gateway è connesso e autenticato con il cloud, il gateway ha la possibilità di rispondere ai messaggi del Cloud
- *Post-condizione*: il gateway informa il Cloud che la sua richiesta non è andata a buon fine
- *Scenario principale*: 
  - Il gateway non riesce a soddisfare la richiesta del Cloud
  - Il gateway invia un messaggio di errore al Cloud

=== UC06.2 - Creazione sensore simulato
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richista relativa del Cloud
- *Pre-condizione*: 
  - Il gateway è connesso e autenticato con il Cloud.
  - Non esiste già un sensore con lo stesso identificativo.
  - Il gateway ha risorse disponibili per ospitare un nuovo sensore (memoria, slot liberi).
- *Post-condizione*: Un nuovo sensore simulato è registrato nel gateway.
- *Scenario principale*: 
  - Il gateway riceve dal Cloud il comando di creazione.
  - Il gateway verifica che non esista già un sensore con lo stesso ID.
  - Il gateway crea il sensore simulato con i parametri di default.
  - Il gateway invia conferma al Cloud.

=== UC06.3 - Cancellazione sensore simulato
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richista relativa del Cloud
- *Pre-condizione*: 
  - Il gateway è connesso e autenticato con il Cloud.
  - Il sensore da cancellare esiste ed è registrato nel gateway.
- *Post-condizione*: Il sensore simulato selezionato è rimosso dal gateway.
- *Scenario principale*: 
  - Il gateway riceve dal Cloud il comando di cancellazione.
  - Il gateway verifica che il sensore esista.
  - Il gateway interrompe eventuale simulazione attiva.
  - Il gateway elimina il sensore simulato.
  - Il gateway invia conferma al Cloud.
- *Inclusioni*:
  - (UC06.6) Stop simulazione di specifico sensore

=== UC06.4 - Modifica parametri sensore simulato
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richista relativa del Cloud
- *Pre-condizione*: 
  - Il gateway è connesso e autenticato con il Cloud.
  - Il sensore da modificare esiste ed è attivo o configurabile.
  - I nuovi parametri sono validi.
- *Post-condizione*: I parametri del sensore simulato sono aggiornati nel gateway.
- *Scenario principale*: 
  - Il gateway riceve dal Cloud il comando di modifica.
  - Il gateway verifica che il sensore esista.
  - Il gateway controlla la validità dei nuovi parametri.
  - Il gateway aggiorna la configurazione del sensore.
  - Il gateway invia conferma al Cloud.

=== UC06.5 - Avvio simulazione di specifico sensore
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richista relativa del Cloud
- *Pre-condizione*:
  - Il gateway è connesso e autenticato con il Cloud.
  - Il sensore simulato esiste.
  - Il sensore non è già in stato di simulazione attiva.
- *Post-condizione*: Il gateway inizia a generare dati con quel sensore simulato.
- *Scenario principale*: 
  - Il gateway riceve dal Cloud il comando di avvio simulazione.
  - Il gateway inizia a produrre dati simulati.
  - Il gateway invia conferma al Cloud.

=== UC06.6 - Stop simulazione di specifico sensore
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richista relativa del Cloud
- *Pre-condizione*:
  - Il gateway è connesso e autenticato con il Cloud.
  - Il sensore simulato esiste.
  - Il sensore è in stato di simulazione attiva.
- *Post-condizione*: Il gateway smette a generare dati con quel sensore simulato.
- *Scenario principale*: 
  - Il gateway riceve dal Cloud il comando di stop simulazione.
  - Il gateway smette di produrre dati simulati.
  - Il gateway invia conferma al Cloud.

=== Attore principale - REST Client
//Dina

//casi d'uso iniziali di Hossam e Riccardo, da cui pescare in caso
=== UC3 - Inserimento nuovo utente da parte di un Admin

- *Attore principale*: Admin
- *Trigger*: L'Admin vuole creare un nuovo utente
- *Precondizioni*:
  - Admin autenticato nel sistema

- *Postcondizioni*:
  - Il nuovo utente è registrato nel sistema e può autenticarsi
  - L'utente è correttamente associato al tenant dell'Admin
- *Scenari alternativi*:
  - Username già in uso

=== UC3.1 - Inserimento username nuovo utente
- *Attore principale*: Admin
- *Trigger*: L'Admin inserisce lo username da dare al nuovo utente da creare
- *Precondizioni*:
  - Admin autenticato
  - Flusso UC3 iniziato (l'Admin ha scelto di inserire un nuovo utente)
- *Postcondizioni*:
  - Lo username viene registrato correttamente nel sistema
  - Il nuovo utente è associato al tenant dell'Admin
- *Flussi alternativi*:
  - Username già in uso
  - Username con caratteri non validi

=== UC3.2 - Inserimento password nuovo utente
- *Attore principale*: Admin
- *Trigger*: L'admin assegna una password all'utente da creare
- *Precondizioni*:
  - Admin autenticato
  - Flusso UC3 inziato e username inserito (UC3.1 completato)
- *Postcondizioni*:
  - La password viene registrata correttamente nel sistema
- *Flussi alternativi*:
  - Password non conforme ai criteri di sicurezza

=== UC4 - L'Admin seleziona un utente
- *Attore principale*: Admin
- *Trigger*: L'Admin dalla dashboard seleziona un utente del suo tenant
- *Precondizioni*:
  - Admin autenticato nel sistema
  - Esistono utenti registrati nel tenant dell'Admin
- *Postcondizioni*: - L'Admin può visualizzare i dati dell'utente selezionato
  - L'Admin può modificare/eliminare l'utente

=== UC5 - Modifica di un utente selezionato dall'Admin
- *Attore principale*: Admin
- *Trigger*: L'Admin modifica un utente
- *Precondizioni*:
  - Admin autenticato
  - Utente già selezionato dall'Admin (UC4 completato)
  - L' Admin appartiene al tenant dell'utente selezionato
- *Postcondizioni*:
  - L'utente viene aggiornato secondo le modifiche dell'Admin

=== UC6 -  Eliminazione di un utente selezionato dall'Admin
- *Attore principale*: Admin
- *Trigger*: L'Admin vuole eliminare l'utente selezionato
- *Precondizioni*:
  - Admin autenticato
  - Utente già selezionato dall'Admin (UC4 completato)
  - L'utente selezionato appartiene al tenant dell'Admin
- *Postcondizioni*:
  - L'utente viene rimosso dal sistema

