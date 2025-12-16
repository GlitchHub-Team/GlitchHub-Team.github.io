#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
  titolo: "Analisi dei Requisiti",
  stato: "Bozza",
  versione: "0.7.1",
  registro-modifiche: (
    (
      "0.7.1",
      "16/12/2025",
      "Elia Ernesto Stellin",
      "-",
      "Modifica formattazione use cases e riferimenti dentro il documento"
    ),
    (
      "0.7.0",
      "15/12/2025",
      "Jaume Bernardi, Siria Salvalaio",
      "-",
      "Stesura Use Case relativi al Gateway",
    ),
    (
      "0.6.0",
      "14/12/2025",
      "Alessandro Dinato, Michele Dioli",
      "-",
      "Stesura Use Case relativi al Super-admin",
    ),
    (
      "0.5.0",
      "9/12/2025",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "-",
      "Stesura Use Case relativi al Tenant-admin",
    ),
    (
      "0.4.0",
      "8/12/2025",
      "Alessandro Dinato",
      "-",
      "Stesura Use Case relativi a Utente, Tenant User e REST Client",
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

#let uc-counter = counter("uc-counter")
#uc-counter.update((1, ))

#let uc = () => {
  context uc-counter.display("UC1.1.1")
  uc-counter.step(level: 1)
}

#let sub-uc = () => {
  context uc-counter.display("UC1.1.1")
  uc-counter.step(level: 2)
}

#let subsub-uc = () => {
  context uc-counter.display("UC1.1.1")
  uc-counter.step(level: 3)
}

/*
  = Esempio
  Se da qualche parte ho un titolo con label `<Autenticazione-Utente>`
  che corrisponde allo UC1.2,
  posso scrivere `#ref-uc(<Autenticazione-Utente>)` per avere un link
  automatico a quella sezione che verrà fuori tipo "UC1.2 [Sezione x.y.z]"

  = Parametri
  == uc-label
  Tipo: label
*/
#let ref-uc = (uc-label) => {
  context {
    let uc-number = uc-counter.at(locate(uc-label));
    let section-number = counter(heading).at(uc-label);

    let section-id = numbering(
      (..numbers) => numbers.pos().map(str).join("."),
      ..section-number
    );
    let uc-id = numbering("UC1.1.1", ..uc-number);
    [
      #link(uc-label, [#uc-id \[Sezione #section-id\]])
    ]
  }
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
==== #uc() - Autenticazione Utente <Autenticazione-Utente>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole autenticarsi nel Sistema
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - L'Utente ha eseguito l'accesso al Sistema ed è stato riconosciuto come _Tenant User_, _Tenant Admin_ o _Super Admin_
- *Scenario principale*:
  - L'Utente seleziona la funzionalità di login
  - L'Utente inserisce lo username
  - L'Utente inserisce la password
- *Scenari alternativi*:
  - L'Utente inserisce username o password errati
- *Estensioni*:
  - #ref-uc(<Autenticazione-non-riuscita>)
  - #ref-uc(<Account-sospeso>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-username-auth>)
  - #ref-uc(<Inserimento-password>)
===== #sub-uc() - Autenticazione non riuscita <Autenticazione-non-riuscita>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce username o password errati
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

  - L'Utente ha inserito username che non corrisponde ad un utente registrato o ha inserito una password errata
- *Post-condizioni*:
  - L'Utente non viene autenticato nel Sistema
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inserite dall'Utente e rileva l'errore

===== #sub-uc() - Inserimento username autenticazione <Inserimento-username-auth>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole autenticarsi nel Sistema
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - Il Sistema riceve lo username inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce lo username

==== #sub-uc() - Inserimento password <Inserimento-password>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole autenticarsi nel Sistema
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - Il Sistema riceve la password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la password

==== #sub-uc() - Account sospeso <Account-sospeso>
- *Attore principale*: Utente
- *Trigger*: L'Utente prova ad autenticarsi con un account sospeso
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - L'Utente non viene autenticato nel Sistema
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica lo stato dell'account dell'Utente e rileva che l'account è sospeso

==== #uc() - Logout <Logout>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole effettuare il logout dal Sistema
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema

- *Post-condizioni*:
  - L'Utente viene disconnesso dal Sistema
- *Scenario principale*:
  - L'Utente seleziona la funzionalità di logout

==== #uc() - Password dimenticata <Password-dimenticata>
- *Attore principale*: Utente
- *Trigger*: L'Utente ha dimenticato la password e vuole reimpostarla
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - Viene inviata un'email all'Utente con le istruzioni per reimpostare la password
- *Scenario principale*:
  - L'Utente seleziona la funzionalità "Password dimenticata"
  - L'Utente inserisce l'indirizzo email associato al proprio account
- *Scenari alternativi*:
  - L'Utente inserisce un indirizzo email non associato ad alcun account
- *Estensioni*:
  - #ref-uc(<Indirizzo-email-non-associato-account>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-indirizzo-email>)
  - #ref-uc(<Invio-email-reimpostazione-password>)

===== #sub-uc() - Inserimento indirizzo email <Inserimento-indirizzo-email>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce l'indirizzo email associato al proprio account
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account

