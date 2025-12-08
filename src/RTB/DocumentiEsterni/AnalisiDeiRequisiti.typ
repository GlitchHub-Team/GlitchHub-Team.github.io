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

I sensori svolgono la funzione di acquisizione locale mentre i gateway aggregano e inoltrano i dati verso il cloud, che rappresenta il core del sistema. Quest'ultimo si occupa di archiviazione, gestione dei tenant, esposizione delle API e monitoraggio tramite dashboard.

= Casi d'uso
== Introduzione
La definizione dei casi d'uso rappresenta una fase fondamentale nell'analisi dei requisiti di sistema previsto dal capitolato M31. I casi d'uso permettono di descrivere in maniera chiara e strutturata come gli *attori* interagiscono con il sistema per raggiungere un determinato obiettivo.

I casi d'uso si compongono di un diagramma UML, che offre una rappresentazione sintetica delle relazioni tra attori e funzionalità, e di una descrizione testuale dettagliata. Quest'ultima specifica gli elementi principali del comportamento del sistema attraverso i seguenti punti:
- *Attori primari*: indicano gli attori che interagiscono attivamente con il sistema e che avviano o guidano il flusso principale del caso d'uso;
- *Attori secondari*: rappresentano gli attori che intervengono in modo indiretto o passivo;
- *Pre-condizioni*: descrizione delle condizioni che devono essere vere affinchè l'attore possa avviare il caso d'uso;
- *Post-condizioni*: descrizione dello stato interno del sistema al completamento del caso d'uso;
- *Scenario principale*: sequenza ordinata di passi che descrive il flusso di interazione tra attori e sistema in assenza di errori o di situazioni eccezionali;
- *Scenario secondario*: deviazioni dal flusso principale che si verificano quando l'attore compie una scelta alternativa o si verificano condizioni particolari previste dal caso d'uso;
- *Inclusioni*: riferimenti a casi d'uso che l'attore deve completare per poter portare a termine il caso d'uso corrente;
- *Estensioni*: riferimenti a casi d'uso che posso verificarsi durante il flusso principale del caso d'uso;
- *Trigger*: descrizione dell'evento o condizione che dà avvio al caso d'uso;

== Attori
Come scritto precedentemente, il sistema si compone di più livelli e coinvolge attori eterogenei, sia umani che automatici. L'utilizzo dei casi d'uso consente quindi di modellare le interazioni tra tali attori, traducendo i requisiti funzionali individuati in scenari operativi concreti. Essi permettono di focalizzarsi quindi sugli aspetti fondamentali del sistema, quali l'acquisizione e l'aggregazione dei dati, l'inoltro verso il cloud, il provisioning sicuro dei dispositivi, la gestione multi-tenant e la visualizzazione dei dati tramite dashboard.


== Lista dei casi d'uso

=== Attore principale - Utente
//Dina
//possibilità bloccare utente?
==== UC1 - Autenticazione <UC1>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole autenticarsi nel Sistema
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - L'Utente ha eseguito l'accesso al Sistema ed è stato riconosciuto come _Tenant User_, _Tenant Admin_ o _Super Admin_
- *Scenario principale*:
  - L'Utente seleziona la funzionalità di login
  - L'Utente inserisce lo username
  - L'Utente inserisce la password
- *Scenari alternativi*:
  - L'Utente inserisce username o password errati
- *Estensioni*:
  - #uc("UC1.1")
- *Inclusioni*:
  - #uc("UC1.2")
  - #uc("UC1.3")

==== UC1.1 - Autenticazione non riuscita <UC1.1>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce username o password errati
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - L'Utente ha inserito username che non corrisponde ad un utente registrato o ha inserito una password errata
- *Post-condizioni*:
  - L'Utente non viene autenticato nel Sistema
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inserite dall'Utente e rileva l'errore

===== UC1.2 - Inserimento username <UC1.2>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce lo username
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve lo username inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce lo username

===== UC1.3 - Inserimento password <UC1.3>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce la password
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve la password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la password

==== UC2 - Password dimenticata <UC2>
- *Attore principale*: Utente
- *Trigger*: L'Utente ha dimenticato la password e vuole reimpostarla
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene inviata un'email all'Utente con le istruzioni per reimpostare la password
- *Scenario principale*:
  - L'Utente seleziona la funzionalità "Password dimenticata"
  - L'Utente inserisce l'indirizzo email associato al proprio account
- *Scenari alternativi*:
  - L'Utente inserisce un indirizzo email non associato ad alcun account
- *Estensioni*:
  - #uc("UC2.3")
- *Inclusioni*:
  - #uc("UC2.2")

