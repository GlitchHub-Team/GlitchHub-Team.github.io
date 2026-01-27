#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
  titolo: "Analisi dei Requisiti",
  stato: "Bozza",
  registro-modifiche: (
    ("0.23.0",
      "27/01/2026",
      "Jaume Bernardi",
      "-",
      [Controllo, correzione ed aggiunta requisiti. Aggiunta diagrammi UC dal 110 al 169],
    ),
    (
      "0.22.0",
      "26/01/2026",
      "Michele Dioli",
      "-",
      [Aggiunta requisiti mancanti e aggiunta diagrammi degli UC dall'56 al 110],
    ),
    (
      "0.21.0",
      "23/01/2026",
      "Hossam Ezzemouri",
      "-",
      [Creazione e aggiunta dei diagrammi degli UC dall'1 al 55],
    ),
    (
      "0.20.0",
      "20/01/2026",
      "Michele Dioli",
      "-",
      [Creazione requisiti non funzionali e di dominio],
    ),
    (
      "0.19.0",
      "14/01/2026",
      "Riccardo Graziani",
      "-",
      [Creazione  requisiti dashboard Utente autenticato e Tenant Admin],
    ),
    (
      "0.18.0",
      "13/01/2026",
      "Alessandro Dinato",
      "-",
      [Creazione requisiti attore Gateway con Sistema Cloud e tutti attori relativi al Sistema Gateway],
    ),
    (
      "0.17.0",
      "12/01/2026",
      "Riccardo Graziani",
      "-",
      [Approfonditi use case di visualizzazione liste e visualizzazione in dettaglio di alcuni elementi (API Key, Gateway)],
    ),
    (
      "0.16.0",
      "11/01/2026",
      "Elia Ernesto Stellin",
      "-",
      [Riempita sezione "Admin Generico" e modifiche a inclusioni di use case contenuti in essa; Sistemato registro modifiche; Ottimizzazione compilazione del documento],
    ),
    (
      "0.15.0",
      "05/01/2026",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "-",
      [Modifiche di formattazione; Migliorata descrizione dei casi d'uso (@casi-d-uso-introduzione); Aggiunti use case mancanti relativi a invio di comandi al gateway; Impostati contatori dei requisiti],
    ),
    (
      "0.14.0",
      "03/01/2026",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "-",
      [Aggiunta use case relativi agli alert e la loro generazione],
    ),
    (
      "0.13.1",
      "03/01/2026",
      "Elia Ernesto Stellin",
      "-",
      [Modifiche di formattazione],
    ),
    (
      "0.13.0",
      "29/12/2025",
      "Elia Ernesto Stellin, Alessandro Dinato, Riccardo Graziani",
      "-",
      [Verifica Use Case attuali],
    ),
    (
      "0.12.0",
      "23/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato, Riccardo Graziani",
      [Modificati use case per *utente non autenticato*, *utente autenticato* e *Tenant User*],
    ),
    (
      "0.11.0",
      "23/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin, Riccardo Graziani",
      [Aggiunta Use Case dashboard metriche e aggiunta servizi GATT per sensori simulati],
    ),
    (
      "0.10.0",
      "22/12/2025",
      "Alessandro Dinato, Riccardo Graziani",
      "Elia Ernesto Stellin",
      [Aggiunta Use Case Gateway simulato],
    ),
    (
      "0.9.0",
      "21/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin, Riccardo Graziani",
      [Aggiunta Use Case con sistema Gateway],
    ),
    (
      "0.8.0",
      "20/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato, Riccardo Graziani",
      [Aggiunta tabella degli attori (@lista-attori); modifica formattazione interna; sistemate estensioni degli UC],
    ),
    (
      "0.7.1",
      "16/12/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato, Riccardo Graziani",
      "Modifica formattazione use cases e riferimenti dentro il documento",
    ),
    (
      "0.7.0",
      "15/12/2025",
      "Jaume Bernardi, Siria Salvalaio",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura Use Case relativi al Gateway",
    ),
    (
      "0.6.0",
      "14/12/2025",
      "Alessandro Dinato, Michele Dioli",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura Use Case relativi al Super-admin",
    ),
    (
      "0.5.0",
      "9/12/2025",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "Alessandro Dinato",
      "Stesura Use Case relativi al Tenant-admin",
    ),
    (
      "0.4.0",
      "8/12/2025",
      "Alessandro Dinato",
      "Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura Use Case relativi a Utente, Tenant User e API Client",
    ),
    (
      "0.3.0",
      "16/11/2025",
      "Hossam Ezzemouri",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura degli Use Case 3, 3.1, 3.2, 3.3, 4, 5 e 6",
    ),
    (
      "0.2.0",
      "16/11/2025",
      "Riccardo Graziani",
      "Alessandro Dinato, Elia Ernesto Stellin",
      "Stesura descrizione struttura dei casi d'uso, aggiunta sezione 2.2",
    ),
    (
      "0.1.0",
      "15/11/2025",
      "Hossam Ezzemouri",
      "Alessandro Dinato, Elia Ernesto Stellin, Riccardo Graziani",
      "Stesura introduzione e inizio dei Casi d'uso",
    ),
  ),

  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiEsterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Analisi dei Requisiti",
)

#let uc-counter = counter("uc-counter")
#uc-counter.update(0)

/* Crea un nuovo UC e ne mostra il codice */
#let uc = () => {
  uc-counter.step()
  context uc-counter.display("UC1.1.1")
}

/* Crea un nuovo sotto-UC e ne mostra il codice*/
#let sub-uc = () => {
  uc-counter.step(level: 2)
  context uc-counter.display("UC1.1.1")
}

/* Crea un nuovo sotto-sotto-UC e ne mostra il codice */
#let subsub-uc = () => {
  uc-counter.step(level: 3)
  context uc-counter.display("UC1.1.1")
}

/*
  Crea un riferimento allo UC relativo a un certo label.

  = Esempio
  Se da qualche parte ho un titolo con label `<Autenticazione-utente>`
  che corrisponde allo UC1.2,
  posso scrivere `#ref-uc(<Autenticazione-utente>)` per avere un link
  automatico a quella sezione che verrà fuori tipo "UC1.2 [Sezione x.y.z]"

  = Parametri
  == uc-label
  Tipo: label
*/
#let ref-uc = (lbl, section-prefix: "Sezione ") => context {
  if query(lbl) == () {
    panic("Il label <" + str(lbl) + "> non esiste. Assicurati di averlo scritto correttamente.")
  }

  let label-locs = query(selector(heading).after(lbl))
  let label-loc = label-locs.at(0).location()

  let uc-counter-value = if label-locs.len() > 1 {
    uc-counter.at(label-locs.at(1).location())
  } else { uc-counter.final() }

  let uc-id = "UC" + uc-counter-value.map(str).join(".")
  let section-id = counter(heading).at(label-loc).map(str).join(".")

  link(label-loc, [#uc-id \[#section-prefix#section-id\]])
}

#let rf-counter = counter("rf-counter")
#let rnf-counter = counter("rnf-counter")
#let rd-counter = counter("rd-counter")
#let rv-counter = counter("rv-counter")

#rf-counter.update(0)
#rnf-counter.update(0)
#rd-counter.update(0)
#rv-counter.update(0)

#let rf = (..args) => {
  rf-counter.step()
  let rilevanza = if args.at(0, default: []) != [] { args.at(0) } else { "Obb" }
  context rf-counter.display(value => {
    [*RF\-#value\-#rilevanza*]
  })
}
#let rnf = (..args) => {
  rnf-counter.step()
  let rilevanza = if args.at(0, default: []) != [] { args.at(0) } else { "Obb" }
  context rnf-counter.display(value => {
    [*RNF\-#value\-#rilevanza*]
  })
}
#let rd = (..args) => {
  rd-counter.step()
  let rilevanza = if args.at(0, default: []) != [] { args.at(0) } else { "Obb" }
  context rd-counter.display(value => {
    [*RD\-#value\-#rilevanza*]
  })
}
#let rv = (..args) => {
  rv-counter.step()
  let rilevanza = if args.at(0, default: []) != [] { args.at(0) } else { "Obb" }
  context rv-counter.display(value => {
    [*RV\-#value\-#rilevanza*]
  })
}

/*
NOTE: quando si scrive che super admin impersona tenant admin, si segna come precondizione che il tenant admin ha accettato la clausola d'impersonificazione del contratto
*/

= Introduzione
Questo documento ha come obiettivo quello di fornire informazioni  dettagliate e chiare riguardo i requisiti che il software progettato possiede: questo per poter esser un punto di riferimento sia per i soggetti coinvolti nello sviluppo sia per gli appaltanti, consentendo ad entrambi di verificare che il progetto soddisfi i requisiti funzionali e non funzionali esplicitati.

== Panoramica del prodotto
// TODO: da approfondire
Il progetto tratta la realizzazione di un sistema distribuito per l'acquisizione, l'elaborazione e la gestione dei dati provenienti da sensori Bluetooth Low Energy (BLE). In un contesto in cui la raccolta capillare (e affidabile soprattutto) rappresenta un elemento centrale per varie applicazioni (industriali,logistiche,sanitarie, ecc...), il capitolato evidenzia la necessità di una piattaforma in grado di ricevere e normalizzare dati eterogenei provenienti da un numero non trascurabile di sensori, garantendo al contempo sicurezza e scalabilità.

== Architettura
L'architettura prevista si articola in tre principali livelli che collaborano per garantire un flusso dati continuo e sicuro:
- *Sensori BLE*
- *Gateway BLE WiFI*
- *Cloud*

I sensori svolgono la funzione di acquisizione locale mentre i Gateway aggregano e inoltrano i dati verso il cloud, che rappresenta il core del sistema. Quest'ultimo si occupa di archiviazione, gestione dei tenant, esposizione delle API e monitoraggio tramite dashboard.

= Casi d'uso
== Introduzione <casi-d-uso-introduzione>
La definizione dei casi d'uso rappresenta una fase fondamentale nell'analisi dei requisiti di sistema previsto dal capitolato M31. I casi d'uso permettono di descrivere in maniera chiara e strutturata come gli *attori* interagiscono con il *sistema* specificato per raggiungere un determinato obiettivo.

In questo documento, con il termine *"Attore"* si intende una qualunque entità esterna al *Sistema* considerato che interagisce con lo stato di quest'ultima, in lettura e/o in scrittura.
Con *"Sistema"* invece si intende la parte del prodotto presa in considerazione dallo use case. Si noti che questo documento considera due principali "sistemi": la *piattaforma Cloud*, accessibile al gateway e agli utenti, e il *simulatore di gateway*, accessibile solamente dai sensori simulati e dalla piattaforma Cloud stessa.

I casi d'uso si compongono di un diagramma UML, che offre una rappresentazione sintetica delle relazioni tra attori e funzionalità, e di una descrizione testuale dettagliata. Quest'ultima specifica gli elementi principali del comportamento del sistema attraverso i seguenti punti:
- *Attori primari*: indicano gli attori che interagiscono attivamente con il sistema considerato, avviando il flusso principale del caso d'uso;
- *Attori secondari*: rappresentano gli attori che intervengono in modo indiretto o passivo, ma comunque rilevante per il caso d'uso;
- *Pre-condizioni*: descrizione delle condizioni che devono essere vere all'interno dello stato del sistema affinché l'attore possa avviare il caso d'uso;
- *Post-condizioni*: descrizione delle condizioni che devono essere vere al termine del caso d'uso, indicando lo stato del sistema dopo l'esecuzione;
- *Scenario principale*: sequenza ordinata di passi che descrive il flusso di interazione tra attori e sistema in assenza di errori o di situazioni eccezionali;
- *Scenario alternativo*: interruzioni del flusso principale che si verificano quando l'attore compie una scelta alternativa o si verificano condizioni particolari previste dal caso d'uso. Quando uno scenario alternativo si verifica, le post-condizioni del caso d'uso principale devono essere diverse;
- *Inclusioni*: riferimenti a casi d'uso che l'attore deve necessariamente completare per poter portare a termine il caso d'uso corrente;
- *Estensioni*: riferimenti ai casi d'uso esterni che descrivono gli scenari alternativi che si possono incontrare durante il flusso principale del caso d'uso;


== Attori <lista-attori>
Come scritto precedentemente, il sistema si compone di più livelli e coinvolge attori eterogenei, sia umani che automatici. L'utilizzo dei casi d'uso consente quindi di modellare le interazioni tra tali attori, traducendo i requisiti funzionali individuati in scenari operativi concreti. Essi permettono di focalizzarsi quindi sugli aspetti fondamentali del sistema preso in considerazione, quali l'acquisizione e l'aggregazione dei dati, l'inoltro verso il cloud, il provisioning sicuro dei dispositivi, la gestione multi-tenant e la visualizzazione dei dati tramite dashboard.

Nella seguente tabella, si riporta la lista di tutti gli attori considerati nel documento e una breve descrizione per ognuno di essi.
#table(
  // align: (left, left),
  columns: (1fr, 2.5fr),
  table.header([Attore], [Descrizione]),

  [Utente non autenticato], [Un qualunque utente che non abbia eseguito l'accesso alla piattaforma *Cloud*],

  [Utente autenticato],
  [Un qualunque utente che abbia eseguito l'accesso alla piattaforma Cloud. Corrisponde alla generalizzazione di *Tenant User*, *Tenant Admin* e *Super Admin*],

  [Tenant User],
  [Un utente autenticato appartenente a uno specifico tenant che ha facoltà di visualizzare i dati dei sensori ricevuti dai *Gateway*.],

  [Tenant Admin],
  [Un utente autenticato appartenente a uno specifico tenant che ha poteri di amministrazione sui gateway collegati al tenant.],

  [Super Admin], [Un utente autenticato che ha poteri di amministrazione su tutti i tenant associati al sistema cloud.],

  [Admin Generico],
  [Un utente autenticato con poteri di amministrazione generici. Corrisponde alla generalizzazione di *Tenant Admin* e *Super Admin*.],

  [API Client], [Un qualunque client API che possa accedere all'API pubblica esposta dal sistema cloud.],

  [Sensore simulato], [Un qualunque sensore BLE che venga simulato dal *Gateway simulato* sviluppato.],

  [Gateway simulato],
  [Un Gateway simulato che interloquisce con l'*Infrastruttura Cloud* per l'invio di dati normalizzati e crittografati e per la ricezione di comandi.],

  [Infrastruttura Cloud],
  [L'infrastruttura Cloud che riceve i dati normalizzati dal Gateway, rendendoli visibili ai *Tenant User*.],

  [Email Client],
  [Rappresenta un client di posta elettronica usato dagli utenti. Si noti che quest'ultimo può essere solo un attore secondario, in quanto non è in grado di compiere azioni diverse dal ricevere email.],
)

== Sistema Cloud - Lista dei casi d'uso
In questa sezione, il termine *"Sistema"* si riferisce all'infrastruttura cloud. Per ogni caso d'uso viene considerato il Sistema Cloud come raggiungibile e funzionante.

=== Attore principale - Utente non autenticato
L'utente non autenticato è chiunque *non* abbia eseguito l'accesso alla piattaforma Cloud, che cerca di accedervi.

==== #uc() - Autenticazione Utente <Autenticazione-utente>
#image("../../assets/diagrammi/UC1.png", width: 80%)
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema ha riconosciuto l'utente e l'ha autenticato con il ruolo di _Tenant User_, _Tenant Admin_ o _Super Admin_
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account
  - L'Utente inserisce la password
- *Scenari alternativi*:
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente prova ad autenticarsi con un account sospeso
  - L'Utente inserisce email o password errati
- *Estensioni*:
  - #ref-uc(<Autenticazione-non-riuscita>)
  - #ref-uc(<Account-sospeso>)
  - #ref-uc(<Invio-codice-2FA>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-email-auth>)
  - #ref-uc(<Inserimento-password>)

===== #sub-uc() - Inserimento email autenticazione <Inserimento-email-auth>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account

===== #sub-uc() - Inserimento password <Inserimento-password>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'utente non è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la password


==== #uc() - Autenticazione non riuscita <Autenticazione-non-riuscita>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha inserito un'email che non corrisponde ad un utente registrato o ha inserito una password errata
- *Post-condizioni*:
  - Il Sistema non autentica l'utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un'email o una password errati
  - L'Utente visualizza un messaggio di errore


==== #uc() - Account sospeso <Account-sospeso>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha inserito le credenziali di un account sospeso
- *Post-condizioni*:
  - Il Sistema non autentica l'utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'utente prova ad autenticarsi con un account sospeso


==== #uc() - Invio codice 2FA <Invio-codice-2FA>
- *Attore principale*: Utente non autenticato
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
- *Post-condizioni*:
  - Il Sistema genera il codice 2FA
  - Il Sistema invia un'email con il codice 2FA
- *Scenario principale*:
  - L'Email client riceve l'email con il codice 2FA


==== #uc() - Re-invio codice 2FA <Re-invio-codice-2FA>
- *Attore principale*: Utente non autenticato
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
- *Post-condizioni*:
  - Il Sistema genera il codice 2FA
  - Il Sistema invia nuovamente un'email con il codice 2FA
- *Scenario principale*:
  - L'Utente richiede il re-invio del codice 2FA
  - L'Email client riceve l'email con il codice 2FA


==== #uc() - Autenticazione 2FA <Autenticazione-2FA>
#image("../../assets/diagrammi/UC6.png", width: 80%)

- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
- *Post-condizioni*:
  - Il Sistema verifica il codice 2FA inserito dall'Utente
  - Il Sistema autentica l'Utente, il quale è ora un *Utente autenticato*
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente riceve il codice 2FA via email
  - L'Utente inserisce il codice 2FA ricevuto
- *Scenari alternativi*:
  - L'Utente inserisce un codice 2FA errato, non proseguendo con l'autenticazione
  - L'Utente inserisce un codice 2FA scaduto, non proseguendo con l'autenticazione
- *Estensioni*:
  - #ref-uc(<Codice-2FA-errato>)
  - #ref-uc(<Codice-2FA-scaduto>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-codice-2FA>)

===== #sub-uc() - Inserimento codice 2FA <Inserimento-codice-2FA>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente ha ricevuto il codice 2FA via email
- *Post-condizioni*:
  - Il Sistema riceve il codice 2FA inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce il codice 2FA ricevuto via email


==== #uc() - Codice 2FA errato <Codice-2FA-errato>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente ha inserito un codice 2FA errato
- *Post-condizioni*:
  - Il Sistema non autentica l'Utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un codice 2FA errato
  - L'Utente visualizza un messaggio di errore


==== #uc() - Codice 2FA scaduto <Codice-2FA-scaduto>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
  - L'Utente ha inserito un codice 2FA scaduto
- *Post-condizioni*:
  - Il Sistema non autentica l'Utente
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un codice 2FA scaduto
  - L'Utente visualizza un messaggio di errore

==== #uc() - Impostazione password <Impostazione-password>
#image("../../assets/diagrammi/UC9.png", width: 80%)
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di impostazione della prima password
- *Post-condizioni*:
  - Il Sistema riceve la password inserita dall'utente
  - Il Sistema registra la password dell'Utente
- *Scenario principale*:
  - L'Utente clicca sul link di impostazione password nell'email
  - L'Utente inserisce la nuova password
  - L'Utente inserisce la conferma della nuova password
- *Scenari alternativi*:
  - La nuova password non rispetta i criteri di sicurezza
  - La nuova password e la conferma non coincidono
- *Estensioni*:
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
  - #ref-uc(<Password-non-coincidenti>)
  - #ref-uc(<Link-impostazione-password-scaduto>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-nuova-password>)
  - #ref-uc(<Conferma-password>)


==== #uc() - Password dimenticata <Password-dimenticata>
#image("../../assets/diagrammi/UC10.png", width: 80%)
- *Attore principale*: Utente non autenticato
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema invia un'email con il link di reimpostazione password
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account
  - L'Email client riceve l'email di reimpostazione password
- *Scenari alternativi*:
  - L'Utente inserisce un indirizzo email non associato ad alcun account
- *Estensioni*:
  - #ref-uc(<Indirizzo-email-non-associato-account>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-indirizzo-email>)
  - #ref-uc(<Invio-email-reimpostazione-password>)

===== #sub-uc() - Inserimento indirizzo email <Inserimento-indirizzo-email>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito dall'Utente
- *Scenario principale*:
  - L'Utente inserisce l'indirizzo email associato al proprio account

===== #sub-uc() - Invio email di reimpostazione password <Invio-email-reimpostazione-password>
- *Attore principale*: Utente non autenticato
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha inserito l'indirizzo email associato al proprio account
- *Post-condizioni*:
  - Il Sistema invia un'email con il link per reimpostare la password
- *Scenario principale*:
  - L'Email client riceve l'email di reimpostazione password inviata dal Sistema

==== #uc() - Indirizzo email non associato ad alcun account <Indirizzo-email-non-associato-account>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha inserito un indirizzo email non associato ad alcun account
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce un indirizzo email non associato ad alcun account

==== #uc() - Reimpostazione password dimenticata <Reimpostazione-password-dimenticata>
#image("../../assets/diagrammi/UC12.png", width: 80%)
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di reimpostazione password
- *Post-condizioni*:
  - La password dell'Utente viene reimpostata
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente clicca sul link di reimpostazione password nell'email
  - L'Utente inserisce la nuova password
  - L'Utente inserisce la conferma della nuova password
- *Scenari alternativi*:
  - La nuova password non rispetta i criteri di sicurezza
  - La nuova password e la conferma non coincidono
- *Estensioni*:
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
  - #ref-uc(<Password-non-coincidenti>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-nuova-password>)
  - #ref-uc(<Conferma-password>)

===== #sub-uc() - Inserimento nuova password <Inserimento-nuova-password>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di impostazione password
- *Post-condizioni*:
  - La nuova password viene registrata nel Sistema
- *Scenario principale*:
  - L'Utente inserisce la nuova password

===== #sub-uc() - Conferma password <Conferma-password>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di impostazione password
- *Post-condizioni*:
  - La conferma della password viene confrontata con la nuova password, se coincidono la password viene reimpostata
- *Scenario principale*:
  - L'Utente inserisce la conferma della nuova password


==== #uc() - Password non coincidenti <Password-non-coincidenti>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di impostazione password
  - L'Utente ha inserito una nuova password e una conferma password non coincidenti
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente visualizza un messaggio di errore dopo aver inserito la conferma password non coincidente con la nuova password


==== #uc() - Password non conforme ai criteri di sicurezza <Password-non-conforme-criteri-sicurezza>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha cliccato sul link di impostazione password nell'email
  - L'Utente ha inserito una nuova password non conforme ai criteri di sicurezza
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente visualizza un messaggio di errore dopo aver inserito una nuova password non conforme ai criteri di sicurezza

==== #uc() - Link di impostazione password scaduto <Link-impostazione-password-scaduto>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di impostazione o reimpostazione password
  - Il link di impostazione o reimpostazione password è scaduto
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente clicca sul link di impostazione o reimpostazione password scaduto
  - L'Utente visualizza un messaggio di errore


///// UTENTE AUTENTICATO //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
=== Attore principale - Utente autenticato <sistema-cloud-attore-utente-auth>
L'utente autenticato è chiunque abbia eseguito l'accesso alla piattaforma Cloud. Corrisponde alla generalizzazione degli attori *Tenant User*, *Tenant Admin*, *Super Admin*.
Nel caso in cui l'utente autenticato sia il Super Admin e acceda a dati di un tenant specifico, quest'ultimo deve aver accettato la clausola di impersonificazione, la quale permette l'accesso ai dati del tenant da parte del Super Admin.
Il Super Admin che accede ad un tenant può esattamente eseguire le stesse azioni di un Tenant Admin all'interno del proprio Tenant.

==== #uc() - Logout <Logout>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema disconnette l'Utente
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Utente, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Utente esegue il logout dal Sistema

==== #uc() - Modifica password <Modifica-password>
#image("../../assets/diagrammi/UC17.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - La password dell'Utente viene modificata nella nuova password specificata dall'utente
- *Scenario principale*:
  - L'Utente inserisce la vecchia password
  - L'Utente inserisce la nuova password
  - L'Utente inserisce la conferma della nuova password
- *Scenari alternativi*:
  - La vecchia password inserita non è corretta
  - La nuova password non rispetta i criteri di sicurezza
  - La nuova password e la conferma non coincidono
- *Estensioni*:
  - #ref-uc(<Password-non-coincidenti>)
  - #ref-uc(<Password-non-conforme-criteri-sicurezza>)
  - #ref-uc(<Vecchia-password-non-corretta>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-vecchia-password>)
  - #ref-uc(<Inserimento-nuova-password>)
  - #ref-uc(<Conferma-password>)

===== #sub-uc() - Inserimento vecchia password <Inserimento-vecchia-password>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la vecchia password inserita dall'Utente
- *Scenario principale*:
  - L'Utente inserisce la vecchia password


==== #uc() - Vecchia password non corretta <Vecchia-password-non-corretta>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - L'Utente ha inserito una vecchia password non corretta
- *Post-condizioni*:
  - Il Sistema annulla la modifica della password
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Utente inserisce una password che non corrisponde con quella associata al suo account

// ALERT -----------------------------------------------------------------------------------------------------
==== #uc() - Visualizzazione lista alert <Visualizzazione-lista-alert>
#image("../../assets/diagrammi/UC19.png", width: 80%)

- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista degli alert riguardanti eventi anomali all'interno del proprio tenant
- *Scenario principale*:
  - Il Tenant User visualizza gli alert riguardanti eventi anomali nel proprio tenant
  - Il Tenant User visualizza gli alert in forma di lista ordinata in ordine cronologico decrescente (dal più recente al meno recente).
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-alert>)


==== #uc() - Visualizzazione alert <Visualizzazione-alert>
#image("../../assets/diagrammi/UC20.png", width: 80%)
- *Attore principale*: Utente Autenticato
- *Pre-condizioni*:
  - L'Utente Autenticato è autenticato nel Sistema
  - L'alert esiste ed è associato al tenant dell'Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra il titolo e la descrizione dell'alert selezionato
- *Scenario principale*:
  - L'Utente Autenticato visualizza il titolo e la descrizione dell'alert selezionato
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-titolo-alert>)
  - #ref-uc(<Visualizzazione-descrizione-alert>)

===== #sub-uc() - Visualizzazione titolo alert <Visualizzazione-titolo-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra il titolo dell'alert selezionato
- *Scenario principale*:
  - L'Utente Autenticato visualizza il titolo dell'alert selezionato

===== #sub-uc() - Visualizzazione descrizione alert <Visualizzazione-descrizione-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra la descrizione dell'alert selezionato
- *Scenario principale*:
  - L'Utente Autenticato visualizza la descrizione dell'alert selezionato

==== #uc() - Visualizzazione alert mancata ricezione dati da Gateway <Mancata-ricezione-gateway>
#image("../../assets/diagrammi/UC21.png", width: 80%)
- *Generalizzazione*: #ref-uc(<Visualizzazione-alert>)
- *Attore principale*: Utente Autenticato
- *Pre-condizioni*:
  - L'Utente Autenticato è autenticato nel Sistema
  - L'alert esiste ed è associato al tenant dell'Utente Autenticato
  - Il Gateway in questione non è stato sospeso
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del gateway, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Scenario principale*:
  - L'Utente Autenticato visualizza l'identificativo del gateway, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-id-gateway-alert>)
  - #ref-uc(<Visualizzazione-timestamp-ultimo-dato-gateway-alert>)
  - #ref-uc(<Visualizzazione-tempo-inattivita-gateway-alert>)

===== #sub-uc() - Visualizzazione identificativo gateway alert <Visualizzazione-id-gateway-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del gateway interessato nell'alert
- *Scenario principale*:
  - L'Utente Autenticato visualizza l'identificativo del gateway interessato nell'alert

===== #sub-uc() - Visualizzazione timestamp ultimo dato gateway alert <Visualizzazione-timestamp-ultimo-dato-gateway-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra il timestamp dell'ultimo dato ricevuto dal gateway interessato nell'alert, ovvero il datetime preciso in cui è stato inviato l'ultimo dato
- *Scenario principale*:
  - L'Utente Autenticato visualizza il timestamp dell'ultimo dato ricevuto dal gateway interessato nell'alert

===== #sub-uc() - Visualizzazione tempo inattività gateway alert <Visualizzazione-tempo-inattivita-gateway-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra il tempo di inattività del gateway interessato nell'alert, ovvero il tempo dall'ultimo dato ricevuto.
- *Scenario principale*:
  - L'Utente Autenticato visualizza il tempo di inattività del gateway interessato nell'alert

==== #uc() - Visualizzazione alert mancata ricezione dati da sensore <Mancata-ricezione-sensore>
#image("../../assets/diagrammi/UC22.png", width: 80%)
- *Generalizzazione*: #ref-uc(<Visualizzazione-alert>)
- *Attore principale*: Utente Autenticato
- *Pre-condizioni*:
  - L'Utente Autenticato è autenticato nel Sistema
  - L'alert esiste ed è associato al tenant dell'Utente Autenticato
  - Il Sensore in questione non è stato sospeso
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del sensore, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Scenario principale*:
  - L'Utente Autenticato visualizza l'identificativo del sensore, il timestamp dell'ultimo dato ricevuto e il tempo di inattività
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-id-sensore-alert>)
  - #ref-uc(<Visualizzazione-timestamp-ultimo-dato-sensore-alert>)
  - #ref-uc(<Visualizzazione-tempo-inattivita-sensore-alert>)

===== #sub-uc() - Visualizzazione identificativo sensore alert <Visualizzazione-id-sensore-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del sensore interessato nell'alert
- *Scenario principale*:
  - L'Utente Autenticato visualizza l'identificativo del sensore interessato nell'alert

===== #sub-uc() - Visualizzazione timestamp ultimo dato sensore alert <Visualizzazione-timestamp-ultimo-dato-sensore-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra il timestamp dell'ultimo dato ricevuto dal gateway relativo al sensore in questione, ovvero il datetime preciso in cui è stato inviato l'ultimo dato dal sensore e correttamente inviato al Cloud.
- *Scenario principale*:
  - L'Utente Autenticato visualizza il timestamp dell'ultimo dato ricevuto dal gateway relativo al sensore in questione

===== #sub-uc() - Visualizzazione tempo inattività sensore alert <Visualizzazione-tempo-inattivita-sensore-alert>
- *Attore principale*: Utente Autenticato
- *Post-condizioni*:
  - Il Sistema mostra il tempo di inattività del sensore interessato nell'alert, ovvero il tempo dall'ultimo dato ricevuto dal gateway relativo al sensore in questione.
- *Scenario principale*:
  - L'Utente Autenticato visualizza il tempo di inattività del sensore interessato nell'alert


// Visualizzazione dati -----------------------------------------------------------------------------------------------------
==== #uc() - Selezione sensore <Selezione-sensore>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del sensore selezionato
- *Scenario principale*:
  - Il Tenant User seleziona un sensore associato al proprio tenant


==== #uc() - Visualizzazione in tempo reale dei dati del sensore <Visualizzazione-dati-real-time-sensore>
#image("../../assets/diagrammi/UC24.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Viene mostrato il grafico *time-series* dei dati relativi al sensore selezionato
- *Scenario principale*:
  - L'Utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - L'Utente visualizza i dati attraverso un grafico *time-series*
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled
- *Scenari alternativi*:
  - Nessun dato disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-real-time-sensore>)