===== #sub-uc() - Invio email di reimpostazione password <Invio-email-reimpostazione-password>
- *Attore principale*: Utente
- *Attore secondario*: Client email
- *Trigger*: L'Utente ha inserito l'indirizzo email associato al proprio account
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

  - L'Utente ha inserito l'indirizzo email associato al proprio account
- *Post-condizioni*:
  - Viene inviata un'email all'Utente con le istruzioni per reimpostare la password
- *Scenario principale*:
  - Il Sistema verifica l'indirizzo email inserito dall'Utente ed invia l'email di reimpostazione password

===== #sub-uc() - Indirizzo email non associato ad alcun account <Indirizzo-email-non-associato-account>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce un indirizzo email non associato ad alcun account
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

  - L'Utente ha inserito un indirizzo email non associato ad alcun account
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica l'indirizzo email inserito dall'Utente e rileva l'errore

===== #uc() - Reimpostazione password <Reimpostazione-password>
- *Attore principale*: Utente
- *Trigger*: L'Utente vuole reimpostare la password
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

  - L'Utente ha ricevuto l'email di reimpostazione password
- *Post-condizioni*:
  - La password dell'Utente viene reimpostata
- *Scenario principale*:
  - L'Utente clicca sul link di reimpostazione password nell'email
  - L'Utente inserisce la nuova password
- *Scenari alternativi*:
  - La nuova password non rispetta i criteri di sicurezza
- *Estensioni*:
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-nuova-password>)

===== #sub-uc() - Inserimento nuova password <Inserimento-nuova-password>
- *Attore principale*: Utente
- *Trigger*: L'Utente ha cliccato sul link di reimpostazione password nell'email
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

- *Post-condizioni*:
  - La nuova password viene registrata nel Sistema
- *Scenario principale*:
  - L'Utente inserisce la nuova password

//inserimento conferma password, UC#sub-uc-number().3

===== #sub-uc() - Password non conforme ai criteri di sicurezza <Password-non-conforme-criteri-sicurezza>
- *Attore principale*: Utente
- *Trigger*: L'Utente inserisce una nuova password che non rispetta i criteri di sicurezza
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema

  - L'Utente ha cliccato sul link di reimpostazione password nell'email
  - L'Utente ha inserito una nuova password non conforme ai criteri di sicurezza
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica la nuova password inserita dall'Utente e rileva l'errore


=== Attore principale - Tenant User

==== #uc() - Visualizzazione dashboard Tenant User <Visualizzazione-dashboard-tenant-user>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare la propria dashboard
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

- *Post-condizioni*:
  - La dashboard viene visualizzata correttamente
- *Scenario principale*:
  - Il Tenant User accede alla dashboard del proprio tenant

==== #uc() - Visualizzazione sensori collegati al tenant <Visualizzazione-sensori-collegati-tenant>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare i sensori collegati al proprio tenant
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

- *Post-condizioni*:
  - Viene visualizzata la lista dei sensori associati al tenant del Tenant User
- *Scenario principale*:
  - Il Tenant User seleziona la funzionalità di visualizzazione sensori
  - Viene mostrata la lista dei sensori associati al tenant del Tenant User

//generalizzazione UC#uc-number() e UC#sub-uc-number()
==== #uc() - Visualizzazione dati real-time sensore <Visualizzazione-dati-real-time-sensore>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare i dati real-time di un sensore
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

  - Esistono sensori associati al tenant del Tenant User
- *Post-condizioni*:
  - Vengono visualizzati i dati real-time del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Vengono mostrati i dati real-time del sensore selezionato
- *Scenari alternativi*:
  - Nessun dato disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-dati-real-time-sensore-selezionato>)

===== #sub-uc() - Dati non disponibili per il sensore selezionato <Dati-non-disponibili-sensore-selezionato>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User seleziona un sensore per il quale non sono disponibili dati
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

  - Esistono sensori associati al tenant del Tenant User
  - Il Tenant User ha selezionato un sensore per il quale non sono disponibili dati
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati

===== #sub-uc() - Selezione sensore <Selezione-sensore>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User seleziona un sensore
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

  - Il sensore selezionato appartiene al tenant del Tenant User
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore associato al proprio tenant

===== #sub-uc() - Visualizzazione dati real-time del sensore selezionato <Visualizzazione-dati-real-time-sensore-selezionato>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User ha selezionato un sensore per visualizzare i dati real-time
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

  - Il sensore selezionato appartiene al tenant del Tenant User
- *Post-condizioni*:
  - Vengono visualizzati i dati real-time del sensore selezionato
- *Scenario principale*:
  - Il Sistema recupera e mostra i dati real-time del sensore selezionato

==== #uc() - Visualizzazione storico dati sensore <Visualizzazione-storico-dati-sensore>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User vuole visualizzare lo storico dei dati di un sensore
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

  - Esistono sensori associati al tenant del Tenant User
- *Post-condizioni*:
  - Viene visualizzato lo storico dei dati del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Viene mostrato lo storico dei dati del sensore selezionato, con la possibilità di filtrare per intervallo temporale
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-storico-dati-sensore-selezionato>)

===== #sub-uc() - Visualizzazione storico dati del sensore selezionato <Visualizzazione-storico-dati-sensore-selezionato>
- *Attore principale*: Tenant User
- *Trigger*: Il Tenant User ha selezionato un sensore per visualizzare lo storico dei dati
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema

  - Il sensore selezionato appartiene al tenant del Tenant User
