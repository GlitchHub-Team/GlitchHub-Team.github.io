#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
  titolo: "Analisi dei Requisiti",
  stato: "Bozza",
  versione: "0.5.0",
  registro-modifiche: (
    (
      "0.5.0",
      "14/12/2025",
      "Alessandro Dinato, Michele Dioli",
      "-",
      "Stesura Use Case relativi al Super-admin",
    ),
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

#let uc(id) = {
  link(label(id))[#underline()[#id]]
}

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

I sensori svolgono la funzione di acquisizione locale mentre i Gateway aggregano e inoltrano i dati verso il cloud, che rappresenta il core del sistema. Quest'ultimo si occupa di archiviazione, gestione dei tenant, esposizione delle API e monitoraggio tramite dashboard.

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
Per ogni caso d'uso viene considerato il Sistema Cloud come raggiungibile e funzionante.

=== Attore principale - Utente (non autenticato)
//Dina

=== Attore principale - Tenant User
//Dina

=== Attore principale - Tenant Admin
//Riccardo, Elia

=== Attore principale - Super Admin
==== UC1 - Creazione Tenant <UC1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole creare un nuovo tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Il nuovo tenant è registrato nel Sistema
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di creazione tenant
  - Il Super-admin inserisce il nome del nuovo tenant
- *Scenari alternativi*:
  - Il nome del tenant è già in uso da un altro tenant
- *Estensioni*:
  - #uc("UC1.1")

==== UC1.1 - Nome del tenant già utilizzato <UC1.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin ha inserito un nome di tenant già esistente
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il nome del tenant inserito esiste già nel Sistema
- *Post-condizioni*:
  - Il Sistema visualizza un messaggio di errore
- *Scenario principale*:
  - Il Super-admin ha inserito il nome del nuovo tenant ma è già in uso

==== UC2 - Eliminazione Tenant <UC2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare un tenant esistente
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - I Gateway associati subiscono un azione di decommissioning
  - I dati associati al tenant vengono eliminati
  - Gli utenti associati al tenant vengono eliminati
  - Il tenant viene rimosso dal Sistema
- *Scenario principale*:
  - Il Super-admin seleziona il tenant da eliminare
  - Il Super-admin conferma l'eliminazione del tenant
  - Il Sistema esegue il decommissioning dei Gateway associati
  - Il Sistema elimina i dati e gli utenti associati al tenant
  - Il Sistema elimina gli utenti associati al tenant
  - Il Sistema elimina il tenant
- *Scenari alternativi*:
  - Il decommissioning di uno o più Gateway associati fallisce
- *Estensioni*:
  - #uc("UC2.1")
- *Inclusioni*:
  - #uc("UC2.2")
  - #uc("UC2.3")
  - #uc("UC2.4")
  - #uc("UC2.5")

===== UC2.1 - Decommissioning Gateway fallito <UC2.1>
- *Attore principale*: Super-admin
- *Trigger*: Durante l'eliminazione del tenant, il decommissioning di uno o più Gateway associati fallisce
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il decommissioning del o dei Gateway non viene completato
  - Il tenant non viene eliminato
  - Il Sistema visualizza un messaggio di errore
- *Scenario principale*:
  - Il decommissioning di uno o più Gateway associati fallisce durante l'eliminazione del tenant

===== UC2.2 - Selezione e conferma tenant da eliminare <UC2.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione e la conferma del tenant da eliminare
- *Scenario principale*:
  - Il Super-admin seleziona il tenant da eliminare
  - Il Super-admin conferma l'eliminazione del tenant

===== UC2.3 - Esecuzione decommissioning Gateway associati al tenant <UC2.3>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole eliminare un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - I Gateway associati al tenant subiscono un azione di decommissioning
- *Scenario principale*:
  - Il Sistema invia il comando di decommissioning a tutti i Gateway associati al tenant
- *Scenari alternativi*:
  - Uno o più gateway non sono raggiungibili perciò il decommissioning non può essere completato
- *Estensioni*:
  - #uc("UC7.1")

===== UC2.4 - Eliminazione dati e utenti associati al tenant <UC2.4>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - I dati associati al tenant vengono eliminati
  - Gli utenti associati al tenant vengono eliminati
- *Scenario principale*:
  - Il Sistema elimina tutti i dati associati al tenant
  - Il Sistema elimina tutti gli utenti associati al tenant

===== UC2.5 - Eliminazione tenant <UC2.5>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il tenant viene rimosso dal Sistema
- *Scenario principale*:
  - Il Sistema elimina il tenant selezionato

==== UC3 - Visualizzazione dashboard Super-admin <UC3>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole accedere alla dashboard
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Il Super-admin visualizza la dashboard con le informazioni sui tenant e sui Gateway
- *Scenario principale*:
  - Il Super-admin visualizza le informazioni aggregate sui tenant
  - Il Super-admin visualizza le informazioni aggregate sui Gateway

==== UC4 - Visualizzazione lista Gateway <UC4>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare tutti i Gateway registrati nel Sistema
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene mostrata la lista di tutti i Gateway registrati nel Sistema
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista Gateway
  - Il sistema mostra la lista di tutti i Gateway registrati

==== UC5 - Visualizzazione Gateway <UC5>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un Gateway specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Vengono mostrati i dettagli del Gateway selezionato
- *Scenario principale*:
  - Il Super-admin visualizza i dettagli del Gateway selezionato


// AZIONI SUPER-ADMIN SUI GATEWAY

==== UC6 - Associazione Gateway-tenant <UC6> //è corretto considerare il Gateway come attore secondario?
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole associare un Gateway ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway non deve essere già associato ad un altro tenant
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Gateway viene associato al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da associare//possibili sotto use cases
  - Il Super-admin seleziona il tenant a cui associare il Gateway
  - Il Super-admin esegue la configurazione del Gateway per il tenant selezionato
- *Inclusioni*:
  - #uc("UC6.1")
  - #uc("UC6.2")
  - #uc("UC7")

===== UC6.1 - Selezione Gateway <UC6.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole associare un Gateway ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway non deve essere già associato ad un altro tenant
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Gateway da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da associare

===== UC6.2 - Selezione tenant <UC6.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole associare un Gateway ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il tenant a cui associare il Gateway

==== UC7 - Configurazione Gateway <UC7>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin applica la nuova configurazione al Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - La configurazione del Gateway è applicata correttamente
- *Scenario principale*:
  - Il Super-admin inserisce la nuova configurazione per il Gateway selezionato
  - Il Sistema invia le informazioni di configurazione al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la configurazione non può essere completata
  - La configurazione fornita non è valida per il Gateway selezionato
- *Estensioni*:
  - #uc("UC7.1")
  - #uc("UC7.2")

===== UC7.1 - Gateway non raggiungibile <UC7.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin tenta di configurare un Gateway non raggiungibile
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super-admin tenta di configurare il Gateway ma non è raggiungibile

===== UC7.2 - Configurazione non valida <UC7.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin fornisce una configurazione non valida per il Gateway selezionato
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non applica la configurazione al Gateway
- *Scenario principale*:
  - Il Super-admin inserisce una configurazione non valida per il Gateway selezionato


==== UC8 - Decommissioning Gateway <UC8>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole eseguire il decommissioning di un Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant
  - Il Gateway viene resettato alle impostazioni di fabbrica
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway su cui eseguire il decommissioning
  - Il Sistema invia il comando di disassociazione al Gateway
  - Il Sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il decommissioning non può essere completato
- *Estensioni*:
  - #uc("UC7.1")
- *Inclusioni*:
  - #uc("UC8.1")
  - #uc("UC9")

===== UC8.1 - Disassociazione Gateway dal tenant <UC8.1>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole eseguire il decommissioning di un Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant a livello di Sistema
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da disassociare
  - Il Sistema invia il comando di disassociazione al Gateway

==== UC9 - Reset Gateway <UC9>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole resettare un Gateway alle impostazioni di fabbrica
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Gateway viene resettato alle impostazioni di fabbrica
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da resettare
  - Il Sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il reset non può essere completato
- *Estensioni*:
  - #uc("UC7.1")

==== UC10 - Riavvio Gateway <UC10>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole riavviare un Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Gateway viene riavviato correttamente
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da riavviare
  - Il Sistema invia il comando di riavvio al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il riavvio non può essere completato
- *Estensioni*:
  - #uc("UC7.1")


==== UC11 - Autenticazione Gateway <UC11>
- *Attore principale*: Super-admin
- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole autenticare un Gateway registrato nel Sistema
- *Precondizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway è registrato nel Sistema ma non ancora autenticato //registrato significa che comunica con il sistema da non autenticato
- *Postcondizioni*:
  - Il Sistema autentica il Gateway
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da autenticare
  - Il Super-admin fornisce il certificato di autenticazione
- *Scenario alternativo*:
  - Il Gateway non è raggiungibile perciò l'autenticazione non può essere completata
  - Il certificato fornito non è valido per il Gateway selezionato
- *Estensioni*:
  - #uc("UC7.1")
  - #uc("UC11.1")

===== UC11.1 - Certificato non valido <UC11.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin fornisce un certificato non valido per l'autenticazione del Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway è registrato nel Sistema ma non ancora autenticato
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non autentica il Gateway
- *Scenario principale*:
  - Il Super-admin fornisce un certificato non valido per l'autenticazione del Gateway selezionato

==== UC12 - Gestione richiesta fornitura Gateway <UC12>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole accettare o rifiutare una richiesta di fornitura Gateway da parte di un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Esiste una richiesta di fornitura Gateway da parte di un tenant
- *Post-condizioni*:
  - La richiesta di fornitura Gateway viene accettata o rifiutata
- *Scenario principale*:
  - Il Super-admin visualizza la richiesta di fornitura Gateway da parte di un tenant
  - Il Super-admin accetta o rifiuta la richiesta
- *Scenari alternativi*:
  - Viene fornita una motivazione per il rifiuto della richiesta
- *Estensioni*:
  - #uc("UC12.1")

===== UC12.1 - Motivazione rifiuto richiesta <UC12.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin rifiuta una richiesta di fornitura Gateway da parte di un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene fornita una motivazione per il rifiuto della richiesta
- *Scenario principale*:
  - Il Super-admin fornisce una motivazione per il rifiuto della richiesta di fornitura Gateway

==== UC13 - Visualizzazione log di attività di un tenant <UC13> //???????????
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i log di attività di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Vengono mostrati i log di attività del tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona il tenant di cui vuole visualizzare i log di attività

==== UC14 - Visualizzazione lista tenant <UC14>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare tutti i tenant registrati nel Sistema
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene mostrata la lista di tutti i tenant registrati nel Sistema
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista tenant

==== UC15 - Visualizzazione tenant <UC15>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Vengono mostrati i dettagli del tenant selezionato
- *Scenario principale*:
  - Il Super-admin visualizza i dettagli del tenant selezionato
- *Inclusioni*:
  - #uc("UC15.1")
  - #uc("UC15.2")
  - #uc("UC15.3")
  - #uc("UC15.4")

===== UC15.1 - Visualizzazione identificativo del tenant <UC15.1> // troppo specifico??????
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrato l'identificativo del tenant selezionato
- *Scenario principale*:
  - Il Super-admin visualizza l'identificativo del tenant selezionato

===== UC15.2 - Visualizzazione lista utenti associati al tenant <UC15.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrata la lista degli utenti associati al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista utenti associati al tenant

===== UC15.3 - Visualizzazione lista Gateway associati al tenant <UC15.3>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrata la lista dei Gateway associati al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista Gateway associati al tenant

===== UC15.4 - Visualizzazione lista sensori associati al tenant <UC15.4>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrata la lista dei sensori associati al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista sensori associati al tenant

==== UC16 - Visualizzazione richieste di fornitura Gateway <UC16>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare tutte le richieste di fornitura Gateway di tutti i tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene mostrata la lista di tutte le richieste di fornitura Gateway di tutti i tenant
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista richieste di fornitura Gateway

==== UC17 - Creazione utente Tenant-admin <UC17>
- *Attore principale*: Super-admin
- *Attore secondario*: Client email
- *Trigger*: Il Super-admin vuole creare un nuovo Tenant-admin associato ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il nuovo Tenant-admin è registrato nel Sistema e associato al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di creazione nuovo Tenant-admin
  - Il Super-admin seleziona il tenant a cui associare il nuovo Tenant-admin
  - Il Super-admin inserisce l'email del nuovo Tenant-admin
  - Il Tenant-admin riceve una email con le credenziali di accesso //use case del tenant-admin da fare
- *Scenari alternativi*:
  - L'email inserita è già in uso da un altro utente nel Sistema
- *Estensioni*:
  - #uc("UC17.1")
- *Inclusioni*:
  - #uc("UC17.2")
  - #uc("UC17.3")
  - #uc("UC17.4")

===== UC17.1 - Email già in uso <UC17.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin inserisce un'email già in uso da un altro utente
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Il Sistema visualizza un messaggio di errore
- *Scenario principale*:
  - L'email inserita è già in uso da un altro utente nel Sistema

===== UC17.2 - Selezione tenant <UC17.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole creare un nuovo Tenant-admin associato ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il tenant a cui associare il nuovo Tenant-admin

===== UC17.3 - Inserimento email nuovo Tenant-admin <UC17.3>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole creare un nuovo Tenant-admin associato ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'email del nuovo Tenant-admin da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin inserisce l'email del nuovo Tenant-admin

===== UC17.4 - Invio credenziali di accesso nuovo Tenant-admin <UC17.4>
- *Attore principale*: Super-admin
- *Attore secondario*: Client email
- *Trigger*: Il Super-admin vuole creare un nuovo Tenant-admin associato ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
  - L'email del nuovo Tenant-admin è valida
- *Post-condizioni*:
  - Il Tenant-admin riceve una email con le credenziali di accesso
- *Scenario principale*:
  - Il Sistema invia una email al nuovo Tenant-admin con le credenziali di accesso

==== UC18 - Sospensione account Tenant-admin <UC18>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole sospendere l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin non deve essere già sospeso
- *Post-condizioni*:
  - L'account del Tenant-admin viene sospeso
- *Scenario principale*:
  - Il Super-admin seleziona il Tenant-admin da sospendere
  - Il Super-admin conferma la sospensione dell'account
- *Inclusioni*:
  - #uc("UC18.1")
  - #uc("UC18.2")

===== UC18.1 - Selezione Tenant-admin da sospendere <UC18.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole sospendere l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin non deve essere già sospeso
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant-admin da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il Tenant-admin da sospendere

===== UC18.2 - Conferma sospensione account Tenant-admin <UC18.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole sospendere l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin non deve essere già sospeso
- *Post-condizioni*:
  - L'account del Tenant-admin viene sospeso
- *Scenario principale*:
  - Il Super-admin conferma la sospensione dell'account del Tenant-admin selezionato

=== UC19 - Riattivazione account Tenant-admin <UC19>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole riattivare l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin deve essere sospeso
- *Post-condizioni*:
  - L'account del Tenant-admin viene riattivato, annullando la sospensione
- *Scenario principale*:
  - Il Super-admin seleziona il Tenant-admin da riattivare
  - Il Super-admin conferma la riattivazione dell'account
- *Inclusioni*:
  - #uc("UC19.1")
  - #uc("UC19.2")

===== UC19.1 - Selezione Tenant-admin da riattivare <UC19.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole riattivare l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin deve essere sospeso
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant-admin da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il Tenant-admin da riattivare

===== UC19.2 - Conferma riattivazione account Tenant-admin <UC19.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole riattivare l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin deve essere sospeso
- *Post-condizioni*:
  - L'account del Tenant-admin viene riattivato, annullando la sospensione
- *Scenario principale*:
  - Il Super-admin conferma la riattivazione dell'account del Tenant-admin selezionato

==== UC20 - Eliminazione account Tenant-admin <UC20>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin non deve essere l'unico Tenant-admin nel tenant
- *Post-condizioni*:
  - L'account del Tenant-admin viene eliminato dal Sistema
- *Scenario principale*:
  - Il Super-admin seleziona il Tenant-admin da eliminare
  - Il Super-admin conferma l'eliminazione dell'account
- *Inclusioni*:
  - #uc("UC20.1")
  - #uc("UC20.2")

===== UC20.1 - Selezione Tenant-admin da eliminare <UC20.1>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin non deve essere l'unico Tenant-admin nel tenant
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant-admin da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il Tenant-admin da eliminare

===== UC20.2 - Conferma eliminazione account Tenant-admin <UC20.2>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare l'account di un Tenant-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant-admin deve esistere nel Sistema
  - Il Tenant-admin non deve essere l'unico Tenant-admin nel tenant
- *Post-condizioni*:
  - L'account del Tenant-admin viene eliminato dal Sistema
- *Scenario principale*:
  - Il Super-admin conferma l'eliminazione dell'account del Tenant-admin selezionato

/*
==== Configurazione alert globali
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole impostare degli alert
- *Precondizioni*:
  - Super-admin autenticato

- *Postcondizioni*:
  - Un nuovo alert è configurato e attivo
- *Scenari alternativi*:
  - Alert già esistente con gli stessi criteri

==== Configurazione limiti di utilizzo
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole impostare limiti (max Gateway per tenant, storage buffer ecc...)
- *Precondizioni*:
  - Super-admin autenticato
  - Tenant esistente

- *Postcondizioni*:
  - I limiti del tenant sono aggiornati
- *Scenari alternativi*:
  - Tentativo di impostare limiti già inferiori a quellii in uso
*/


=== Attore principale - Gateway
//Siria, Jaume


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