===== #sub-uc() - Visualizzazione grafico dei dati real-time del sensore <Visualizzazione-grafico-real-time-sensore>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Vengono visualizzati i dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento specifico
  - Il grafico visualizzato si aggiorna in *tempo reale* (_real-time_), appena il Cloud riceve dati nuovi dal Gateway
- *Scenario principale*:
  - L'Utente visualizza il grafico relativo ai dati real-time del sensore selezionato
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico

==== #uc() - Visualizzazione dello storico dei dati del sensore <Visualizzazione-storico-dati-sensore>
#image("../../assets/diagrammi/UC25.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Viene visualizzato lo storico dei dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento specifico
- *Scenario principale*:
  - L'utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Viene mostrato lo storico dei dati del sensore selezionato tramite il grafico descritto sopra, con la possibilità di filtrare per intervallo temporale e intervallo di valore
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-storico-sensore>)

===== #sub-uc() - Visualizzazione grafico storico dei dati del sensore <Visualizzazione-grafico-storico-sensore>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Il Sistema mostra lo storico dei dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento passato specifico
- *Scenario principale*
  - L'Utente visualizza il grafico relativo allo storico dei dati del sensore selezionato
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico


==== #uc() - Filtraggio per intervallo temporale dati storico sensore <Filtraggio-dati-storico-sensore>
#image("../../assets/diagrammi/UC26.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Il Sistema mostra lo storico dei dati del sensore selezionato filtrato per intervallo temporale
- *Scenario principale*:
  - L'Utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - L'Utente autenticato specifica l'intervallo temporale desiderato
  - L'Utente autenticato visualizza lo storico dei dati del sensore selezionato filtrato per l'intervallo temporale specificato
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato nell'intervallo temporale specificato
  - L'intervallo temporale specificato non è valido
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
  - #ref-uc(<Intervallo-temporale-non-valido>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-filtrato-temporale-sensore>)


===== #sub-uc() - Visualizzazione grafico dati sensore filtrato per intervallo temporale <Visualizzazione-grafico-filtrato-temporale-sensore>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
  - Il filtro temporale è valido
- *Post-condizioni*:
  - Il Sistema mostra i dati storici del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento passato specifico, filtrati per intervallo temporale
- *Scenario principale*
  - L'Utente visualizza il grafico relativo allo storico dei dati del sensore selezionato
  - L'Utente visualizza il grafico filtrato per intervallo temporale
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico


==== #uc() - Intervallo temporale non valido <Intervallo-temporale-non-valido>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - Il sensore selezionato appartiene al tenant dell'Utente autenticato
  - L'Utente autenticato ha specificato un intervallo temporale non valido, ovvero un intervallo che comprende dei momenti temporali futuri o precedenti al primo momento temporale salvato nello storico del sensore considerato.
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Utente autenticato specifica un intervallo temporale non valido
  - L'Utente autenticato visualizza un messaggio di errore


==== #uc() - Filtraggio dati del sensore per intervallo di valori <Filtraggio-dati-sensore-intervallo-valori>
#image("../../assets/diagrammi/UC28.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'Utente autenticato
  - I valori delle misurazioni dei sensori sono numerici
- *Post-condizioni*:
  - Il Sistema mostra lo storico dei dati del sensore selezionato per la quale le misurazioni rientrano nell'intervallo di valori specificato
- *Scenario principale*:
  - L'Utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - L'Utente autenticato specifica l'intervallo di valori desiderato
  - L'Utente autenticato visualizza lo storico dei dati del sensore selezionato per la quale le misurazioni rientrano nell'intervallo di valori specificato
- *Scenari alternativi*:
  - Nessun dato storico disponibile per il sensore selezionato nell'intervallo di valori specificato
  - L'intervallo di valori specificato non è valido
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
  - #ref-uc(<Intervallo-di-valori-non-valido>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
  - #ref-uc(<Visualizzazione-grafico-filtrato-valori-sensore>)

===== #sub-uc() - Visualizzazione grafico dati sensore filtrato per intervallo di valori <Visualizzazione-grafico-filtrato-valori-sensore>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
  - Il filtro per valore è valido
- *Post-condizioni*:
  - Il Sistema mostra i dati storici del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento passato specifico, filtrati per intervallo di valori
- *Scenario principale*
  - L'Utente visualizza il grafico relativo allo storico dei dati del sensore selezionato
  - L'Utente visualizza il grafico filtrato per intervallo di valori
  - L'Utente può visualizzare il dato in un momento preciso dato che il grafico è labeled, ovvero si può visualizzare il valore effettivo di ogni punto nel grafico


==== #uc() - Intervallo di valori non valido <Intervallo-di-valori-non-valido>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente autenticato ha specificato un intervallo di valori non valido
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Utente autenticato specifica un intervallo di valori non valido
  - L'Utente autenticato visualizza un messaggio di errore


==== #uc() - Dati non disponibili per il sensore selezionato <Dati-non-disponibili-sensore-selezionato>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'Utente autenticato
  - L'Utente autenticato ha selezionato un sensore per il quale non sono disponibili dati
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati

// TODO: Come espandere secondo il pattern di visualizzazione lista?
==== #uc() - Visualizzazione lista sensori associati al tenant <Visualizzazione-lista-sensori-associati-tenant>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista dei sensori associati al tenant dell'utente
- *Scenario principale*:
  - L'utente autenticato visualizza la lista dei sensori associati al proprio tenant

==== #uc() - Visualizzazione singolo sensore associato al tenant in lista <Visualizzazione-singolo-sensore-associato-tenant-in-lista>
#image("../../assets/diagrammi/UC32.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra le informazioni del singolo sensore associato al tenant dell'utente in lista
- *Scenario principale*:
  - L'utente autenticato visualizza le informazioni del singolo sensore associato al proprio tenant in lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-sensore-in-lista>)

===== #sub-uc() - Visualizzazione identificativo sensore in lista <Visualizzazione-identificativo-sensore-in-lista>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del singolo sensore associato al tenant dell'utente in lista
- *Scenario principale*:
  - L'utente autenticato visualizza l'identificativo del singolo sensore associato al proprio tenant in lista

// Dashboard ----------------------------------------------------------------------------------------------------------------
==== #uc() - Visualizzazione dashboard generica <Visualizzazione-dashboard-generica>
#image("../../assets/diagrammi/UC33.png", width: 80%)
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'utente è autenticato nel Sistema
- *Post-condizioni*:
  - La dashboard viene mostrata correttamente
- *Scenario principale*:
  - L'utente autenticato accede alla dashboard del proprio tenant
  - Visualizza il numero di sensori attivi e non attivi
  - Visualizza il numero di gateway attivi e non attivi
  - Visualizza gli alert riguardanti eventi anomali all'interno del tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-lista-alert>)

===== #sub-uc() - Visualizzazione numero di sensori attivi e non attivi <Visualizzazione-numero-sensori-attivi-non-attivi>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'utente autenticato è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra in forma testuale e di grafico a torta il numero di sensori attivi e inattivi associati al tenant dell'utente
- *Scenario principale*:
  - L'utente autenticato visualizza il numero di sensori attivi e non attivi
  - L'utente autenticato visualizza le informazioni in forma testuale e di grafico a torta.

===== #sub-uc() - Visualizzazione numero di gateway attivi e non attivi <Visualizzazione-numero-gateway-attivi-non-attivi>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'utente autenticato è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra in forma testuale e di grafico a torta il numero di gateway attivi e inattivi associati al tenant dell'utente
- *Scenario principale*:
  - L'utente autenticato visualizza il numero di gateway attivi e non attivi
  - L'utente autenticato visualizza le informazioni in forma testuale e di grafico a torta.

=== Attore principale - Tenant User
Si noti che in questa sezione non vi è presente alcun use case con attore principale il *Tenant User* poiché questi sono tutti descritti nella @sistema-cloud-attore-utente-auth.

Le funzionalità del *Tenant User* sono un sottoinsieme stretto delle funzionalità del *Tenant Admin* e *Super Admin* impersonante quest'ultimo, ovvero tutto ciò che può essere compiuto da un *Tenant User*, può essere compiuto anche da un *Tenant Admin*\/*Super Admin*.

// ==== #uc() - Visualizzazione sensori collegati al tenant <Visualizzazione-sensori-collegati-tenant>
// - *Attore principale*: Tenant User
// - *Pre-condizioni*:
//   - Il Tenant User è autenticato nel Sistema
// - *Post-condizioni*:
//   - Il Sistema mostra la lista dei sensori associati al tenant del Tenant User
// - *Scenario principale*:
//   - Il Tenant User seleziona la funzionalità di visualizzazione sensori
//   - Il Tenant User visualizza la lista dei sensori associati al tenant del Tenant User


=== Attore principale - Admin Generico
L'attore *Admin Generico* corrisponde alla generalizzazione di *Tenant Admin* e *Super Admin*.

Si noti che un utente *Admin Generico* può rappresentare un *Tenant Admin* effettivo oppure un *Super Admin* in fase d'*impersonazione*, ovvero un Super Admin che viene riconosciuto temporaneamente dal Sistema Cloud come *Tenant Admin* di un specifico Tenant che abbia accettato la clausola d'impersonazione.
// TODO: magari metti un riferimento agli UC di impersonazione

// - #ref-uc(<Registrazione-nuovo-tenant-user>) - #ref-uc(<Eliminazione-Tenant-User>)
// - #ref-uc(<Visualizzazione-richiesta-commissioning-gateway>) - #ref-uc(<Visualizzazione-lista-utenti-tenant>)
// - #ref-uc(<Registrazione-nuova-api-key>) - #ref-uc(<Visualizzazione-gateway-tenant-admin>)
//   - *[SA]* Visualizzazione lista gateway
//     - Visualizzazione singolo gateway in lista
//       - Visualizzazione identificativo
//       - Visualizzazione nome tenant di appartenenza

//   - *[SA]* Visualizzazione dettaglio gateway
//     - Dev'essere gateway auth. in sistema

//   - *[TA]* Visualizzazione dettaglio gateway del tenant
//     - Dev'essere gateway auth. in sistema
//     - Dev'essere gateway associato a *tenant*


==== #uc() - Gateway non raggiungibile <Gateway-non-raggiungibile>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Admin tenta di inviare un comando di configurazione al Gateway, ma esso non è raggiungibile

==== #uc() - Email già utilizzata <Email-gia-utilizzata>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'Admin ha inserito un'email già associata ad un altro utente all'interno del Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Admin visualizza un messaggio di errore

// Gestione Tenant User -------------------------------------------------------------------------------------------------
==== #uc() - Registrazione nuovo Tenant User <Registrazione-nuovo-tenant-user>
#image("../../assets/diagrammi/UC36.png", width: 80%)
- *Attore principale*: Admin Generico
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema registra correttamente il nuovo Tenant User nel tenant associato all'Admin
  - Il Sistema invia una email con un link per impostare la password dell'account appena creato
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin inserisce l'indirizzo email del nuovo Tenant User
  - L'Email client riceve la mail di impostazione password
- *Scenari alternativi*:
  - L'email è già associata ad un altro utente all'interno del Sistema
- *Estensioni*:
  - #ref-uc(<Email-gia-utilizzata>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-email>)
  - #ref-uc(<Invio-email-impostazione-password>)

===== #sub-uc() - Inserimento email <Inserimento-email>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito
- *Scenario principale*:
  - L'Admin inserisce l'indirizzo email

===== #sub-uc() - Invio email impostazione password al nuovo Tenant User <Invio-email-impostazione-password>
- *Attore principale*: Admin Generico
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - L'email del nuovo Tenant User è valida
- *Post-condizioni*:
  - Il Sistema invia una email con il link per l'impostazione della nuova password
- *Scenario principale*:
  - L'Email client riceve una email con il link per l'impostazione della nuova password


==== #uc() - Sospensione Tenant User <Sospensione-tenant-user>
#image("../../assets/diagrammi/UC37.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Tenant User scelto è registrato nel Sistema
  - Il Tenant User scelto in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Tenant User non può più accedere al Sistema
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin sceglie il Tenant User che vuole sospendere
  - L'Admin conferma la sospensione
- *Inclusioni*
  - #ref-uc(<Conferma-sospensione-tenant-user>)

===== #sub-uc() - Conferma sospensione Tenant User <Conferma-sospensione-tenant-user>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Tenant User scelto è registrato e non sospeso nel Sistema
  - Il Tenant User scelto in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma della sospensione del Tenant User
- *Scenario principale*:
  - L'Admin conferma la sospensione del Tenant User

==== #uc() - Riattivazione Tenant User <Riattivazione-tenant-user>
#image("../../assets/diagrammi/UC38.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Tenant User è registrato e sospeso nel Sistema
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Tenant User può accedere nuovamente al Sistema
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin sceglie il Tenant User che vuole riattivare
  - L'Admin conferma la riattivazione dell'account
- *Inclusioni*
  - #ref-uc(<Conferma-riattivazione-tenant-user>)

===== #sub-uc() - Conferma riattivazione Tenant User <Conferma-riattivazione-tenant-user>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Tenant User è registrato e sospeso nel Sistema
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma della riattivazione del Tenant User
- *Scenario principale*:
  - L'Admin conferma la riattivazione del Tenant User


==== #uc() - Eliminazione Tenant User <Eliminazione-tenant-user>
#image("../../assets/diagrammi/UC39.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User che si vuole eliminare esiste
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema elimina il Tenant User
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin sceglie il Tenant User che vuole rimuovere
  - L'Admin conferma l'eliminazione del Tenant User
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-tenant-user>)

===== #sub-uc() - Conferma eliminazione Tenant User <Conferma-eliminazione-tenant-user>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel sistema
  - Il Tenant User che si vuole eliminare esiste
  - Il Tenant User in questione appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione del Tenant User
- *Scenario principale*:
  - L'Admin conferma l'eliminazione del Tenant User

// Commissioning / Decommissioning ------------------------------------------------------------------------------------------------------------
==== #uc() - Visualizzazione lista delle richieste di commissioning e decommissioning di gateway del tenant 
#image("../../assets/diagrammi/UC40.png", width: 80%)<Visualizzazione-lista-richieste-commissioning-decommissioning-gateway>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Viene visualizzato la lista di tutte le richieste di commissioning e decommissioning di gateway del tenant, ordinata in ordine cronologico decrescente
  - Per ogni elemento della lista, viene visualizzato lo stato delle richieste di commissioning e decommissioning di gateway, ovvero se tale richiesta è *in corso* o se è stata *accettata/rifiutata* da un Super Admin.
- *Scenario principale*:
  - L'Admin visualizza le richieste in forma di lista ordinata in ordine cronologico decrescente (dalla più recente alla meno recente).
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-richiesta-di-commissioning-decommissioning-gateway>)

==== #uc() - Visualizzazione richiesta di commissioning e decommissioning di gateway del tenant
#image("../../assets/diagrammi/UC41.png", width: 80%)
<Visualizzazione-richiesta-di-commissioning-decommissioning-gateway>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin generico è autenticato nel Sistema
  - La richiesta di commissioning o decommissioning esiste ed è associata al tenant
- *Post-condizioni*:
  - Il Sistema mostra le informazioni dettagliate della richiesta di commissioning o decommissioning
- *Scenario principale*:
  - L'Admin visualizza le informazioni dettagliate della richiesta di commissioning o decommissioning, tra cui:
    - Stato della richiesta: in corso, accettata, rifiutata
  - *Inclusioni*:
    - #ref-uc(<Visualizzazione-stato-richiesta-di-commissioning-decommissioning-gateway>)

===== #sub-uc() - Visualizzazione stato richiesta di commissioning e decommissioning di gateway
<Visualizzazione-stato-richiesta-di-commissioning-decommissioning-gateway>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin generico è autenticato nel Sistema
  - La richiesta di commissioning o decommissioning esiste ed è associata al tenant
- *Post-condizioni*:
  - Il Sistema mostra lo stato della richiesta di commissioning o decommissioning
- *Scenario principale*:
  - L'Admin generico visualizza lo stato della richiesta di commissioning o decommissioning, che può essere:
    - In corso
    - Accettata
    - Rifiutata

// Visualizzazione Utenti --------------------------------------------------------------------------------------------------------------
// TODO: Come espandere secondo il pattern di visualizzazione lista?
==== #uc() - Visualizzazione lista utenti tenant <Visualizzazione-lista-utenti-tenant>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Gli utenti appartengono al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra la lista degli utenti registrati nel tenant dell'Admin
- *Scenario principale*:
  - L'Admin visualizza la lista degli utenti registrati nel proprio tenant

==== #uc() - Visualizzazione singolo utente in lista <Visualizzazione-singolo-utente-in-lista>
#image("../../assets/diagrammi/UC43.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - L'utente appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra le informazioni sintetiche dell'utente nella lista, tra cui:
    - Indirizzo email
    - Stato: attivo, sospeso  
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche dell'utente nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-email-utente-lista>)
  - #ref-uc(<Visualizzazione-stato-utente-lista>)

===== #sub-uc() - Visualizzazione email singolo utente in lista <Visualizzazione-email-utente-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema 
  - L'utente appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra l'indirizzo email del singolo utente nella lista
- *Scenario principale*:
  - L'Admin visualizza l'indirizzo email del singolo utente nella lista

===== #sub-uc() - Visualizzazione stato singolo utente in lista <Visualizzazione-stato-utente-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - L'utente appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra lo stato del singolo utente nella lista
- *Scenario principale*:
  - L'Admin visualizza lo stato del singolo utente nella lista

// Visualizzazione Gateway/Sensori --------------------------------------------------------------------------------------------------------------
==== #uc() - Visualizzazione lista di gateway associati a tenant <Visualizzazione-lista-gateway-associati>
#image("../../assets/diagrammi/UC44.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista dei gateway associati al tenant dell'Admin
- *Scenario principale*:
  - L'Admin visualizza la lista dei gateway associati al tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-gateway-in-lista>)

==== #uc() - Visualizzazione singolo gateway in lista <Visualizzazione-singolo-gateway-in-lista>
#image("../../assets/diagrammi/UC45.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra le informazioni sintetiche del gateway nella lista, tra cui:
    - Nome del gateway
    - Stato: attivo, non raggiungibile, non associato, non autenticato
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche del gateway nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-gateway-lista>)
  - #ref-uc(<Visualizzazione-stato-gateway-lista>)

===== #sub-uc() - Visualizzazione nome singolo gateway in lista <Visualizzazione-nome-gateway-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra il nome del singolo gateway nella lista
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche del gateway nella lista

===== #sub-uc() - Visualizzazione stato singolo gateway in lista <Visualizzazione-stato-gateway-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra lo stato del singolo gateway nella lista
- *Scenario principale*:
  - L'Admin visualizza lo stato del singolo gateway nella lista

==== #uc() - Visualizzazione gateway associato a tenant <Visualizzazione-gateway-associato>
#image("../../assets/diagrammi/UC46.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra le informazioni dettagliate del gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza le informazioni del gateway selezionato, tra cui:
    - Nome del gateway
    - Stato: attivo, non raggiungibile, non associato, non autenticato
    - Sensori collegati al gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-gateway-associato>)
  - #ref-uc(<Visualizzazione-stato-gateway-associato>)
  - #ref-uc(<Visualizzazione-sensori-collegati-gateway-associato>)

===== #sub-uc() - Visualizzazione nome gateway associato a tenant <Visualizzazione-nome-gateway-associato>
- *Attore principale*: Admin generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra il nome del gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza il nome del gateway selezionato

===== #sub-uc() - Visualizzazione stato gateway associato a tenant <Visualizzazione-stato-gateway-associato>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra lo stato del gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza lo stato del gateway selezionato, che può essere:
    - Attivo
    - Non raggiungibile
    - Non associato
    - Non autenticato

// TODO: Come espandere secondo il pattern di visualizzazione lista?
===== #sub-uc() - Visualizzazione sensori collegati al gateway associato a tenant <Visualizzazione-sensori-collegati-gateway-associato>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
  - Il gateway ha sensori collegati
- *Post-condizioni*:
  - Il Sistema mostra la lista dei sensori collegati al gateway selezionato
- *Scenario principale*:
  - L'Admin visualizza la lista dei sensori collegati al gateway selezionato

==== #uc() - Visualizza singolo sensore collegato al gateway associato al tenant in lista
#image("../../assets/diagrammi/UC47.png", width: 80%)
<Visualizza-singolo-sensore-collegato-gateway-associato-in-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
  - Il gateway ha sensori collegati
- *Post-condizioni*:
  - Il Sistema mostra le informazioni sintetiche del singolo sensore collegato al gateway selezionato nella lista, tra cui:
    - Identificativo del sensore
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche del singolo sensore collegato al gateway selezionato nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-sensore-collegato-gateway-associato-in-lista>)

===== #sub-uc() - Visualizzazione identificativo sensore collegato al gateway associato a tenant in lista <Visualizzazione-identificativo-sensore-collegato-gateway-associato-in-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il gateway è associato al tenant dell'Admin
  - Il gateway ha sensori collegati
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del singolo sensore collegato al gateway selezionato nella lista
- *Scenario principale*:
  - L'Admin visualizza l'identificativo del singolo sensore collegato al gateway selezionato nella lista

// Gestione API Keys ------------------------------------------------------------------------------------------------------------------
==== #uc() - Registrazione nuova API key <Registrazione-nuova-api-key>
#image("../../assets/diagrammi/UC48.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema genera una nuova API key associata al tenant dell'Admin
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin inserisce il nome della API key
  - L'Admin inserisce la scadenza della API key
- *Inclusioni*:
  - #ref-uc(<Inserimento-nome-api-key>)
  - #ref-uc(<Inserimento-scadenza-api-key>)
- *Estensioni*:
  - #ref-uc(<Nome-api-key-gia-utilizzato>)
  - #ref-uc(<Scadenza-api-key-data-passata>)