- *Post-condizioni*:
  - Viene visualizzato lo storico dei dati del sensore selezionato
- *Scenario principale*:
  - Il Sistema recupera e mostra lo storico dei dati del sensore selezionato, con la possibilità di filtrare per intervallo temporale



=== Attore principale - Tenant Admin
// Tenant Admin inserisce username e email e poi il Tenant User
// dalla mail che gli arriva si setta la password?
==== #uc() - Registrazione nuovo Tenant User <Registrazione-nuovo-tenant-user>
- *Attore principale*: Tenant Admin
- *Attore secondario*: Client email
- *Trigger*: Il Tenant Admin vuole registrare un nuovo Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema registra correttamente il nuovo Tenant User nel tenant associato al Tenant Admin
  - Il Sistema invia una email al nuovo Tenant-User con le credenziali di accesso
- *Scenario principale*:
  - Il Tenant Admin seleziona la funzione di registrazione Tenant User
  - Il Tenant Admin inserisce lo username
  - Il Tenant Admin inserisce l'indirizzo email
  - Il Sistema invia una email al nuovo Tenant-User con le credenziali di accesso
- *Scenari alternativi*:
  - La mail o lo username esistono già nel Sistema
  - Il Sistema non riesce a salvare il nuovo utente
- *Estensioni*:
  - #ref-uc(<Errore-salvataggio-dati>)
  - #ref-uc(<Dati-registrazione-gia-utilizzati>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-username>)
  - #ref-uc(<Inserimento-email>)
  - #ref-uc(<Invio-credenziali-accesso-nuovo-tenant-user>)

===== #sub-uc() - Inserimento username <Inserimento-username>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema

- *Post-condizioni*:
  - Il Sistema riceve lo username inserito
- *Scenario principale*:
  - Il Tenant Admin inserisce lo username

===== #sub-uc() - Inserimento email <Inserimento-email>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema

- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito
- *Scenario principale*:
  - Il Tenant Admin inserisce l'indirizzo email

// Nel caso ci sia un problema interno al sistema che non riesce
// a salvare il nuovo utente
===== #sub-uc() - Errore salvataggio dati <Errore-salvataggio-dati>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema

  - Il Tenant Admin ha registrato un nuovo utente
- *Post-condizioni*:
  - Il Sistema annulla l'operazione e mostra un messaggio di errore
- *Scenario principale*:
  - Il Sistema tenta di salvare il nuovo utente
  - Si verifica un errore interno
  - Il Sistema mostra un messaggio di errore

===== #sub-uc() - Invio credenziali di accesso nuovo Tenant-User <Invio-credenziali-accesso-nuovo-tenant-user>
- *Attore principale*: Tenant-admin
- *Attore secondario*: Client email
- *Trigger*: Il Tenant-admin vuole creare un nuovo Tenant-user
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Tenant-admin
  - L'email del nuovo Tenant-user è valida
- *Post-condizioni*:
  - Il Tenant-user riceve una email con le credenziali di accesso
- *Scenario principale*:
  - Il Sistema invia una email al nuovo Tenant-user con le credenziali di accesso

===== #sub-uc() - Dati di registrazione già utilizzati <Dati-registrazione-gia-utilizzati>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole registrare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema

  - Il Tenant Admin ha registrato un nuovo utente
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Sistema tenta di salvare il nuovo utente
  - Il Sistema rileva un utente già registrato che possiede gli stessi dati


==== #uc() - Sospensione Tenant User <Sospensione-Tenant-User>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole sospendere l'accesso di un Tenant User al Sistema
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Tenant User esiste ed è registrato
- *Post-condizioni*:
  - Il Tenant User non può più accedere al Sistema
- *Scenario principale*:
  - Il Tenant Admin seleziona il Tenant User che vuole sospendere
  - Il Sistema richiede la conferma dell'operazione
  - Il Tenant Admin conferma l'operazione
  - Il Sistema blocca l'accesso del Tenant User alla piattaforma

// Stessa cosa di prima
==== #uc() - Riattivazione Tenant User <Riattivazione-Tenant-User>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole riattivare l'accesso di un Tenant User al Sistema
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema

  - Il Tenant User esiste ed è registrato
- *Post-condizioni*:
  - Il Tenant User può accedere al Sistema
- *Scenario principale*:
  - Il Tenant Admin seleziona il Tenant User che vuole riattivare
  - Il Sistema richiede la conferma dell'operazione
  - Il Tenant Admin conferma
  - Il Sistema sblocca l'accesso del Tenant User alla piattaforma

==== #uc() - Eliminazione Tenant User <Eliminazione-Tenant-User>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole eliminare un Tenant User
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema

  - Il Tenant User che si vuole eliminare esiste
- *Post-condizioni*:
  - Il Sistema elimina correttamente il Tenant User
- *Scenario principale*:
  - Il Tenant Admin seleziona il Tenant User che vuole rimuovere
  - Il Sistema richiede la conferma dell'operazione
  - Il Tenant Admin conferma
  - Il Sistema rimuove l'account del Tenant User

==== #uc() - Visualizzazione dashboard Tenant Admin <Visualizzazione-dashboard-tenant-admin>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare la propria dashboard
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema

- *Post-condizioni*:
  - La dashboard viene visualizzata correttamente