===== UC2.1 - Inserimento indirizzo email <UC2.1>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce l'indirizzo email associato al proprio account
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account

===== UC2.2 - Invio email di reimpostazione password <UC2.2>
- *Attore principale*: Utente
- *Trigger*: L'Utente ha inserito l'indirizzo email associato al proprio account
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - L'Utente ha inserito l'indirizzo email associato al proprio account
- *Post-condizioni*:
  - Viene inviata un'email all'Utente con le istruzioni per reimpostare la password
- *Scenario principale*:
  - Il Sistema verifica l'indirizzo email inserito dall'Utente ed invia l'email di reimpostazione password

===== UC2.3 - Indirizzo email non associato ad alcun account <UC2.3>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce un indirizzo email non associato ad alcun account
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - L'Utente ha inserito un indirizzo email non associato ad alcun account
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica l'indirizzo email inserito dall'Utente e rileva l'errore

===== UC3 - Reimpostazione password <UC3>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole reimpostare la password
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - L'Utente ha ricevuto l'email di reimpostazione password
- *Post-condizioni*:
  - La password dell'Utente viene reimpostata
- *Scenario principale*:
  - L'Utente clicca sul link di reimpostazione password nell'email
  - L'Utente inserisce la nuova password
- *Scenari alternativi*:
  - La nuova password non rispetta i criteri di sicurezza
- *Estensioni*:
  - #uc("UC3.2")
- *Inclusioni*:
  - #uc("UC3.1")

===== UC3.1 - Inserimento nuova password <UC3.1>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce la nuova password
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - L'Utente ha cliccato sul link di reimpostazione password nell'email
- *Post-condizioni*:
  - La nuova password viene registrata nel Sistema
- *Scenario principale*:
  - L'Utente inserisce la nuova password

===== UC3.2 - Password non conforme ai criteri di sicurezza <UC3.2>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce una nuova password che non rispetta i criteri di sicurezza
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - L'Utente ha cliccato sul link di reimpostazione password nell'email
  - L'Utente ha inserito una nuova password non conforme ai criteri di sicurezza
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica la nuova password inserita dall'Utente e rileva l'errore


=== Attore principale - Tenant User
//Dina
==== UC4 - Logout <UC4>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole effettuare il logout dal Sistema
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Tenant User viene disconnesso dal Sistema
- *Scenario principale*:
  - Il Tenant User seleziona la funzionalità di logout

==== UC5 - Visualizzazione dashboard Tenant User <UC5>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare la propria dashboard
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - La dashboard viene visualizzata correttamente
- *Scenario principale*:
  - Il Tenant User accede alla dashboard del proprio tenant

==== UC6 - Visualizzazione sensori collegati al tenant <UC6>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare i sensori collegati al proprio tenant
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene visualizzata la lista dei sensori associati al tenant del Tenant User
- *Scenario principale*:
  - Il Tenant User seleziona la funzionalità di visualizzazione sensori
  - Viene mostrata la lista dei sensori associati al tenant del Tenant User

==== UC7 - Visualizzazione dati real-time sensore <UC7>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare i dati real-time di un sensore
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Esistono sensori associati al tenant del Tenant User
- *Post-condizioni*:
  - Vengono visualizzati i dati real-time del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Vengono mostrati i dati real-time del sensore selezionato
- *Scenari alternativi*:
  - Nessun dato disponibile per il sensore selezionato
- *Estensioni*:
  - #uc("UC7.1")
- *Inclusioni*:
  - #uc("UC7.2")
  - #uc("UC7.3")

===== UC7.1 - Dati non disponibili per il sensore selezionato <UC7.1>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User seleziona un sensore per il quale non sono disponibili dati
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Esistono sensori associati al tenant del Tenant User
  - Il Tenant User ha selezionato un sensore per il quale non sono disponibili dati
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati

===== UC7.2 - Selezione sensore <UC7.2>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User seleziona un sensore
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore selezionato appartiene al tenant del Tenant User
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore associato al proprio tenant

===== UC7.3 - Visualizzazione dati real-time del sensore selezionato <UC7.3>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User ha selezionato un sensore per visualizzare i dati real-time
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore selezionato appartiene al tenant del Tenant User
- *Post-condizioni*:
  - Vengono visualizzati i dati real-time del sensore selezionato
- *Scenario principale*:
  - Il Sistema recupera e mostra i dati real-time del sensore selezionato

==== UC8 - Visualizzazione storico dati sensore <UC8>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare lo storico dei dati di un sensore
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Esistono sensori associati al tenant del Tenant User
- *Post-condizioni*:
  - Viene visualizzato lo storico dei dati del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Viene mostrato lo storico dei dati del sensore selezionato, con la possibilità di filtrare per intervallo temporale
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato
- *Estensioni*:
  - #uc("UC7.1")