===== #sub-uc() - Inserimento nome API key <Inserimento-nome-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve il nome inserito per la nuova API key
- *Scenario principale*:
  - L'Admin inserisce il nome della nuova API key
- *Scenari alternativi*:
  - Il nome inserito è già utilizzato da un'altra API key all'interno del tenant

===== #sub-uc() - Inserimento scadenza API key <Inserimento-scadenza-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la scadenza inserita per la nuova API key
- *Scenario principale*:
  - L'Admin inserisce la scadenza della nuova API key
- *Scenari alternativi*:
  - La scadenza inserita non è valida

==== #uc() - Nome API key già utilizzato <Nome-api-key-gia-utilizzato>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - L'Admin ha inserito un nome già utilizzato per la nuova API key all'interno del proprio tenant
- *Post-condizioni*:
  - L'operazione di registrazione della nuova API key viene interrotta
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'Admin visualizza un messaggio di errore dopo aver inserito il nome già utilizzato


==== #uc() - Scadenza API key in data passata <Scadenza-api-key-data-passata>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - L'Admin ha inserito una scadenza in data passata per la nuova API key
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - L'Admin visualizza un messaggio di errore dopo aver inserito una scadenza in data passata


==== #uc() - Visualizzazione lista API key <Visualizzazione-lista-api-key>
#image("../../assets/diagrammi/UC51.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista delle API key associate al tenant
- *Scenario principale*:
  - L'Admin visualizza la lista delle API key associate al tenant
  - Sono visualizzati per ogni API key il nome, la data di creazione e la data di scadenza
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-api-key-lista>)

==== #uc() - Visualizzazione singola API Key in lista <Visualizzazione-singola-api-key-lista>
#image("../../assets/diagrammi/UC52.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra le informazioni sintetiche della API key selezionata nella lista, tra cui:
    - Nome della API key
    - Data di creazione
    - Data di scadenza
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche della API key selezionata nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-singola-api-key-lista>)
  - #ref-uc(<Visualizzazione-data-creazione-singola-api-key-lista>)
  - #ref-uc(<Visualizzazione-data-scadenza-singola-api-key-lista>)

===== #sub-uc() - Visualizzazione nome singola API key lista <Visualizzazione-nome-singola-api-key-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il nome della API key selezionata nella lista
- *Scenario principale*:
  - L'Admin visualizza il nome della API key selezionata nella lista

===== #sub-uc() - Visualizzazione data di creazione singola API key lista <Visualizzazione-data-creazione-singola-api-key-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la data di creazione della API key selezionata nella lista
- *Scenario principale*:
  - L'Admin visualizza la data di creazione della API key selezionata nella

===== #sub-uc() - Visualizzazione data di scadenza singola API key lista <Visualizzazione-data-scadenza-singola-api-key-lista>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la data di scadenza della API key selezionata nella lista
- *Scenario principale*:
  - L'Admin visualizza la data di scadenza della API key selezionata

// TODO: Singoli uc pure per i dettagli qui?
==== #uc() - Visualizzazione dettagli API key <Visualizzazione-dettagli-api-key>
#image("../../assets/diagrammi/UC6.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Vengono visualizzati i dettagli della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza il nome della API key
  - L'Admin visualizza la data di creazione
  - L'Admin visualizza la data di scadenza
  - L'Admin visualizza il grafico di utilizzo della API key
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-api-key>)
  - #ref-uc(<Visualizzazione-data-creazione-api-key>)
  - #ref-uc(<Visualizzazione-data-scadenza-api-key>)
  - #ref-uc(<Grafico-utilizzo-api-key>)

===== #sub-uc() - Visualizzazione nome API key <Visualizzazione-nome-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra il nome della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza il nome della API key selezionata

===== #sub-uc() - Visualizzazione data di creazione API key <Visualizzazione-data-creazione-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra la data di creazione della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza la data di creazione della API key selezionata

===== #sub-uc() - Visualizzazione data di scadenza API key <Visualizzazione-data-scadenza-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra la data di scadenza della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza la data di scadenza della API key selezionata

===== #sub-uc() - Grafico utilizzo API key <Grafico-utilizzo-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema mostra il grafico Time Series di utilizzo della API key selezionata
- *Scenario principale*:
  - L'Admin visualizza il grafico Time Series di utilizzo della API key selezionata
  - Visualizza nell'asse Y il numero di richieste effettuate con la API key
  - Visualizza nell'asse X il tempo

==== #uc() - Eliminazione API key <Eliminazione-api-key>
#image("../../assets/diagrammi/UC54.png", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema elimina la API key selezionata
  - Il Sistema registra l'evento negli audit log, salvando il nome dell'Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - L'Admin seleziona una API key associata al proprio tenant
  - L'Admin conferma l'eliminazione della API key selezionata
  - L'Admin elimina la API key selezionata
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-api-key>)

===== #sub-uc() - Conferma eliminazione API key <Conferma-eliminazione-api-key>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - La API key selezionata appartiene al tenant dell'Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione della API key selezionata
- *Scenario principale*:
  - L'Admin conferma l'eliminazione della API key selezionata

// Visualizzazione audit log -----------------------------------------------------------------------------------------------------------------------------

// TODO: Da rifinire (es che informazioni mostrare nel log come timestamp, ip, user, tipo di evento)
// -> rifinire l'audit log secondo il pattern per visualizzazione lista di elementi
==== #uc() - Visualizzazione lista audit log del tenant <Visualizzazione-audit-log>
#image("../../assets/diagrammi/UC55.svg", width: 80%)
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista degli audit log del tenant del tenant a cui appartiene l'Admin
- *Scenario principale*:
  - L'Admin seleziona l'opzione di visualizzazione degli audit log
  - Il Sistema recupera i dati relativi agli audit log
  - L'Admin visualizza la lista degli audit log del tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-audit-log>)

==== #uc() - Visualizzazione singolo audit log in lista <Visualizzazione-singolo-audit-log>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra le informazioni sintetiche dell'audit log
- *Scenario principale*:
  - L'Admin visualizza le informazioni sintetiche dell'audit log, quali:
    - Nome utente che ha eseguito l'azione
    - Tipo di azione eseguita
    - Timestamp dell'azione eseguita
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-nome-utente-audit-log>)
  - #ref-uc(<Visualizzazione-tipo-azione-audit-log>)
  - #ref-uc(<Visualizzazione-timestamp-azione-audit-log>)

===== #sub-uc() - Visualizzazione nome utente audit log <Visualizzazione-nome-utente-audit-log>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il nome dell'utente che ha eseguito l'azione registrata nell'audit log
- *Scenario principale*:
  - L'Admin visualizza il nome dell'utente che ha eseguito l'azione registrata nell'audit log

===== #sub-uc() - Visualizzazione tipo azione audit log <Visualizzazione-tipo-azione-audit-log>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il tipo di azione eseguita registrata nell'audit log
- *Scenario principale*:
  - L'Admin visualizza il tipo di azione eseguita registrata nell'audit log

===== #sub-uc() - Visualizzazione timestamp azione audit log <Visualizzazione-timestamp-azione-audit-log>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il timestamp dell'azione eseguita registrata nell'audit log
- *Scenario principale*:
  - L'Admin visualizza il timestamp dell'azione eseguita registrata nell'audit log

// AUDIT LOG:
/*
  --- GESTIONE UTENTI
  - Creazione Tenant User SI
  - Sospensione Tenant User SI
  - Riattivazione Tenant User SI
  - Eliminazione Tenant User SI
  --- GESTIONE API KEY
  - Creazione API Key SI
  - Eliminazione API Key SI
  --- GESTIONE ACCESSI
  - Login SI
  - Logout SI
  - Generazione 2FA SI
  - Reimpostazione password SI
  --- GESTIONE SENSORI E GATEWAY
  - Sospensione sensore SI
  - Riattivazione sensore SI
  - Sospensione gateway SI
  - Riattivazione gateway SI
  --- GESTIONE RICHIESTE (DE)COMMISSIONING
  - Creazione commissioning
  - Creazione decommissioning
  - Rimozione

*/

==== #uc() - Filtraggio log per tipologia <Filtraggio-log-per-tipologia>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il Sistema mostra i dati di log filtrati secondo la tipologia desiderata
- *Scenario principale*
  - L'Admin seleziona una o più tipologie di log che desidera vedere, tra cui:
    - Gestione utenti
    - Gestione API Key
    - Gestione accessi
    - Gestione sensori e gateway
    - Gestione richieste commissioning e decommissioning
  - L'Admin visualizza gli audit log filtrati per le tipologie desiderate

==== #uc() - Filtraggio log per intervallo temporale <Filtraggio-log-per-intervallo-temporale>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il Sistema mostra i dati di log filtrati secondo l'intervallo temporale indicato
- *Scenario principale*
  - L'Admin specifica un intervallo temporale desiderato
  - L'Admin visualizza gli audit log filtrati secondo l'intervallo specificato


==== #uc() - Filtraggio log per utente <Filtraggio-log-per-utente>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
  - Il Sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il Sistema mostra i dati di log relativi ai Tenant User specificati
- *Scenario principale*
  - L'Admin specifica uno o più Tenant User di cui vuole consultare l'attività
  - L'Admin visualizza gli audit log filtrati in base ai Tenant User scelti


==== #uc() - Esportazione log <Esportazione-log>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - L'Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema fornisce i log in un file testuale scaricabile
- *Scenario principale*:
  - L'Admin seleziona l'opzione di esportazione degli audit log



=== Attore principale - Tenant Admin
// TODO: questa sezione è una copia di quello che c'è scritto in sezione Tenant User. lo tengo oppure no?
Si noti che le funzionalità del *Tenant User* sono un sottoinsieme stretto delle funzionalità del *Tenant Admin* e *Super Admin* impersonante quest'ultimo, ovvero tutto ciò che può essere compiuto da un *Tenant User*, può essere compiuto anche da un *Tenant Admin*\/*Super Admin*.


// DASHBOARD --------------------------------------------------------------------------------------------------------------------------------------------------
// TODO: nel diagramma di questo UC ci potrebbe stare mostrare anche <Visualizzazione-dashboard-generica>
==== #uc() - Visualizzazione dashboard Tenant Admin <Visualizzazione-dashboard-tenant-admin>
#image("../../assets/diagrammi/UC61.svg", width: 80%)
- *Generalizzazione*: #ref-uc(<Visualizzazione-dashboard-generica>)
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - La dashboard viene mostrata correttamente
- *Scenario principale*:
  - Il Tenant Admin accede alla dashboard del proprio tenant
  - Visualizza il numero di API key valide e scadute nel tenant
  - Visualizza il numero di sensori attivi e non attivi nel tenant
  - Visualizza il numero di gateway attivi e non attivi nel tenant
  - Visualizza eventuali alert o notifiche riguardanti il funzionamento dei sensori nel tenant
  - Visualizza lo stato delle richieste di commissioning e decommissioning di gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>) _(ereditato da #ref-uc(<Visualizzazione-dashboard-generica>))_
  - #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>) _(ereditato da #ref-uc(<Visualizzazione-dashboard-generica>))_
  - #ref-uc(<Visualizzazione-lista-alert>) _(ereditato da #ref-uc(<Visualizzazione-dashboard-generica>))_
  - #ref-uc(<Visualizzazione-numero-api-key-valide-scadute>)
  - #ref-uc(<Visualizzazione-stato-richieste-commissioning-gateway>)
  - #ref-uc(<Visualizzazione-stato-richieste-decommissioning-gateway>)

===== #sub-uc() - Visualizzazione numero di API key valide e scadute <Visualizzazione-numero-api-key-valide-scadute>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Viene visualizzato il numero di API key valide e scadute nel tenant
- *Scenario principale*:
  - Il Tenant Admin visualizza il numero di API key valide e scadute nel tenant
  - Il Tenant Admin visualizza le informazioni in forma testuale e di grafico a torta.

===== #sub-uc() - Visualizzazione stato richieste commissioning gateway <Visualizzazione-stato-richieste-commissioning-gateway>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un grafico a torta che mostra il numero di richieste di *commissioning* divise per stato ("accettate", "rifiutate" e "in corso")
- *Scenario principale*:
  - Il Tenant Admin visualizza il grafico a torta descritto sopra

===== #sub-uc() - Visualizzazione stato richieste decommissioning gateway <Visualizzazione-stato-richieste-decommissioning-gateway>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un grafico a torta che mostra il numero di richieste di *decommissioning* divise per stato ("accettate", "rifiutate" e "in corso")
- *Scenario principale*:
  - Il Tenant Admin visualizza il grafico a torta sopra descritto

// Comm./decomm. --------------------------------------------------------
==== #uc() - Creazione richiesta di commissioning gateway <Creazione-richiesta-commissioning-gateway>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema crea una richiesta di commissioning di gateway, la quale potrà essere accettata o rifiutata dal Super Admin
  - Il Sistema registra l'evento nell'audit log
- *Scenario principale*:
  - Il Tenant Admin inserisce il numero di nuovi gateway da associare al proprio Tenant
  - Il Tenant Admin inserisce una descrizione della richiesta per specificare ulteriori dettagli


==== #uc() - Creazione richiesta di decommissioning gateway <Creazione-richiesta-decommissioning-gateway>
#image("../../assets/diagrammi/UC63.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema crea una richiesta di decommissioning di gateway per il gateway specificato, la quale potrà essere accettata o rifiutata dal Super Admin
  - Il Sistema registra l'evento nell'audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona i/il Gateway per il decommissioning
  - Il Tenant Admin ultima la richiesta di decommissioning
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-decommissioning-tenant-admin>)

===== #sub-uc() - Selezione Gateway per decommissioning <Selezione-gateway-decommissioning-tenant-admin>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - I gateway selezionati dal Tenant Admin sono associati al suo Tenant
- *Post-condizioni*:
  - Il Sistema associa i gateway selezionati alla richiesta di decommissioning corrente
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista dei soli gateway associati al proprio Tenant
  - Il Tenant Admin seleziona da tale lista uno o più Gateway
  - Il Tenant Admin conferma la selezione


==== #uc() - Eliminazione richiesta di commissioning/decommissioning gateway 
#image("../../assets/diagrammi/UC64.svg", width: 80%)<Eliminazione-richiesta-commissioning-decommissioning-gateway>
- *Attore principale*: Admin Generico
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Ci sono richieste di commissioning o decommissioning di gateway dell'Admin in corso
  - La richiesta dev'essere ancora in corso e non dev'essere già stata accettata o rifiutata da un Super Admin o già eliminata dallo stesso utente
- *Post-condizioni*:
  - Il Sistema rimuove la richiesta selezionata, non rendendola più visibile ai Super Admin
  - Il Sistema registra l'evento nell'audit log, specificando se la richiesta eliminata è una richiesta di commissioning o decommissioning e i dati specifici della richiesta
- *Scenario principale*:
  - Il Tenant Admin seleziona una richiesta di commissioning o decommissioning dalla lista delle proprie richieste
  - Il Tenant Admin visualizza i dati della specifica richiesta
  - Il Tenant Admin conferma l'eliminazione della richiesta
- *Scenari alternativi*:
  - Il Tenant Admin, dopo aver visualizzato i dati della richiesta, annulla la sua eliminazione
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-richiesta-commissioning-decommissioning>)

===== #sub-uc() - Conferma eliminazione richiesta <Conferma-eliminazione-richiesta-commissioning-decommissioning>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema ha mostrato al Tenant Admin i dati relativi alla richiesta da eliminare
- *Post-condizioni*:
  - Il Sistema conferma l'eliminazione della richiesta selezionata
  - Il Sistema mostra all'Admin un messaggio di conferma dell'eliminazione
- *Scenario principale*
  - Il Tenant Admin visualizza i dati della richiesta selezionata
  - Il Tenant Admin conferma l'eliminazione
  - Il Tenant Admin non visualizza più la richiesta nella lista di richieste in corso

// Comandi ----------------------------------------------------------------------------------------------------------------------------------------------
==== #uc() - Sospensione sensore del tenant <Sospensione-sensore-tenant-admin>
#image("../../assets/diagrammi/UC65.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il sensore è associato a un gateway autenticato e registrato nel Sistema
  - Il sensore è associato a un gateway registrato nel tenant del Tenant Admin
  - Il sensore non è già sospeso
- *Post-condizioni*:
  - Il Sistema invia un comando al gateway per ignorare i dati provenienti dal sensore specificato
  - Il Sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole sospendere
- *Scenari alternativi*:
  - Il gateway associato al sensore non è raggiungibile
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Riattivazione sensore del tenant <Riattivazione-sensore-tenant-admin>
#image("../../assets/diagrammi/UC66.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il sensore è associato a un gateway autenticato e registrato nel Sistema
  - Il sensore è associato a un gateway registrato nel tenant del Tenant Admin
  - Il sensore è sospeso
- *Post-condizioni*:
  - Il Sistema invia un comando al gateway per riprendere la raccolta dei dati provenienti dal sensore specificato
  - Il Sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole riattivare
- *Scenari alternativi*:
  - Il gateway associato al sensore non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)


==== #uc() - Sospensione gateway associato a tenant <Sospensione-gateway-tenant-admin>
#image("../../assets/diagrammi/UC67.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway selezionato è associato al tenant del Tenant Admin
  - Il gateway non è già sospeso
- *Post-condizioni*:
  - Il Sistema invia il comando di sospensione al gateway e sospende la ricezione dei suoi dati
  - Il Sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway attivo associato al proprio tenant
  - Il Tenant Admin sospende il gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la sospensione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Riattivazione gateway associato a tenant <Riattivazione-gateway-tenant-admin>
#image("../../assets/diagrammi/UC68.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway selezionato è associato al tenant del Tenant Admin
  - Il gateway è sospeso
- *Post-condizioni*:
  - Il Sistema riattiva il gateway e riprende la ricezione dei suoi dati
  - Il Sistema registra l'evento negli audit log, salvando il nome del Tenant Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway sospeso associato al proprio tenant
  - Il Tenant Admin riattiva il gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la riattivazione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc() - Riavvio gateway associato a tenant <Riavvio-gateway-tenant-admin>
#image("../../assets/diagrammi/UC69.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway selezionato è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Gateway viene riavviato correttamente
- *Scenario principale*:
  - Il Tenant Admin seleziona il Gateway da riavviare
  - Il Sistema invia il comando di riavvio al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il riavvio non può essere
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

// TODO: cos'è che viene parametrizzato nello specifico? cos'è il "valore del parametro di rolling average"? IN CASO, DA INSERIRE UN INCLUDE "Seleziona parametro di rolling average / invio frequenza" a seconda di quello che ci dicono
==== #uc() - Modifica parametro rolling average di gateway associato a tenant <Modifica-parametro-rolling-average-tenant-admin>
#image("../../assets/diagrammi/UC70.svg", width: 80%)
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway selezionato è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Gateway modifica il proprio parametro di rolling average secondo quanto specificato dal Tenant Admin
- *Scenario principale*:
  - Il Tenant Admin seleziona il Gateway da modificare
  - Il Tenant Admin seleziona il valore del parametro di rolling average
  - Il Sistema invia il comando di modifica parametro rolling average al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la modifica non può avvenire
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Seleziona Gateway per invio comando da Tenant Admin <Seleziona-gateway-per-invio-comando-tenant-admin>
- *Attore principale*: Tenant Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway selezionato è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema ha verificato che il Gateway selezionato esiste ed è associato al tenant del Tenant Admin
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista di Gateway associati al proprio tenant
  - Il Tenant Admin seleziona il Gateway specifico a cui inviare il comando


=== Attore principale - Super Admin
// GESTIONE TENANT ------------------------------------------------------------------------
==== #uc() - Creazione Tenant <Creazione-tenant>
#image("../../assets/diagrammi/UC72.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema registra il nuovo tenant nel Sistema
- *Scenario principale*:
  - Il Super Admin inserisce il nome del nuovo tenant
  - Il Super Admin inserisce l'accettazione o meno della clausola di impersonificazione
- *Scenari alternativi*:
  - Il nome del tenant è già in uso da un altro tenant
- *Estensioni*:
  - #ref-uc(<Nome-tenant-gia-utilizzato>)
- *Inclusioni*:
  - #ref-uc(<Clausola-impersonificazione>)

===== #sub-uc() - Clausola impersonificazione <Clausola-impersonificazione>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema riceve l'accettazione o meno della clausola
- *Scenario principale*:
  - Il Super Admin inserisce l'accettazione o meno della clausola di impersonificazione

==== #uc() - Nome del tenant già utilizzato <Nome-tenant-gia-utilizzato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il nome del tenant inserito esiste già nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super Admin ha inserito il nome del nuovo tenant ma è già in uso

==== #uc() - Eliminazione Tenant <Eliminazione-tenant>
#image("../../assets/diagrammi/UC74.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - I Gateway associati subiscono un'azione di decommissioning
  - I dati associati al tenant vengono eliminati
  - Gli utenti associati al tenant vengono eliminati
  - Il tenant viene rimosso dal Sistema
- *Scenario principale*:
  - Il Super Admin seleziona il tenant da eliminare
  - Il Super Admin conferma l'eliminazione del tenant
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

===== #sub-uc() - Selezione e conferma tenant da eliminare <Selezione-e-conferma-tenant-da-eliminare>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione e la conferma del tenant da eliminare
- *Scenario principale*:
  - Il Super Admin seleziona il tenant da eliminare
  - Il Super Admin conferma l'eliminazione del tenant

===== #sub-uc() - Esecuzione decommissioning Gateway associati al tenant <Esecuzione-decommissioning-gateway-associati-tenant>
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - I Gateway associati al tenant subiscono un'azione di decommissioning
- *Scenario principale*:
  - Il Sistema invia il comando di decommissioning a tutti i Gateway associati al tenant
- *Scenari alternativi*:
  - Uno o più gateway non sono raggiungibili perciò il decommissioning non può essere completato
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

===== #sub-uc() - Eliminazione dati e utenti associati al tenant <Eliminazione-dati-utenti-associati-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel sistema
- *Post-condizioni*:
  - I dati associati al tenant vengono eliminati
  - Gli utenti associati al tenant vengono eliminati
- *Scenario principale*:
  - Il Sistema elimina tutti i dati associati al tenant
  - Il Sistema elimina tutti gli utenti associati al tenant

===== #sub-uc() - Eliminazione tenant <Esecuzione-eliminazione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il tenant viene rimosso dal Sistema
- *Scenario principale*:
  - Il Sistema elimina il tenant selezionato


==== #uc() - Decommissioning Gateway fallito <Decommissioning-gateway-fallito>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il decommissioning del o dei Gateway non viene completato
  - Il tenant non viene eliminato
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il decommissioning di uno o più Gateway associati fallisce durante l'eliminazione del tenant

// DASHBOARD ----------------------------------------------------------------------------------------
==== #uc() - Visualizzazione dashboard Super Admin <Visualizzazione-dashboard-super-admin>
#image("../../assets/diagrammi/UC76.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la dashboard con le informazioni sui tenant e sui Gateway
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni aggregate sui tenant
  - Il Super Admin visualizza le informazioni aggregate sui Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-lista-richieste-in-corso-commissioning-gateway>)
  - #ref-uc(<Visualizzazione-lista-richieste-in-corso-decommissioning-gateway>)
  - #ref-uc(<Visualizzazione-stato-globale-dei-gateway>)
  - #ref-uc(<Visualizzazione-numero-di-tenant>)

===== #sub-uc() - Visualizzazione stato globale dei gateway <Visualizzazione-stato-globale-dei-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra in forma di grafico a torta il numero di gateway associati a un qualunque tenant e non
- *Scenario principale*:
  - Il Super Admin visualizza il grafico descritto sopra

===== #sub-uc() - Visualizzazione numero di tenant <Visualizzazione-numero-di-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra il numero di tenant collegati ad esso
- *Scenario principale*:
  - Il Super Admin visualizza il numero di tenant collegati1


==== #uc() - Visualizzazione lista Gateway <Visualizzazione-lista-gateway-super-admin>
#image("../../assets/diagrammi/UC77.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutti i Gateway registrati
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista Gateway
  - Il Super Admin visualizza la lista di tutti i Gateway registrati nel Sistema
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-gateway-in-lista>)

// TODO: Può avere senso come visualizzazione singolo elemento?
==== #uc() - Visualizzazione singolo gateway in lista <Visualizzazione-singolo-gateway-in-lista>
#image("../../assets/diagrammi/UC78.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il Sistema mostra per ogni Gateway nella lista le seguenti informazioni:
    - Identificativo univoco
    - Stato di autenticazione (autenticato / non autenticato)
    - Stato operativo (attivo / non attivo)
    - Tenant associato (se presente)
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni Gateway nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-univoco-gateway>)
  - #ref-uc(<Visualizzazione-stato-autenticazione-gateway>)
  - #ref-uc(<Visualizzazione-stato-operativo-gateway>)
  - #ref-uc(<Visualizzazione-tenant-associato-gateway>)

===== #sub-uc() - Visualizzazione identificativo univoco del gateway <Visualizzazione-identificativo-univoco-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo univoco del gateway
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo univoco del gateway

===== #sub-uc() - Visualizzazione stato di autenticazione del gateway <Visualizzazione-stato-autenticazione-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il Sistema mostra lo stato di autenticazione (autenticato / non autenticato) del gateway
- *Scenario principale*:
  - Il Super Admin visualizza lo stato di autenticazione (autenticato / non autenticato)

===== #sub-uc() - Visualizzazione stato operativo del gateway <Visualizzazione-stato-operativo-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il Sistema mostra lo stato operativo (attivo / non attivo) del gateway
- *Scenario principale*:
  - Il Super Admin visualizza lo stato operativo (attivo / non attivo) del gateway

===== #sub-uc() - Visualizzazione tenant associato al gateway <Visualizzazione-tenant-associato-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutti i Gateway registrati
- *Post-condizioni*:
  - Il Sistema mostra il tenant associato (se presente) del gateway
- *Scenario principale*:
  - Il Super Admin visualizza il tenant associato (se presente) del gateway

==== #uc() - Visualizzazione Gateway <Visualizzazione-gateway-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra i dettagli del Gateway selezionato
- *Scenario principale*:
  - Il Super Admin visualizza i dettagli del Gateway selezionato

// TODO: cosa mostriamo del singolo gateway?


// AUTENTICAZIONE GATEWAY --------------------------------------------------------------------
==== #uc() - Autenticazione Gateway <Autenticazione-gateway>
#image("../../assets/diagrammi/UC80.svg", width: 80%)
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del Gateway
  - Il Sistema riceve il certificato di autenticazione del Gateway
  - Il Sistema autentica il Gateway
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da autenticare
  - Il Super Admin fornisce l'identificativo del Gateway
  - Il Super Admin fornisce il certificato di autenticazione