- *Scenario principale*:
  - Il Tenant Admin accede alla dashboard del proprio tenant

==== #uc() - Visualizzazione lista Tenant User <Visualizzazione-lista-tenant-user>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare i Tenant User registrati nel tenant
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema

- *Post-condizioni*:
  - Viene visualizzata la lista dei Tenant User registrati nel tenant
- *Scenario principale*:
  - Il Tenant Admin seleziona la funzionalità di visualizzazione dei Tenant User
  - Viene mostrata la lista dei Tenant User registrati nel Tenant

// Competenza del Tenant Admin? Lo può fare?
//==== UC#uc-number() - Registrazione nuovo sensore <Registrazione-nuovo-sensore>

// Penso sia doppione con lo UC del Tenant User
//==== UCZ - Visualizzazione lista dei sensori <Visualizzazione-lista-dei-sensori>



//Dina: non penso sia un requisito
==== #uc() - Disattivazione sensore <Disattivazione-sensore>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole disattivare un sensore
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema

  - Il sensore è registrato nel tenant
- *Post-condizioni*:
  - Il Sistema disattiva il sensore e sospende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole disattivare
  - Il Tenant Admin disattiva il sensore

==== #uc() - Riattivazione sensore <Riattivazione-sensore>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole riattivare un sensore
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema

  - Il sensore è registrato nel tenant
- *Post-condizioni*:
  - Il Sistema riattivare il sensore e riprende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole riattivare
  - Il Tenant Admin riattivare il sensore

// Ha senso? Lo fa il Tenant Admin o lo fa il Super Admin?
==== #uc() - Eliminazione sensore <Eliminazione-sensore>

==== #uc() - Visualizzazione lista di gateway <Visualizzazione-lista-gateway>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare i gateway associati al tenant
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Viene visualizzata la lista dei gateway associati al tenant
- *Scenario principale*:
  - Il Tenant Admin seleziona la funzionalità di visualizzazione dei gateway
  - Viene mostrata la lista dei gateway associati al Tenant

// Tipo: è online, quanta roba sta mandando, magari il costo associato
==== #uc() - Visualizzazione informazioni dettagliate gateway <Visualizzazione-informazioni-dettagliate-gateway>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare le informazioni del gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è raggiungibile
- *Post-condizioni*:
  - Vengono visualizzate le informazioni dettagliate del gateway
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway dalla lista dei gateway
  - Vengono mostrate le informazioni dettagliate del gateway
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)//problema l'attore principale, non è tenant admin ma super admin

==== #uc() - Selezione gateway <Selezione-gateway-tenant-admin>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin seleziona un gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del gateway selezionato
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway associato al proprio tenant

// Ha senso?Dina->c'è gateway-non-raggiungibile
//===== UC#sub-uc-number().2 - Gateway offline <Gateway-offline>

===== #uc() - Disattivazione gateway <Disattivazione-gateway>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole disattivare un gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema disattiva il gateway e sospende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway associato al proprio tenant
  - Il Tenant Admin disattiva il gateway

==== #uc() - Riattivazione gateway <Riattivazione-gateway>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole riattivare un gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riattivare il gateway e riprende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway associato al proprio tenant
  - Il Tenant Admin riattivare il gateway

// Req. opzionale, lo mettiamo?
==== #uc() - Visualizzazione audit log <Visualizzazione-audit-log>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole visualizzare gli audit log
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Vengono visualizzate le informazioni degli audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona l'opzione di visualizzazione degli audit log
- *Estensioni*:
  - #ref-uc(<Esportazione-log>)

===== #sub-uc() - Esportazione log <Esportazione-log>
- *Attore principale*: Tenant Admin
- *Trigger*: Il Tenant Admin vuole esportare gli audit log
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema fornisce i log in un file scaricabile
- *Scenario principale*:
  - Il Tenant Admin seleziona l'opzione di esportazione degli audit log

=== Attore principale - Super Admin
==== #uc() - Creazione Tenant <Creazione-tenant>
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
  - #ref-uc(<Nome-tenant-gia-utilizzato>)

==== #sub-uc() - Nome del tenant già utilizzato <Nome-tenant-gia-utilizzato>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin ha inserito un nome di tenant già esistente
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il nome del tenant inserito esiste già nel Sistema
- *Post-condizioni*:
  - Il Sistema visualizza un messaggio di errore
- *Scenario principale*:
  - Il Super-admin ha inserito il nome del nuovo tenant ma è già in uso

==== #uc() - Eliminazione Tenant <Eliminazione-tenant>
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
  - #ref-uc(<Decommissioning-gateway-fallito>)
- *Inclusioni*:
  - #ref-uc(<Selezione-e-conferma-tenant-da-eliminare>)
  - #ref-uc(<Esecuzione-decommissioning-gateway-associati-tenant>)
  - #ref-uc(<Eliminazione-dati-utenti-associati-tenant>)
  - #ref-uc(<Esecuzione-eliminazione-tenant>)

===== #sub-uc() - Decommissioning Gateway fallito <Decommissioning-gateway-fallito>
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

===== #sub-uc() - Selezione e conferma tenant da eliminare <Selezione-e-conferma-tenant-da-eliminare>
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

===== #sub-uc() - Esecuzione decommissioning Gateway associati al tenant <Esecuzione-decommissioning-gateway-associati-tenant>
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
  - #ref-uc(<Gateway-non-raggiungibile>)