- *Inclusioni*:
  - #uc("UC7.2")
  - #uc("UC8.3")

===== UC8.3 - Visualizzazione storico dati del sensore selezionato <UC8.3>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User ha selezionato un sensore per visualizzare lo storico dei dati
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore selezionato appartiene al tenant del Tenant User
- *Post-condizioni*:
  - Viene visualizzato lo storico dei dati del sensore selezionato
- *Scenario principale*:
  - Il Sistema recupera e mostra lo storico dei dati del sensore selezionato, con la possibilità di filtrare per intervallo temporale



=== Attore principale - Tenant Admin
//Hoss, Michele

=== Attore principale - Super Admin
//Riccardo, Elia

=== Attore principale - Gateway
//Siria, Jaume


=== Attore principale - REST Client
//Dina
==== UC9 - Richiesta dati real-time sensore <UC9>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client vuole richiedere i dati real-time di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Vengono restituiti i dati real-time del sensore richiesto
- *Scenario principale*:
  - Il REST Client richiede i dati real-time del sensore specificato
  - Il Sistema verifica che il sensore richiesto appartenga al tenant del REST Client
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato disponibile per il sensore richiesto
  - Sensore non associato al tenant del REST Client
- *Estensioni*:
  - #uc("UC11")
  - #uc("UC9.1")
  - #uc("UC9.2")
  - #uc("UC9.3")
- *Inclusioni*:
  - #uc("UC9.4")
  - #uc("UC9.5")
===== UC9.1 - Sensore non trovato <UC9.1>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client richiede i dati di un sensore non esistente
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il REST Client ha richiesto i dati di un sensore non esistente
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema rileva che il sensore richiesto non esiste

===== UC9.2 - Nessun dato disponibile per il sensore richiesto <UC9.2>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client seleziona un sensore per il quale non sono disponibili dati
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati

===== UC9.3 - Sensore non associato al tenant del REST Client <UC9.3>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client richiede i dati di un sensore non associato al proprio tenant
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema rileva che il sensore richiesto non appartiene al tenant del REST Client

===== UC9.4 - Verifica sensore <UC9.4>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client ha richiesto i dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene verificata la validità del sensore richiesto e la sua associazione al tenant del REST Client
- *Scenario principale*:
  - Il Sistema verifica la validità del sensore richiesto e la sua associazione al tenant del REST Client

===== UC9.5 - Restituzione dati real-time sensore <UC9.5>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client ha richiesto i dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore richiesto esiste ed appartiene al tenant del REST Client
- *Post-condizioni*:
  - Vengono restituiti i dati real-time del sensore richiesto
- *Scenario principale*:
  - Il Sistema recupera e restituisce i dati real-time del sensore richiesto

==== UC10 - Richiesta storico dati sensore <UC10>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client vuole richiedere lo storico dei dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene restituito lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - Il REST Client richiede lo storico dei dati del sensore specificato
  - Il Sistema verifica che il sensore richiesto appartenga al tenant del REST Client
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato storico disponibile per il sensore richiesto
  - Sensore non associato al tenant del REST Client
- *Estensioni*:
  - #uc("UC9.1")
  - #uc("UC9.2")
  - #uc("UC9.3")
- *Inclusioni*:
  - #uc("UC11")
  - #uc("UC9.4")
  - #uc("UC10.1")

===== UC10.1 - Restituzione storico dati sensore <UC10.1>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client ha richiesto lo storico dei dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore richiesto esiste ed appartiene al tenant del REST Client
- *Post-condizioni*:
  - Viene restituito lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - Il Sistema recupera e restituisce lo storico dei dati del sensore richiesto, eventualmente filtrati per intervallo temporale

==== UC11 - Autenticazione REST Client <UC11>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client tenta di autenticarsi nel Sistema
- *Pre-condizioni*:
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il REST Client è autenticato nel Sistema
- *Scenario principale*:
  - Il REST Client invia le credenziali di autenticazione al Sistema
  - Il Sistema verifica le credenziali e autentica il REST Client
- *Scenari alternativi*:
  - Credenziali non valide
- *Estensioni*:
  - #uc("UC11.1")

===== UC11.1 - Credenziali REST Client non valide <UC11.1>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client invia credenziali non valide al Sistema
- *Pre-condizioni*:
  - Il Sistema è raggiungibile e funzionante
  - Il REST Client ha inviato credenziali non valide
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inviate dal REST Client e rileva l'errore nelle credenziali

















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