- *Scenario alternativo*:
  - Il Gateway non è raggiungibile perciò l'autenticazione non può essere completata
  - Il certificato fornito non è valido per il Gateway selezionato
  - L'identificativo è già utilizzato da un altro Gateway
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
  - #ref-uc(<Certificato-non-valido>)
  - #ref-uc(<Identificativo-gateway-gia-utilizzato>)


==== #uc() - Certificato non valido <Certificato-non-valido>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway è registrato nel Sistema ma non ancora autenticato
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non autentica il Gateway
- *Scenario principale*:
  - Il Super Admin fornisce un certificato non valido per l'autenticazione del Gateway selezionato
  - Il Super Admin visualizza un messaggio di errore


==== #uc() - Identificativo Gateway già utilizzato <Identificativo-gateway-gia-utilizzato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway è registrato nel Sistema ma non ancora autenticato
  - L'identificativo fornito è già associato ad un altro Gateway
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non autentica il Gateway
  - Il Sistema interrompe l'autenticazione del Gateway
- *Scenario principale*:
  - Il Super-admin fornisce un identificativo già utilizzato per l'autenticazione del Gateway selezionato
  - Il Super Admin visualizza un messaggio di errore


// COMMISSIONING ----------------------------------------------------------------------
==== #uc() - Associazione Gateway -- Tenant <Associazione-gateway-tenant>
#image("../../assets/diagrammi/UC83.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway non deve essere già associato ad un altro tenant
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema associa il Gateway al tenant selezionato
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da associare
  - Il Super Admin seleziona il tenant a cui associare il Gateway
  - Il Super Admin esegue la configurazione del Gateway per il tenant selezionato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-super-admin>)
  - #ref-uc(<Selezione-tenant-super-admin>)
  - #ref-uc(<Configurazione-gateway>)

===== #sub-uc() - Selezione Gateway <Selezione-gateway-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway non deve essere già associato ad un altro tenant
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Gateway da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da associare

==== #uc() - Selezione tenant <Selezione-tenant-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il Gateway

==== #uc() - Configurazione Gateway <Configurazione-gateway>
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - La configurazione del Gateway viene applicata correttamente
- *Scenario principale*:
  - Il Super Admin inserisce la nuova configurazione per il Gateway selezionato
  - Il Sistema invia le informazioni di configurazione al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la configurazione non può essere completata
  - La configurazione fornita non è valida per il Gateway selezionato
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
  - #ref-uc(<Configurazione-gateway-non-valida>)


==== #uc() - Configurazione Gateway non valida <Configurazione-gateway-non-valida>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non applica la configurazione al Gateway
- *Scenario principale*:
  - Il Super Admin inserisce una configurazione non valida per il Gateway selezionato

// COMANDI GATEWAY SUPER ADMIN ---------------------------------------------------------------------------
==== #uc() - Decommissioning Gateway <Decommissioning-gateway>
#image("../../assets/diagrammi/UC87.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant
  - Il Gateway viene resettato alle impostazioni di fabbrica
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway su cui eseguire il decommissioning
  - Il Sistema invia il comando di disassociazione al Gateway
  - Il Sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il decommissioning non può essere completato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
  - #ref-uc(<Disassociazione-gateway-dal-tenant>)
  - #ref-uc(<Reset-gateway>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

===== #sub-uc() - Disassociazione Gateway dal tenant <Disassociazione-gateway-dal-tenant>
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant a livello di Sistema
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da disassociare
  - Il Sistema invia il comando di disassociazione al Gateway


==== #uc() - Reset Gateway <Reset-gateway>
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Gateway viene resettato alle impostazioni di fabbrica
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da resettare
  - Il Sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il reset non può essere completato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Riavvio Gateway da Super Admin <Riavvio-gateway-super-admin>
#image("../../assets/diagrammi/UC89.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway è registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Gateway viene riavviato correttamente
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da riavviare
  - Il Sistema invia il comando di riavvio al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il riavvio non può essere completato
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc() - Sospensione Gateway <Sospensione-gateway-super-admin>
#image("../../assets/diagrammi/UC90.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway non è già sospeso
- *Post-condizioni*:
  - Il Sistema invia il comando di sospensione al gateway e sospende la ricezione dei suoi dati
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona un gateway attivo associato al proprio tenant
  - Il Super Admin invia al gateway il comando di sospensione, che ne interrompe l'invio dei dati al Cloud
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la sospensione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Riattivazione Gateway <Riattivazione-gateway-super-admin>
#image("../../assets/diagrammi/UC91.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway è sospeso
- *Post-condizioni*:
  - Il Sistema riattiva il gateway e riprende la ricezione dei suoi dati
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona un gateway sospeso associato al proprio tenant
  - Il Super Admin invia al gateway il comando di riattivazione, facendone riprendere l'invio dei dati al Cloud
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la riattivazione non può avvenire
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


// TODO: cos'è che viene parametrizzato nello specifico? cos'è il "valore del parametro di rolling average"?   Sarebbe bene considerare il parametro di FREQUENZA D'INVIO DEI DATI? CHIEDIAMO A M31
==== #uc() - Modifica parametro di rolling average <Modifica-parametro-rolling-average-gateway-super-admin>
#image("../../assets/diagrammi/UC92.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
  - Il gateway selezionato è associato al tenant del Super Admin
- *Post-condizioni*:
  - Il Gateway modifica il proprio parametro di rolling average secondo quanto specificato dal Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da modificare
  - Il Super Admin seleziona il valore del parametro di rolling average
  - Il Sistema invia il comando di modifica parametro rolling average al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò la modifica non può avvenire
- *Inclusioni*:
  - #ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Sospensione sensore <Sospensione-sensore-super-admin>
#image("../../assets/diagrammi/UC93.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il sensore è associato a un gateway autenticato e registrato nel Sistema
  - Il sensore non è già sospeso
- *Post-condizioni*:
  - Il Sistema invia un comando al gateway per ignorare i dati provenienti dal sensore specificato
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il sensore che vuole sospendere
- *Scenari alternativi*:
  - Il gateway associato al sensore non è raggiungibile
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore-invio-comando-super-admin>)
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)


==== #uc() - Riattivazione sensore <Riattivazione-sensore-super-admin>
#image("../../assets/diagrammi/UC94.svg", width: 80%)
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il sensore è associato a un gateway autenticato e registrato nel Sistema
  - Il sensore è sospeso
- *Post-condizioni*:
  - Il Sistema invia un comando al gateway per riprendere la raccolta dei dati provenienti dal sensore specificato
  - Il Sistema registra l'evento negli audit log, salvando il nome del Super Admin, il timestamp e l'azione eseguita
- *Scenario principale*:
  - Il Super Admin seleziona il sensore che vuole riattivare
- *Scenari alternativi*:
  - Il gateway associato al sensore non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore-invio-comando-super-admin>)


==== #uc() - Selezione Gateway per invio comando da Super Admin <Selezione-gateway-per-invio-comando-super-admin>
- *Attore principale*: Super Admin
- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il gateway è registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema ha verificato che il Gateway selezionato esiste ed è registrato e autenticato
- *Scenario principale*:
  - Il Super Admin visualizza la lista di Gateway associati al proprio tenant
  - Il Super Admin seleziona il Gateway specifico a cui inviare il comando

==== #uc() - Selezione sensore per invio comando da Super Admin <Selezione-sensore-invio-comando-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato esiste ed è associato a un gateway esistente nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del sensore selezionato
- *Scenario principale*:
  - Il Super Admin seleziona un sensore associato al proprio tenant


// VISUALIZZAZIONE ---------------------------------------------------------------
==== #uc() - Visualizzazione lista tenant <Visualizzazione-lista-tenant>
#image("../../assets/diagrammi/UC97.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutti i tenant registrati nel Sistema
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-tenant-lista>)

// TODO: Aggiungere più campi visualizzati???
==== #uc() - Visualizzazione singolo tenat in lista <Visualizzazione-singolo-tenant-lista>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutti i tenant registrati nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra per ogni tenant nella lista le seguenti informazioni:
    - Identificativo del tenant
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni tenant nella lista
- *Inclusioni*:

===== #sub-uc() - Visualizzazione identificativo del tenant <Visualizzazione-identificativo-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del tenant in lista
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo del tenant in lista

==== #uc() - Impersonificazione tenant <Impersonificazione-tenant>
#image("../../assets/diagrammi/UC100.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel Sistema
  - Il tenant ha la clausola di impersonificazione accettata
- *Post-condizioni*:
  - Il Sistema permette al Super Admin di agire come un Tenant Admin all'interno del tenant selezionato
- *Scenario principale*:
  - Il Super Admin seleziona il tenant da impersonificare
  - Il Super Admin agisce come un Tenant Admin all'interno del tenant selezionato

==== #uc() - Visualizzazione tenant <Visualizzazione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra i dettagli del tenant selezionato
- *Scenario principale*:
  - Il Super Admin visualizza i dettagli del tenant selezionato
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-identificativo-tenant>)

===== #sub-uc() - Visualizzazione identificativo del tenant <Visualizzazione-identificativo-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del tenant selezionato
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo del tenant selezionato


// GESTIONE RICHIESTE COMMISSIONING/DECOMM. ----------------------------------------------------------------------------
==== #uc() - Visualizzazione lista richieste in corso di commissioning Gateway 
<Visualizzazione-lista-richieste-in-corso-commissioning-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutte le richieste di commissioning di Gateway in corso da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di commissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-commissioning-in-lista>)

==== #uc() - Visualizzazione singola richiesta di commissioning in lista <Visualizzazione-singola-richiesta-commissioning-in-lista>
#image("../../assets/diagrammi/UC102.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutte le richieste di commissioning di Gateway in corso da parte di tutti i tenant
- *Post-condizioni*:
  - Il Sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di gateway richiesti
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-commissioning>)

===== #sub-uc() - Visualizzazione data e ora della richiesta di commissioning <Visualizzazione-data-ora-richiesta-commissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la data e l'ora della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza la data e l'ora della richiesta di commissioning in lista

===== #sub-uc() - Visualizzazione tenant della richiesta di commissioning <Visualizzazione-tenant-richiesta-commissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il tenant della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il tenant della richiesta di commissioning in lista

===== #sub-uc() - Visualizzazione numero gateway della richiesta di commissioning <Visualizzazione-numero-gateway-richiesta-commissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il numero di gateway della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il numero di gateway della richiesta di commissioning in lista

==== #uc() - Visualizzazione lista richieste in corso di decommissioning Gateway 
<Visualizzazione-lista-richieste-in-corso-decommissioning-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutte le richieste di decommissioning di Gateway in corso da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di decommissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-decommissioning-in-lista>)

==== #uc() - Visualizzazione singola richiesta di decommissioning in lista 
<Visualizzazione-singola-richiesta-decommissioning-in-lista>
#image("../../assets/diagrammi/UC104.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato la lista di tutte le richieste di decommissioning di Gateway in corso da parte di tutti i tenant
- *Post-condizioni*:
  - Il Sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di gateway richiesti
    - Stato della richiesta
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-stato-richiesta-decommissioning>)

===== #sub-uc() - Visualizzazione data e ora della richiesta di decommissioning <Visualizzazione-data-ora-richiesta-decommissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la data e l'ora della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza la data e l'ora della richiesta di decommissioning in lista

===== #sub-uc() - Visualizzazione tenant della richiesta di decommissioning <Visualizzazione-tenant-richiesta-decommissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il tenant della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il tenant della richiesta di decommissioning in lista

===== #sub-uc() - Visualizzazione numero gateway della richiesta di decommissioning <Visualizzazione-numero-gateway-richiesta-decommissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il numero di gateway della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza il numero di gateway della richiesta di decommissioning in lista

===== #sub-uc() - Visualizzazione stato della richiesta di decommissioning <Visualizzazione-stato-richiesta-decommissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di decommissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra lo stato della richiesta di decommissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza lo stato della richiesta di decommissioning in lista

==== #uc() - Visualizzazione storico richieste di commissioning Gateway <Visualizzazione-storico-richieste-commissioning-gateway>
#image("../../assets/diagrammi/UC105.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra lo storico di tutte le richieste di commissioning di Gateway da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di commissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-storico-commissioning-gateway>)

// TODO: Ho riutilizzato alcuni sub uc altrimenti diventa un circo questa sezione
==== #uc() - Visualizzazione singola richiesta lista storico commissioning <Visualizzazione-singola-richiesta-storico-commissioning-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato lo storico di tutte le richieste di commissioning di Gateway da parte di tutti i tenant
- *Post-condizioni*:
  - Il Sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di gateway richiesti
    - Stato della richiesta ("accettata", "rifiutata" o "in corso")
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-commissioning>)
  - #ref-uc(<Visualizzazione-stato-richiesta-storico-commissioning>)

===== #sub-uc() - Visualizzazione stato richiesta dello storico commissioning <Visualizzazione-stato-richiesta-storico-commissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta di commissioning deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra lo stato della richiesta di commissioning in lista
- *Scenario principale*:
  - Il Super Admin visualizza lo stato della richiesta di commissioning in lista

==== #uc() - Visualizzazione storico richieste di decommissioning Gateway <Visualizzazione-storico-richieste-decommissioning-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra lo storico di tutte le richieste di decommissioning di Gateway da parte di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di decommissioning Gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singola-richiesta-storico-decommissioning-gateway>)

==== #uc() - Visualizzazione singola richiesta lista storico decommissioning 
<Visualizzazione-singola-richiesta-storico-decommissioning-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sistema ha recuperato lo storico di tutte le richieste di decommissioning di Gateway da parte di tutti i tenant
- *Post-condizioni*:
  - Il Sistema mostra per ogni richiesta nella lista le seguenti informazioni:
    - Data e ora della richiesta
    - Tenant richiedente
    - Numero di gateway richiesti
    - Stato della richiesta ("accettata", "rifiutata" o "in corso")
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni richiesta nella lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-tenant-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesta-decommissioning>)
  - #ref-uc(<Visualizzazione-stato-richiesta-decommissioning>)

==== #uc() - Visualizzazione richiesta di commissioning Gateway <Visualizzazione-richiesta-commissioning-gateway>
#image("../../assets/diagrammi/UC109.svg", width: 80%)
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la data e l'ora della richiesta
  - Il Sistema mostra il tenant richiedente
  - Il Sistema mostra il numero di gateway richiesti
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di commissioning Gateway da parte di un tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta>)
  - #ref-uc(<Visualizzazione-tenant-richiedente-richiesta>)
  - #ref-uc(<Visualizzazione-numero-gateway-richiesti>)

===== #sub-uc() - Visualizzazione data e ora richiesta <Visualizzazione-data-ora-richiesta>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la data e l'ora della richiesta
- *Scenario principale*:
  - Il Super Admin visualizza la data e l'ora della richiesta

===== #sub-uc() - Visualizzazione tenant richiedente della richiesta <Visualizzazione-tenant-richiedente-richiesta>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il tenant richiedente della richiesta
- *Scenario principale*:
  - Il Super Admin visualizza il tenant richiedente della richiesta

===== #sub-uc() - Visualizzazione numero di gateway richiesti <Visualizzazione-numero-gateway-richiesti>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il numero di gateway richiesti nella richiesta
- *Scenario principale*:
  - Il Super Admin visualizza il numero di gateway richiesti nella richiesta

==== #uc() - Visualizzazione richiesta di decommissioning Gateway <Visualizzazione-richiesta-decommissioning-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema mostra la data e l'ora della richiesta
  - Il Sistema mostra il tenant richiedente
  - Il Sistema mostra per quali gateway è richiesto il decommissioning
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di decommissioning Gateway da parte di un tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-data-ora-richiesta>)
  - #ref-uc(<Visualizzazione-tenant-richiedente-richiesta>)
  - #ref-uc(<Visualizzazione-gateway-da-decommissioning>)

===== #sub-uc() - Visualizzazione gateway su cui effettuare decommissioning <Visualizzazione-gateway-da-decommissioning>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra i gateway su cui effettuare il decommissioning
- *Scenario principale*:
  - Il Super Admin visualizza i gateway su cui effettuare il decommissioning

==== #uc() - Accettazione richiesta di commissioning/decommissioning Gateway <Accettazione-richiesta-fornitura-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta visualizzata non è stata precedentemente accettata o rifiutata da un Super Admin o eliminata da un Tenant Admin
- *Post-condizioni*:
  - La richiesta di commissioning/decommissioning Gateway viene accettata
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di commissioning/decommissioning Gateway da parte di un tenant
  - Il Super Admin accetta la richiesta di commissioning/decommissioning Gateway


// TODO (CHIEDERE A M31): Ha senso permettere al super admin di RIFIUTARE una richiesta di decommissioning?
==== #uc() - Rifiuto richiesta di commissioning/decommissioning Gateway <Rifiuto-richiesta-fornitura-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La richiesta visualizzata non è stata precedentemente accettata o rifiutata da un Super Admin o eliminata da un Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve una motivazione per il rifiuto della richiesta
  - La richiesta di commissioning/decommissioning Gateway viene rifiutata
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di commissioning/decommissioning Gateway da parte di un tenant
  - Il Super Admin fornisce una motivazione per il rifiuto della richiesta di commissioning/decommissioning Gateway
  - Il Super Admin rifiuta la richiesta di commissioning/decommissioning Gateway

// GESTIONE TENANT ADMIN ------------------------------------------------------------------------------
==== #uc() - Creazione utente Tenant Admin <Creazione-utente-tenant-admin>
- *Attore principale*: Super Admin
- *Attore secondario*: Email Client
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il nuovo Tenant Admin è registrato nel Sistema e associato al tenant selezionato
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il nuovo Tenant Admin
  - Il Super Admin inserisce l'email del nuovo Tenant Admin
  - Il Tenant Admin riceve una email con le credenziali di accesso
- *Scenari alternativi*:
  - L'email inserita è già in uso da un altro utente nel Sistema
- *Estensioni*:
  - #ref-uc(<Email-gia-utilizzata>)
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant>)
  - #ref-uc(<Inserimento-email-nuovo-tenant-admin>)
  - #ref-uc(<Invio-email-impostazione-password-nuovo-tenant-admin>)

===== #sub-uc() - Selezione tenant <Selezione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il nuovo Tenant Admin

===== #sub-uc() - Inserimento email nuovo Tenant Admin <Inserimento-email-nuovo-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'email del nuovo Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin inserisce l'email del nuovo Tenant Admin

===== #sub-uc() - Invio email impostazione password nuovo Tenant-admin <Invio-email-impostazione-password-nuovo-tenant-admin>
- *Attore principale*: Super-admin
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il tenant deve esistere nel Sistema
  - L'email del nuovo Tenant Admin è valida
- *Post-condizioni*:
  - Il Sistema invia una email al nuovo Tenant-admin con le credenziali di accesso
- *Scenario principale*:
  - L'Email client riceve una email con il link per l'impostazione della nuova password

==== #uc() - Sospensione account Tenant Admin <Sospensione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il Sistema sospende l'account del Tenant Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da sospendere
  - Il Super Admin conferma la sospensione dell'account
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant-admin-da-sospendere>)
  - #ref-uc(<Conferma-sospensione-account-tenant-admin>)

===== #sub-uc() - Selezione Tenant Admin da sospendere <Selezione-tenant-admin-da-sospendere>
- *Attore principale*: Super-admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super-admin
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da sospendere

===== #sub-uc() - Conferma sospensione account Tenant Admin <Conferma-sospensione-account-tenant-admin>
- *Attore principale*: Super-admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il Sistema riceve la conferma della sospensione del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma la sospensione dell'account del Tenant Admin selezionato

==== #uc() - Riattivazione account Tenant Admin <Riattivazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il Sistema riattiva l'account del Tenant Admin, annullando la sospensione
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da riattivare
  - Il Super Admin conferma la riattivazione dell'account
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant-admin-da-riattivare>)
  - #ref-uc(<Conferma-riattivazione-account-tenant-admin>)

===== #sub-uc() - Selezione Tenant Admin da riattivare <Selezione-tenant-admin-da-riattivare>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da riattivare

===== #sub-uc() - Conferma riattivazione account Tenant Admin <Conferma-riattivazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il Sistema riceve la conferma della riattivazione del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma la riattivazione dell'account del Tenant Admin selezionato

==== #uc() - Eliminazione account Tenant Admin <Eliminazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il Sistema elimina l'account del Tenant Admin
- *Scenario principale*:
  - Il Super admin seleziona il Tenant Admin da eliminare
  - Il Super Admin conferma l'eliminazione dell'account
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant-admin-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-account-tenant-admin>)

===== #sub-uc() - Selezione Tenant Admin da eliminare <Selezione-tenant-admin-da-eliminare>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da eliminare

===== #sub-uc() - Conferma eliminazione account Tenant Admin <Conferma-eliminazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il Sistema riceve la conferma di eliminazione dell'account del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione dell'account del Tenant Admin selezionato

// UC relativi alle azioni del super-admin sul simulatore

==== #uc() - Creazione gateway simulato <Creazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema assegna un ID univoco al gateway simulato
  - Il Sistema crea correttamente un nuovo gateway simulato con i parametri specificati
  - Il Sistema genera dei certificati di autenticazione per il gateway simulato
- *Scenario principale*:
  - Il Super Admin imposta il nome del gateway simulato
  - Il Super Admin inserisce il timeout di inattività del gateway simulato
  - Il Super Admin imposta la dimensione in byte del buffer del gateway simulato
  - Il Sistema genera un ID univoco al gateway simulato
- *Inclusioni*:
  - #ref-uc(<Inserimento-nome-gateway-simulato>)
  - #ref-uc(<Inserimento-timeout-inattivita-gateway-simulato>)
  - #ref-uc(<Inserimento-dimensione-buffer-gateway-simulato>)

===== #sub-uc() - Inserimento nome gateway simulato <Inserimento-nome-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema riceve il nome del nuovo gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce il nome del nuovo gateway simulato

===== #sub-uc() - Inserimento timeout inattività gateway simulato <Inserimento-timeout-inattivita-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il timeout deve essere un valore positivo in millisecondi
- *Post-condizioni*:
  - Il Sistema riceve il valore del timeout di inattività del nuovo gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce il valore del timeout in millisecondi che rappresenta il periodo di tempo di inattività del gateway simulato prima di considerarlo non più attivo ed inviare l'alert

===== #sub-uc() - Inserimento dimensione buffer gateway simulato <Inserimento-dimensione-buffer-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema riceve la dimensione in byte del buffer del nuovo gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce la dimensione in byte del buffer del nuovo gateway simulato

==== #uc() - Creazione sensore simulato <Creazione-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Esiste almeno un gateway simulato
- *Post-condizioni*:
  - Il Sistema crea correttamente il nuovo sensore simulato e lo associa al gateway
- *Scenario principale*:
  - Il Super Admin imposta i servizi GATT del sensore simulato
  - Il Super Admin inserisce il timeout per l'invio dell'alert in caso di inattività del sensore
  - Il Super Admin seleziona il gateway simulato a cui associare il sensore simulato
- *Inclusioni*:
  - #ref-uc(<Selezione-servizi-sensore-simulato>)
  - #ref-uc(<Inserimento-timeout-alert-sensore-simulato>)
  - #ref-uc(<Inserimento-associazione-gateway-simulato>)

===== #sub-uc() - Selezione servizi sensore simulato <Selezione-servizi-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema riceve i servizi GATT offerti dal nuovo sensore simulato
- *Scenario principale*:
  - Il Super Admin può scegliere tra uno o più dei seguenti servizi:
    - Heart Rate Service (HRS)
    - Pulse Oximeter Service (POS)
    - Servizio custom per la misurazione dell'ECG
    - Health Thermometer Service (HTS)
    - Environmental Sensing Service (ESS)
  - Il Super Admin sceglie i servizi GATT simulati dal nuovo sensore simulato

===== #sub-uc() - Inserimento timeout alert sensore simulato <Inserimento-timeout-alert-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il timeout deve essere un valore positivo in millisecondi
- *Post-condizioni*:
  - Il Sistema riceve il valore del timeout per l'invio dell'alert in caso di inattività del sensore simulato
- *Scenario principale*:
  - Il Super Admin inserisce il valore del timeout in millisecondi che rappresenta il periodo di tempo di inattività del sensore simulato prima di inviare un alert

===== #sub-uc() - Inserimento associazione gateway simulato <Inserimento-associazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del gateway simulato a cui associare il sensore simulato
- *Scenario principale*:
  - Il Super Admin inserisce l'identificativo del gateway simulato

==== #uc() - Eliminazione gateway simulato <Eliminazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il gateway simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema elimina correttamente il gateway simulato
- *Scenario principale*:
  - Il Super Admin seleziona il gateway simulato da eliminare
  - Il Super Admin conferma l'eliminazione del gateway simulato
- *Inclusioni*:
  - #ref-uc(<Seleziona-gateway-simulato-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-gateway-simulato>)

===== #sub-uc() - Seleziona gateway simulato da eliminare <Seleziona-gateway-simulato-da-eliminare>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il gateway simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del gateway simulato da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il gateway simulato da eliminare

===== #sub-uc() - Conferma eliminazione gateway simulato <Conferma-eliminazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il gateway simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione del gateway simulato
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione del gateway simulato selezionato

==== #uc() - Eliminazione sensore simulato <Eliminazione-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema elimina correttamente il sensore simulato
- *Scenario principale*:
  - Il Super Admin seleziona il sensore simulato da eliminare
  - Il Super Admin conferma l'eliminazione del sensore simulato
- *Inclusioni*:
  - #ref-uc(<Seleziona-sensore-simulato-da-eliminare>)
  - #ref-uc(<Conferma-eliminazione-sensore-simulato>)

===== #sub-uc() - Seleziona sensore simulato da eliminare <Seleziona-sensore-simulato-da-eliminare>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del sensore simulato da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il sensore simulato da eliminare

===== #sub-uc() - Conferma eliminazione sensore simulato <Conferma-eliminazione-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il sensore simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione del sensore simulato
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione del sensore simulato selezionato

==== #uc() - Monitoraggio metriche di sistema <Monitoraggio-metriche-di-sistema>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Le metriche di sistema sono raccolte e disponibili per la visualizzazione
- *Post-condizioni*:
  - Il Sistema mostra la dashboard di visualizzazione delle metriche
- *Scenario principale*:
  - Il Super Admin visualizza la dashboard delle metriche di sistema
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-gateway-offline-online>)
  - #ref-uc(<Visualizzazione-throughput-dati>)
  - #ref-uc(<Visualizzazione-utilizzo-risorse-nodi-cloud>)
  - #ref-uc(<Visualizzazione-frequenza-disconnessioni-gateway>)
  - #ref-uc(<Visualizzazione-dimensioni-payload-pacchetti>)
  - #ref-uc(<Visualizzazione-data-staleness>)
  - #ref-uc(<Visualizzazione-valori-out-of-range>)