===== #sub-uc() - Eliminazione dati e utenti associati al tenant <Eliminazione-dati-utenti-associati-tenant>
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

===== #sub-uc() - Eliminazione tenant <Esecuzione-eliminazione-tenant>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole eliminare un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il tenant viene rimosso dal Sistema
- *Scenario principale*:
  - Il Sistema elimina il tenant selezionato

==== #uc() - Visualizzazione dashboard Super-admin <Visualizzazione-dashboard-super-admin>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole accedere alla dashboard
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Il Super-admin visualizza la dashboard con le informazioni sui tenant e sui Gateway
- *Scenario principale*:
  - Il Super-admin visualizza le informazioni aggregate sui tenant
  - Il Super-admin visualizza le informazioni aggregate sui Gateway

==== #uc() - Visualizzazione lista Gateway <Visualizzazione-lista-gateway>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare tutti i Gateway registrati nel Sistema
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene mostrata la lista di tutti i Gateway registrati nel Sistema
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista Gateway
  - Il sistema mostra la lista di tutti i Gateway registrati

==== #uc() - Visualizzazione Gateway <Visualizzazione-gateway>
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

==== #uc() - Associazione Gateway-tenant <Associazione-gateway-tenant> //è corretto considerare il Gateway come attore secondario?
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
  - #ref-uc(<Selezione-gateway-super-admin>)
  - #ref-uc(<Selezione-tenant-super-admin>)
  - #ref-uc(<Configurazione-gateway>)

===== #sub-uc() - Selezione Gateway <Selezione-gateway-super-admin>
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

==== #uc() - Selezione tenant <Selezione-tenant-super-admin>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole associare un Gateway ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il tenant a cui associare il Gateway

==== #uc() - Configurazione Gateway <Configurazione-gateway>
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
  - #ref-uc(<Gateway-non-raggiungibile>)
  - #ref-uc(<Configurazione-gateway-non-valida>)

===== #sub-uc() - Gateway non raggiungibile <Gateway-non-raggiungibile>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin tenta di configurare un Gateway non raggiungibile
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super-admin tenta di configurare il Gateway ma non è raggiungibile

===== #sub-uc() - Configurazione Gateway non valida <Configurazione-gateway-non-valida>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin fornisce una configurazione non valida per il Gateway selezionato
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non applica la configurazione al Gateway
- *Scenario principale*:
  - Il Super-admin inserisce una configurazione non valida per il Gateway selezionato


==== #uc() - Decommissioning Gateway <Decommissioning-gateway>
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
  - #ref-uc(<Gateway-non-raggiungibile>)
- *Inclusioni*:
  - #ref-uc(<Disassociazione-gateway-dal-tenant>)
  - #ref-uc(<Reset-gateway>)

===== #sub-uc() - Disassociazione Gateway dal tenant <Disassociazione-gateway-dal-tenant>
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

==== #uc() - Reset Gateway <Reset-gateway>
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
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc() - Riavvio Gateway <Riavvio-gateway>
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
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Autenticazione Gateway <Autenticazione-gateway>
- *Attore principale*: Super-admin
//- *Attore secondario*: Gateway
- *Trigger*: Il Super-admin vuole autenticare un Gateway registrato nel Sistema
- *Precondizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway è registrato nel Sistema ma non ancora autenticato //registrato significa che comunica con il sistema da non autenticato
- *Post-condizioni*:
  - Il Sistema autentica il Gateway
- *Scenario principale*:
  - Il Super-admin seleziona il Gateway da autenticare
  - Il Super-admin fornisce il certificato di autenticazione
- *Scenario alternativo*:
  - Il Gateway non è raggiungibile perciò l'autenticazione non può essere completata
  - Il certificato fornito non è valido per il Gateway selezionato
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
  - #ref-uc(<Certificato-non-valido>)

===== #sub-uc() - Certificato non valido <Certificato-non-valido>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin fornisce un certificato non valido per l'autenticazione del Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Gateway è registrato nel Sistema ma non ancora autenticato
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non autentica il Gateway
- *Scenario principale*:
  - Il Super-admin fornisce un certificato non valido per l'autenticazione del Gateway selezionato

==== #uc() - Gestione richiesta fornitura Gateway <Gestione-richiesta-fornitura-gateway>
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
  - #ref-uc(<Motivazione-rifiuto-richiesta>)

===== #sub-uc() - Motivazione rifiuto richiesta <Motivazione-rifiuto-richiesta>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin rifiuta una richiesta di fornitura Gateway da parte di un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene fornita una motivazione per il rifiuto della richiesta
- *Scenario principale*:
  - Il Super-admin fornisce una motivazione per il rifiuto della richiesta di fornitura Gateway

==== #uc() - Visualizzazione log di attività di un tenant <Visualizzazione-log-attivita-tenant> ///è giusto metterlo?
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i log di attività di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Vengono mostrati i log di attività del tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona il tenant di cui vuole visualizzare i log di attività

==== #uc() - Visualizzazione lista tenant <Visualizzazione-lista-tenant>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare tutti i tenant registrati nel Sistema
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene mostrata la lista di tutti i tenant registrati nel Sistema
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista tenant

