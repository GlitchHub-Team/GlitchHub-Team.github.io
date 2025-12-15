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
Per ogni caso d'uso viene considerato il Sistema Cloud come raggiungibile e funzionante.

=== Attore principale - Utente
Utente è l'utente generico che tenta di accedere al sistema.
//Dina
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
  - #uc("UC1.4")
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
- *Trigger*: L'Utente vuole autenticarsi nel Sistema
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve lo username inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce lo username

===== UC1.3 - Inserimento password <UC1.3>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole autenticarsi nel Sistema
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve la password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la password

==== UC1.4 - Account sospeso <UC1.4>
- *Attore principale*: Utente
- *Trigger*: L'Utente prova ad autenticarsi con un account sospeso
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - L'Utente non viene autenticato nel Sistema
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica lo stato dell'account dell'Utente e rileva che l'account è sospeso

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
  - #uc("UC2.1")
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
- *Attore secondario*: Client email
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
- *Trigger*: L'Utente ha cliccato sul link di reimpostazione password nell'email
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - La nuova password viene registrata nel Sistema
- *Scenario principale*:
  - L'Utente inserisce la nuova password

//inserimento conferma password, UC3.3

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

//generalizzazione UC7 e UC8
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
// Tenant Admin inserisce username e email e poi il Tenant User
// dalla mail che gli arriva si setta la password?
=== UC1 - Registrazione nuovo Tenant <UC1>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un nuovo Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema registra correttamente il nuovo Tenant User
  - Il Sistema invia una mail all'indirizzo email indicato con le istruzioni per attivare l'account
- *Scenario principale*:
  - Il Tenant Admin seleziona la funzione di registrazione
  - Il Tenant Admin inserisce lo username
  - Il Tenant Admin inserisce l'indirizzo email
- *Scenari alternativi*:
  - La mail o lo username esistono già nel Sistema
  - Il Sistema non riesce a salvare il nuovo utente
- *Estensioni*:
  - #uc("UC1.3")
  - #uc("UC1.4")
- *Inclusioni*:
  - #uc("UC1.1")
  - #uc("UC1.2")

=== UC1.1 - Inserimento username <UC1.1>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve lo username inserito
- *Scenario principale*:
  - Il Tenant Admin inserisce lo username

=== UC1.2 - Inserimento email <UC1.2>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito
- *Scenario principale*:
  - Il Tenant Admin inserisce l'indirizzo email

// Nel caso ci sia un problema interno al sistema che non riesce
// a salvare il nuovo utente
=== UC1.3 - Errore salvataggio dati <UC1.3>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
  - Il Tenant Admin ha registrato un nuovo utente
- *Post-condizioni*:
  - Il Sistema annulla l'operazione e mostra un messaggio di errore
- *Scenario principale*:
  - Il Sistema tenta di salvare il nuovo utente
  - Si verifica un errore interno
  - Il Sistema mostra un messaggio di errore

=== UC1.4 - Dati di registrazione già utilizzati <UC1.4>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
  - Il Tenant Admin ha registrato un nuovo utente
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Sistema tenta di salvare il nuovo utente
  - Il Sistema rileva un utente già registrato che possiede gli stessi dati

// Ha senso metterla?
=== UC2 - Sospendi Tenant User <UC2>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole sospendere l'accesso di un Tenant User al Sistema
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
  - Il Tenant User esiste ed è registrato
- *Post-condizioni*:
  - Il Tenant User non può più accedere al Sistema
- *Scenario principale*:
  - Il Tenant Admin seleziona il Tenant User che vuole sospendere
  - Il Sistema richiede la conferma dell'operazione
  - Il Tenant Admin conferma
  - Il Sistema blocca l'accesso del Tenant User alla piattaforma

// Stessa cosa di prima
=== UC3 - Riattiva Tenant User <UC3>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole riattivare l'accesso di un Tenant User al Sistema
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
  - Il Tenant User esiste ed è registrato
- *Post-condizioni*:
  - Il Tenant User può accedere al Sistema
- *Scenario principale*:
  - Il Tenant Admin seleziona il Tenant User che vuole riattivare
  - Il Sistema richiede la conferma dell'operazione
  - Il Tenant Admin conferma
  - Il Sistema sblocca l'accesso del Tenant User alla piattaforma

=== UC4 - Elimina Tenant User <UC4>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole eliminare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Sistema è raggiungibile e funzionante
  - Il Tenant User che si vuole eliminare esiste
- *Post-condizioni*:
  - Il Sistema elimina correttamente il Tenant User
- *Scenario principale*:
  - Il Tenant Admin seleziona il Tenant User che vuole rimuovere
  - Il Sistema richiede la conferma dell'operazione
  - Il Tenant Admin conferma
  - Il Sistema rimuove l'account del Tenant User