===== #sub-uc() - Visualizzazione gateway offline/online <Visualizzazione-gateway-offline-online>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica dei gateway offline/online è disponibile
- *Post-condizioni*:
  - Il Sistema mostra quanti gateway sono attualmente offline e online
  - Il Sistema rappresenta la metrica con un grafico a torta
- *Scenario principale*:
  - Il Super Admin visualizza il numero di gateway offline e online
  - Il Super Admin visualizza il grafico a torta rappresentante la metrica

===== #sub-uc() - Visualizzazione throughput dati <Visualizzazione-throughput-dati>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica del throughput dati è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il numero di dati inviati al secondo al Sistema Cloud dai gateway
  - Il Sistema rappresenta la metrica con un grafico Time Series
- *Scenario principale*:
  - Il Super Admin visualizza il throughput dati
  - Il Super Admin visualizza il grafico Time Series rappresentante la metrica

===== #sub-uc() - Visualizzazione utilizzo risorse nodi cloud <Visualizzazione-utilizzo-risorse-nodi-cloud>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica dell'utilizzo delle risorse dei nodi cloud è disponibile
- *Post-condizioni*:
  - Il Sistema mostra l'utilizzo di CPU e RAM delle diverse istanze Cloud
  - Il Sistema rappresenta la metrica con uno Stat Panel
  - Il Sistema mostra per ogni istanza Cloud l'andamento temporale dell'utilizzo di CPU e RAM
- *Scenario principale*:
  - Il Super Admin visualizza l'utilizzo di CPU e RAM delle diverse istanze Cloud
  - Il Super Admin visualizza lo Stat Panel rappresentante le metriche
  - Il Super Admin visualizza il grafico Time Series rappresentante l'andamento temporale delle metriche

===== #sub-uc() - Visualizzazione frequenza disconnessioni gateway <Visualizzazione-frequenza-disconnessioni-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica della frequenza di disconnessione dei gateway è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il numero di disconnessioni per ogni gateway in un intervallo di tempo specificato
  - Il Sistema rappresenta la metrica con un grafico a barre
- *Scenario principale*:
  - Il Super Admin visualizza la frequenza di disconnessione dei gateway
  - Il Super Admin visualizza il grafico a barre rappresentante le disconnessioni rilevate per ogni gateway

===== #sub-uc() - Visualizzazione dimensioni payload pacchetti <Visualizzazione-dimensioni-payload-pacchetti>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica delle dimensioni dei payload dei pacchetti è disponibile
- *Post-condizioni*:
  - Il Sistema mostra le dimensioni medie, minime e massime dei payload dei pacchetti inviati dai gateway
  - Il Sistema rappresenta la metrica con un grafico a 3 barre per gateway, una per ogni tipo di dimensione
- *Scenario principale*:
  - Il Super Admin visualizza le dimensioni dei payload dei pacchetti inviati dai gateway
  - Il Super Admin visualizza il grafico a barre rappresentante le dimensioni medie, minime e massime dei payload

===== #sub-uc() - Visualizzazione data staleness <Visualizzazione-data-staleness>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica della data staleness è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il tempo dall'ultimo messaggio inviato per ogni sensore
  - Il Sistema rappresenta la metrica con un'alert list, evidenziando i sensori con data staleness superiore ad una soglia predefinita
- *Scenario principale*:
  - Il Super Admin visualizza la data staleness dei sensori
  - Il Super Admin visualizza l'alert list rappresentante la data staleness di ogni sensore

===== #sub-uc() - Visualizzazione valori out-of-range <Visualizzazione-valori-out-of-range>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - La metrica dei valori out-of-range è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il numero di valori out-of-range rilevati per ogni sensore
  - Il Sistema rappresenta la metrica con un grafico a barre
- *Scenario principale*:
  - Il Super Admin visualizza il numero di valori out-of-range rilevati per ogni sensore
  - Il Super Admin visualizza il grafico a barre rappresentante il numero di valori out-of-range rilevati per ogni sensore

// TODO: Vieni qui ad ampliare la roba
// dc
// dc
==== #uc() - Visualizzazione storico dei Tenant possessori di sensore <Visualizzazione-storico-possessori-sensore>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sensore specificato esiste
- *Post-condizioni*:
  - Il Sistema mostra la lista di Tenant che hanno posseduto il sensore specificato
- *Scenario principale*:
  - Il Super Admin seleziona il sensore di cui visualizzare la lista di possessori
  - Il Super Admin visualizza la lista di Tenant possessori del sensore
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-tenant-possessore-sensore>)

==== #uc() - Visualizzazione singolo Tenant possessore del sensore <Visualizzazione-singolo-tenant-possessore-sensore>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sensore specificato esiste
- *Post-condizioni*:
  - Il Sistema mostra il Tenant attualmente associato al sensore specificato e il periodo di associazione
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni elemento della lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-tenant-possessore-sensore>)
  - #ref-uc(<Visualizzazione-periodo-associazione-sensore>)

===== #sub-uc() - Visualizzazione Tenant possessore del sensore <Visualizzazione-tenant-possessore-sensore>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sensore specificato esiste
- *Post-condizioni*:
  - Il Sistema mostra il Tenant attualmente associato al sensore specificato
- *Scenario principale*:
  - Il Super Admin visualizza il Tenant attualmente associato al sensore specificato

===== #sub-uc() - Visualizzazione periodo di associazione sensore <Visualizzazione-periodo-associazione-sensore>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Sensore specificato esiste
- *Post-condizioni*:
  - Il Sistema mostra il periodo di associazione del sensore specificato al Tenant
- *Scenario principale*:
  - Il Super Admin visualizza il periodo di associazione del sensore specificato al Tenant

==== #uc() - Visualizzazione storico dei Tenant possessori di gateway <Visualizzazione-storico-possessori-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista di Tenant a cui è stato associato il gateway specificato
- *Scenario principale*:
  - Il Super Admin seleziona il gateway di cui visualizzare la lista di possessori
  - Il Super Admin visualizza la lista di Tenant possessori del gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-singolo-tenant-possessore-gateway>)

==== #uc() - Visualizzazione singolo Tenant possessore del gateway <Visualizzazione-singolo-tenant-possessore-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il Tenant attualmente associato al gateway specificato e il periodo di associazione
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni elencate sopra per ogni elemento della lista
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-tenant-possessore-gateway>)
  - #ref-uc(<Visualizzazione-periodo-associazione-gateway>)

===== #sub-uc() - Visualizzazione Tenant possessore del gateway <Visualizzazione-tenant-possessore-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il Tenant attualmente associato al gateway specificato
- *Scenario principale*:
  - Il Super Admin visualizza il Tenant attualmente associato al gateway specificato

===== #sub-uc() - Visualizzazione periodo di associazione gateway <Visualizzazione-periodo-associazione-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato
  - Il Gateway specificato esiste ed è registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il periodo di associazione del gateway specificato al Tenant
- *Scenario principale*:
  - Il Super Admin visualizza il periodo di associazione del gateway specificato al Tenant

=== Attore principale - Gateway
==== #uc() - Conferma esecuzione commissioning <Conferma-comando-commissioning>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di commissioning dal Sistema
  - Il Gateway è autenticato e associato ad un tenant
- *Post-condizioni*:
  - Il Sistema riceve la conferma di esecuzione del commissioning dal Gateway
  - Il Sistema comincia a ricevere i dati dei sensori associati al Gateway
- *Scenario principale*:
  - Il Gateway esegue il commissioning in base alle istruzioni ricevute
  - Il Gateway invia la conferma di esecuzione del commissioning al Sistema
  - Il Gateway comincia l'invio dei dati dei sensori associati al Sistema
- *Estensioni*:
  - #ref-uc(<Errore-commissioning>)
- *Inclusioni*:
  - #ref-uc(<Invio-dati-crittografati>)

==== #uc() - Errore nel commissioning <Errore-commissioning>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di commissioning dal Sistema
  - Il Gateway durante l'esecuzione del commissioning ha riscontrato un errore
- *Post-condizioni*:
  - Il Sistema riceve la segnalazione di errore dal Gateway
  - Il Sistema notifica il Super-admin dell'errore riscontrato
  - Il Sistema annulla il commissioning del Gateway
- *Scenario principale*:
  - Il Gateway riscontra un errore durante l'esecuzione del commissioning
  - Il Gateway invia la segnalazione di errore al Sistema

==== #uc() - Conferma esecuzione decommissioning <Conferma-comando-decommissioning>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di decommissioning dal Sistema
  - Il Gateway non è più associato ad alcun tenant
- *Post-condizioni*:
  - Il Sistema riceve la conferma di esecuzione del decommissioning dal Gateway
  - Il Sistema smette di ricevere i dati dei sensori associati al Gateway
  - Il Sistema rimuove l'associazione del Gateway dal tenant
  - Il Sistema rende possibile un nuovo commissioning del Gateway
- *Scenario principale*:
  - Il Gateway esegue il decommissioning in base alle istruzioni ricevute
  - Il Gateway invia la conferma di esecuzione del decommissioning al Sistema

==== #uc() - Errore nel decommissioning <Errore-decommissioning>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di decommissioning dal Sistema
  - Il Gateway durante l'esecuzione del decommissioning ha riscontrato un errore
- *Post-condizioni*:
  - Il Sistema riceve la segnalazione di errore dal Gateway
  - Il Sistema notifica il Super-admin dell'errore riscontrato
  - Il Sistema annulla il decommissioning del Gateway
- *Scenario principale*:
  - Il Gateway riscontra un errore durante l'esecuzione del decommissioning
  - Il Gateway invia la segnalazione di errore al Sistema

// TODO: --- (DA CHIEDERE A M31) serve un log di sistema dove mettere cose come conferma/ricezione di comandi, errori nei comandi, etc...?
==== #uc() - Conferma riavvio <Conferma-comando-riavvio>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riavvio dal Sistema
  - Il Gateway si è riavviato correttamente
- *Post-condizioni*:
  - Il Sistema riceve la conferma di riavvio dal Gateway
  - Il Sistema considera il Gateway nuovamente raggiungibile
- *Scenario principale*:
  - Il Gateway si spegne e si riaccende
  - Il Gateway invia la conferma di riavvio al Sistema


==== #uc() - Errore nel riavvio <Errore-riavvio>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riavvio dal Sistema
  - Il Gateway non ha inviato al Cloud la conferma di riavvio entro un _timeout_ specifico
- *Post-condizioni*:
  - Il Sistema considera il Gateway come in stato d'errore, finché non riceve il comando di conferma di riavvio dal Gateway
  - Il Sistema notifica il tenant admin del fatto che il Gateway è in stato d'errore
- *Scenario principale*:
  - Il Gateway riscontra un errore durante il riavvio
  - Il Gateway non riesce a comunicare con il Sistema dopo il riavvio


==== #uc() - Conferma reset <Conferma-comando-reset>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di reset dal Sistema
  - Il Gateway ha reimpostato la configurazione di fabbrica
  - Il Gateway ha mantenuto le informazioni di commissioning
- *Post-condizioni*:
  - Il Sistema riceve la conferma di reset dal Gateway
- *Scenario principale*:
  - Il Gateway si reimposta alle impostazioni di fabbrica
  - Il Gateway invia la conferma di reset al Sistema

/*
Non serve che il gateway confermi l'autenticazione, è il sistema che notifica il gateway
==== #uc() - Conferma autenticazione <Conferma-comando-autenticazione>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha ricevuto una notifica di autenticazione avvenuta dal Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma ricezione dal Gateway
  - Il Gateway è autenticato nel Sistema
  - Il Sistema rende possibile il commissioning del Gateway
- *Scenario principale*:
  - Il Gateway riceve la conferma di autenticazione da parte del Sistema
  - Il Gateway memorizza lo stato di autenticazione
  - Il Gateway invia la conferma di ricezione al Sistema
*/

==== #uc() - Conferma sospensione invio dati gateway <Conferma-comando-sospensione-invio-dati>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di sospensione invio dati dal Sistema
  - Il Gateway ha sospeso l'invio dei dati dei sensori al Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma di sospensione invio dati dal Gateway
  - Il Sistema aggiorna lo stato del Gateway come "sospeso"
  - Il Sistema non è più "in ascolto" per i dati dei sensori associati al Gateway
  - Il Sistema non esegue più eventuali alert di mancata ricezione dei dati dal Gateway
- *Scenario principale*:
  - Il Gateway sospende l'invio dei dati dei sensori al Sistema
  - Il Gateway invia la conferma di sospensione al Sistema

==== #uc() - Conferma riattivazione invio dati gateway  <Conferma-comando-riattivazione-invio-dati>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riattivazione invio dati dal Sistema
  - Il Gateway ha ricominciato ad inviare i dati dei sensori al Sistema
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di conferma da parte del Gateway
  - Il Sistema ricomincia ad essere "in ascolto" per i dati dei sensori associati al Gateway
  - Il Sistema riprende ad eseguire eventuali alert di mancata ricezione dei dati dal Gateway, in caso quest'ultimo interrompa la comunicazione con l'infrastruttura Cloud
- *Scenario principale*:
  - Il Gateway riceve un comando di riattivazione
  - Il Gateway esegue il comando ricevuto e si riattiva
  - Il Gateway invia un comando di conferma al Cloud

==== #uc() - Conferma sospensione sensore <Conferma-comando-sospensione-sensore>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di sospensione di un determinato sensore dal Sistema
  - Il Gateway ha sospeso l'invio dei dati del sensore in questione al Sistema
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di conferma da parte del Gateway
  - Il Sistema non è più "in ascolto" per i dati del sensore sospeso
  - Il Sistema non esegue più eventuali alert di mancata ricezione dei dati dal sensore
- *Scenario principale*:
  - Il Gateway riceve un comando di sospensione di un determinato sensore
  - Il Gateway esegue il comando ricevuto e sospende il sensore specificato, interrompendo l'invio dei dati ricevuti da esso al Cloud
  - Il Gateway invia un comando di conferma al Cloud

==== #uc() - Conferma riattivazione sensore <Conferma-comando-riattivazione-sensore>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di riattivazione di un determinato sensore dal Sistema
  - Il Gateway ha ricominciato ad inviare i dati del sensore in questione al Sistema
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di conferma da parte del Gateway
  - Il Sistema ricomincia a ricevere i dati del sensore riattivato
  - Il Sistema riprende a eseguire eventuali alert di mancata ricezione dei dati dal sensore
- *Scenario principale*:
  - Il Gateway riceve un comando di riattivazione di un determinato sensore
  - Il Gateway esegue il comando ricevuto e riattiva il sensore, riprendendo l'invio dei dati ricevuti da esso al Cloud
  - Il Gateway invia un comando di conferma al Cloud

==== #uc() - Conferma modifica frequenza di invio dati <Conferma-comando-modifica-frequenza-invio-dati>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di modifica della frequenza di invio dati dal Sistema
  - Il Gateway ha modificato il valore del parametro di frequenza di invio dati
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di conferma da parte del Gateway
- *Scenario principale*:
  - Il Gateway riceve un comando di modifica del parametro di frequenza di invio dati
  - Il Gateway esegue il comando ricevuto e modifica il valore del parametro di frequenza di invio dati
  - Il Gateway invia un comando di conferma al Cloud

==== #uc() - Invio comando di hello <Invio-comando-hello>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso al Cloud
  - Il Gateway si è avviato e si è connesso per la prima volta al Cloud
  - Il Gateway possiede delle credenziali per l'autenticazione
  - Il Gateway possiede un identificativo univoco
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di hello dal Gateway
  - Il Sistema autentica il Gateway, associandolo all'identificativo ricevuto
- *Scenario principale*:
  - Il Gateway invia un messaggio di "hello" verso il Cloud contenente il proprio identificativo
- *Scenari alternativi*:
  - Il Sistema fallisce nell'autenticare il Gateway
  - Il Sistema non riconosce l'identificativo del Gateway ricevuto
- *Estensioni*:
  - #ref-uc(<Autenticazione-gateway-fallita>)
  - #ref-uc(<Identificativo-gateway-non-trovato>)

==== #uc() - Autenticazione Gateway fallita <Autenticazione-gateway-fallita>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha inviato un messaggio di hello al Cloud
  - Il Sistema non riesce ad autenticare il Gateway
- *Post-condizioni*:
  - Il Sistema rifiuta la connessione con il Gateway
- *Scenario principale*:
  - Il Gateway riceve il messaggio di autenticazione fallita dal Sistema


==== #uc() - Identificativo Gateway non trovato <Identificativo-gateway-non-trovato>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha inviato un messaggio di hello al Cloud
  - Il Sistema non riesce a trovare l'identificativo del Gateway
- *Post-condizioni*:
  - Il Sistema rifiuta la connessione con il Gateway
- *Scenario principale*:
  - Il Gateway riceve il messaggio di identificativo non trovato dal Sistema

==== #uc() - Invio dati crittografati <Invio-dati-crittografati>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha completato la fase di commissioning, perciò è associato ad un tenant
  - Il Gateway ha a disposizione dati raccolti dai sensori associati
- *Post-condizioni*:
  - Il Sistema riceve i dati crittografati da parte del Gateway
  - Il Sistema aggiorna il timestamp di ultima ricezione dati per il Gateway specifico e per i sensori coinvolti
- *Scenario principale*:
  - Il Gateway raccoglie i dati dal proprio buffer interno
  - Il Gateway utilizza la propria chiave per crittografare i dati raccolti dai sensori
  - Il Gateway invia i dati crittografati al Sistema
- *Scenari alternativi*:
  - L'invio dei dati crittografati fallisce
- *Estensioni*:
  - #ref-uc(<Invio-dati-fallito>)

==== #uc() - Invio dati fallito <Invio-dati-fallito>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway tenta di inviare dati crittografati al Sistema Cloud
  - Il Sistema Cloud non è raggiungibile dal Gateway
- *Post-condizioni*:
  - Il Sistema Cloud non riceve i dati crittografati dal Gateway perché non è raggiungibile
  - Il Sistema Cloud, dopo un timeout predefinito, considera il Gateway come in stato di errore
  - Il Sistema Cloud, dopo un timeout predefinito, crea un alert per gli utenti del tenant a cui è associato il Gateway
- *Scenario principale*:
  - Il Gateway rileva che il Sistema Cloud non è raggiungibile
  - Il Gateway memorizza i dati nel proprio buffer interno per un invio successivo
  - Il Gateway ritenta l'invio dei dati dopo un dato intervallo di tempo
  - Il Gateway elimina i dati più vecchi se il buffer è pieno

==== #uc() - Assenza prolungata dati da sensori <Assenza-prolungata-dati-sensori>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway non riceve dati da uno o più sensori associati per un intervallo di tempo superiore ad una soglia predefinita nel Cloud
- *Post-condizioni*:
  - Il Sistema rileva l'assenza di ricezione dati da parte di uno o più sensori
  - Il Sistema crea un alert per gli utenti del tenant a cui è associato il Gateway
- *Scenario principale*:
  - Il Gateway non riceve dati da uno o più sensori associati per un intervallo di tempo superiore ad una soglia predefinita
  - Il Gateway invia normalmente i dati crittografati al Sistema, con l'assenza di dati da sensori specifici

=== Attore principale - API Client
Di seguito sono riportati tutti gli use cases in cui l'attore principale è un generico API Client, ovvero un client che accede all'API esposta tramite una API Key di autenticazione prodotta da un Super Admin o un Tenant Admin.

==== #uc() - Richiesta dati real-time sensore <Richiesta-dati-real-time-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema restituisce dati real-time del sensore richiesto
- *Scenario principale*:
  - L'API Client richiede e riceve dati real-time del sensore specificato
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato storico disponibile per il sensore richiesto
  - Sensore non associato al tenant del API Client
- *Inclusioni*:
  - #ref-uc(<Ricezione-dati-real-time-sensore>)
- *Estensioni*:
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)
  - #ref-uc(<Sensore-non-associato-tenant-API-Client>)

===== #sub-uc() - Ricezione dati real-time sensore <Ricezione-dati-real-time-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - Il sensore richiesto esiste ed appartiene al tenant del API Client
- *Post-condizioni*:
  - Il Sistema recupera e restituisce i dati real-time del sensore richiesto come coppia valore-timestamp
- *Scenario principale*:
  - L'API Client riceve dati real-time del sensore richiesto come coppia valore-timestamp


==== #uc() - Richiesta storico dati sensore <Richiesta-storico-dati-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema restituisce lo storico dei dati del sensore specificato
- *Scenario principale*:
  - L'API Client richiede lo storico dei dati del sensore specificato
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato storico disponibile per il sensore richiesto
  - Sensore non associato al tenant del API Client
- *Inclusioni*:
  - #ref-uc(<Ricezione-storico-dati-sensore>)
- *Estensioni*:
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)
  - #ref-uc(<Sensore-non-associato-tenant-API-Client>)

===== #sub-uc() - Ricezione storico dati sensore <Ricezione-storico-dati-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - Il sensore richiesto esiste ed appartiene al tenant del API Client
- *Post-condizioni*:
  - Il Sistema recupera e restituisce lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - Viene restituito lo storico dei dati del sensore richiesto


==== #uc() - Sensore non trovato <Sensore-non-trovato>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - L'API Client ha richiesto i dati di un sensore che non esiste all'interno del Sistema
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client richiede i dati di un sensore non esistente


==== #uc() - Nessun dato disponibile per il sensore richiesto <Nessun-dato-disponibile-sensore-richiesto>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - L'API Client richiede dati di un sensore per cui non sono salvati o disponibili i dati real-time


==== #uc() - Sensore non associato al tenant del API Client <Sensore-non-associato-tenant-API-Client>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client richiede i dati di un sensore non associato al proprio tenant


==== #uc() - Autenticazione API Client <Autenticazione-API-Client>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client possiede delle credenziali di accesso
- *Post-condizioni*:
  - Il Sistema autentica l'API Client
- *Scenario principale*:
  - L'API Client invia le credenziali di autenticazione al Sistema
  - L'API Client riceve la conferma di autenticazione
- *Scenari alternativi*:
  - Le credenziali inviate dall'API Client non sono valide
  - Le credenziali inviate dall'API Client sono scadute
- *Estensioni*:
  - #ref-uc(<Credenziali-API-Client-errate>)
  - #ref-uc(<Credenziali-API-Client-scadute>)

==== #uc() - Credenziali API Client errate <Credenziali-API-Client-errate>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client ha inviato credenziali errate
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client invia delle credenziali non valide
  - L'API Client riceve l'errore che comunica l'invalidità delle credenziali

==== #uc() - Credenziali API Client scadute <Credenziali-API-Client-scadute>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client ha inviato credenziali scadute
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - L'API Client invia delle credenziali scadute
  - L'API Client riceve l'errore che comunica il fatto che le credenziali sono scadute

== Sistema Gateway - Lista dei casi d'uso
Per ogni caso d'uso viene considerato il Sistema Gateway come funzionante e raggiungibile.

=== Attore principale - Sensore simulato

==== #uc() - Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
- *Post-condizioni*
  - Il Sistema Gateway riceve un nuovo dato dal Sensore
  - Il Sistema Gateway normalizza e formatta il dato in un formato interno standardizzato
  - Il Sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera un nuovo dato simulato
  - Il Sensore invia il dato al Sistema Gateway
- *Scenario alternativo*:
  - Il sensore invia una quantità eccessiva di dati al Gateway
- *Estensioni*:
  - #ref-uc(<Invio-dati-eccessivi-gateway>)

==== #uc() - Invio di dati eccessivi al Gateway <Invio-dati-eccessivi-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
- *Post-condizioni*:
  - Il Sistema Gateway riceve più dati di quanti ne possa inviare al Cloud
  - Il Sistema Gateway salva i dati più recenti nel buffer interno
  - Il Sistema Gateway elimina i dati più vecchi per fare spazio ai nuovi dati
- *Scenario principale*:
  - Il Sensore invia una quantità di dati superiore alla capacità di invio del Sistema Gateway


==== #uc() - Invio di dato simulando Heart Rate Service <Invio-dato-heart-rate-service>
- *Generalizzazione*: Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Heart Rate Service (GATT)
- *Post-condizioni*:
  - Il Sistema Gateway riceve un nuovo dato di frequenza cardiaca dal Sensore
  - Il Sistema Gateway normalizza e formatta il dato in un formato interno standardizzato
  - Il Sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera un nuovo dato di frequenza cardiaca simulato
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway


==== #uc() - Invio di dato simulando Pulse Oximeter Service <Invio-dato-pulse-oximeter-service>
- *Generalizzazione*: Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Pulse Oximeter Service (GATT)
- *Post-condizioni*:
  - Il Sistema Gateway riceve le nuove misurazioni di saturazione di ossigeno nel sangue e frequenza del polso
  - Il Sistema Gateway normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera nuovi valori simulati di saturazione di ossigeno nel sangue e frequenza del polso
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway


==== #uc() - Invio di dato simulando ECG Custom Profile <Invio-dato-ecg-custom>
- *Generalizzazione*: Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato un profilo custom per invio di dati per l'elettrocardiogramma (ECG)
- *Post-condizioni*:
  - Il Sistema Gateway riceve i dati grezzi dell'ECG
  - Il Sistema Gateway normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera una sequenza di valori che simulano l'ECG
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway


==== #uc() - Invio di dato simulando Health Thermometer Service <Invio-dato-health-thermometer-service>
- *Generalizzazione*: Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Health Thermometer Service (GATT)
- *Post-condizioni*:
  - Il Sistema Gateway riceve il valore della temperatura corporea
  - Il Sistema Gateway normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema Gateway salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera un nuovo dato di temperatura corporea
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway


==== #uc() - Invio di dati simulando Environmental Sensing Service <Invio-dato-environmental-sensing-service>
- *Generalizzazione*: Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Environmental Sensing Service (GATT)
- *Post-condizioni*:
  - Il Sistema riceve i dati di temperatura ambientale e umidità
  - Il Sistema normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema salva i dati nel buffer ambientale
- *Scenario principale*:
  - Il Sensore genera nuovi valori per la temperatura (UUID 0x2A6E) e l'umidità (UUID 0x2A6F)
  - Il Sensore invia due notifiche GATT distinte al Sistema Gateway, una per la temperatura e una per l'umidità


=== Attore principale - Cloud
==== #uc() - Conferma autenticazione Gateway <Conferma-autenticazione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Cloud ha ricevuto un messaggio di Hello dal Sistema
  - Il Cloud ha autenticato con successo il Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma di autenticazione da parte del Cloud
  - Il Sistema attende di essere associato ad un tenant