==== #uc() - Visualizzazione tenant <Visualizzazione-tenant>
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
  - #ref-uc(<Visualizzazione-identificativo-tenant>)
  - #ref-uc(<Visualizzazione-lista-utenti-associati-tenant>)
  - #ref-uc(<Visualizzazione-lista-gateway-associati-tenant>)
  - #ref-uc(<Visualizzazione-lista-sensori-associati-tenant>)

===== #sub-uc() - Visualizzazione identificativo del tenant <Visualizzazione-identificativo-tenant> // troppo specifico??????
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrato l'identificativo del tenant selezionato
- *Scenario principale*:
  - Il Super-admin visualizza l'identificativo del tenant selezionato

===== #sub-uc() - Visualizzazione lista utenti associati al tenant <Visualizzazione-lista-utenti-associati-tenant>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrata la lista degli utenti associati al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista utenti associati al tenant

===== #sub-uc() - Visualizzazione lista Gateway associati al tenant <Visualizzazione-lista-gateway-associati-tenant>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrata la lista dei Gateway associati al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista Gateway associati al tenant

===== #sub-uc() - Visualizzazione lista sensori associati al tenant <Visualizzazione-lista-sensori-associati-tenant>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare i dettagli di un tenant specifico
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Viene mostrata la lista dei sensori associati al tenant selezionato
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista sensori associati al tenant

==== #uc() - Visualizzazione richieste di fornitura Gateway <Visualizzazione-richieste-fornitura-gateway>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole consultare tutte le richieste di fornitura Gateway di tutti i tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Viene mostrata la lista di tutte le richieste di fornitura Gateway di tutti i tenant
- *Scenario principale*:
  - Il Super-admin seleziona la funzionalità di visualizzazione lista richieste di fornitura Gateway

==== #uc() - Creazione utente Tenant-admin <Creazione-utente-tenant-admin>
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
  - Il Tenant-admin riceve una email con le credenziali di accesso
- *Scenari alternativi*:
  - L'email inserita è già in uso da un altro utente nel Sistema
- *Estensioni*:
  - #ref-uc(<Email-gia-in-uso>)
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant>)
  - #ref-uc(<Inserimento-email-nuovo-tenant-admin>)
  - #ref-uc(<Invio-credenziali-accesso-nuovo-tenant-admin>)

===== #sub-uc() - Email già in uso <Email-gia-in-uso>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin inserisce un'email già in uso da un altro utente
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
- *Post-condizioni*:
  - Il Sistema visualizza un messaggio di errore
- *Scenario principale*:
  - L'email inserita è già in uso da un altro utente nel Sistema

===== #sub-uc() - Selezione tenant <Selezione-tenant>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole creare un nuovo Tenant-admin associato ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin seleziona il tenant a cui associare il nuovo Tenant-admin

===== #sub-uc() - Inserimento email nuovo Tenant-admin <Inserimento-email-nuovo-tenant-admin>
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole creare un nuovo Tenant-admin associato ad un tenant
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'email del nuovo Tenant-admin da parte del Super-admin
- *Scenario principale*:
  - Il Super-admin inserisce l'email del nuovo Tenant-admin

===== #sub-uc() - Invio credenziali di accesso nuovo Tenant-admin <Invio-credenziali-accesso-nuovo-tenant-admin>
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

==== #uc() - Sospensione account Tenant-admin <Sospensione-account-tenant-admin>
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
  - #ref-uc(<Selezione-tenant-admin-da-sospendere>)
  - #ref-uc(<Conferma-sospensione-account-tenant-admin>)

===== #sub-uc() - Selezione Tenant-admin da sospendere <Selezione-tenant-admin-da-sospendere>
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

===== #sub-uc() - Conferma sospensione account Tenant-admin <Conferma-sospensione-account-tenant-admin>
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

=== #uc() - Riattivazione account Tenant-admin <Riattivazione-account-tenant-admin>
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
  - #ref-uc(<Selezione-tenant-admin-da-riattivare>)
  - #ref-uc(<Conferma-riattivazione-account-tenant-admin>)

===== #sub-uc() - Selezione Tenant-admin da riattivare <Selezione-tenant-admin-da-riattivare>
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

===== #sub-uc() - Conferma riattivazione account Tenant-admin <Conferma-riattivazione-account-tenant-admin>
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

==== #uc() - Eliminazione account Tenant-admin <Eliminazione-account-tenant-admin>
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
  - #ref-uc(<Selezione-tenant-admin-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-account-tenant-admin>)

===== #sub-uc() - Selezione Tenant-admin da eliminare <Selezione-tenant-admin-da-eliminare>
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

===== #sub-uc() - Conferma eliminazione account Tenant-admin <Conferma-eliminazione-account-tenant-admin>
- *Attore principale*: Super-admin4
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

- *Post-condizioni*:
  - Un nuovo alert è configurato e attivo
- *Scenari alternativi*:
  - Alert già esistente con gli stessi criteri

==== Configurazione limiti di utilizzo
- *Attore principale*: Super-admin
- *Trigger*: Il Super-admin vuole impostare limiti (max Gateway per tenant, storage buffer ecc...)
- *Precondizioni*:
  - Super-admin autenticato
  - Tenant esistente

- *Post-condizioni*:
  - I limiti del tenant sono aggiornati
- *Scenari alternativi*:
  - Tentativo di impostare limiti già inferiori a quelli in uso