=== UC5 - Visualizza dashboard Tenant Admin <UC5>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare la propria dashboard
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - La dashboard viene visualizzata correttamente
- *Scenario principale*:
  - Il Tenant Admin accede alla dashboard del proprio tenant

=== UC6 - Visualizza lista Tenant User <UC6>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare i Tenant User registrati nel tenant
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene visualizzata la lista dei Tenant User registrati nel tenant
- *Scenario principale*:
  - Il Tenant Admin seleziona la funzionalità di visualizzazione dei Tenant User
  - Viene mostrata la lista dei Tenant User registrati nel Tenant

// Competenza del Tenant Admin? Lo può fare?
=== UC7 - Registra nuovo sensore <UC7>

// Penso sia doppione con lo UC del Tenant User
=== UCZ - Visualizza lista dei sensori <UCZ>

=== UC8 - Disattiva sensore <UC8>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole disattivare un sensore
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore è registrato nel tenant
- *Post-condizioni*:
  - Il Sistema disattiva il sensore e sospende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole disattivare
  - Il Tenant Admin disattiva il sensore

=== UC9 - Riattiva sensore <UC9>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole riattivare un sensore
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il sensore è registrato nel tenant
- *Post-condizioni*:
  - Il Sistema riattivare il sensore e riprende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole riattivare
  - Il Tenant Admin riattivare il sensore

// Ha senso? Lo fa il Tenant Admin o lo fa il Super Admin?
=== UC10 - Elimina sensore <UC10>

=== UC11 - Visualizza lista di gateway <UC11>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare i gateway associati al tenant
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Viene visualizzata la lista dei gateway associati al tenant
- *Scenario principale*:
  - Il Tenant Admin seleziona la funzionalità di visualizzazione dei gateway
  - Viene mostrata la lista dei gateway associati al Tenant

// Tipo: è online, quanta roba sta mandando, magari il costo associato
=== UC12 - Visualizza informazioni dettagliate gateway <UC12>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare le informazioni del gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il gateway è attivo
- *Post-condizioni*:
  - Vengono visualizzate le informazioni dettagliate del gateway
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway dalla lista dei gateway
  - Vengono mostrate le informazioni dettagliate del gateway
- *Inclusioni*:
  - #uc("UC12.1")
- *Estensioni*:
  - #uc("UC12.2")

=== UC12.1 - Seleziona gateway <UC12.1>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin seleziona un gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del gateway selezionato
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway associato al proprio tenant

// Ha senso?
=== UC12.2 - Gateway offline <UC12.2>

=== UC13 - Disattiva gateway <UC13>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole disattivare un gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema disattiva il gateway e sospende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway associato al proprio tenant
  - Il Tenant Admin disattiva il gateway

=== UC14 - Riattiva gateway <UC14>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole riattivare un gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riattivare il gateway e riprende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway associato al proprio tenant
  - Il Tenant Admin riattivare il gateway

// Req. opzionale, lo mettiamo?
=== UC15 - Visualizza audit log <UC16>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare gli audit log
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Vengono visualizzate le informazioni degli audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona l'opzione di visualizzazione degli audit log
- *Estensioni*:
  - #uc("UC15.1")

=== UC15.1 - Esporta log <UC15.1>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole esportare gli audit log
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema è raggiungibile e funzionante
- *Post-condizioni*:
  - Il Sistema fornisce i log in un file scaricabile
- *Scenario principale*:
  - Il Tenant Admin seleziona l'opzione di esportazione degli audit log

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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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
//- *Attore secondario*: Gateway
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

//Hoss, Michele

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
  - Il REST Client possiede delle credenziali di accesso
- *Post-condizioni*:
  - Il REST Client è autenticato nel Sistema
- *Scenario principale*:
  - Il REST Client invia le credenziali di autenticazione al Sistema
  - Il Sistema verifica le credenziali
  - Il Sistema autentica il REST Client
- *Scenari alternativi*:
  - Credenziali non valide
  - Credenziali scadute
- *Estensioni*:
  - #uc("UC11.1")
  - #uc("UC11.2")

//potenziale generalizzazione dell'errore
===== UC11.1 - Credenziali REST Client errate <UC11.1>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client invia credenziali errate al Sistema
- *Pre-condizioni*:
  - Il Sistema è raggiungibile e funzionante
  - Il REST Client ha inviato credenziali errate
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inviate dal REST Client e rileva l'errore nelle credenziali


===== UC11.2 - Credenziali REST Client scadute <UC11.2>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client invia credenziali scadute al Sistema
- *Pre-condizioni*:
  - Il Sistema è raggiungibile e funzionante
  - Il REST Client ha inviato credenziali scadute
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inviate dal REST Client e rileva che le credenziali sono scadute