- *Scenario principale*:
  - Il Cloud invia la conferma di autenticazione al Gateway


==== #uc() - Rifiuto autenticazione Gateway <Rifiuto-autenticazione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Cloud ha ricevuto un messaggio di Hello dal Sistema
  - Il Cloud non ha autenticato il Sistema con successo
- *Post-condizioni*:
  - Il Sistema Gateway riceve il rifiuto di autenticazione da parte del Cloud
  - Il Sistema Gateway entra in stato di errore
- *Scenario principale*:
  - Il Cloud invia il rifiuto di autenticazione al Gateway

==== #uc() - Assegnazione tenant al Gateway <Assegnazione-tenant-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway non è ancora associato ad un tenant
  - Il Tenant assegnato è valido
- *Post-condizioni*:
  - Il Sistema Gateway riceve l'assegnazione del tenant
  - Il Sistema Gateway è pronto per inviare dati crittografati
- *Scenario principale*:
  - Il Cloud invia al Sistema Gateway l'assegnazione del tenant al Sistema
  - Il Cloud invia al Sistema Gateway la chiave pubblica per la cifratura dei dati
- *Inclusioni*:
  - #ref-uc(<Invio-tenant-associato-gateway>)
  - #ref-uc(<Invio-chiave-cifratura-dati>)

===== #sub-uc() - Invio tenant associato al Gateway <Invio-tenant-associato-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway non è ancora associato ad un tenant
  - Il Tenant assegnato è valido
- *Post-condizioni*:
  - Il Sistema riceve e salva l'assegnazione del tenant
- *Scenario principale*:
  - Il Cloud invia l'assegnazione del tenant al Sistema

===== #sub-uc() - Invio chiave per la cifratura dei dati <Invio-chiave-cifratura-dati>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema è autenticato nel Cloud
  - Il Sistema non è ancora associato ad un tenant
  - Il Tenant assegnato è valido
- *Post-condizioni*:
  - Il Sistema riceve e salva la chiave per la cifratura dei dati
- *Scenario principale*:
  - Il Cloud invia la chiave pubblica per la cifratura dei dati al Sistema


==== #uc() - Riattivazione sensore simulato <Riattivazione-sensore-simulato>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sensore simulato è configurato nel Sistema Gateway
  - Il Sensore simulato è sospeso, ovvero il Sistema Gateway non invia al Cloud i dati relativi a tale Sensore
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di riattivazione del Sensore simulato dal Cloud
  - Il Sistema Gateway ricomincia a inviare al Cloud i dati relativi a tale Sensore
- *Scenario principale*:
  - Il Cloud invia il comando di riattivazione del Sensore simulato al Sistema Gateway


==== #uc() - Sospensione sensore simulato <Sospensione-sensore-simulato>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sensore simulato è configurato nel Sistema Gateway
  - Il Sensore simulato è attivato, il Sistema invia dati da quel Sensore
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di sospensione del Sensore simulato dal Cloud
  - Il Sistema Gateway smette di inviare al Cloud i dati relativi a tale Sensore
- *Scenario principale*:
  - Il Cloud invia il comando di sospensione del Sensore simulato al Sistema Gateway


==== #uc() - Riattivazione Gateway <Riattivazione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway è in stato di sospensione, ovvero non invia i dati dei propri sensori al Cloud
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di riattivazione dal Cloud
  - Il Sistema Gateway ricomincia l'invio dei dati di tutti i propri sensori al Cloud
- *Scenario principale*:
  - Il Cloud invia il comando di riattivazione al Sistema Gateway


==== #uc() - Sospensione Gateway <Sospensione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway è attivo, ovvero invia dati dei propri sensori
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di sospensione dal Cloud
  - Il Sistema Gateway smette di inviare i dati di tutti i propri sensori al Cloud
- *Scenario principale*:
  - Il Cloud invia il comando di sospensione al Sistema Gateway


==== #uc() - Riavvio Gateway <Riavvio-gateway-cloud>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di riavvio dal Cloud
  - Il Sistema Gateway si spegne e si riaccende, mantenendo le configurazioni e i dati salvati localmente
- *Scenario principale*:
  - Il Cloud invia il comando di riavvio al Sistema Gateway


==== #uc() - Modifica frequenza di invio dati Gateway <Modifica-frequenza-invio-dati-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di modifica della frequenza di invio dati dal Cloud
  - Il Sistema Gateway aggiorna la configurazione della frequenza di invio dati per i dati inviati al Cloud
- *Scenario principale*:
  - Il Cloud invia il comando di modifica della frequenza di invio dati al Sistema Gateway


==== #uc() - Decommissioning Gateway <Decommissioning-gateway-cloud>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il Sistema Gateway riceve il comando di decommissioning dal Cloud
  - Il Sistema Gateway cancella l'associazione al tenant
  - Il Sistema Gateway cancella tutte le configurazioni e i dati salvati localmente
- *Scenario principale*:
  - Il Cloud invia il comando di decommissioning al Sistema Gateway
- *Inclusioni*:
  - #ref-uc(<Reset-gateway-cloud>)
  - #ref-uc(<Disassociazione-tenant-gateway>)

===== #sub-uc() - Disassociazione tenant Gateway <Disassociazione-tenant-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
  - Il Sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il Sistema cancella l'associazione al tenant
  - Il Sistema cancella la chiave per la cifratura dei dati
- *Scenario principale*:
  - Il Cloud invia il comando di disassociazione del tenant al Sistema Gateway


==== #uc() - Reset Gateway <Reset-gateway-cloud>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è autenticato nel Cloud
- *Post-condizioni*:
  - Il Sistema riceve il comando di reset
  - Il Sistema cancella tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica
- *Scenario principale*:
  - Il Cloud invia il comando di reset al Sistema Gateway


//////////////////////////////////////////////////////////////////////////
//----------------------------    🫵REQUISITI🫵    -------------------------//
//////////////////////////////////////////////////////////////////////////
= Requisiti
I requisiti seguenti dovranno essere implementati entro il *27 marzo 2026*.
La nomenclatura adottata per i requisiti è la seguente: *R[Tipo]-[Numero progressivo]-[Rilevanza]*, dove:
- *Tipo*: indica la tipologia del requisito, può essere:
  - *F*: Funzionale
  - *NF*: Non funzionale
  - *D*: Dominio
  - *V*: Vincolo
- *Numero progressivo*: è un numero univoco che identifica il requisito all'interno della sua tipologia;
- *Rilevanza*: indica l'importanza del requisito, può essere:
  - *Obb*: obbligatorio
  - *Des*: desiderabile
  - *Opt*: opzionale
== Definizione requisito
Un requisito è la capacità necessaria ad un *Utente* per raggiungere un obiettivo specifico(_lato bisogno_) o la capacità necessaria ad un *Sistema* per rispondere ad un'aspettativa(_lato soluzione_). I requisiti sono classificati in:
- *Funzionali*: descrivono le funzionalità che il *Sistema* deve fornire per soddisfare le aspettative;
- *Non funzionali*: descrivono come il *Sistema* deve comportarsi, non riguardano una funzionalità specifica ma le proprietà del *Sistema*;
- *Dominio*: descrivono le regole e le politiche specifiche del dominio applicativo in cui il *Sistema* opera;
- *Vincoli*: descrivono le limitazioni imposte al *Sistema* durante lo sviluppo.

Inoltre un buon requisito deve essere *SMART*:
- *Specifico*: il requisito deve essere chiaro e preciso, evitando ambiguità;
- *Misurabile*: il requisito deve essere quantificabile o facilmente verificabile attraverso test o misurazioni;
- *_Achievable_* (Raggiungibile): il requisito deve essere realistico e fattibile entro i vincoli di tempo, risorse e tecnologie disponibili;
- *Rilevante*: il requisito deve essere importante per gli stakeholder e contribuire agli obiettivi del progetto;
- *Tracciabile nel tempo*: il requisito deve avere una scadenza o un periodo di validità

== Requisiti funzionali

#set par(justify: false)
#set table.cell(breakable: false)

// (https://forum.typst.app/t/how-to-apply-set-rules-to-custom-functions/1657)
// Cambia il parametro di default di ref-uc da qui in poi
#let ref-uc = ref-uc.with(section-prefix: "§")