*/


=== Attore principale - Gateway
==== #uc() - Gestione persistenza dati di commissioning <Gestione-persistenza-dati-commissioning>
- *Attore primario*: Gateway (simulato)
- *Trigger*: Avvio o riavvio del gateway
- *Pre-condizione*: I dati di commissioning sono stati inviati e salvati precedentemente
- *Post-condizione*: Le informazioni di commissioning sono caricate in memoria e garantiscono consistenza per i successivi flussi di lavoro
- *Scenario principale*:
  - Il gateway si avvia
  - Il gateway carica le informazioni persistenti dalla sua memoria locale
  - Le informazioni sono rese disponibili ai moduli interni per garantire la consistenza
- *Scenari alternativi*:
Le informazioni di autenticazione di commissioning risultano assenti o corrotte
- *Estensioni*:
  #ref-uc(<Dati-commissioning-assenti-corrotti>)
- *Inclusioni*:
  #ref-uc(<Autenticazione-provisioning>)


==== #sub-uc() - Dati di Commissioning Assenti/Corrotti <Dati-commissioning-assenti-corrotti>
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

==== #uc() - Autenticazione e provisioning <Autenticazione-provisioning>
- *Attore primario*:  Gateway (simulatore)
- *Trigger*: Il gateway si avvia per la prima volta
- *Pre-condizione*:
  - Il gateway è avviato
  - Il gateway possiede i parametri di connessione al Cloud e le credenziali iniziali
- *Post-condizione*:
  - Il Gateway è autenticato, è associato in modo univoco
  - Le informazioni di commissioning sono persistenti
- *Scenario principale*:
  - Il Gateway presenta i certificati/chiavi d'accesso per l'autenticazione
  - Il Sistema valida le credenziali e associa il Gateway ad un tenant
  - Il Gateway riceve conferma del provisioning andato a buon fine
- *Estensioni*:
- *Inclusioni*:

==== #sub-uc() - Gestione Autenticazione Fallita <Gestione-autenticazione-fallita>
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Le credenziali fornite al Sistema non sono valide
- *Pre-condizione*:
  - Il gateway ha tentato la connessione con il Sistema
- *Post-condizione*:
  - il Sistema rifiuta la connessione
  - Il Gateway è in stato di errore (e interrompe i tentativi di invio dati)
- *Scenario principale*:
  - Il Sistema respinge la richiesta di connessione dal Gateway
  - il Sistema invia un messaggio di errore al Gateway
  - il Gateway registra l'errore di autenticazione e sospende i tentativi di connessione
  - Il Gateway attende il riavvio o un intervento di uno user
- *Estensioni*:
- *Inclusioni*:

==== #uc() - Trasmissione sicura e cifrata dati al Sistema <Trasmissione-sicura-cifrata-dati-sistema>
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Sono disponibili nuovi dati da mandare al Sistema
- *Pre-condizione*:
  - Il Gateway è autenticato, autorizzato e dispone delle chiavi necessarie per la cifratura
  - I dati in un formato standardizzato interno sono disponibili
  - Il Gateway è raggiungibile dal Cloud
- *Post-condizione*:
  - La comunicazione tra Gateway e Sistema è stabilita su un canale cifrato
  - I dati sono stati inviati al Sistema con protocolli sicuri e la trasmissione è stata confermata
- *Scenario principale*:
  - Il Gateway prepara i dati da inviare
  - Il Gateway avvia la connessione con il Sistema e negozia il protocollo di cifratura
  - La connessione sicura con il Sistema viene stabilita
  - Il Gateway invia i dati al Sistema in modo cifrato
  - Il Gateway riceve conferma di ricezione dal Sistema
*Estensioni*:
#ref-uc(<Salvataggio-buffer-dati-disconnessione>)
*Inclusioni*:

==== #uc() - Salvataggio (buffer) dati per disconnessione <Salvataggio-buffer-dati-disconnessione>
- *Attore primario*:  Gateway (simulato)
- *Trigger*: Tentativo fallito di invio dati al cloud
- *Pre-condizione*:
  - Il gateway ha dati da inviare
  - La connessione al Cloud si è interrotta o non è disponibile
- *Post-condizione*:
  - I dati da inviare sono salvati in un buffer locale
- *Scenario principale*:
  - Il tentativo di invio dati fallisce
  - Il gateway memorizza i dati non inviati nel suo buffer locale
- *Scenari alternativi*:
  - Se il buffer raggiungere la capacità massima, i dati più vecchi vengono eliminati per scartati per aggiungere i nuovi
  - Se il cloud ritorna raggiungibile il invia i dati salvati nel buffer
- *Estensioni*:
- *Inclusioni*:
//DA SVILUPPARE i due scenari alternativi

==== #uc() - Normalizzazione e Formattazione interna dei dati
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

//Dina: secondo me non ha senso che il certificato scada, al massimo è il super-admin che lo cambia
//o invia comando di rinnovo al gateway, se lo vuole far scadere rimuove il certificato
==== #uc() - Aggiornamento sicuro delle credenziali di autenticazione
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

==== #uc() - Ricezione e risposta a messaggi dal Cloud
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

