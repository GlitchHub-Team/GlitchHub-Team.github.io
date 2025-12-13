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
 
=== Attore principale - Super Admin
//Hoss, Michele

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