#table(
  columns: (1fr, 4fr, 1.5fr),
  align: left,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [#rf()],
  [L'Utente non autenticato deve avere la possibilità di autenticarsi presso il Sistema],
  [#ref-uc(<Autenticazione-utente>)],

  [#rf()],
  [L'Utente non autenticato deve inserire la propria email per autenticarsi],
  [#ref-uc(<Inserimento-email-auth>)],

  [#rf()],
  [L'Utente non autenticato deve inserire la propria password per autenticarsi],
  [#ref-uc(<Autenticazione-utente>) \ #ref-uc(<Inserimento-password>)],

  [#rf()],
  [L'Utente non autenticato deve ricevere un messaggio di errore in caso di inserimento di credenziali errate],
  [#ref-uc(<Autenticazione-non-riuscita>)],

  [#rf()],
  [L'Utente non autenticato deve ricevere un messaggio di errore nel caso in cui tenti di accedere ad un account sospeso],
  [#ref-uc(<Account-sospeso>)],

  [#rf[?]],
  [L'Utente non autenticato, dopo aver inserito delle credenziali corrette per un account con 2FA attiva, deve riceve una mail con il codice di verifica],
  [#ref-uc(<Invio-codice-2FA>)],

  [#rf[?]],
  [L'Utente non autenticato, una volta autenticato con credenziali corrette per un account con 2FA attiva, deve poter richiedere il re-invio del codice di verifica nel caso in cui non lo abbia ricevuto o sia scaduto],
  [#ref-uc(<Re-invio-codice-2FA>)],

  [#rf[?]],
  [L'Utente non autenticato, dopo aver inserito delle credenziali corrette per un account con 2FA attiva, deve poter completare l'autenticazione a due fattori per autenticarsi nel Sistema],
  [#ref-uc(<Autenticazione-2FA>)],

  [#rf()],
  [L'Utente non autenticato deve poter inserire il codice di verifica ricevuto via mail per completare l'autenticazione, in caso sia richiesta la 2FA],
  [#ref-uc(<Inserimento-codice-2FA>)],

  [#rf()],
  [L'Utente non autenticato deve ricevere un messaggio di errore in caso il codice di verifica inserito per la 2FA sia errato o scaduto],
  [#ref-uc(<Codice-2FA-errato>)\ #ref-uc(<Codice-2FA-scaduto>)],

  [#rf()],
  [L'Utente non autenticato deve poter impostare la sua prima password, in seguito alla ricezione della mail contenente il link per la creazione della prima password],
  [#ref-uc(<Impostazione-password>)],

  [#rf()],
  [L'Utente non autenticato deve poter richiedere il link di reimpostazione della password via email nel caso in cui l'abbia dimenticata],
  [#ref-uc(<Password-dimenticata>)],

  [#rf()],
  [L'Utente non autenticato deve poter inserire l'indirizzo mail a cui è associato il proprio account per richiedere la reimpostazione della password],
  [#ref-uc(<Inserimento-indirizzo-email>)],

  [#rf()],
  [Il Sistema deve inviare la mail per la reimpostazione della password, contente il link di reimpostazione, all'Utente non autenticato che ne fa richiesta],
  [#ref-uc(<Invio-email-reimpostazione-password>)],

  [#rf()],
  [Il Sistema deve inviare la mail per la reimpostazione della password, contente il link di reimpostazione, all'Utente non autenticato che ne fa richiesta],
  [#ref-uc(<Invio-email-reimpostazione-password>)],

  [#rf()],
  [L'Utente autenticato deve poter visualizzare la lista dei sensori associati al proprio tenant],
  [#ref-uc(<Visualizzazione-lista-sensori-associati-tenant>)],

  [#rf()],
  [L'Utente autenticato visualizzando la lista dei sensori associati al proprio tenant, deve poter visualizzare l'identificativo di ciascun sensore nella lista],
  [#ref-uc(<Visualizzazione-identificativo-sensore-in-lista>)],

  // TODO: Da migliorare questo requisito sulla dashboard.
  [#rf()],
  [L'Utente autenticato deve poter visualizzare la sua dashboard personale],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>), #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)],

  [#rf()],
  [L'Utente autenticato, visualizzando la propria dashboard personale, deve visualizzare la lista degli alert relativi al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-lista-alert>)],

  [#rf()],
  [L'Utente autenticato, visualizzando la propria dashboard personale, deve visualizzare il numero dei sensori attivi e non attivi associati al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)],

  [#rf()],
  [L'Utente autenticato, visualizzando la propria dashboard personale, deve visualizzare il numero dei gateway attivi e non attivi associati al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)],

  [#rf()],
  [Il Sistema deve notificare l'Admin generico nel caso in cui il gateway a cui ha inviato dei comandi non sia raggiungibile],
  [#ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [Il Sistema deve mostrare un messaggio di errore all'Admin generico nel caso in cui venga inserita un'email già associata ad un altro Tenant User durante la registrazione di un nuovo Tenant User],
  [#ref-uc(<Email-gia-utilizzata>)],
  
  [#rf()],
  [L'Admin generico deve poter registrare un nuovo Tenant User all'interno del Sistema],
  [#ref-uc(<Registrazione-nuovo-tenant-user>)],

  [#rf()],
  [L'Admin generico, registrando un nuovo utente, deve inserire l'indirizzo email associato al nuovo Tenant User],
  [#ref-uc(<Inserimento-email>)],

  [#rf()],
  [Il Sistema deve inviare una mail al nuovo Tenant User contenente il link per impostare la propria password iniziale dopo la registrazione effettuata dall'Admin generico],
  [#ref-uc(<Invio-email-impostazione-password>)],
  
  [#rf()],
  [L'Admin generico deve poter sospendere l'accesso di un Tenant User al Sistema],
  [#ref-uc(<Sospensione-tenant-user>)],
  
  [#rf()],
  [Il Sistema deve richiedere conferma all'Admin generico prima di sospendere l'accesso di un Tenant User al Sistema],
  [#ref-uc(<Conferma-sospensione-tenant-user>)],

  [#rf()],
  [L'Admin generico deve poter riattivare l'accesso di un Tenant User al Sistema],
  [#ref-uc(<Riattivazione-tenant-user>)],

  [#rf()],
  [Il Sistema deve richiedere conferma all'Admin generico prima di riattivare l'accesso di un Tenant User al Sistema],
  [#ref-uc(<Conferma-riattivazione-tenant-user>)],

  [#rf()],
  [L'Admin generico deve poter eliminare un Tenant User al Sistema],
  [#ref-uc(<Eliminazione-tenant-user>)],

  [#rf()],
  [Il Sistema deve richiedere conferma all'Admin generico prima di eliminare un Tenant User al Sistema],
  [#ref-uc(<Conferma-eliminazione-tenant-user>)],

  [#rf()],
  [L'Admin generico deve poter visualizzare la lista di tutte le richieste di commissioning e decommissioning di gateway associate al proprio Tenant],
  [#ref-uc(<Visualizzazione-lista-richieste-commissioning-decommissioning-gateway>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista di tutte le richieste di commissioning e decommissioning di gateway, deve poter visualizzare lo stato della richiesta],
  [#ref-uc(<Visualizzazione-stato-richiesta-di-commissioning-decommissioning-gateway>)],

  [#rf()],
  [L'Admin generico deve poter visualizzare la lista di tutti gli utenti associati al proprio Tenant],
  [#ref-uc(<Visualizzazione-lista-utenti-tenant>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista di tutti gli utenti associati al proprio Tenant, deve poter vedere l'email di ciascun utente nella lista],
  [#ref-uc(<Visualizzazione-email-utente-lista>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista di tutti gli utenti associati al proprio Tenant, deve poter vedere lo stato (attivo/sospeso) di ciascun utente nella lista],
  [#ref-uc(<Visualizzazione-stato-utente-lista>)], 

  [#rf()],
  [L'Admin generico deve poter visualizzare la lista dei gateway associati al proprio Tenant],
  [#ref-uc(<Visualizzazione-lista-gateway-associati>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista dei gateway associati al proprio Tenant, deve visualizzare il nome del gateway nella lista],
  [#ref-uc(<Visualizzazione-nome-gateway-lista>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista dei gateway associati al proprio Tenant, deve visualizzare lo stato del gateway nella lista],
  [#ref-uc(<Visualizzazione-stato-gateway-lista>)],

  [#rf()],
  [L'Admin generico deve poter visualizzare un gateway associato al proprio Tenant nel dettaglio],
  [#ref-uc(<Visualizzazione-gateway-associato>)],

  [#rf()],
  [L'Admin generico, visualizzando un gateway associato al proprio Tenant nel dettaglio, deve visualizzare il nome del gateway],
  [#ref-uc(<Visualizzazione-nome-gateway-associato>)],

  [#rf()],
  [L'Admin generico, visualizzando un gateway associato al proprio Tenant nel dettaglio, deve visualizzare lo stato del gateway],
  [#ref-uc(<Visualizzazione-stato-gateway-associato>)],

  [#rf()],
  [L'Admin generico, visualizzando un gateway associato al proprio Tenant nel dettaglio, deve visualizzare i sensori collegati al gateway],
  [#ref-uc(<Visualizzazione-sensori-collegati-gateway-associato>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista dei sensori collegati al gateway, deve poter visualizzare per ogni sensore l'identificativo],
  [#ref-uc(<Visualizzazione-identificativo-sensore-collegato-gateway-associato-in-lista>)],

  // TODO: Creare API key dovrebbe essere req. obb? 
  [#rf[?]],
  [L'Admin generico deve poter registrare una nuova API key associata al proprio Tenant],
  [#ref-uc(<Registrazione-nuova-api-key>)],
  
  [#rf[?]],
  [L'Admin generico, registrando una nuova API key, deve inserire un nome identificativo per la chiave],
  [#ref-uc(<Inserimento-nome-api-key>)],

  [#rf[?]],
  [L'Admin generico, registrando una nuova API key, deve inserire la data di scadenza della chiave],
  [#ref-uc(<Inserimento-scadenza-api-key>)],

  [#rf[?]],
  [Il Sistema deve mostrare un messaggio di errore se l'Admin generico inserisce un nome identificativo già esistente per una API key durante la registrazione di una nuova chiave],
  [#ref-uc(<Registrazione-nuova-api-key>), #ref-uc(<Inserimento-nome-api-key>), #ref-uc(<Nome-api-key-gia-utilizzato>)],

  [#rf[?]],
  [Il Sistema deve mostrare un messaggio di errore se l'Admin generico inserisce una data di scadenza già passata durante la registrazione di una nuova API key],
  [#ref-uc(<Registrazione-nuova-api-key>), #ref-uc(<Inserimento-scadenza-api-key>), #ref-uc(<Scadenza-api-key-data-passata>)],

  [#rf[?]],
  [L'Admin generico deve poter visualizzare la lista di tutte le API key associate al proprio Tenant],
  [#ref-uc(<Visualizzazione-lista-api-key>)],

  [#rf[?]],
  [L'Admin generico, visualizzando la lista di tutte le API key associate al proprio Tenant, deve poter vedere il nome dell'API key],
  [#ref-uc(<Visualizzazione-lista-api-key>), #ref-uc(<Visualizzazione-nome-singola-api-key-lista>)],

  [#rf[?]],
  [L'Admin generico, visualizzando la lista di tutte le API key associate al proprio Tenant, deve poter vedere la data di creazione dell'API key],
  [#ref-uc(<Visualizzazione-lista-api-key>), #ref-uc(<Visualizzazione-data-creazione-singola-api-key-lista>)],

  [#rf[?]],
  [L'Admin generico, visualizzando la lista di tutte le API key associate al proprio Tenant, deve poter vedere la data di scadenza dell'API key],
  [#ref-uc(<Visualizzazione-lista-api-key>), #ref-uc(<Visualizzazione-data-scadenza-singola-api-key-lista>)],

  [#rf[?]],
  [L'Admin generico deve poter visualizzare una API key associata al proprio Tenant nel dettaglio],
  [#ref-uc(<Visualizzazione-dettagli-api-key>)],

  [#rf[?]],
  [L'Admin generico, visualizzando una API key associata al proprio Tenant nel dettaglio, deve visualizzare il nome dell'API key],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Visualizzazione-nome-api-key>)],

  [#rf[?]],
  [L'Admin generico, visualizzando una API key associata al proprio Tenant nel dettaglio, deve visualizzare la data di creazione dell'API key],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Visualizzazione-data-creazione-api-key>)],

  [#rf[?]],
  [L'Admin generico, visualizzando una API key associata al proprio Tenant nel dettaglio, deve visualizzare la data di scadenza dell'API key],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Visualizzazione-data-scadenza-api-key>)],

  [#rf[?]],
  [L'Admin generico, visualizzando una API key associata al proprio Tenant nel dettaglio, deve visualizzare un grafico che mostri l'utilizzo dell'API key],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Grafico-utilizzo-api-key>)],

  [#rf[?]],
  [L'Admin generico deve poter eliminare una API key associata al proprio Tenant],
  [#ref-uc(<Eliminazione-api-key>)],

  [#rf[?]],
  [Il Sistema deve richiedere conferma all'Admin generico prima di eliminare una API key associata al proprio Tenant],
  [#ref-uc(<Eliminazione-api-key>), #ref-uc(<Conferma-eliminazione-api-key>)],

  [#rf()],
  [L'Admin generico deve poter visualizzare la lista di tutti gli audit log relativi al proprio Tenant],
  [#ref-uc(<Visualizzazione-audit-log>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista degli audit log, deve visualizzare il nome dell'utente che ha generato l'evento],
  [#ref-uc(<Visualizzazione-audit-log>), #ref-uc(<Visualizzazione-nome-utente-audit-log>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista degli audit log, deve poter vedere il tipo di azione eseguita in ogni evento],
  [#ref-uc(<Visualizzazione-audit-log>), #ref-uc(<Visualizzazione-tipo-azione-audit-log>)],

  [#rf()],
  [L'Admin generico, visualizzando la lista degli audit log, deve visualizzare il timestamp dell'evento],
  [#ref-uc(<Visualizzazione-audit-log>), #ref-uc(<Visualizzazione-timestamp-azione-audit-log>)],

  [#rf()],
  [L'Admin generico deve poter filtrare gli audit log in base al tipo di azione eseguita],
  [#ref-uc(<Filtraggio-log-per-tipologia>)],

  [#rf()],
  [L'Admin generico deve poter filtrare gli audit log in base ad un intervallo temporale],
  [#ref-uc(<Filtraggio-log-per-intervallo-temporale>)],

  [#rf()],
  [L'Admin generico deve poter filtrare gli audit log in base all'utente che ha generato l'evento],
  [#ref-uc(<Filtraggio-log-per-utente>)],

  [#rf()],
  [L'Admin generico deve poter esportare gli audit log in un file testuale scaricabile],
  [#ref-uc(<Esportazione-log>)],

  // TODO: Da migliorare questi requisiti sulla dashboard.
  [#rf()],
  [Il Tenant Admin deve poter visualizzare la sua dashboard personale], 
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>)],

  [#rf()],
  [Il Tenant Admin, visualizzando la sua dashboard personale, deve visualizzare il numero di sensori attivi e non associati al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)],

  [#rf()],
  [Il Tenant Admin, visualizzando la sua dashboard personale, deve visualizzare il numero di gateway attivi e non associati al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)],

  [#rf()],
  [Il Tenant Admin, visualizzando la sua dashboard personale, deve visualizzare la lista degli alert relativi al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-lista-alert>)],

  [#rf()],
  [Il Tenant Admin, visualizzando la sua dashboard personale, deve visualizzare il numero di API key valide e scadute],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-numero-api-key-valide-scadute>)],

  [#rf()],
  [Il Tenant Admin, visualizzando la sua dashboard personale, deve visualizzare lo stato delle richieste di commissioning gateway associate al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-stato-richieste-commissioning-gateway>)],

  [#rf()],
  [Il Tenant Admin, visualizzando la sua dashboard personale, deve visualizzare lo stato delle richieste di decommissioning gateway associate al proprio Tenant],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-stato-richieste-decommissioning-gateway>)],

  [#rf()],
  [Il Tenant Admin deve poter creare una nuova richiesta di commissioning gateway],
  [#ref-uc(<Creazione-richiesta-commissioning-gateway>)],

  [#rf()],
  [Il Tenant Admin deve poter creare una nuova richiesta di decommissioning gateway],
  [#ref-uc(<Creazione-richiesta-decommissioning-gateway>), #ref-uc(<Selezione-gateway-decommissioning-tenant-admin>)],
  
  [#rf()],
  [Il Tenant Admin deve poter eliminare una richiesta di commissioning o decommissioning gateway precedentemente creata, purché essa non sia stata ancora evasa],
  [#ref-uc(<Eliminazione-richiesta-commissioning-decommissioning-gateway>)],

  [#rf()],
  [Il Sistema deve richiedere conferma al Tenant Admin prima di eliminare una richiesta di commissioning o decommissioning gateway],
  [#ref-uc(<Eliminazione-richiesta-commissioning-decommissioning-gateway>), #ref-uc(<Conferma-eliminazione-richiesta-commissioning-decommissioning>)],

  [#rf()],
  [Il Tenant Admin deve poter sospendere l'invio di dati da parte di un sensore appartenente al proprio Tenant],
  [#ref-uc(<Sospensione-sensore-tenant-admin>), #ref-uc(<Selezione-sensore>)],

  [#rf()],
  [Il Sistema deve notificare che non è stato possibile sospendere l'invio di dati da parte del sensore selezionato poichè il gateway a cui esso è associato è in stato di errore],
  [#ref-uc(<Sospensione-sensore-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [Il Tenant Admin deve poter riattivare l'invio di dati da parte di un sensore appartenente al proprio Tenant],
  [#ref-uc(<Riattivazione-sensore-tenant-admin>), #ref-uc(<Selezione-sensore>)],

  [#rf()],
  [Il Sistema deve notificare che non è stato possibile riattivare l'invio di dati da parte del sensore selezionato poichè il gateway a cui esso è associato è in stato di errore],
  [#ref-uc(<Riattivazione-sensore-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [Il Tenant Admin deve poter sospendere l'invio di dati da parte di un gateway appartenente al proprio Tenant],
  [#ref-uc(<Sospensione-gateway-tenant-admin>), #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)],

  [#rf()],
  [Il Sistema deve notificare che non è stato possibile sospendere l'invio di dati da parte del gateway selezionato poichè esso è in stato di errore],
  [#ref-uc(<Sospensione-gateway-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [Il Tenant Admin deve poter riattivare l'invio di dati da parte di un gateway appartenente al proprio Tenant],
  [#ref-uc(<Riattivazione-gateway-tenant-admin>), #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)],

  [#rf()],
  [Il Sistema deve notificare che non è stato possibile riattivare l'invio di dati da parte del gateway selezionato poichè esso è in stato di errore],
  [#ref-uc(<Riattivazione-gateway-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [Il Tenant Admin deve poter riavviare un gateway appartenente al proprio Tenant],
  [#ref-uc(<Riavvio-gateway-tenant-admin>), #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)],

  [#rf()],
  [Il Sistema deve notificare che non è stato possibile riavviare il gateway selezionato poichè esso è in stato di errore],
  [#ref-uc(<Riavvio-gateway-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  //Attore: Gateway, Sistema: Cloud
  //TODO: controllare che requisiti siano atomici
  [#rf()],
  [Il Gateway simulato deve poter confermare al Cloud che il processo di commissioning è stato completato con successo],
  [#ref-uc(<Conferma-comando-commissioning>)],

  [#rf()],
  [Il Gateway simulato deve cominciare ad inviare i dati una volta completato il processo di commissioning],
  [#ref-uc(<Conferma-comando-commissioning>)],

  [#rf()],
  [Il Gateway simulato deve inviare al Cloud la presenza di errori durante il processo di commissioning],
  [#ref-uc(<Errore-commissioning>)],

  [#rf()],
  [Il Gateway simulato deve poter confermare al Cloud che il processo di decommissioning è stato completato con successo],
  [#ref-uc(<Conferma-comando-decommissioning>)],

  [#rf()],
  [Il Gateway simulato, dopo aver eseguito il decommissioning, deve rimuovere l'associazione con il tenant, la chiave di cifratura e interrompere l'invio dei dati IoT al Cloud],
  [#ref-uc(<Conferma-comando-decommissioning>)],

  [#rf()],
  [Il Gateway simulato, dopo aver eseguito il decommissioning, deve ammettere un nuovo commissioning],
  [#ref-uc(<Conferma-comando-decommissioning>)],

  [#rf()],
  [Il Gateway simulato deve confermare al Cloud la corretta esecuzione del riavvio in seguito al comando ricevuto dallo stesso],
  [#ref-uc(<Conferma-comando-riavvio>)],

  [#rf()],
  [Il Cloud deve accorgersi se dopo un comando di riavvio presso un Gateway simulato egli non risponde dopo un timeout specifico. Di conseguenza deve considerare il Gateway in stato di errore e notificare gli utenti del tenant associato],
  [#ref-uc(<Errore-riavvio>)],

  [#rf()],
  [Il Gateway simulato deve inviare la conferma di reset avvenuto con successo al Cloud, dopo aver reimpostato correttamente tutte le configurazioni e i dati locali alle impostazioni di fabbrica],
  [#ref-uc(<Conferma-comando-reset>)],

  [#rf()],
  [Il Gateway simulato deve poter confermare la sospensione di invio dei dati al Cloud in seguito al comando di sospensione ricevuto dallo stesso],
  [#ref-uc(<Conferma-comando-sospensione-invio-dati>)],

  [#rf()],
  [Il Gateway simulato deve poter confermare la riattivazione dell'invio dei dati al Cloud in seguito al comando di riattivazione ricevuto dallo stesso],
  [#ref-uc(<Conferma-comando-riattivazione-invio-dati>)],

  [#rf()],
  [Il Gateway simulato deve poter confermare la sospensione dell'invio dei dati di un sensore simulato specifico in seguito al comando di sospensione ricevuto dal Cloud],
  [#ref-uc(<Conferma-comando-sospensione-sensore>)],

  [#rf()],
  [Il Gateway simulato deve poter confermare la riattivazione dell'invio dei dati di un sensore simulato specifico in seguito al comando di riattivazione ricevuto dal Cloud],
  [#ref-uc(<Conferma-comando-riattivazione-sensore>)],

  [#rf()],
  [Il Gateway simulato deve poter inviare la conferma del cambiamento della frequenza di invio dati al Cloud in seguito al comando di modifica ricevuto dallo stesso],
  [#ref-uc(<Conferma-comando-modifica-frequenza-invio-dati>)],

  [#rf()],
  [Il Gateway simulato, all'avvio, deve inviare un comando di hello al Cloud per autenticarsi. Il comando deve contenere il proprio ID univoco],
  [#ref-uc(<Invio-comando-hello>)],

  [#rf()],
  [Il Cloud deve rifiutare l'autenticazione del Gateway in caso quest'ultimo invii credenziali errate],
  [#ref-uc(<Autenticazione-gateway-fallita>)],

  [#rf()],
  [Il Cloud deve rifiutare l'autenticazione del Gateway in caso l'ID univoco inviato dal Gateway non sia presente nel proprio database],
  [#ref-uc(<Identificativo-gateway-non-trovato>)],

  [#rf()],
  [Il Gateway simulato deve poter inviare i dati dei sensori al Cloud in modo crittografato utilizzando la chiave pubblica ricevuta dal Cloud durante l'assegnazione del tenant],
  [#ref-uc(<Invio-dati-crittografati>)],

  [#rf()],
  [Il Gateway simulato deve raccogliere i dati dei sensori all'interno di un buffer interno prima di inviarli al Cloud ed eliminare i dati più vecchi in caso di overflow del buffer],
  [#ref-uc(<Invio-dati-crittografati>)],

  [#rf()],
  [Il Gateway simulato deve ritentare l'invio dei dati al Cloud in caso non sia raggiungibile, mantenendo i dati nel buffer fino al successo dell'invio],
  [#ref-uc(<Invio-dati-fallito>)],

  [#rf()],
  [Il Cloud deve considerare il Gateway in stato di errore nel caso in cui non riceva dati da esso per un periodo di tempo superiore ad una soglia predefinita, notificando gli utenti del tenant associato],
  [#ref-uc(<Invio-dati-fallito>)],

  [#rf()],
  [Il Cloud deve rilevare l'assenza di dati da un sensore specifico di un Gateway simulato allo scadere di un timeout predefinito e notificare gli utenti del tenant associato],
  [#ref-uc(<Assenza-prolungata-dati-sensori>)],

  //Attore: API Client, Sistema: Cloud
  [#rf()],
  [L'API Client deve poter richiedere i dati real-time di un sensore specifico associato al proprio tenant],
  [#ref-uc(<Richiesta-dati-real-time-sensore>)],

  [#rf()],
  [L'API Client dopo aver richiesto i dati real-time di un sensore specifico deve poter ricevere tali dati in forma coppia valore-timestamp],
  [#ref-uc(<Ricezione-dati-real-time-sensore>)],

  [#rf()],
  [L'API Client deve poter richiedere lo storico dei dati di un sensore appartenente al proprio tenant],
  [#ref-uc(<Richiesta-storico-dati-sensore>)],

  [#rf()],
  [L'API Client dopo aver richiesto lo storico dei dati di un sensore specifico deve poter ricevere tali dati in forma coppia valore-timestamp],
  [#ref-uc(<Ricezione-storico-dati-sensore>)],

  [#rf()],
  [L'API Client deve ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non esistente],
  [#ref-uc(<Sensore-non-trovato>)],

  [#rf()],
  [L'API Client deve ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore per cui non sono disponibili dati],
  [#ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)],

  [#rf()],
  [L'API Client deve ricevere un messaggio di errore nel caso in cui richieda i dati di un sensore non associato al proprio tenant],
  [#ref-uc(<Sensore-non-associato-tenant-API-Client>)],

  [#rf()],
  [L'API Client deve potersi autenticare nel Sistema utilizzando un'API Key valida],
  [#ref-uc(<Autenticazione-API-Client>)],

  [#rf()],
  [L'API Client deve ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione non siano valide],
  [#ref-uc(<Credenziali-API-Client-errate>)],

  [#rf()],
  [L'API Client deve ricevere un messaggio di errore nel caso in cui le credenziali inviate per l'autenticazione siano scadute],
  [#ref-uc(<Credenziali-API-Client-scadute>)],

  //Attore: Sensore simulato, Sistema: Gateway
  [#rf()],
  [Il Sensore simulato deve inviare i dati rilevati al Gateway a cui è collegato],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [Il Sistema Gateway alla ricezione dei dati dei sensori deve normalizzarli],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [Il Sistema Gateway alla ricezione dei dati dei sensori deve formattarli secondo un formato interno standardizzato],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [Il Sistema Gateway alla ricezione dei dati dei sensori deve salvarli in un buffer interno prima di inviarli al Cloud],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [In caso un o più Sensori simulati inviino una quantità di dati superiore alla capacità di invio del Gateway verso il Cloud, il Gateway deve salvare i dati più recenti nel buffer interno eliminando i dati più vecchi per fare spazio ai nuovi dati],
  [#ref-uc(<Invio-dati-eccessivi-gateway>)],

  [#rf()],
  [Il Sensore simulato deve poter inviare al Gateway i dati relativi al servizio Heart Rate Service (GATT)],
  [#ref-uc(<Invio-dato-heart-rate-service>)],

  [#rf()],
  [Il Sensore simulato deve poter inviare al Gateway i dati relativi al servizio Pulse Oximeter Service (GATT)],
  [#ref-uc(<Invio-dato-pulse-oximeter-service>)],

  [#rf()],
  [Il Sensore simulato deve poter inviare al Gateway i dati relativi ad un profilo custom per l'elettrocardiogramma (ECG)],
  [#ref-uc(<Invio-dato-ecg-custom>)],

  [#rf()],
  [Il Sensore simulato deve poter inviare al Gateway i dati relativi al servizio Health Thermometer Service (GATT)],
  [#ref-uc(<Invio-dato-health-thermometer-service>)],

  [#rf()],
  [Il Sensore simulato deve poter inviare al Gateway i dati relativi al servizio Environmental Sensing Service (GATT)],
  [#ref-uc(<Invio-dato-environmental-sensing-service>)],

  //Attore: Cloud, Sistema: Gateway
  [#rf()],
  [Il Cloud deve poter inviare la conferma di autenticazione avvenuta correttamente al Gateway, in seguito ad un tentativo di autenticazione andato a buon fine],
  [#ref-uc(<Conferma-autenticazione-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare il rifiuto di autenticazione al Gateway, in seguito ad un tentativo di autenticazione fallito],
  [#ref-uc(<Rifiuto-autenticazione-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway, non commissionato, l'assegnazione del tenant, in seguito ad un commissioning andato a buon fine],
  [#ref-uc(<Assegnazione-tenant-gateway>) #ref(<Invio-tenant-associato-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway, non commissionato, la chiave pubblica per la cifratura dei dati, in seguito ad un commissioning andato a buon fine],
  [#ref-uc(<Assegnazione-tenant-gateway>) #ref-uc(<Invio-chiave-cifratura-dati>), #ref(<Invio-tenant-associato-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway sospeso il comando di riattivazione di un Sensore simulato sospeso specifico. In seguito alla ricezione del comando il Gateway deve ricominciare ad inviare dati IoT crittografati relativi a tale Sensore],
  [#ref-uc(<Riattivazione-sensore-simulato>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway il comando di sospensione di un Sensore simulato non sospeso specifico. In seguito alla ricezione del comandi il Gateway deve interrompere l'invio di dati IoT crittografati relativi a tale Sensore],
  [#ref-uc(<Sospensione-sensore-simulato>)],

  [#rf()],
  [Il Cloud deve poter inviare, al Gateway sospeso, il comando di riattivazione. In seguito alla ricezione del comando il Gateway deve ricominciare l'invio di tutti i dati IoT crittografati],
  [#ref-uc(<Riattivazione-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare, al Gateway attivo, il comando di sospensione. In seguito alla ricezione del comando il Gateway deve interrompere l'invio di tutti i dati IoT crittografati],
  [#ref-uc(<Sospensione-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway il comando di riavvio. In seguito alla ricezione del comando il Gateway deve spegnersi e riaccendersi, mantenendo le configurazioni e i dati salvati localmente],
  [#ref-uc(<Riavvio-gateway-cloud>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway il comando di modifica della frequenza di invio dati. In seguito alla ricezione del comando il Gateway deve aggiornare la configurazione della frequenza di invio dati per i dati inviati al Cloud, così da inviare un dato ogni intervallo di tempo specificato nel comando],
  [#ref-uc(<Modifica-frequenza-invio-dati-gateway>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway il comando di decommissioning. In seguito alla ricezione del comando il Gateway deve cancellare l'associazione al tenant, la chiave di cifratura e deve eseguire un reset. Dopo aver eseguito il decommissioning il Gateway deve ammettere un nuovo commissioning],
  [#ref-uc(<Decommissioning-gateway-cloud>) #ref-uc(<Disassociazione-tenant-gateway>) #ref-uc(<Reset-gateway-cloud>)],

  [#rf()],
  [Il Cloud deve poter inviare al Gateway il comando di reset. In seguito alla ricezione del comando il Gateway deve cancellare tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica],
  [#ref-uc(<Reset-gateway-cloud>)],


// ============================================
// REQUISITI UTENTE AUTENTICATO (UC16-UC30)
// ============================================

[#rf()],
  [L'Utente autenticato deve poter effettuare il logout dal Sistema],
  [#ref-uc(<Logout>)],

[#rf()],
  [Il Sistema, a seguito del logout, deve registrare l'evento negli audit log salvando nome utente, timestamp e azione eseguita],
  [#ref-uc(<Logout>)],

[#rf()],
  [L'Utente autenticato deve poter modificare la propria password],
  [#ref-uc(<Modifica-password>)],

[#rf()],
  [L'Utente autenticato, per modificare la password, deve inserire la vecchia password],
  [#ref-uc(<Inserimento-vecchia-password>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se la vecchia password inserita non è corretta durante la modifica password],
  [#ref-uc(<Vecchia-password-non-corretta>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare i dettagli di un singolo alert],
  [#ref-uc(<Visualizzazione-alert>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert, deve poter vedere il titolo dell'alert],
  [#ref-uc(<Visualizzazione-titolo-alert>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert, deve poter vedere la descrizione dell'alert],
  [#ref-uc(<Visualizzazione-descrizione-alert>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare gli alert relativi alla mancata ricezione dati da un Gateway],
  [#ref-uc(<Mancata-ricezione-gateway>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert di mancata ricezione dati da Gateway, deve poter vedere l'identificativo del gateway],
  [#ref-uc(<Visualizzazione-id-gateway-alert>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert di mancata ricezione dati da Gateway, deve poter vedere il timestamp dell'ultimo dato ricevuto],
  [#ref-uc(<Visualizzazione-timestamp-ultimo-dato-gateway-alert>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert di mancata ricezione dati da Gateway, deve poter vedere il tempo di inattività],
  [#ref-uc(<Visualizzazione-tempo-inattivita-gateway-alert>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare gli alert relativi alla mancata ricezione dati da un sensore],
  [#ref-uc(<Mancata-ricezione-sensore>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert di mancata ricezione dati da sensore, deve poter vedere l'identificativo del sensore],
  [#ref-uc(<Visualizzazione-id-sensore-alert>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert di mancata ricezione dati da sensore, deve poter vedere il timestamp dell'ultimo dato ricevuto],
  [#ref-uc(<Visualizzazione-timestamp-ultimo-dato-sensore-alert>)],

[#rf()],
  [L'Utente autenticato, visualizzando un alert di mancata ricezione dati da sensore, deve poter vedere il tempo di inattività],
  [#ref-uc(<Visualizzazione-tempo-inattivita-sensore-alert>)],

[#rf()],
  [L'Utente autenticato deve poter selezionare un sensore dalla lista dei sensori associati al proprio tenant],
  [#ref-uc(<Selezione-sensore>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare i dati in tempo reale di un sensore selezionato],
  [#ref-uc(<Visualizzazione-dati-real-time-sensore>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare i dati real-time del sensore attraverso un grafico time-series con assi etichettati],
  [#ref-uc(<Visualizzazione-grafico-real-time-sensore>)],

[#rf()],
  [Il grafico dei dati real-time deve aggiornarsi automaticamente alla ricezione di nuovi dati dal Gateway],
  [#ref-uc(<Visualizzazione-grafico-real-time-sensore>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare lo storico dei dati di un sensore selezionato],
  [#ref-uc(<Visualizzazione-storico-dati-sensore>)],

[#rf()],
  [L'Utente autenticato deve poter visualizzare lo storico dei dati del sensore attraverso un grafico time-series con assi etichettati],
  [#ref-uc(<Visualizzazione-grafico-storico-sensore>)],

[#rf()],
  [L'Utente autenticato deve poter filtrare lo storico dei dati del sensore per intervallo temporale],
  [#ref-uc(<Filtraggio-dati-storico-sensore>)],

[#rf()],
  [Il Sistema deve visualizzare il grafico dei dati del sensore filtrato per l'intervallo temporale selezionato],
  [#ref-uc(<Visualizzazione-grafico-filtrato-temporale-sensore>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se l'intervallo temporale inserito non è valido],
  [#ref-uc(<Intervallo-temporale-non-valido>)],

[#rf()],
  [L'Utente autenticato deve poter filtrare i dati del sensore per intervallo di valori],
  [#ref-uc(<Filtraggio-dati-sensore-intervallo-valori>)],

[#rf()],
  [Il Sistema deve visualizzare il grafico dei dati del sensore filtrato per l'intervallo di valori selezionato],
  [#ref-uc(<Visualizzazione-grafico-filtrato-valori-sensore>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se l'intervallo di valori inserito non è valido],
  [#ref-uc(<Intervallo-di-valori-non-valido>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio informativo se non sono disponibili dati per il sensore selezionato],
  [#ref-uc(<Dati-non-disponibili-sensore-selezionato>)],

// ============================================
// REQUISITI SUPER ADMIN (UC72-UC125)
// ============================================

[#rf()],
  [Il Super Admin deve poter creare un nuovo tenant nel Sistema],
  [#ref-uc(<Creazione-tenant>)],

[#rf()],
  [Il Super Admin, creando un nuovo tenant, deve inserire il nome del tenant],
  [#ref-uc(<Creazione-tenant>)],

[#rf()],
  [Il Super Admin, creando un nuovo tenant, deve specificare l'accettazione o meno della clausola di impersonificazione],
  [#ref-uc(<Clausola-impersonificazione>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se il nome del tenant inserito è già in uso],
  [#ref-uc(<Nome-tenant-gia-utilizzato>)],

[#rf()],
  [Il Super Admin deve poter eliminare un tenant esistente dal Sistema],
  [#ref-uc(<Eliminazione-tenant>)],

[#rf()],
  [Il Sistema deve richiedere conferma al Super Admin prima di eliminare un tenant],
  [#ref-uc(<Selezione-e-conferma-tenant-da-eliminare>)],

[#rf()],
  [Il Sistema, prima di eliminare un tenant, deve eseguire il decommissioning di tutti i Gateway associati],
  [#ref-uc(<Esecuzione-decommissioning-gateway-associati-tenant>)],

[#rf()],
  [Il Sistema, eliminando un tenant, deve eliminare tutti i dati e gli utenti associati al tenant],
  [#ref-uc(<Eliminazione-dati-utenti-associati-tenant>)],

[#rf()],
  [Il Sistema deve completare l'eliminazione del tenant dopo aver rimosso dati, utenti e Gateway associati],
  [#ref-uc(<Esecuzione-eliminazione-tenant>)],

[#rf()],
  [Il Sistema deve notificare il Super Admin se il decommissioning di un Gateway fallisce durante l'eliminazione del tenant],
  [#ref-uc(<Decommissioning-gateway-fallito>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la propria dashboard],
  [#ref-uc(<Visualizzazione-dashboard-super-admin>)],

[#rf()],
  [Il Super Admin, visualizzando la dashboard, deve poter vedere lo stato globale dei gateway (attivi/non attivi)],
  [#ref-uc(<Visualizzazione-stato-globale-dei-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando la dashboard, deve poter vedere il numero totale di tenant nel Sistema],
  [#ref-uc(<Visualizzazione-numero-di-tenant>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la lista di tutti i Gateway registrati nel Sistema],
  [#ref-uc(<Visualizzazione-lista-gateway-super-admin>)],

[#rf()],
  [Il Super Admin, visualizzando la lista dei Gateway, deve poter vedere l'identificativo univoco di ogni gateway],
  [#ref-uc(<Visualizzazione-identificativo-univoco-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando la lista dei Gateway, deve poter vedere lo stato di autenticazione di ogni gateway],
  [#ref-uc(<Visualizzazione-stato-autenticazione-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando la lista dei Gateway, deve poter vedere lo stato operativo di ogni gateway],
  [#ref-uc(<Visualizzazione-stato-operativo-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando la lista dei Gateway, deve poter vedere il tenant associato a ogni gateway],
  [#ref-uc(<Visualizzazione-tenant-associato-gateway>)],

[#rf()],
  [Il Super Admin deve poter visualizzare i dettagli di un singolo Gateway],
  [#ref-uc(<Visualizzazione-gateway-super-admin>)],

[#rf()],
  [Il Super Admin deve poter autenticare un nuovo Gateway nel Sistema],
  [#ref-uc(<Autenticazione-gateway>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se il certificato del Gateway non è valido durante l'autenticazione],
  [#ref-uc(<Certificato-non-valido>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se l'identificativo del Gateway è già utilizzato],
  [#ref-uc(<Identificativo-gateway-gia-utilizzato>)],

[#rf()],
  [Il Super Admin deve poter associare un Gateway a un tenant],
  [#ref-uc(<Associazione-gateway-tenant>)],

[#rf()],
  [Il Super Admin, associando un Gateway a un tenant, deve selezionare il Gateway da associare],
  [#ref-uc(<Selezione-gateway-super-admin>)],

[#rf()],
  [Il Super Admin, associando un Gateway a un tenant, deve selezionare il tenant di destinazione],
  [#ref-uc(<Selezione-tenant-super-admin>)],

[#rf()],
  [Il Super Admin deve poter configurare i parametri di un Gateway],
  [#ref-uc(<Configurazione-gateway>)],

[#rf()],
  [Il Sistema deve mostrare un messaggio di errore se la configurazione del Gateway inserita non è valida],
  [#ref-uc(<Configurazione-gateway-non-valida>)],

[#rf()],
  [Il Super Admin deve poter eseguire il decommissioning di un Gateway],
  [#ref-uc(<Decommissioning-gateway>)],

[#rf()],
  [Il Sistema, durante il decommissioning, deve disassociare il Gateway dal tenant],
  [#ref-uc(<Disassociazione-gateway-dal-tenant>)],

[#rf()],
  [Il Super Admin deve poter eseguire il reset di un Gateway],
  [#ref-uc(<Reset-gateway>)],

[#rf()],
  [Il Super Admin deve poter riavviare un Gateway],
  [#ref-uc(<Riavvio-gateway-super-admin>)],

[#rf()],
  [Il Super Admin deve poter sospendere l'invio dati di un Gateway],
  [#ref-uc(<Sospensione-gateway-super-admin>)],

[#rf()],
  [Il Super Admin deve poter riattivare l'invio dati di un Gateway sospeso],
  [#ref-uc(<Riattivazione-gateway-super-admin>)],

[#rf()],
  [Il Super Admin deve poter modificare il parametro di rolling average di un Gateway],
  [#ref-uc(<Modifica-parametro-rolling-average-gateway-super-admin>)],

[#rf()],
  [Il Super Admin deve poter sospendere un sensore],
  [#ref-uc(<Sospensione-sensore-super-admin>)],

[#rf()],
  [Il Super Admin deve poter riattivare un sensore sospeso],
  [#ref-uc(<Riattivazione-sensore-super-admin>)],

[#rf()],
  [Il Super Admin deve poter selezionare un Gateway dalla lista per inviare comandi],
  [#ref-uc(<Selezione-gateway-per-invio-comando-super-admin>)],

[#rf()],
  [Il Super Admin deve poter selezionare un sensore dalla lista per inviare comandi],
  [#ref-uc(<Selezione-sensore-invio-comando-super-admin>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la lista di tutti i tenant nel Sistema],
  [#ref-uc(<Visualizzazione-lista-tenant>)],

[#rf()],
  [Il Super Admin, visualizzando la lista dei tenant, deve poter vedere l'identificativo di ogni tenant],
  [#ref-uc(<Visualizzazione-identificativo-tenant>)],

[#rf()],
  [Il Super Admin deve poter impersonificare un tenant (se la clausola è stata accettata)],
  [#ref-uc(<Impersonificazione-tenant>)],

[#rf()],
  [Il Super Admin deve poter visualizzare i dettagli di un singolo tenant],
  [#ref-uc(<Visualizzazione-tenant>)],

[#rf()],
  [Il Super Admin, visualizzando un tenant, deve poter vedere l'identificativo del tenant],
  [#ref-uc(<Visualizzazione-identificativo-tenant>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la lista delle richieste di commissioning Gateway in corso],
  [#ref-uc(<Visualizzazione-lista-richieste-in-corso-commissioning-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di commissioning in lista, deve poter vedere data e ora della richiesta],
  [#ref-uc(<Visualizzazione-data-ora-richiesta-commissioning>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di commissioning in lista, deve poter vedere il tenant richiedente],
  [#ref-uc(<Visualizzazione-tenant-richiesta-commissioning>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di commissioning in lista, deve poter vedere il numero di gateway richiesti],
  [#ref-uc(<Visualizzazione-numero-gateway-richiesta-commissioning>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la lista delle richieste di decommissioning Gateway in corso],
  [#ref-uc(<Visualizzazione-lista-richieste-in-corso-decommissioning-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di decommissioning in lista, deve poter vedere data e ora della richiesta],
  [#ref-uc(<Visualizzazione-data-ora-richiesta-decommissioning>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di decommissioning in lista, deve poter vedere il tenant richiedente],
  [#ref-uc(<Visualizzazione-tenant-richiesta-decommissioning>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di decommissioning in lista, deve poter vedere il numero di gateway],
  [#ref-uc(<Visualizzazione-numero-gateway-richiesta-decommissioning>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di decommissioning in lista, deve poter vedere lo stato della richiesta],
  [#ref-uc(<Visualizzazione-stato-richiesta-decommissioning>)],

[#rf()],
  [Il Super Admin deve poter visualizzare lo storico delle richieste di commissioning Gateway],
  [#ref-uc(<Visualizzazione-storico-richieste-commissioning-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando lo storico commissioning, deve poter vedere lo stato di ogni richiesta],
  [#ref-uc(<Visualizzazione-stato-richiesta-storico-commissioning>)],

[#rf()],
  [Il Super Admin deve poter visualizzare lo storico delle richieste di decommissioning Gateway],
  [#ref-uc(<Visualizzazione-storico-richieste-decommissioning-gateway>)],

[#rf()],
  [Il Super Admin deve poter visualizzare i dettagli di una richiesta di commissioning],
  [#ref-uc(<Visualizzazione-richiesta-commissioning-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di commissioning, deve poter vedere data e ora della richiesta],
  [#ref-uc(<Visualizzazione-data-ora-richiesta>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di commissioning, deve poter vedere il tenant richiedente],
  [#ref-uc(<Visualizzazione-tenant-richiedente-richiesta>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di commissioning, deve poter vedere il numero di gateway richiesti],
  [#ref-uc(<Visualizzazione-numero-gateway-richiesti>)],

[#rf()],
  [Il Super Admin deve poter visualizzare i dettagli di una richiesta di decommissioning],
  [#ref-uc(<Visualizzazione-richiesta-decommissioning-gateway>)],

[#rf()],
  [Il Super Admin, visualizzando una richiesta di decommissioning, deve poter vedere i gateway interessati],
  [#ref-uc(<Visualizzazione-gateway-da-decommissioning>)],

[#rf()],
  [Il Super Admin deve poter accettare una richiesta di commissioning/decommissioning Gateway],
  [#ref-uc(<Accettazione-richiesta-fornitura-gateway>)],

[#rf()],
  [Il Super Admin deve poter rifiutare una richiesta di commissioning/decommissioning Gateway],
  [#ref-uc(<Rifiuto-richiesta-fornitura-gateway>)],

[#rf()],
  [Il Super Admin deve poter creare un nuovo utente Tenant Admin],
  [#ref-uc(<Creazione-utente-tenant-admin>)],

[#rf()],
  [Il Super Admin, creando un Tenant Admin, deve selezionare il tenant di appartenenza],
  [#ref-uc(<Selezione-tenant>)],

[#rf()],
  [Il Super Admin, creando un Tenant Admin, deve inserire l'email del nuovo utente],
  [#ref-uc(<Inserimento-email-nuovo-tenant-admin>)],

[#rf()],
  [Il Sistema deve inviare un'email per l'impostazione password al nuovo Tenant Admin],
  [#ref-uc(<Invio-email-impostazione-password-nuovo-tenant-admin>)],

[#rf()],
  [Il Super Admin deve poter sospendere un account Tenant Admin],
  [#ref-uc(<Sospensione-account-tenant-admin>)],

[#rf()],
  [Il Super Admin deve selezionare il Tenant Admin da sospendere],
  [#ref-uc(<Selezione-tenant-admin-da-sospendere>)],

[#rf()],
  [Il Sistema deve richiedere conferma prima di sospendere un account Tenant Admin],
  [#ref-uc(<Conferma-sospensione-account-tenant-admin>)],

[#rf()],
  [Il Super Admin deve poter riattivare un account Tenant Admin sospeso],
  [#ref-uc(<Riattivazione-account-tenant-admin>)],

[#rf()],
  [Il Super Admin deve selezionare il Tenant Admin da riattivare],
  [#ref-uc(<Selezione-tenant-admin-da-riattivare>)],

[#rf()],
  [Il Sistema deve richiedere conferma prima di riattivare un account Tenant Admin],
  [#ref-uc(<Conferma-riattivazione-account-tenant-admin>)],

[#rf()],
  [Il Super Admin deve poter eliminare un account Tenant Admin],
  [#ref-uc(<Eliminazione-account-tenant-admin>)],

[#rf()],
  [Il Super Admin deve selezionare il Tenant Admin da eliminare],
  [#ref-uc(<Selezione-tenant-admin-da-eliminare>)],

[#rf()],
  [Il Sistema deve richiedere conferma prima di eliminare un account Tenant Admin],
  [#ref-uc(<Conferma-eliminazione-account-tenant-admin>)],

[#rf()],
  [Il Super Admin deve poter creare un gateway simulato],
  [#ref-uc(<Creazione-gateway-simulato>)],

[#rf()],
  [Il Super Admin, creando un gateway simulato, deve inserire il nome del gateway],
  [#ref-uc(<Inserimento-nome-gateway-simulato>)],

[#rf()],
  [Il Super Admin, creando un gateway simulato, deve inserire il timeout di inattività],
  [#ref-uc(<Inserimento-timeout-inattivita-gateway-simulato>)],

[#rf()],
  [Il Super Admin, creando un gateway simulato, deve inserire la dimensione del buffer],
  [#ref-uc(<Inserimento-dimensione-buffer-gateway-simulato>)],

[#rf()],
  [Il Super Admin deve poter creare un sensore simulato],
  [#ref-uc(<Creazione-sensore-simulato>)],

[#rf()],
  [Il Super Admin, creando un sensore simulato, deve selezionare i servizi GATT da simulare],
  [#ref-uc(<Selezione-servizi-sensore-simulato>)],

[#rf()],
  [Il Super Admin, creando un sensore simulato, deve inserire il timeout per gli alert],
  [#ref-uc(<Inserimento-timeout-alert-sensore-simulato>)],

[#rf()],
  [Il Super Admin, creando un sensore simulato, deve associarlo a un gateway simulato],
  [#ref-uc(<Inserimento-associazione-gateway-simulato>)],

[#rf()],
  [Il Super Admin deve poter eliminare un gateway simulato],
  [#ref-uc(<Eliminazione-gateway-simulato>)],

[#rf()],
  [Il Super Admin deve selezionare il gateway simulato da eliminare],
  [#ref-uc(<Seleziona-gateway-simulato-da-eliminare>)],

[#rf()],
  [Il Sistema deve richiedere conferma prima di eliminare un gateway simulato],
  [#ref-uc(<Conferma-eliminazione-gateway-simulato>)],

[#rf()],
  [Il Super Admin deve poter eliminare un sensore simulato],
  [#ref-uc(<Eliminazione-sensore-simulato>)],

[#rf()],
  [Il Super Admin deve selezionare il sensore simulato da eliminare],
  [#ref-uc(<Seleziona-sensore-simulato-da-eliminare>)],

[#rf()],
  [Il Sistema deve richiedere conferma prima di eliminare un sensore simulato],
  [#ref-uc(<Conferma-eliminazione-sensore-simulato>)],

[#rf()],
  [Il Super Admin deve poter monitorare le metriche di sistema],
  [#ref-uc(<Monitoraggio-metriche-di-sistema>)],

[#rf()],
  [Il Super Admin deve poter visualizzare il numero di gateway online/offline],
  [#ref-uc(<Visualizzazione-gateway-offline-online>)],

[#rf()],
  [Il Super Admin deve poter visualizzare il throughput dati del sistema],
  [#ref-uc(<Visualizzazione-throughput-dati>)],

[#rf()],
  [Il Super Admin deve poter visualizzare l'utilizzo delle risorse dei nodi cloud],
  [#ref-uc(<Visualizzazione-utilizzo-risorse-nodi-cloud>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la frequenza delle disconnessioni dei gateway],
  [#ref-uc(<Visualizzazione-frequenza-disconnessioni-gateway>)],

[#rf()],
  [Il Super Admin deve poter visualizzare le dimensioni dei payload dei pacchetti],
  [#ref-uc(<Visualizzazione-dimensioni-payload-pacchetti>)],

[#rf()],
  [Il Super Admin deve poter visualizzare la data staleness dei dati],
  [#ref-uc(<Visualizzazione-data-staleness>)],

[#rf()],
  [Il Super Admin deve poter visualizzare i valori out-of-range rilevati],
  [#ref-uc(<Visualizzazione-valori-out-of-range>)],

[#rf()],
  [Il Super Admin deve poter visualizzare lo storico dei tenant possessori di un sensore],
  [#ref-uc(<Visualizzazione-storico-possessori-sensore>)],

[#rf()],
  [Il Super Admin deve poter visualizzare il nome del tenant possessore nello storico],
  [#ref-uc(<Visualizzazione-tenant-possessore-sensore>)],

[#rf()],
  [Il Super Admin deve poter visualizzare il periodo di associazione del sensore nello storico],
  [#ref-uc(<Visualizzazione-periodo-associazione-sensore>)],

[#rf()],
  [Il Super Admin deve poter visualizzare lo storico dei tenant possessori di un gateway],
  [#ref-uc(<Visualizzazione-storico-possessori-gateway>)],

[#rf()],
  [Il Super Admin deve poter visualizzare il nome del tenant possessore del gateway nello storico],
  [#ref-uc(<Visualizzazione-tenant-possessore-gateway>)],

[#rf()],
  [Il Super Admin deve poter visualizzare il periodo di associazione del gateway nello storico],
  [#ref-uc(<Visualizzazione-periodo-associazione-gateway>)],

)
== Requisiti non funzionali
#table(
  columns: (0.20fr, 0.60fr, 0.20fr),
  align: left,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [*RNF-1-Obb*], [Il sistema cloud deve supportare la scalabilità orizzontale per gestire un numero crescente di sensori, gateway, tenant senza degrado delle prestazioni.], [Capitolato di progetto:
  5.5 – Requisiti non funzionali], // non so se bisogna dividerlo in 3
  [*RNF-2-Obb*], [Devono essere presenti test unitari e test di integrazione.], [Capitolato di progetto:
  5.5 – Requisiti non funzionali],
  [*RNF-3-Obb*], [Deve essere presente un monitoraggio in tempo reale delle prestazioni del sistema.], [Capitolato di progetto:
  5.5 – Requisiti non funzionali],
  [*RNF-4-Obb*], [Devono essere presenti alert di base per individuare gateway non funzionanti o non raggiungibili.], [Capitolato di progetto:
  5.5 – Requisiti non funzionali],
  [*RNF-5-Obb*], [È necessario versionare il codice utilizzando Git.], [Capitolato di progetto:
  5.5 – Requisiti non funzionali],
  [*RNF-6-Obb*], [ È necessario gestire la bufferizzazione dei dati (gateway/cloud) per tollerare disconnessioni temporanee.], [Capitolato di progetto: 3.2 - Gateway BLE–WiFi (Edge Layer)],
  [*RNF-7-Obb*], [È necessario il supporto allo streaming dei dati in tempo reale ], [Capitolato di progetto: 3.2 - Gateway BLE–WiFi (Edge Layer)],
   [*RNF-8-Obb*], [È necessario il supporto alla gestione di più stream contemporanei.], [Capitolato di progetto: 3.2 - Gateway BLE–WiFi (Edge Layer)],
  [*RNF-9Obb*], [È necessario l’uso di container], [Capitolato di progetto: 3.3 - Cloud (Control & Management Layer)], //non sono sicuro sul orchestrazione
  [*RNF-10-Obb*], [Deve essere garantita la cifratura dei dati], [Capitolato di progetto: 5.3 - Requisiti di Sicurezza],
  [*RNF-11-Obb*], [Deve essere garantita l’autenticazione dei tenant.], [Capitolato di progetto: 5.3 - Requisiti di Sicurezza],
  [*RNF-12-Obb*], [Deve essere garantito l isolamento dei tenant.], [Capitolato di progetto: 5.3 - Requisiti di Sicurezza],
  [*RNF-13-Des*], [Gradita la presenza di un sistema di eventi/alert],[Capitolato di progetto:
  5.2 – Requisiti Funzionali Opzionali],
  [*RNF-14-Des*], [Gradita la presenza di audit log],[Capitolato di progetto:
  5.4 – Requisiti di Sicurezza Opzionali],
)

== Requisiti di dominio
#table(
  columns: (0.20fr, 0.60fr, 0.20fr),
  align: left,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [*RD-1-Obb*], [Necessario l'uso di sensori BLE.], [Capitolato di progetto],

  [*RD-2-Obb*], [I dati devono provenire da sensori Bluetooth Low Energy.], [Capitolato di progetto: 2.1 - Sensori BLE],

  [*RD-3-Obb*], [La comunicazione deve essere basata su profili BLE standard.], [Capitolato di progetto: 2.2 - Gateway BLE-WiFi],

  [*RD-4-Obb*], [È richiesto l’uso di un’architettura a tre livelli: sensori, gateway BLE–WiFi e cloud.], [Capitolato di progetto: 3 - Architettura],

  [*RD-5-Obb*], [È necessario l’utilizzo di gateway come intermediari obbligatori: i sensori non devono comunicare direttamente con il cloud.], [Capitolato di progetto: 2.2 - Gateway BLE-WiFi],

  [*RD-6-Obb*], [Il sistema deve supportare più clienti simultanei.], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-7-Obb*], [I dati devono essere logicamente separati per tenant.], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-8-Obb*], [I dati devono provenire da sensori differenti], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-9-Obb*], [I dati devono essere associati a un timestamp ed essere interrogabili per intervallo temporale.], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-10-Obb*], [I dati devono essere associati a un timestamp ed essere interrogabili per sensore e per intervallo temporale.], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-11-Obb*], [Gateway e sensori devono essere registrati, associati a un tenant e riconosciuti in modo persistente dal sistema.], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-12-Obb*], [ Il dominio richiede l’accesso ai dati storici], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  [*RD-13-Obb*], [ Il dominio richiede l’accesso ai dati in tempo reale tramite stream.], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

)

#pagebreak()

== Tracciamento

\

#align(center)[

  #table(
  columns: (auto, auto),
  align: center,
  table.header([*Requisito*], [*Fonti*]),

  [#rf()],
  [#ref-uc(<Autenticazione-utente>)],

  [#rf()],
  [#ref-uc(<Inserimento-email-auth>)],

  [#rf()],
  [#ref-uc(<Autenticazione-utente>) \ #ref-uc(<Inserimento-password>)],

  [#rf()],
  [#ref-uc(<Autenticazione-non-riuscita>)],

  [#rf()],
  [#ref-uc(<Account-sospeso>)],

  [#rf[?]],
  [#ref-uc(<Invio-codice-2FA>)],

  [#rf[?]],
  [#ref-uc(<Re-invio-codice-2FA>)],

  [#rf[?]],
  [#ref-uc(<Autenticazione-2FA>)],

  [#rf()],
  [#ref-uc(<Inserimento-codice-2FA>)],

  [#rf()],
  [#ref-uc(<Codice-2FA-errato>)\ #ref-uc(<Codice-2FA-scaduto>)],

  [#rf()],
  [#ref-uc(<Impostazione-password>)],

  [#rf()],
  [#ref-uc(<Password-dimenticata>)],

  [#rf()],
  [#ref-uc(<Inserimento-indirizzo-email>)],

  [#rf()],
  [#ref-uc(<Invio-email-reimpostazione-password>)],

  [#rf()],
  [#ref-uc(<Invio-email-reimpostazione-password>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-lista-sensori-associati-tenant>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-identificativo-sensore-in-lista>)],

  // TODO: Da migliorare questo requisito sulla dashboard.
  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>), #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-lista-alert>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-generica>), #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)],

  [#rf()],
  [#ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [#ref-uc(<Email-gia-utilizzata>)],
  
  [#rf()],
  [#ref-uc(<Registrazione-nuovo-tenant-user>)],

  [#rf()],
  [#ref-uc(<Inserimento-email>)],

  [#rf()],
  [#ref-uc(<Invio-email-impostazione-password>)],
  
  [#rf()],
  [#ref-uc(<Sospensione-tenant-user>)],
  
  [#rf()],
  [#ref-uc(<Conferma-sospensione-tenant-user>)],

  [#rf()],
  [#ref-uc(<Riattivazione-tenant-user>)],

  [#rf()],
  [#ref-uc(<Conferma-riattivazione-tenant-user>)],

  [#rf()],
  [#ref-uc(<Eliminazione-tenant-user>)],

  [#rf()],
  [#ref-uc(<Conferma-eliminazione-tenant-user>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-lista-richieste-commissioning-decommissioning-gateway>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-stato-richiesta-di-commissioning-decommissioning-gateway>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-lista-utenti-tenant>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-email-utente-lista>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-stato-utente-lista>)], 

  [#rf()],
  [#ref-uc(<Visualizzazione-lista-gateway-associati>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-nome-gateway-lista>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-stato-gateway-lista>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-gateway-associato>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-nome-gateway-associato>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-stato-gateway-associato>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-sensori-collegati-gateway-associato>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-identificativo-sensore-collegato-gateway-associato-in-lista>)],

  // TODO: Creare API key dovrebbe essere req. obb? 
  [#rf[?]],
  [#ref-uc(<Registrazione-nuova-api-key>)],
  
  [#rf[?]],
  [#ref-uc(<Inserimento-nome-api-key>)],

  [#rf[?]],
  [#ref-uc(<Inserimento-scadenza-api-key>)],

  [#rf[?]],
  [#ref-uc(<Registrazione-nuova-api-key>), #ref-uc(<Inserimento-nome-api-key>), #ref-uc(<Nome-api-key-gia-utilizzato>)],

  [#rf[?]],
  [#ref-uc(<Registrazione-nuova-api-key>), #ref-uc(<Inserimento-scadenza-api-key>), #ref-uc(<Scadenza-api-key-data-passata>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-lista-api-key>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-lista-api-key>), #ref-uc(<Visualizzazione-nome-singola-api-key-lista>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-lista-api-key>), #ref-uc(<Visualizzazione-data-creazione-singola-api-key-lista>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-lista-api-key>), #ref-uc(<Visualizzazione-data-scadenza-singola-api-key-lista>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-dettagli-api-key>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Visualizzazione-nome-api-key>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Visualizzazione-data-creazione-api-key>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Visualizzazione-data-scadenza-api-key>)],

  [#rf[?]],
  [#ref-uc(<Visualizzazione-dettagli-api-key>), #ref-uc(<Grafico-utilizzo-api-key>)],

  [#rf[?]],
  [#ref-uc(<Eliminazione-api-key>)],

  [#rf[?]],
  [#ref-uc(<Eliminazione-api-key>), #ref-uc(<Conferma-eliminazione-api-key>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-audit-log>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-audit-log>), #ref-uc(<Visualizzazione-nome-utente-audit-log>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-audit-log>), #ref-uc(<Visualizzazione-tipo-azione-audit-log>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-audit-log>), #ref-uc(<Visualizzazione-timestamp-azione-audit-log>)],

  [#rf()],
  [#ref-uc(<Filtraggio-log-per-tipologia>)],

  [#rf()],
  [#ref-uc(<Filtraggio-log-per-intervallo-temporale>)],

  [#rf()],
  [#ref-uc(<Filtraggio-log-per-utente>)],

  [#rf()],
  [#ref-uc(<Esportazione-log>)],

  // TODO: Da migliorare questi requisiti sulla dashboard.
  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-lista-alert>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-numero-api-key-valide-scadute>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-stato-richieste-commissioning-gateway>)],

  [#rf()],
  [#ref-uc(<Visualizzazione-dashboard-tenant-admin>), #ref-uc(<Visualizzazione-stato-richieste-decommissioning-gateway>)],

  [#rf()],
  [#ref-uc(<Creazione-richiesta-commissioning-gateway>)],

  [#rf()],
  [#ref-uc(<Creazione-richiesta-decommissioning-gateway>), #ref-uc(<Selezione-gateway-decommissioning-tenant-admin>)],
  
  [#rf()],
  [#ref-uc(<Eliminazione-richiesta-commissioning-decommissioning-gateway>)],

  [#rf()],
  [#ref-uc(<Eliminazione-richiesta-commissioning-decommissioning-gateway>), #ref-uc(<Conferma-eliminazione-richiesta-commissioning-decommissioning>)],

  [#rf()],
  [#ref-uc(<Sospensione-sensore-tenant-admin>), #ref-uc(<Selezione-sensore>)],

  [#rf()],
  [#ref-uc(<Sospensione-sensore-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [#ref-uc(<Riattivazione-sensore-tenant-admin>), #ref-uc(<Selezione-sensore>)],

  [#rf()],
  [#ref-uc(<Riattivazione-sensore-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [#ref-uc(<Sospensione-gateway-tenant-admin>), #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)],

  [#rf()],
  [#ref-uc(<Sospensione-gateway-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [#ref-uc(<Riattivazione-gateway-tenant-admin>), #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)],

  [#rf()],
  [#ref-uc(<Riattivazione-gateway-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  [#rf()],
  [#ref-uc(<Riavvio-gateway-tenant-admin>), #ref-uc(<Seleziona-gateway-per-invio-comando-tenant-admin>)],

  [#rf()],
  [#ref-uc(<Riavvio-gateway-tenant-admin>), #ref-uc(<Gateway-non-raggiungibile>)],

  //Attore: Gateway, Sistema: Cloud
  //TODO: controllare che requisiti siano atomici
  [#rf()],
  [#ref-uc(<Conferma-comando-commissioning>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-commissioning>)],

  [#rf()],
  [#ref-uc(<Errore-commissioning>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-decommissioning>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-decommissioning>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-decommissioning>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-riavvio>)],

  [#rf()],
  [#ref-uc(<Errore-riavvio>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-reset>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-sospensione-invio-dati>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-riattivazione-invio-dati>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-sospensione-sensore>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-riattivazione-sensore>)],

  [#rf()],
  [#ref-uc(<Conferma-comando-modifica-frequenza-invio-dati>)],

  [#rf()],
  [#ref-uc(<Invio-comando-hello>)],

  [#rf()],
  [#ref-uc(<Autenticazione-gateway-fallita>)],

  [#rf()],
  [#ref-uc(<Identificativo-gateway-non-trovato>)],

  [#rf()],
  [#ref-uc(<Invio-dati-crittografati>)],

  [#rf()],
  [#ref-uc(<Invio-dati-crittografati>)],

  [#rf()],
  [#ref-uc(<Invio-dati-fallito>)],

  [#rf()],
  [#ref-uc(<Invio-dati-fallito>)],

  [#rf()],
  [#ref-uc(<Assenza-prolungata-dati-sensori>)],

  //Attore: API Client, Sistema: Cloud
  [#rf()],
  [#ref-uc(<Richiesta-dati-real-time-sensore>)],

  [#rf()],
  [#ref-uc(<Ricezione-dati-real-time-sensore>)],

  [#rf()],
  [#ref-uc(<Richiesta-storico-dati-sensore>)],

  [#rf()],
  [#ref-uc(<Ricezione-storico-dati-sensore>)],

  [#rf()],
  [#ref-uc(<Sensore-non-trovato>)],

  [#rf()],
  [#ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)],

  [#rf()],
  [#ref-uc(<Sensore-non-associato-tenant-API-Client>)],

  [#rf()],
  [#ref-uc(<Autenticazione-API-Client>)],

  [#rf()],
  [#ref-uc(<Credenziali-API-Client-errate>)],

  [#rf()],
  [#ref-uc(<Credenziali-API-Client-scadute>)],

  //Attore: Sensore simulato, Sistema: Gateway
  [#rf()],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [#ref-uc(<Invio-nuovo-dato-gateway>)],

  [#rf()],
  [#ref-uc(<Invio-dati-eccessivi-gateway>)],

  [#rf()],
  [#ref-uc(<Invio-dato-heart-rate-service>)],

  [#rf()],
  [#ref-uc(<Invio-dato-pulse-oximeter-service>)],

  [#rf()],
  [#ref-uc(<Invio-dato-ecg-custom>)],

  [#rf()],
  [#ref-uc(<Invio-dato-health-thermometer-service>)],

  [#rf()],
  [#ref-uc(<Invio-dato-environmental-sensing-service>)],

  //Attore: Cloud, Sistema: Gateway
  [#rf()],
  [#ref-uc(<Conferma-autenticazione-gateway>)],

  [#rf()],
  [#ref-uc(<Rifiuto-autenticazione-gateway>)],

  [#rf()],
  [#ref-uc(<Assegnazione-tenant-gateway>) #ref(<Invio-tenant-associato-gateway>)],

  [#rf()],
  [#ref-uc(<Assegnazione-tenant-gateway>) #ref-uc(<Invio-chiave-cifratura-dati>), #ref(<Invio-tenant-associato-gateway>)],

  [#rf()],
  [#ref-uc(<Riattivazione-sensore-simulato>)],

  [#rf()],
  [#ref-uc(<Sospensione-sensore-simulato>)],

  [#rf()],
  [#ref-uc(<Riattivazione-gateway>)],

  [#rf()],
  [#ref-uc(<Sospensione-gateway>)],

  [#rf()],
  [#ref-uc(<Riavvio-gateway-cloud>)],

  [#rf()],
  [#ref-uc(<Modifica-frequenza-invio-dati-gateway>)],

  [#rf()],
  [#ref-uc(<Decommissioning-gateway-cloud>) #ref-uc(<Disassociazione-tenant-gateway>) #ref-uc(<Reset-gateway-cloud>)],

  [#rf()],
  [#ref-uc(<Reset-gateway-cloud>)],


  [*RNF-1-Obb*],[Capitolato di progetto: 5.5 – Requisiti non funzionali],
  [*RNF-2-Obb*], [Capitolato di progetto: 5.5 – Requisiti non funzionali],
  [*RNF-3-Obb*], [Capitolato di progetto: 5.5 – Requisiti non funzionali],
  [*RNF-4-Obb*], [Capitolato di progetto: 5.5 – Requisiti non funzionali],
  [*RNF-5-Obb*], [Capitolato di progetto: 5.5 – Requisiti non funzionali],
  [*RNF-6-Obb*], [Capitolato di progetto: 3.2 - Gateway BLE–WiFi],
  [*RNF-7-Obb*], [Capitolato di progetto: 3.2 - Gateway BLE–WiFi],
  [*RNF-8-Obb*], [Capitolato di progetto: 3.2 - Gateway BLE–WiF],
  [*RNF-9-Obb*], [Capitolato di progetto: 3.3 - Cloud],
  [*RNF-10-Obb*], [Capitolato di progetto: 5.3 - Requisiti di Sicurezza],
  [*RNF-11-Obb*], [Capitolato di progetto: 5.3 - Requisiti di Sicurezza],
  [*RNF-12-Obb*], [Capitolato di progetto: 5.3 - Requisiti di Sicurezza],
  [*RNF-13-Des*], [Capitolato di progetto: 5.2 – Requisiti Funzionali Opzionali],
  [*RNF-14-Des*], [Capitolato di progetto: 5.4 – Requisiti di Sicurezza Opzionali],

  [*RD-1-Obb*], [Capitolato di progetto],
  [*RD-2-Obb*],[Capitolato di progetto: 2.1 - Sensori BLE],
  [*RD-3-Obb*], [Capitolato di progetto: 2.2 - Gateway BLE-WiFi],
  [*RD-4-Obb*], [Capitolato di progetto: 3 - Architettura],
  [*RD-5-Obb*], [Capitolato di progetto: 2.2 - Gateway BLE-WiFi],
  [*RD-6-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-7-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-8-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-9-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-10-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-11-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-12-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],
  [*RD-13-Obb*], [Capitolato di progetto: 5.1 - Requisiti Funzionali Minimi],

  )
]
  