==== #sub-uc() - Comando del Cloud fallito
- *Attore primario*: Gateway (simulato)
- *Trigger*: Non è possibile soddisfare il comando ricevuto dal Cloud
- *Pre-condizione*: il gateway è connesso e autenticato con il cloud, il gateway ha la possibilità di rispondere ai messaggi del Cloud
- *Post-condizione*: il gateway informa il Cloud che la sua richiesta non è andata a buon fine
- *Scenario principale*:
  - Il gateway non riesce a soddisfare la richiesta del Cloud
  - Il gateway invia un messaggio di errore al Cloud

==== #sub-uc() - Creazione sensore simulato
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richiesta relativa del Cloud
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

==== #sub-uc() - Cancellazione sensore simulato
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richiesta relativa del Cloud
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

==== #sub-uc() - Modifica parametri sensore simulato
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richiesta relativa del Cloud
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

==== #sub-uc() - Avvio simulazione di specifico sensore
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richiesta relativa del Cloud
- *Pre-condizione*:
  - Il gateway è connesso e autenticato con il Cloud.
  - Il sensore simulato esiste.
  - Il sensore non è già in stato di simulazione attiva.
- *Post-condizione*: Il gateway inizia a generare dati con quel sensore simulato.
- *Scenario principale*:
  - Il gateway riceve dal Cloud il comando di avvio simulazione.
  - Il gateway inizia a produrre dati simulati.
  - Il gateway invia conferma al Cloud.

==== #sub-uc() - Stop simulazione di specifico sensore
- *Attore primario*: Gateway (simulato)
- *Trigger*: Ricezione di richiesta relativa del Cloud
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
// REST Client autenticato significa che ha un token valido per un tenant specifico
==== #uc() - Richiesta dati real-time sensore <Richiesta-dati-real-time-sensore>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client vuole richiedere i dati real-time di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema

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
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)
  - #ref-uc(<Sensore-non-associato-tenant-REST-Client>)
- *Inclusioni*:
  - #ref-uc(<Verifica-sensore>)
  - #ref-uc(<Restituzione-dati-real-time-sensore>)
===== #sub-uc() - Sensore non trovato <Sensore-non-trovato>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client richiede i dati di un sensore non esistente
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema

  - Il REST Client ha richiesto i dati di un sensore non esistente
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema rileva che il sensore richiesto non esiste

===== #sub-uc() - Nessun dato disponibile per il sensore richiesto <Nessun-dato-disponibile-sensore-richiesto>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client seleziona un sensore per il quale non sono disponibili dati
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema

- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati

===== #sub-uc() - Sensore non associato al tenant del REST Client <Sensore-non-associato-tenant-REST-Client>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client richiede i dati di un sensore non associato al proprio tenant
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema

- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema rileva che il sensore richiesto non appartiene al tenant del REST Client

===== #sub-uc() - Verifica sensore <Verifica-sensore>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client ha richiesto i dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema

- *Post-condizioni*:
  - Viene verificata la validità del sensore richiesto e la sua associazione al tenant del REST Client
- *Scenario principale*:
  - Il Sistema verifica la validità del sensore richiesto e la sua associazione al tenant del REST Client

===== #sub-uc() - Restituzione dati real-time sensore <Restituzione-dati-real-time-sensore>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client ha richiesto i dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema

  - Il sensore richiesto esiste ed appartiene al tenant del REST Client
- *Post-condizioni*:
  - Vengono restituiti i dati real-time del sensore richiesto
- *Scenario principale*:
  - Il Sistema recupera e restituisce i dati real-time del sensore richiesto

==== #uc() - Richiesta storico dati sensore <Richiesta-storico-dati-sensore>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client vuole richiedere lo storico dei dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
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
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)
  - #ref-uc(<Sensore-non-associato-tenant-REST-Client>)
- *Inclusioni*:
  - #ref-uc(<Autenticazione-REST-Client>)
  - #ref-uc(<Verifica-sensore>)
  - #ref-uc(<Restituzione-storico-dati-sensore>)

===== #sub-uc() - Restituzione storico dati sensore <Restituzione-storico-dati-sensore>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client ha richiesto lo storico dei dati di un sensore
- *Pre-condizioni*:
  - Il REST Client è autenticato nel Sistema
  - Il sensore richiesto esiste ed appartiene al tenant del REST Client
- *Post-condizioni*:
  - Viene restituito lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - Il Sistema recupera e restituisce lo storico dei dati del sensore richiesto, eventualmente filtrati per intervallo temporale

==== #uc() - Autenticazione REST Client <Autenticazione-REST-Client>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client vuole autenticarsi nel Sistema
- *Pre-condizioni*:
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
  - #ref-uc(<Credenziali-REST-Client-errate>)
  - #ref-uc(<Credenziali-REST-Client-scadute>)

//potenziale generalizzazione dell'errore
===== #sub-uc() - Credenziali REST Client errate <Credenziali-REST-Client-errate>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client invia delle credenziali errate al Sistema
- *Pre-condizioni*:
  - Il REST Client ha inviato credenziali errate
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inviate dal REST Client e rileva l'errore nelle credenziali


===== #sub-uc() - Credenziali REST Client scadute <Credenziali-REST-Client-scadute>
- *Attore principale*: REST Client
- *Trigger*: Il REST Client invia delle credenziali scadute al Sistema
- *Pre-condizioni*:
  - Il REST Client ha inviato credenziali scadute
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inviate dal REST Client e rileva che le credenziali sono scadute

