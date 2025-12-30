#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
  titolo: "Analisi dei Requisiti",
  stato: "Bozza",
  versione: "0.12.0",
  registro-modifiche: (
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
  Se da qualche parte ho un titolo con label `<Autenticazione-Utente>`
  che corrisponde allo UC1.2,
  posso scrivere `#ref-uc(<Autenticazione-Utente>)` per avere un link
  automatico a quella sezione che verrà fuori tipo "UC1.2 [Sezione x.y.z]"

  = Parametri
  == uc-label
  Tipo: label
*/
#let ref-uc = uc-label => {
  context {
    // Per ogni titolo di UC con label, crea array dove ogni riga è
    // (indice, codice UC, stringa con nome del label)
    let head-query = query(heading)
      .map(
        head => {
          let head-label = head.at("label", default: none)
          if head-label != none and uc-counter.at(head-label).first() != 0 {
            (uc-counter.at(head-label), str(head.label))
          } else { none }
        },
      )
      .filter(x => x != none)
      .enumerate()
      .map(value => {
        let (index, rest) = value
        (index, ..rest)
      })

    // Cerca uc-label in questa lista
    let (prev-index, _prev-uc-id, actual-uc-label) = head-query.find(
      x => {
        let (_index, _counter, row-label) = x
        return row-label == str(uc-label)
      },
    )

    // Trova l'ID dell'UC successivo
    let (_next-index, actual-uc-id, _next-uc-label) = (
      if prev-index < head-query.len() - 1 {
        head-query.find(x => {
          let (index, ..other) = x
          return index == prev-index + 1
        })
      } else {
        (none, uc-counter.final(), none)
      }
    )

    // Mostra il codice dell'UC effettivo
    let uc-number = "UC" + actual-uc-id.map(str).join(".")

    // Calcola il codice della Sezione
    let section-number = counter(heading).at(uc-label)
    let section-id = numbering(
      (..numbers) => numbers.pos().map(str).join("."),
      ..section-number,
    )

    [#link(uc-label, [#uc-number \[Sezione #section-id\]])]
  }
}


/*
NOTE: quando si scrive che super admin impersona tenant admin, si segna come precondizione che il tenant admin ha accettato la clausola d'impersonificazione del contratto
*/

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
- *Post-condizioni*: descrizione delle condizioni che devono essere vere al termine del caso d'uso, indicando lo stato del sistema dopo l'esecuzione;
- *Scenario principale*: sequenza ordinata di passi che descrive il flusso di interazione tra attori e sistema in assenza di errori o di situazioni eccezionali;
- *Scenario alternativo*: interruzioni del flusso principale che si verificano quando l'attore compie una scelta alternativa o si verificano condizioni particolari previste dal caso d'uso. Quando uno scenario alternativo si verifica, le post-condizioni del caso d'uso principale devono essere diverse;
- *Inclusioni*: riferimenti a casi d'uso che l'attore deve completare per poter portare a termine il caso d'uso corrente;
- *Estensioni*: riferimenti a casi d'uso che posso verificarsi durante il flusso principale del caso d'uso;

== Attori <lista-attori>
Come scritto precedentemente, il sistema si compone di più livelli e coinvolge attori eterogenei, sia umani che automatici. L'utilizzo dei casi d'uso consente quindi di modellare le interazioni tra tali attori, traducendo i requisiti funzionali individuati in scenari operativi concreti. Essi permettono di focalizzarsi quindi sugli aspetti fondamentali del sistema, quali l'acquisizione e l'aggregazione dei dati, l'inoltro verso il cloud, il provisioning sicuro dei dispositivi, la gestione multi-tenant e la visualizzazione dei dati tramite dashboard.

#table(
  // align: (left, left),
  columns: (1fr, 2.5fr),
  table.header([Attore], [Descrizione]),

  [Utente non autenticato], [Un qualunque utente che non abbia eseguito l'accesso alla piattaforma *Cloud*],

  [Utente autenticato],
  [Un qualunque utente che abbia eseguito l'accesso alla piattaforma Cloud. Corrisponde alla generalizzazione di *Tenant User*, *Tenant Admin* e *Super Admin*],

  [Tenant User],
  [Un utente autenticato appartenente a uno specifico tenant che ha facoltà di visualizzare i dati dei sensori ricevuti dai *Gateway*],

  [Tenant Admin],
  [Un utente autenticato appartenente a uno specifico tenant che ha poteri di amministrazione sui gateway collegati al tenant],

  [Super Admin], [Un utente autenticato che ha poteri di amministrazione su tutti i tenant associati al sistema cloud],

  [Amministratore],
  [Un utente autenticato con poteri di amministrazione generici. Corrisponde alla generalizzazione di *Tenant Admin* e *Super Admin*],

  [API Client], [Un qualunque client API che possa accedere all'API pubblica esposta dal sistema cloud.],

  [Sensore simulato], [Un qualunque sensore BLE che venga simulato dal Simulatore di Gateway sviluppato],

  [Gateway simulato],
  [Un Gateway simulato che interloquisce con l'*Infrastruttura Cloud* per l'invio di dati normalizzati e crittografati e per la ricezione di comandi.],

  [Infrastruttura Cloud],
  [L'infrastruttura Cloud che riceve i dati normalizzati dal Gateway, rendendoli visibili ai *Tenant User*.],
)

== Sistema Cloud - Lista dei casi d'uso
Per ogni caso d'uso viene considerato il Sistema Cloud come raggiungibile e funzionante.

=== Attore principale - Utente non autenticato
L'utente non autenticato è chiunque *non* abbia eseguito l'accesso alla piattaforma Cloud, che cerca di accedervi.

==== #uc() - Autenticazione Utente <Autenticazione-Utente>
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema ha riconosciuto l'utente e l'ha autenticato con il ruolo di _Tenant User_, _Tenant Admin_ o _Super Admin_
  - Il Sistema registra l'evento negli audit log
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
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha eseguito il login con successo
  - L'Utente ha abilitato l'autenticazione a due fattori (2FA) per l'account a cui sta accedendo
- *Post-condizioni*:
  - Il Sistema verifica il codice 2FA inserito dall'Utente
  - Il Sistema autentica l'Utente, il quale è ora un *Utente autenticato*
  - Il Sistema registra l'evento negli audit log
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
- *Attore principale*: Utente non autenticato
- *Pre-condizioni*:
  - L'Utente non è autenticato nel Sistema
  - L'Utente ha ricevuto l'email di reimpostazione password
- *Post-condizioni*:
  - La password dell'Utente viene reimpostata
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
=== Attore principale - Utente autenticato
L'utente autenticato è chiunque abbia eseguito l'accesso alla piattaforma Cloud. Corrisponde alla generalizzazione degli attori *Tenant User*, *Tenant Admin*, *Super Admin*.
Nel caso in cui l'utente autenticato sia il Super Admin e acceda a dati di un tenant specifico, quest'ultimo deve aver accettato la clausola di impersonificazione, la quale permette l'accesso ai dati del tenant da parte del Super Admin.

==== #uc() - Logout <Logout>
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema disconnette l'Utente
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - L'Utente esegue il logout dal Sistema

==== #uc() - Modifica password <Modifica-password>
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
- *Attore principale*: Utente autenticato
- *Pre-condizioni*:
  - L'Utente è autenticato nel Sistema
  - Il sensore selezionato appartiene al tenant dell'utente autenticato
- *Post-condizioni*:
  - Vengono visualizzati i dati del sensore selezionato in modalità *time-series* tramite un grafico con assi etichettati che permette di visualizzare un dato preciso in un momento specifico
  - Il grafico visualizzato si aggiorna in *tempo reale* (_real-time_), appena il Cloud riceve dati nuovi dal Gateway
- *Scenario principale*:
  - L'utente autenticato seleziona un sensore dalla lista dei sensori associati al proprio tenant
  - Vengono mostrati i dati real-time del sensore selezionato tramite il grafico descritto sopra
- *Scenari alternativi*:
  - Nessun dato disponibile per il sensore selezionato
- *Estensioni*:
  - #ref-uc(<Dati-non-disponibili-sensore-selezionato>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)


==== #uc() - Visualizzazione dello storico dei dati del sensore <Visualizzazione-storico-dati-sensore>
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


==== #uc() - Filtraggio per intervallo temporale dati storico sensore <Filtraggio-dati-storico-sensore>
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


=== Attore principale - Tenant User

// Dashboard ----------------------------------------------------------------------------------------------------------------
==== #uc() - Visualizzazione dashboard Tenant User <Visualizzazione-dashboard-tenant-user>
- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
- *Post-condizioni*:
  - La dashboard viene mostrata correttamente
- *Scenario principale*:
  - Il Tenant User accede alla dashboard del proprio tenant
  - Visualizza il numero di sensori attivi e non attivi
  - Visualizza il numero di gateway attivi e non attivi
  - Visualizza gli alert riguardanti eventi anomali all'interno del tenant
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-lista-alert>)

===== #sub-uc() - Visualizzazione numero di sensori attivi e non attivi <Visualizzazione-numero-sensori-attivi-non-attivi>
- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il numero di sensori attivi e non attivi in forma testuale e di grafico a torta
- *Scenario principale*:
  - Il Tenant User visualizza il numero di sensori attivi e non attivi
  - Il Tenant User visualizza le informazioni in forma testuale e di grafico a torta.

===== #sub-uc() - Visualizzazione numero di gateway attivi e non attivi <Visualizzazione-numero-gateway-attivi-non-attivi>
- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra il numero di gateway attivi e non attivi in forma testuale e di grafico a torta
- *Scenario principale*:
  - Il Tenant User visualizza il numero di gateway attivi e non attivi
  - Il Tenant User visualizza le informazioni in forma testuale e di grafico a torta.


==== #uc() - Visualizzazione lista alert <Visualizzazione-lista-alert>
- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista degli alert riguardanti eventi anomali all'interno del tenant
- *Scenario principale*:
  - Il Tenant User visualizza gli alert riguardanti eventi anomali nel proprio tenant
  - Il Tenant User visualizza gli alert in forma di lista ordinata in ordine cronologico decrescente (dal più recente al meno recente).


==== #uc() - Visualizzazione alert <Visualizzazione-alert>
- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
  - L'alert esiste ed è associato al tenant del Tenant User
- *Post-condizioni*:
  - Il Sistema mostra il titolo e la descrizione dell'alert selezionato
- *Scenario principale*:
  - Il Tenant User visualizza il titolo e la descrizione dell'alert selezionato

// TODO: AGGIUNGERE TIPI DI ALERT VISUALIZZATI
// - mancata ricezione dati da GATEWAY (l'alert non si mostra se il gateway è stato disattivato)
// - mancata ricezione dati da SENSORE SPECIFICO (l'alert non si mostra se il sensore è stato disattivato


// TODO: DA AGGIUNGERE EVENTUALI INFORMAZIONI DA AGGIUNGERE ALLA DASHBOARD

==== #uc() - Visualizzazione sensori collegati al tenant <Visualizzazione-sensori-collegati-tenant>
- *Attore principale*: Tenant User
- *Pre-condizioni*:
  - Il Tenant User è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista dei sensori associati al tenant del Tenant User
- *Scenario principale*:
  - Il Tenant User seleziona la funzionalità di visualizzazione sensori
  - Il Tenant User visualizza la lista dei sensori associati al tenant del Tenant User

=== Attore principale - Tenant Admin
==== #uc() - Registrazione nuovo Tenant User <Registrazione-nuovo-tenant-user>
- *Attore principale*: Tenant Admin
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema registra correttamente il nuovo Tenant User nel tenant associato al Tenant Admin
  - Il Sistema invia una email con un link per impostare la password dell'account appena creato
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin inserisce l'indirizzo email del nuovo Tenant User
  - L'Email client riceve la mail di impostazione password
- *Scenari alternativi*:
  - L'email è già associata ad un altro utente all'interno del Sistema
- *Estensioni*:
  - #ref-uc(<Email-gia-utilizzata-tenant-admin>)
- *Inclusioni*:
  - #ref-uc(<Inserimento-email>)
  - #ref-uc(<Invio-email-impostazione-password>)

===== #sub-uc() - Inserimento email <Inserimento-email>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
- *Post-condizioni*:
  - Il Sistema riceve l'indirizzo email inserito
- *Scenario principale*:
  - Il Tenant Admin inserisce l'indirizzo email

===== #sub-uc() - Invio email impostazione password al nuovo Tenant-User <Invio-email-impostazione-password>
- *Attore principale*: Tenant-admin
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Tenant-admin
  - L'email del nuovo Tenant-user è valida
- *Post-condizioni*:
  - Il Sistema invia una email con il link per l'impostazione della nuova password
- *Scenario principale*:
  - L'Email client riceve una email con il link per l'impostazione della nuova password

==== #uc() - Email già utilizzata <Email-gia-utilizzata-tenant-admin>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Tenant Admin ha inserito un'email già associata ad un altro utente all'interno del Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Tenant Admin visualizza un messaggio di errore

==== #uc() - Sospensione Tenant User <Sospensione-Tenant-User>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Tenant User è registrato nel Sistema
  - Il Tenant User in questione appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Tenant User non può più accedere al Sistema
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin sceglie il Tenant User che vuole sospendere
  - Il Tenant Admin conferma la sospensione
- *Inclusioni*
  - #ref-uc(<Conferma-sospensione-tenant-user>)

===== #sub-uc() - Conferma sospensione Tenant User <Conferma-sospensione-tenant-user>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Tenant User è registrato e non sospeso nel Sistema
  - Il Tenant User in questione appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma della sospensione del Tenant User
- *Scenario principale*:
  - Il Tenant Admin conferma la sospensione del Tenant User

==== #uc() - Riattivazione Tenant User <Riattivazione-Tenant-User>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Tenant User è registrato e sospeso nel Sistema
  - Il Tenant User in questione appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Tenant User può accedere nuovamente al Sistema
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin sceglie il Tenant User che vuole riattivare
  - Il Tenant Admin conferma la riattivazione dell'account
- *Inclusioni*
  - #ref-uc(<Conferma-riattivazione-tenant-user>)

===== #sub-uc() - Conferma riattivazione Tenant User <Conferma-riattivazione-tenant-user>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Tenant User è registrato e sospeso nel Sistema
  - Il Tenant User in questione appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma della riattivazione del Tenant User
- *Scenario principale*:
  - Il Tenant Admin conferma la riattivazione del Tenant User


==== #uc() - Eliminazione Tenant User <Eliminazione-Tenant-User>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Tenant User che si vuole eliminare esiste
  - Il Tenant User in questione appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema elimina il Tenant User
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin sceglie il Tenant User che vuole rimuovere
  - Il Tenant Admin conferma l'eliminazione del Tenant User
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-tenant-user>)

===== #sub-uc() - Conferma eliminazione Tenant User <Conferma-eliminazione-tenant-user>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel sistema
  - Il Tenant User che si vuole eliminare esiste
  - Il Tenant User in questione appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione del Tenant User
- *Scenario principale*:
  - Il Tenant Admin conferma l'eliminazione del Tenant User


==== #uc() - Visualizzazione dashboard Tenant Admin <Visualizzazione-dashboard-tenant-admin>
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
  - #ref-uc(<Visualizzazione-numero-api-key-valide-scadute>)
  - #ref-uc(<Visualizzazione-numero-sensori-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-numero-gateway-attivi-non-attivi>)
  - #ref-uc(<Visualizzazione-lista-alert>)
  - #ref-uc(<Visualizzazione-stato-richieste-commissioning-decommissioning-gateway>)

===== #sub-uc() - Visualizzazione numero di API key valide e scadute <Visualizzazione-numero-api-key-valide-scadute>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Viene visualizzato il numero di API key valide e scadute nel tenant
- *Scenario principale*:
  - Il Tenant Admin visualizza il numero di API key valide e scadute nel tenant
  - Il Tenant Admin visualizza le informazioni in forma testuale e di grafico a torta.


==== #uc() - Visualizzazione stato delle richieste di commissioning e decommissioning di gateway <Visualizzazione-stato-richieste-commissioning-decommissioning-gateway>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Viene visualizzato lo stato delle richieste di commissioning e decommissioning di gateway
- *Scenario principale*:
  - Il Tenant Admin visualizza lo stato delle richieste di commissioning e decommissioning di gateway
  - Il Tenant Admin visualizza le richieste in forma di lista ordinata in ordine cronologico decrescente (dalla più recente alla meno recente).


==== #uc() - Visualizzazione lista utenti tenant <Visualizzazione-lista-utenti-tenant>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Gli utenti appartengono al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema mostra la lista degli utenti registrati nel tenant del Tenant Admin
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista degli utenti registrati nel proprio tenant


==== #uc() - Disattivazione sensore <Disattivazione-sensore>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il sensore è associato ad un gateway registrato nel tenant del Tenant Admin
  - Il sensore non è già disattivato
- *Post-condizioni*:
  - Il Sistema invia un comando al gateway per ignorare i dati provenienti dal sensore specificato
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole disattivare
- *Scenari alternativi*:
  - Il gateway associato al sensore non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)


==== #uc() - Riattivazione sensore <Riattivazione-sensore>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il sensore è associato ad un gateway registrato nel tenant del Tenant Admin
  - Il sensore è disattivato
- *Post-condizioni*:
  - Il Sistema invia un comando al gateway per riprendere la raccolta dei dati provenienti dal sensore specificato
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona il sensore che vuole riattivare
- *Scenari alternativi*:
  - Il gateway associato al sensore non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)
- *Inclusioni*:
  - #ref-uc(<Selezione-sensore>)


==== #uc() - Registrazione nuova API key <Registrazione-nuova-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema genera una nuova API key associata al tenant del Tenant Admin
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin inserisce il nome della API key
  - Il Tenant Admin inserisce la scadenza della API key
- *Inclusioni*:
  - #ref-uc(<Inserimento-nome-api-key>)
  - #ref-uc(<Inserimento-scadenza-api-key>)
- *Estensioni*:
  - #ref-uc(<Nome-api-key-gia-utilizzato>)
  - #ref-uc(<Scadenza-api-key-data-passata>)

===== #sub-uc() - Inserimento nome API key <Inserimento-nome-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve il nome inserito per la nuova API key
- *Scenario principale*:
  - Il Tenant Admin inserisce il nome della nuova API key
- *Scenari alternativi*:
  - Il nome inserito è già utilizzato da un'altra API key all'interno del tenant

===== #sub-uc() - Inserimento scadenza API key <Inserimento-scadenza-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la scadenza inserita per la nuova API key
- *Scenario principale*:
  - Il Tenant Admin inserisce la scadenza della nuova API key
- *Scenari alternativi*:
  - La scadenza inserita non è valida



==== #uc() - Nome API key già utilizzato <Nome-api-key-gia-utilizzato>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Tenant Admin ha inserito un nome già utilizzato per la nuova API key all'interno del proprio tenant
- *Post-condizioni*:
  - L'operazione di registrazione della nuova API key viene interrotta
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Tenant Admin visualizza un messaggio di errore dopo aver inserito il nome già utilizzato


==== #uc() - Scadenza API key in data passata <Scadenza-api-key-data-passata>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Tenant Admin ha inserito una scadenza in data passata per la nuova API key
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Tenant Admin visualizza un messaggio di errore dopo aver inserito una scadenza in data passata


==== #uc() - Visualizzazione lista API key <Visualizzazione-lista-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista delle API key associate al tenant
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista delle API key associate al tenant
  - Sono visualizzati per ogni API key il nome, la data di creazione e la data di scadenza


==== #uc() - Visualizzazione dettagli API key <Visualizzazione-dettagli-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Vengono visualizzati i dettagli della API key selezionata
- *Scenario principale*:
  - Il Tenant Admin visualizza il nome della API key
  - Il Tenant Admin visualizza la data di creazione
  - Il Tenant Admin visualizza la data di scadenza
  - Il Tenant Admin visualizza il grafico di utilizzo della API key
- *Inclusioni*:
  - #ref-uc(<Grafico-utilizzo-api-key>)

===== #sub-uc() - Grafico utilizzo API key <Grafico-utilizzo-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - La API key selezionata esiste e appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema mostra il grafico Time Series di utilizzo della API key selezionata
- *Scenario principale*:
  - Il Tenant Admin visualizza il grafico Time Series di utilizzo della API key selezionata
  - Visualizza nell'asse Y il numero di richieste effettuate con la API key
  - Visualizza nell'asse X il tempo

==== #uc() - Eliminazione API key <Eliminazione-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - La API key selezionata appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema elimina la API key selezionata
  - Il Sistema registra l'evento negli audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona una API key associata al proprio tenant
  - Il Tenant Admin conferma l'eliminazione della API key selezionata
  - Il Tenant Admin elimina la API key selezionata
- *Inclusioni*:
  - #ref-uc(<Conferma-eliminazione-api-key>)

===== #sub-uc() - Conferma eliminazione API key <Conferma-eliminazione-api-key>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - La API key selezionata appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione della API key selezionata
- *Scenario principale*:
  - Il Tenant Admin conferma l'eliminazione della API key selezionata

==== #uc() - Visualizzazione lista di gateway <Visualizzazione-lista-gateway-tenant-admin>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra la lista dei gateway associati al tenant del Tenant Admin
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista dei gateway associati al tenant

==== #uc() - Visualizzazione gateway <Visualizzazione-gateway-tenant-admin>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema mostra le informazioni dettagliate del gateway selezionato
- *Scenario principale*:
  - Il Tenant Admin visualizza le informazioni del gateway selezionato, tra cui:
    - Nome del gateway
    - Stato: attivo, non raggiungibile, non associato, non autenticato
    - Sensori collegati al gateway
- *Inclusioni*:
  - #ref-uc(<Visualizzazione-stato-gateway>)
  - #ref-uc(<Visualizzazione-sensori-collegati-gateway>)

===== #sub-uc() - Visualizzazione stato gateway <Visualizzazione-stato-gateway>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è associato al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema mostra lo stato del gateway selezionato
- *Scenario principale*:
  - Il Tenant Admin visualizza lo stato del gateway selezionato, che può essere:
    - Attivo
    - Non raggiungibile
    - Non associato
    - Non autenticato

===== #sub-uc() - Visualizzazione sensori collegati al gateway <Visualizzazione-sensori-collegati-gateway>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway è associato al tenant del Tenant Admin
  - Il gateway ha sensori collegati
- *Post-condizioni*:
  - Il Sistema mostra la lista dei sensori collegati al gateway selezionato
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista dei sensori collegati al gateway selezionato

==== #uc() - Visualizzazione lista sensori associati al tenant <Visualizzazione-lista-sensori-associati-tenant>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Tenant Admin
  - I sensori sono associati al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema mostra la lista dei sensori associati al tenant del Tenant Admin
- *Scenario principale*:
  - Il Tenant Admin visualizza la lista dei sensori associati al tenant

==== #uc() - Disattivazione gateway <Disattivazione-gateway-tenant-admin>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema invia il comando di disattivazione al gateway e sospende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway attivo associato al proprio tenant
  - Il Tenant Admin disattiva il gateway

==== #uc() - Riattivazione gateway <Riattivazione-gateway-tenant-admin>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il gateway selezionato appartiene al tenant del Tenant Admin
- *Post-condizioni*:
  - Il Sistema riattiva il gateway e riprende la ricezione dei suoi dati
- *Scenario principale*:
  - Il Tenant Admin seleziona un gateway disattivato associato al proprio tenant
  - Il Tenant Admin riattiva il gateway

// Da rifinire (es che informazioni mostrare nel log come timestamp, ip, user, tipo di evento)
==== #uc() - Visualizzazione audit log <Visualizzazione-audit-log>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra le informazioni relative agli audit log
- *Scenario principale*:
  - Il Tenant Admin seleziona l'opzione di visualizzazione degli audit log
  - Il Sistema recupera i dati relativi agli audit log
- *Estensioni*:
  - #ref-uc(<Filtraggio-log-per-tipologia>)
  - #ref-uc(<Filtraggio-log-per-intervallo-temporale>)
  - #ref-uc(<Filtraggio-log-per-utente>)
  - #ref-uc(<Esportazione-log>)

// TODO: definire nelle varie post condizioni i valori dei singoli log: chi?che ruolo?cosa ha fatto?quando?
// AUDIT LOG:
/*
  --- GESTIONE UTENTI
  - Creazione Tenant User
  - Sospensione Tenant User
  - Riattivazione Tenant User
  - Eliminazione Tenant User
  --- GESTIONE API KEY
  - Creazione API Key
  - Eliminazione API Key
  --- GESTIONE ACCESSI
  - Login
  - Logout
  - Generazione 2FA
  - Accesso fallito (user/pswd)
  - Accesso fallito (2FA)
  - Accesso fallito (Tenant User sospeso)
  - Richiesta reimpostazione password
  --- GESTIONE SENSORI E GATEWAY
  - Richiesta fornitura gateway
  - Disattivazione sensore
  - Riattivazione sensore
*/

===== #uc() - Filtraggio log per tipologia <Filtraggio-log-per-tipologia>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il Sistema mostra i dati di log filtrati secondo la tipologia desiderata
  - Il Sistema mostra i dati di log filtrati secondo la tipologia desiderata
- *Scenario principale*
  - Il Tenant Admin seleziona una o più tipologie di log che desidera vedere
  - Il Tenant Admin visualizza gli audit log filtrati per le tipologie desiderate

===== #uc() - Filtraggio log per intervallo temporale <Filtraggio-log-per-intervallo-temporale>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il Sistema mostra i dati di log filtrati secondo l'intervallo temporale indicato
- *Scenario principale*
  - Il Tenant Admin specifica un intervallo temporale desiderato
  - Il Tenant Admin visualizza gli audit log filtrati secondo l'intervallo specificato

===== #uc() - Filtraggio log per utente <Filtraggio-log-per-utente>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
  - Il Sistema ha recuperato i dati di log
- *Post-condizioni*
  - Il Sistema mostra i dati di log relativi ai Tenant User specificati
- *Scenario principale*
  - Il Tenant Admin specifica uno o più Tenant User di cui vuole consultare l'attività
  - Il Tenant Admin visualizza gli audit log filtrati in base ai Tenant User scelti

// TODO: Da rifinire nei dettagli? O va bene così?
==== #uc() - Esportazione log <Esportazione-log>
- *Attore principale*: Tenant Admin
- *Pre-condizioni*:
  - Il Tenant Admin è autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema fornisce i log in un file scaricabile
- *Scenario principale*:
  - Il Tenant Admin seleziona l'opzione di esportazione degli audit log

=== Attore principale - Super Admin
==== #uc() - Creazione Tenant <Creazione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema riceve l'accettazione o meno della clausola
- *Scenario principale*:
  - Il Super Admin inserisce l'accettazione o meno della clausola di impersonificazione

==== #uc() - Nome del tenant già utilizzato <Nome-tenant-gia-utilizzato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il nome del tenant inserito esiste già nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super Admin ha inserito il nome del nuovo tenant ma è già in uso

==== #uc() - Eliminazione Tenant <Eliminazione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il tenant viene rimosso dal Sistema
- *Scenario principale*:
  - Il Sistema elimina il tenant selezionato

==== #uc() - Decommissioning Gateway fallito <Decommissioning-gateway-fallito>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il decommissioning del o dei Gateway non viene completato
  - Il tenant non viene eliminato
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il decommissioning di uno o più Gateway associati fallisce durante l'eliminazione del tenant

==== #uc() - Visualizzazione dashboard Super Admin <Visualizzazione-dashboard-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema mostra la dashboard con le informazioni sui tenant e sui Gateway
- *Scenario principale*:
  - Il Super Admin visualizza le informazioni aggregate sui tenant
  - Il Super Admin visualizza le informazioni aggregate sui Gateway

==== #uc() - Visualizzazione lista Gateway <Visualizzazione-lista-gateway-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutti i Gateway registrati
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista Gateway
  - Il Super Admin visualizza la lista di tutti i Gateway registrati nel Sistema

==== #uc() - Visualizzazione Gateway <Visualizzazione-gateway-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra i dettagli del Gateway selezionato
- *Scenario principale*:
  - Il Super Admin visualizza i dettagli del Gateway selezionato

// AZIONI SUPER-ADMIN SUI GATEWAY

==== #uc() - Associazione Gateway-tenant <Associazione-gateway-tenant> //è corretto considerare il Gateway come attore secondario?
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway non deve essere già associato ad un altro tenant
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Gateway da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da associare

==== #uc() - Selezione tenant <Selezione-tenant-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il Gateway

==== #uc() - Configurazione Gateway <Configurazione-gateway>
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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

==== #uc() - Gateway non raggiungibile <Gateway-non-raggiungibile>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super Admin tenta di configurare il Gateway ma non è raggiungibile

==== #uc() - Configurazione Gateway non valida <Configurazione-gateway-non-valida>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non applica la configurazione al Gateway
- *Scenario principale*:
  - Il Super Admin inserisce una configurazione non valida per il Gateway selezionato

==== #uc() - Decommissioning Gateway <Decommissioning-gateway>
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant
  - Il Gateway viene resettato alle impostazioni di fabbrica
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway su cui eseguire il decommissioning
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
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
  - Il Gateway deve essere associato ad un tenant
- *Post-condizioni*:
  - Il Gateway viene disassociato dal tenant a livello di Sistema
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da disassociare
  - Il Sistema invia il comando di disassociazione al Gateway

==== #uc() - Reset Gateway <Reset-gateway>
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Gateway viene resettato alle impostazioni di fabbrica
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da resettare
  - Il Sistema invia il comando di reset al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il reset non può essere completato
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc() - Riavvio Gateway <Riavvio-gateway>
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway deve essere registrato e autenticato nel Sistema
- *Post-condizioni*:
  - Il Gateway viene riavviato correttamente
- *Scenario principale*:
  - Il Super Admin seleziona il Gateway da riavviare
  - Il Sistema invia il comando di riavvio al Gateway
- *Scenari alternativi*:
  - Il Gateway non è raggiungibile perciò il riavvio non può essere completato
- *Estensioni*:
  - #ref-uc(<Gateway-non-raggiungibile>)

==== #uc() - Autenticazione Gateway <Autenticazione-gateway>
- *Attore principale*: Super Admin
//- *Attore secondario*: Gateway
- *Precondizioni*:
  - L'Utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway è registrato nel Sistema ma non ancora autenticato
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non autentica il Gateway
- *Scenario principale*:
  - Il Super Admin fornisce un certificato non valido per l'autenticazione del Gateway selezionato
  - Il Super Admin visualizza un messaggio di errore

==== #uc() - Identificativo Gateway già utilizzato <Identificativo-gateway-gia-utilizzato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Gateway è registrato nel Sistema ma non ancora autenticato
  - L'identificativo fornito è già associato ad un altro Gateway
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore e non autentica il Gateway
  - Il Sistema interrompe l'autenticazione del Gateway
- *Scenario principale*:
  - Il Super-admin fornisce un identificativo già utilizzato per l'autenticazione del Gateway selezionato
  - Il Super Admin visualizza un messaggio di errore

==== #uc() - Accettazione fornitura Gateway <Accettazione-richiesta-fornitura-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Esiste una richiesta di fornitura Gateway da parte di un tenant
- *Post-condizioni*:
  - La richiesta di fornitura Gateway viene accettata
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di fornitura Gateway da parte di un tenant
  - Il Super Admin accetta la richiesta di fornitura Gateway

==== #uc() - Rifiuto fornitura Gateway <Rifiuto-richiesta-fornitura-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Esiste una richiesta di fornitura Gateway da parte di un tenant
- *Post-condizioni*:
  - Il Sistema riceve una motivazione per il rifiuto della richiesta
  - La richiesta di fornitura Gateway viene rifiutata
- *Scenario principale*:
  - Il Super Admin visualizza la richiesta di fornitura Gateway da parte di un tenant
  - Il Super Admin fornisce una motivazione per il rifiuto della richiesta di fornitura Gateway
  - Il Super Admin rifiuta la richiesta di fornitura Gateway

==== #uc() - Visualizzazione lista tenant <Visualizzazione-lista-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutti i tenant registrati nel Sistema
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista tenant

==== #uc() - Impersonificazione tenant <Impersonificazione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve essere registrato nel Sistema
- *Post-condizioni*:
  - Il Sistema mostra l'identificativo del tenant selezionato
- *Scenario principale*:
  - Il Super Admin visualizza l'identificativo del tenant selezionato

==== #uc() - Visualizzazione richieste di fornitura Gateway <Visualizzazione-richieste-fornitura-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema mostra la lista di tutte le richieste di fornitura Gateway di tutti i tenant
- *Scenario principale*:
  - Il Super Admin seleziona la funzionalità di visualizzazione lista richieste di fornitura Gateway

==== #uc() - Creazione utente Tenant-admin <Creazione-utente-tenant-admin>
- *Attore principale*: Super Admin
- *Attore secondario*: Client email
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - #ref-uc(<Email-gia-utilizzata-super-admin>)
- *Inclusioni*:
  - #ref-uc(<Selezione-tenant>)
  - #ref-uc(<Inserimento-email-nuovo-tenant-admin>)
  - #ref-uc(<Invio-email-impostazione-password-nuovo-tenant-admin>)

===== #sub-uc() - Selezione tenant <Selezione-tenant>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del tenant da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il tenant a cui associare il nuovo Tenant Admin

===== #sub-uc() - Inserimento email nuovo Tenant Admin <Inserimento-email-nuovo-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve esistere nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve l'email del nuovo Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin inserisce l'email del nuovo Tenant Admin

===== #sub-uc() - Invio email impostazione password nuovo Tenant-admin <Invio-email-impostazione-password-nuovo-tenant-admin>
- *Attore principale*: Super-admin
- *Attore secondario*: Email client
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il tenant deve esistere nel Sistema
  - L'email del nuovo Tenant Admin è valida
- *Post-condizioni*:
  - Il Sistema invia una email al nuovo Tenant-admin con le credenziali di accesso
- *Scenario principale*:
  - L'Email client riceve una email con il link per l'impostazione della nuova password


==== #uc() - Email già utilizzata <Email-gia-utilizzata-super-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - Il Super Admin è autenticato nel Sistema
  - Il Super Admin ha inserito un'email già associata ad un altro utente all'interno del Sistema
- *Post-condizioni*:
  - Il Sistema mostra un messaggio di errore
- *Scenario principale*:
  - Il Super Admin visualizza un messaggio di errore

==== #uc() - Sospensione account Tenant Admin <Sospensione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere già sospeso
- *Post-condizioni*:
  - Il Sistema riceve la conferma della sospensione del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma la sospensione dell'account del Tenant Admin selezionato

==== #uc() - Riattivazione account Tenant Admin <Riattivazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da riattivare

===== #sub-uc() - Conferma riattivazione account Tenant Admin <Conferma-riattivazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin deve essere sospeso
- *Post-condizioni*:
  - Il Sistema riceve la conferma della riattivazione del Tenant Admin
- *Scenario principale*:
  - Il Super Admin conferma la riattivazione dell'account del Tenant Admin selezionato

==== #uc() - Eliminazione account Tenant Admin <Eliminazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il Tenant Admin deve esistere nel Sistema
  - Il Tenant Admin non deve essere l'unico Tenant Admin nel tenant
- *Post-condizioni*:
  - Il Sistema riceve la selezione del Tenant Admin da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il Tenant Admin da eliminare

===== #sub-uc() - Conferma eliminazione account Tenant Admin <Conferma-eliminazione-account-tenant-admin>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema assegna un ID univoco al gateway simulato
  - Il Sistema crea correttamente un nuovo gateway simulato con i parametri specificati
  - Il Sistema genera dei certificati di autenticazione per il gateway simulato
- *Scenario principale*:
  - Il Super Admin imposta il nome del gateway simulato
  - Il Super Admin imposta la dimensione in byte del buffer del gateway simulato
  - Il Sistema genera un ID univoco al gateway simulato
- *Inclusioni*:
  - #ref-uc(<Inserimento-nome-gateway-simulato>)
  - #ref-uc(<Inserimento-dimensione-buffer-gateway-simulato>)

===== #sub-uc() - Inserimento nome gateway simulato <Inserimento-nome-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema riceve il nome del nuovo gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce il nome del nuovo gateway simulato

===== #sub-uc() - Inserimento dimensione buffer gateway simulato <Inserimento-dimensione-buffer-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema riceve la dimensione in byte del buffer del nuovo gateway simulato
- *Scenario principale*:
  - Il Super Admin inserisce la dimensione in byte del buffer del nuovo gateway simulato

==== #uc() - Creazione sensore simulato <Creazione-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Esiste almeno un gateway simulato
- *Post-condizioni*:
  - Il Sistema crea correttamente il nuovo sensore simulato e lo associa al gateway
- *Scenario principale*:
  - Il Super Admin imposta i servizi GATT del sensore simulato
  - Il Super Admin seleziona il gateway simulato a cui associare il sensore simulato
- *Inclusioni*:
  - #ref-uc(<Selezione-servizi-sensore-simulato>)
  - #ref-uc(<Inserimento-associazione-gateway-simulato>)

===== #sub-uc() - Inserimento tipologia sensore simulato <Selezione-servizi-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema riceve i servizi GATT offerti dal nuovo sensore simulato
- *Scenario principale*:
  - Il Super Admin può scegliere tra i seguenti servizi:
    - Heart Rate Service (HRS)
    - Pulse Oximeter Service (POS)
    - Servizio custom per la misurazione dell'ECG
    - Health Thermometer Service (HTS)
    - Environmental Sensing Service (ESS)
  - Il Super Admin sceglie i servizi GATT simulati dal nuovo sensore simulato

===== #sub-uc() - Inserimento associazione gateway simulato <Inserimento-associazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
- *Post-condizioni*:
  - Il Sistema riceve l'identificativo del gateway simulato a cui associare il sensore simulato
- *Scenario principale*:
  - Il Super Admin inserisce l'identificativo del gateway simulato

==== #uc() - Eliminazione gateway simulato <Eliminazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il gateway simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del gateway simulato da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il gateway simulato da eliminare

===== #sub-uc() - Conferma eliminazione gateway simulato <Conferma-eliminazione-gateway-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il gateway simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione del gateway simulato
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione del gateway simulato selezionato

==== #uc() - Eliminazione sensore simulato <Eliminazione-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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
  - L'utente è autenticato con il ruolo di Super Admin
  - Il sensore simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la selezione del sensore simulato da parte del Super Admin
- *Scenario principale*:
  - Il Super Admin seleziona il sensore simulato da eliminare

===== #sub-uc() - Conferma eliminazione sensore simulato <Conferma-eliminazione-sensore-simulato>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - Il sensore simulato esiste nel Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma dell'eliminazione del sensore simulato
- *Scenario principale*:
  - Il Super Admin conferma l'eliminazione del sensore simulato selezionato

==== #uc() Monitoraggio metriche di sistema
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
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

=== #sub-uc() - Visualizzazione gateway offline/online <Visualizzazione-gateway-offline-online>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica dei gateway offline/online è disponibile
- *Post-condizioni*:
  - Il Sistema mostra quanti gateway sono attualmente offline e online
  - Il Sistema rappresenta la metrica con un grafico a torta
- *Scenario principale*:
  - Il Super Admin visualizza il numero di gateway offline e online
  - Il Super Admin visualizza il grafico a torta rappresentante la metrica

=== #sub-uc() - Visualizzazione throughput dati <Visualizzazione-throughput-dati>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica del throughput dati è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il numero di dati inviati al secondo al Sistema Cloud dai gateway
  - Il Sistema rappresenta la metrica con un grafico Time Series
- *Scenario principale*:
  - Il Super Admin visualizza il throughput dati
  - Il Super Admin visualizza il grafico Time Series rappresentante la metrica

=== #sub-uc() - Visualizzazione utilizzo risorse nodi cloud <Visualizzazione-utilizzo-risorse-nodi-cloud>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica dell'utilizzo delle risorse dei nodi cloud è disponibile
- *Post-condizioni*:
  - Il Sistema mostra l'utilizzo di CPU e RAM delle diverse istanze Cloud
  - Il Sistema rappresenta la metrica con uno Stat Panel
  - Il Sistema mostra per ogni istanza Cloud l'andamento temporale dell'utilizzo di CPU e RAM
- *Scenario principale*:
  - Il Super Admin visualizza l'utilizzo di CPU e RAM delle diverse istanze Cloud
  - Il Super Admin visualizza lo Stat Panel rappresentante le metriche
  - Il Super Admin visualizza il grafico Time Series rappresentante l'andamento temporale delle metriche

=== #sub-uc() - Visualizzazione frequenza disconnessioni gateway <Visualizzazione-frequenza-disconnessioni-gateway>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica della frequenza di disconnessione dei gateway è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il numero di disconnessioni per ogni gateway in un intervallo di tempo specificato
  - Il Sistema rappresenta la metrica con un grafico a barre
- *Scenario principale*:
  - Il Super Admin visualizza la frequenza di disconnessione dei gateway
  - Il Super Admin visualizza il grafico a barre rappresentante le disconnessioni rilevate per ogni gateway

=== #sub-uc() - Visualizzazione dimensioni payload pacchetti <Visualizzazione-dimensioni-payload-pacchetti>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica delle dimensioni dei payload dei pacchetti è disponibile
- *Post-condizioni*:
  - Il Sistema mostra le dimensioni medie, minime e massime dei payload dei pacchetti inviati dai gateway
  - Il Sistema rappresenta la metrica con un grafico a 3 barre per gateway, una per ogni tipo di dimensione
- *Scenario principale*:
  - Il Super Admin visualizza le dimensioni dei payload dei pacchetti inviati dai gateway
  - Il Super Admin visualizza il grafico a barre rappresentante le dimensioni medie, minime e massime dei payload

=== #sub-uc() - Visualizzazione data staleness <Visualizzazione-data-staleness>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica della data staleness è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il tempo dall'ultimo messaggio inviato per ogni sensore
  - Il Sistema rappresenta la metrica con un'alert list, evidenziando i sensori con data staleness superiore ad una soglia predefinita
- *Scenario principale*:
  - Il Super Admin visualizza la data staleness dei sensori
  - Il Super Admin visualizza l'alert list rappresentante la data staleness di ogni sensore

=== #sub-uc() - Visualizzazione valori out-of-range <Visualizzazione-valori-out-of-range>
- *Attore principale*: Super Admin
- *Pre-condizioni*:
  - L'utente è autenticato con il ruolo di Super Admin
  - La metrica dei valori out-of-range è disponibile
- *Post-condizioni*:
  - Il Sistema mostra il numero di valori out-of-range rilevati per ogni sensore
  - Il Sistema rappresenta la metrica con un grafico a barre
- *Scenario principale*:
  - Il Super Admin visualizza il numero di valori out-of-range rilevati per ogni sensore
  - Il Super Admin visualizza il grafico a barre rappresentante il numero di valori out-of-range rilevati per ogni sensore

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

==== #uc() - Conferma disattivazione invio dati gateway <Conferma-comando-disattivazione-invio-dati>
- *Attore principale*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di disattivazione invio dati dal Sistema
  - Il Gateway ha sospeso l'invio dei dati dei sensori al Sistema
- *Post-condizioni*:
  - Il Sistema riceve la conferma di disattivazione invio dati dal Gateway
  - Il Sistema aggiorna lo stato del Gateway come "disattivato"
  - Il Sistema non è più "in ascolto" per i dati dei sensori associati al Gateway
  - Il Sistema non esegue più eventuali alert di mancata ricezione dei dati dal Gateway
- *Scenario principale*:
  - Il Gateway sospende l'invio dei dati dei sensori al Sistema
  - Il Gateway invia la conferma di disattivazione al Sistema

==== #uc() - Conferma riattivazione invio dati gateway  <Conferma-comando-riattivazione-invio-dati>
- *Attore primario*: Gateway
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

==== #uc() - Conferma disattivazione sensore <Conferma-comando-disattivazione-sensore>
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di disattivazione di un determinato sensore dal Sistema
  - Il Gateway ha sospeso l'invio dei dati del sensore in questione al Sistema
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di conferma da parte del Gateway
  - Il Sistema non è più "in ascolto" per i dati del sensore disattivato
  - Il Sistema non esegue più eventuali alert di mancata ricezione dei dati dal sensore
- *Scenario principale*:
  - Il Gateway riceve un comando di disattivazione di un determinato sensore
  - Il Gateway esegue il comando ricevuto e disattiva il sensore specificato, interrompendo l'invio dei dati ricevuti da esso al Cloud
  - Il Gateway invia un comando di conferma al Cloud

==== #uc() - Conferma riattivazione sensore <Conferma-comando-riattivazione-sensore>
- *Attore primario*: Gateway
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

// TODO: cos'è che viene parametrizzato nello specifico? cos'è il "valore del parametro di rolling average"?
// TODO: Sarebbe bene considerare il parametro di FREQUENZA D'INVIO DEI DATI? CHIEDIAMO A M31
==== #uc() - Conferma modifica parametro di rolling average <conferma-comando-modifica-rolling-average>
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha ricevuto un comando di modifica del parametro di rolling average dal Sistema
  - Il Gateway ha modificato il valore del parametro di rolling average
- *Post-condizioni*:
  - Il Sistema riceve un messaggio di conferma da parte del Gateway
- *Scenario principale*:
  - Il Gateway riceve un comando di modifica del parametro di rolling average
  - Il Gateway esegue il comando ricevuto e modifica il valore del parametro di rolling average
  - Il Gateway invia un comando di conferma al Cloud


==== #uc() - Invio comando di hello <Invio-comando-hello>
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso al Cloud
  - Il Gateway si è avviato e si è connesso per la prima volta al Cloud
  - Il Gateway possiede delle credenziali per l'autenticazione
  - Il Gateway possiede un identificativo  // TODO: qual è differenza tra credenziali di auth e identificativo?
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
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha inviato un messaggio di hello al Cloud
  - Il Sistema non riesce ad autenticare il Gateway
- *Post-condizioni*:
  - Il Sistema rifiuta la connessione con il Gateway
- *Scenario principale*:
  - Il Gateway riceve il messaggio di autenticazione fallita dal Sistema

// TODO: CONTINUA REVIEW DA QUA ----

==== #uc() - Identificativo Gateway non trovato <Identificativo-gateway-non-trovato>
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway ha inviato un messaggio di hello al Cloud
  - Il Sistema non riesce a trovare l'identificativo del Gateway
- *Post-condizioni*:
  - Il Sistema rifiuta la connessione con il Gateway
- *Scenario principale*:
  - Il Gateway riceve il messaggio di identificativo non trovato dal Sistema

==== #uc() - Invio dati crittografati <Invio-dati-crittografati>
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway è connesso e autenticato con il Cloud
  - Il Gateway ha completato la fase di commissioning, perciò è associato ad un tenant
  - Il Gateway ha a disposizione dati raccolti dai sensori associati
- *Post-condizioni*:
  - Il Sistema riceve i dati crittografati da parte del Gateway
- *Scenario principale*:
  - Il Gateway raccoglie i dati dal proprio buffer interno
  - Il Gateway utilizza la propria chiave per crittografare i dati raccolti dai sensori
  - Il Gateway invia i dati crittografati al Sistema
- *Scenari alternativi*:
  - Il Sistema Cloud non è raggiungibile
- *Estensioni*:
  - #ref-uc(<Sistema-cloud-non-raggiungibile>)

==== #uc() - Sistema Cloud non raggiungibile <Sistema-cloud-non-raggiungibile>
- *Attore primario*: Gateway
- *Pre-condizioni*:
  - Il Gateway tenta di inviare dati crittografati al Sistema Cloud
  - Il Sistema Cloud non è raggiungibile
- *Post-condizioni*:
  - Il Sistema non riceve i dati crittografati dal Gateway perché non è raggiungibile
  - Il Gateway ritenterà l'invio dei dati dopo un dato intervallo di tempo
- *Scenario principale*:
  - Il Gateway rileva che il Sistema Cloud non è raggiungibile
  - Il Gateway memorizza i dati nel proprio buffer interno per un invio successivo
  - Il Gateway elimina i dati più vecchi se il buffer è pieno


=== Attore principale - API Client
Di seguito sono riportati tutti gli use cases in cui l'attore principale è un generico API Client, ovvero un client che accede all'API esposta tramite una API Key di autenticazione prodotta da un super admin.

==== #uc() - Richiesta dati real-time sensore <Richiesta-dati-real-time-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - L'API Client ha richiesto i dati real-time per uno specifico sensore, associato a un tenant specifico
- *Post-condizioni*:
  - Vengono restituiti i dati real-time del sensore richiesto
- *Scenario principale*:
  - L'API Client richiede i dati real-time del sensore specificato
  - Il Sistema verifica che il sensore richiesto appartenga al tenant dell'API Client
- *Inclusioni*:
  - #ref-uc(<Verifica-sensore>)
  - #ref-uc(<Restituzione-dati-real-time-sensore>)

===== #sub-uc() - Restituzione dati real-time sensore <Restituzione-dati-real-time-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - Il sensore richiesto esiste ed appartiene al tenant del API Client
- *Post-condizioni*:
  - Vengono restituiti i dati real-time del sensore richiesto
- *Scenario principale*:
  - Il Sistema recupera e restituisce i dati real-time del sensore richiesto


==== #uc() - Richiesta storico dati sensore <Richiesta-storico-dati-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Post-condizioni*:
  - Viene restituito lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - L'API Client richiede lo storico dei dati del sensore specificato
  - Il Sistema verifica che il sensore richiesto appartenga al tenant del API Client
- *Scenari alternativi*:
  - Sensore non trovato
  - Nessun dato storico disponibile per il sensore richiesto
  - Sensore non associato al tenant del API Client
- *Inclusioni*:
  - #ref-uc(<Verifica-sensore>)
  - #ref-uc(<Restituzione-storico-dati-sensore>)

===== #sub-uc() - Restituzione storico dati sensore <Restituzione-storico-dati-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - Il sensore richiesto esiste ed appartiene al tenant del API Client
- *Post-condizioni*:
  - Viene restituito lo storico dei dati del sensore richiesto
- *Scenario principale*:
  - Il Sistema recupera e restituisce lo storico dei dati del sensore richiesto, eventualmente filtrati per intervallo temporale


==== #uc() - Verifica sensore <Verifica-sensore>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - Il sensore richiesto esiste ed è associato al tenant dell'API Client
- *Post-condizioni*:
  - Il sensore richiesto e la sua associazione al tenant dell'API Client sono validi
- *Scenario principale*:
  - Il Sistema verifica la validità del sensore richiesto e la sua associazione al tenant del API Client
- *Scenari alternativi*:
  - Il sensore richiesto non è stato trovato tra i sensori associati al tenant dell'API Client (#ref-uc(<Sensore-non-trovato>))
  - Non vi sono dati disponibili per il sensore richiesto (#ref-uc(<Nessun-dato-disponibile-sensore-richiesto>))
- *Estensioni*:
  - #ref-uc(<Sensore-non-trovato>)
  - #ref-uc(<Nessun-dato-disponibile-sensore-richiesto>)


==== #uc() - Sensore non trovato <Sensore-non-trovato>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
  - L'API Client ha richiesto i dati di un sensore che non appartiene alla lista dei sensori associati al tenant del client. #footnote[
      Questo include anche il caso in cui il sensore non esista. Si ha un errore unico per dare meno informazioni possibili riguardo ai sensori degli altri tenant.
    ]
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema rileva che il sensore richiesto non esiste oppure che il sensore richiesto non è associato al tenant dell'API Client


==== #uc() - Nessun dato disponibile per il sensore richiesto <Nessun-dato-disponibile-sensore-richiesto>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Post-condizioni*:
  - Viene mostrato un messaggio di errore
- *Scenario principale*:
  - Il Sistema prova a recuperare i dati del sensore selezionato e rileva l'assenza di dati


// ==== #uc() - Sensore non associato al tenant del API Client <Sensore-non-associato-tenant-API-Client>
// - *Attore principale*: API Client
// - *Pre-condizioni*:
//   - L'API Client è autenticato nel Sistema
// - *Post-condizioni*:
//   - Viene restituito un messaggio di errore
// - *Scenario principale*:
//   - Il Sistema rileva che il sensore richiesto non appartiene al tenant del API Client


==== #uc() - Autenticazione API Client <Autenticazione-API-Client>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client possiede delle credenziali di accesso
- *Post-condizioni*:
  - L'API Client è autenticato nel Sistema
- *Scenario principale*:
  - L'API Client invia le credenziali di autenticazione al Sistema
  - Il Sistema verifica le credenziali
  - Il Sistema autentica L'API Client
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
  - Il Sistema verifica le credenziali inviate dal API Client e rileva l'errore nelle credenziali

==== #uc() - Credenziali API Client scadute <Credenziali-API-Client-scadute>
- *Attore principale*: API Client
- *Pre-condizioni*:
  - L'API Client ha inviato credenziali scadute
- *Post-condizioni*:
  - Viene restituito un messaggio di errore
- *Scenario principale*:
  - Il Sistema verifica le credenziali inviate dal API Client e rileva che le credenziali sono scadute


== Sistema Gateway - Lista dei casi d'uso
Per ogni caso d'uso viene considerato il Sistema Gateway come funzionante e raggiungibile.

=== Attore principale - Sensore simulato

==== #uc() - Invio nuovo dato al Gateway <Invio-nuovo-dato-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
- *Post-condizioni*
  - Il Sistema riceve un nuovo dato dal Sensore
  - Il Sistema normalizza e formatta il dato in un formato interno standardizzato
  - Il Sistema salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera un nuovo dato simulato
  - Il Sensore invia il dato al Sistema Gateway


//??????ho chiesto a cardin se ha senso
// TODO: che ha detto cardin?
==== #uc() - Invio di dati eccessivi al Gateway <Invio-dati-eccessivi-gateway>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
- *Post-condizioni*:
  - Il Sistema riceve più dati di quanti ne possa inviare al Cloud
  - Il Sistema salva i dati più recenti nel buffer interno
  - Il Sistema elimina i dati più vecchi per fare spazio ai nuovi dati
- *Scenario principale*:
  - Il Sensore invia una quantità di dati superiore alla capacità di invio del Sistema Gateway

// TODO: dettagli implementativi?
==== #uc() - Invio di dato simulando Heart Rate Service <Invio-dato-heart-rate-service>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Heart Rate Service (GATT)
- *Post-condizioni*:
  - Il Sistema riceve un nuovo dato di frequenza cardiaca dal Sensore
  - Il Sistema normalizza e formatta il dato in un formato interno standardizzato
  - Il Sistema salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera un nuovo dato di frequenza cardiaca simulato
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway

// TODO: dettagli implementativi?
==== #uc() - Invio di dato simulando Pulse Oximeter Service <Invio-dato-pulse-oximeter-service>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Pulse Oximeter Service (GATT)
- *Post-condizioni*:
  - Il Sistema riceve le nuove misurazioni di saturazione di ossigeno nel sangue e frequenza del polso
  - Il Sistema normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera nuovi valori simulati di saturazione di ossigeno nel sangue e frequenza del polso
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway

// TODO: dettagli implementativi?
==== #uc() - Invio di dato simulando ECG Custom Profile <Invio-dato-ecg-custom>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato un profilo custom per invio di dati per l'elettrocardiogramma (ECG)
- *Post-condizioni*:
  - Il Sistema riceve i dati grezzi dell'ECG
  - Il Sistema normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera una sequenza di valori che simulano l'ECG
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway

// TODO: dettagli implementativi?
==== #uc() - Invio di dato simulando Health Thermometer Service <Invio-dato-health-thermometer-service>
- *Attore principale*: Sensore simulato
- *Pre-condizioni*:
  - Il Sensore è configurato correttamente con il Sistema Gateway
  - Il Sensore ha implementato il servizio Health Thermometer Service (GATT)
- *Post-condizioni*:
  - Il Sistema riceve il valore della temperatura corporea
  - Il Sistema normalizza e formatta i dati in un formato interno standardizzato
  - Il Sistema salva i dati in un buffer interno
- *Scenario principale*:
  - Il Sensore genera un nuovo dato di temperatura corporea
  - Il Sensore invia il pacchetto dati simulando una notifica GATT al Sistema Gateway

// TODO: dettagli implementativi?
==== #uc() - Invio di dati simulando Environmental Sensing Service <Invio-dato-environmental-sensing-service>
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

// TODO: ----- RIPRENDI VERIFICA DA QUA -----

=== Attore principale - Cloud

==== #uc() - Conferma autenticazione Gateway <Conferma-autenticazione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema ha precedentemente inviato un messaggio di Hello al Cloud
  - Il Sistema è stato autenticato con successo
- *Post-condizioni*:
  - Il Sistema riceve la conferma di autenticazione del Gateway
  - Il Sistema attende di essere associato ad un tenant
- *Scenario principale*:
  - Il Cloud invia la conferma di autenticazione al Gateway

==== #uc() - Rifiuto autenticazione Gateway <Rifiuto-autenticazione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema ha precedentemente inviato un messaggio di Hello al Cloud
  - Il Sistema non è stato autenticato con successo
- *Post-condizioni*:
  - Il Sistema riceve il rifiuto di autenticazione del Gateway
  - Il Sistema entra in stato di errore
- *Scenario principale*:
  - Il Cloud invia il rifiuto di autenticazione al Gateway

==== #uc() - Assegnazione tenant al Gateway <Assegnazione-tenant-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema è autenticato
  - Il Sistema non è ancora associato ad un tenant
  - Il Tenant assegnato è valido
- *Post-condizioni*:
  - Il Sistema riceve l'assegnazione del tenant
  - Il Sistema è pronto per inviare dati crittografati
- *Scenario principale*:
  - Il Cloud invia l'assegnazione del tenant al Sistema
  - Il Cloud invia la chiave per la cifratura dei dati
- *Inclusioni*:
  - #ref-uc(<Invio-tenant-associato-gateway>)
  - #ref-uc(<Invio-chiave-cifratura-dati>)

===== #sub-uc() - Invio tenant associato al Gateway <Invio-tenant-associato-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema è autenticato
  - Il Sistema non è ancora associato ad un tenant
  - Il Tenant assegnato è valido
- *Post-condizioni*:
  - Il Sistema riceve e salva l'assegnazione del tenant
- *Scenario principale*:
  - Il Cloud invia l'assegnazione del tenant al Sistema

===== #sub-uc() - Invio chiave per la cifratura dei dati <Invio-chiave-cifratura-dati>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema è autenticato
  - Il Sistema non è ancora associato ad un tenant
  - Il Tenant assegnato è valido
- *Post-condizioni*:
  - Il Sistema riceve e salva la chiave per la cifratura dei dati
- *Scenario principale*:
  - Il Cloud invia la chiave pubblica per la cifratura dei dati al Sistema

==== #uc() - Riattivazione sensore simulato <Riattivazione-sensore-simulato>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sensore simulato è configurato nel Sistema Gateway
  - Il Sensore simulato è disattivato, il Sistema non invia dati da quel Sensore
- *Post-condizioni*:
  - Il Sistema riceve il comando di riattivazione del Sensore simulato
  - Il Sistema ricomincia a inviare dati dal Sensore simulato
- *Scenario principale*:
  - Il Cloud invia il comando di riattivazione del Sensore simulato al Sistema Gateway

==== #uc() - Disattivazione sensore simulato <Disattivazione-sensore-simulato>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sensore simulato è configurato nel Sistema Gateway
  - Il Sensore simulato è attivato, il Sistema invia dati da quel Sensore
- *Post-condizioni*:
  - Il Sistema riceve il comando di disattivazione del Sensore simulato
  - Il Sistema smette di inviare dati dal Sensore simulato
- *Scenario principale*:
  - Il Cloud invia il comando di disattivazione del Sensore simulato al Sistema Gateway

==== #uc() - Riattivazione Gateway <Riattivazione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è in stato di disattivazione, non invia dati dei propri sensori
- *Post-condizioni*:
  - Il Sistema riceve il comando di riattivazione
  - Il Sistema ricomincia l'invio di dati dei propri sensori
- *Scenario principale*:
  - Il Cloud invia il comando di riattivazione al Sistema Gateway

==== #uc() - Disattivazione Gateway <Invio-comando-sospensione-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è attivo, invia dati dei propri sensori
- *Post-condizioni*:
  - Il Sistema riceve il comando di disattivazione
  - Il Sistema smette di inviare dati dei propri sensori
- *Scenario principale*:
  - Il Cloud invia il comando di disattivazione al Sistema Gateway

==== #uc() - Riavvio Gateway <Riavvio-gateway-cloud>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - ?
- *Post-condizioni*:
  - Il Sistema riceve il comando di riavvio
  - Il Sistema si spegne e si riaccende, mantenendo le configurazioni e i dati salvati localmente
- *Scenario principale*:
  - Il Cloud invia il comando di riavvio al Sistema Gateway

==== #uc() - Modifica finestra Rolling Average <Modifica-finestra-rolling-average>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il Sistema riceve il comando di modifica della finestra di Rolling Average
  - Il Sistema aggiorna la configurazione della finestra di Rolling Average per i dati inviati
- *Scenario principale*:
  - Il Cloud invia il comando di modifica della finestra di Rolling Average al Sistema Gateway

==== #uc() - Decommissioning Gateway <Decommissioning-gateway-cloud>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il Sistema riceve il comando di decommissioning
  - Il Sistema cancella l'associazione al tenant
  - Il Sistema cancella tutte le configurazioni e i dati salvati localmente
- *Scenario principale*:
  - Il Cloud invia il comando di decommissioning al Sistema Gateway
- *Inclusioni*:
  - #ref-uc(<Reset-gateway-cloud>)
  - #ref-uc(<Disassociazione-tenant-gateway>)

===== #sub-uc() - Disassociazione tenant Gateway <Disassociazione-tenant-gateway>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - Il Sistema Gateway è associato ad un tenant
- *Post-condizioni*:
  - Il Sistema cancella l'associazione al tenant
  - Il Sistema cancella la chiave per la cifratura dei dati
- *Scenario principale*:
  - Il Cloud invia il comando di disassociazione del tenant al Sistema Gateway

==== #uc() - Reset Gateway <Reset-gateway-cloud>
- *Attore principale*: Cloud
- *Pre-condizioni*:
  - ?
- *Post-condizioni*:
  - Il Sistema riceve il comando di reset
  - Il Sistema cancella tutte le configurazioni e i dati salvati localmente, ritornando allo stato iniziale di fabbrica
- *Scenario principale*:
  - Il Cloud invia il comando di reset al Sistema Gateway







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
- *Non funzionali*: descrivono com il *Sistema* deve comportarsi, non riguardano una funzionalità specifica ma le proprietà del *Sistema*;
- *Dominio*: descrivono le regole e le politiche specifiche del dominio applicativo in cui il *Sistema* opera;
- *Vincoli*: descrivono le limitazioni imposte al *Sistema* durante lo sviluppo.

Inoltre un buon requisito deve essere *SMART*:
- *Specifico*: il requisito deve essere chiaro e preciso, evitando ambiguità;
- *Misurabile*: il requisito deve essere quantificabile o facilmente verificabile attraverso test o misurazioni;
- *Achievable* (Raggiungibile): il requisito deve essere realistico e fattibile entro i vincoli di tempo, risorse e tecnologie disponibili;
- *Rilevante*: il requisito deve essere importante per gli stakeholder e contribuire agli obiettivi del progetto;
- *Tracciabile nel tempo*: il requisito deve avere una scadenza o un periodo di validità

== Requisiti funzionali
#table(
  columns: (0.20fr, 0.60fr, 0.20fr),
  align: left,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [], [L'Utente non autenticato deve avere la possibilità di autenticarsi presso il Sistema], [@Autenticazione-Utente],
  [],
  [L'Utente non autenticato deve inserire la propria email per autenticarsi],
  [@Autenticazione-Utente @Inserimento-email-auth],

  [],
  [L'Utente non autenticato deve inserire la propria password per autenticarsi],
  [@Autenticazione-Utente  @Inserimento-password],

  [],
  [L'Utente non autenticato deve ricevere un messaggio di errore in caso di inserimento di credenziali errate],
  [@Autenticazione-non-riuscita],

  [],
  [L'Utente non autenticato deve ricevere un messaggio di errore nel caso in cui tenti di accedere ad un account sospeso],
  [@Account-sospeso],

  [],
  [L'Utente non autenticato, dopo aver inserito delle credenziali corrette per un account con 2FA attiva, deve riceve una mail con il codice di verifica],
  [@Invio-codice-2FA],

  [],
  [L'Utente non autenticato, una volta autenticato con credenziali corrette per un account con 2FA attiva, deve poter richiedere il re-invio del codice di verifica nel caso in cui non lo abbia ricevuto o sia scaduto],
  [@Re-invio-codice-2FA],

  [],
  [L'Utente non autenticato, dopo aver inserito delle credenziali corrette per un account con 2FA attiva, deve poter completare l'autenticazione a due fattori per autenticarsi nel Sistema],
  [@Autenticazione-2FA],

  [],
  [L'Utente non autenticato deve poter inserire il codice di verifica ricevuto via mail per completare l'autenticazione, in caso sia richiesta la 2FA],
  [@Inserimento-codice-2FA],

  [],
  [L'Utente non autenticato deve ricevere un messaggio di errore in caso il codice di verifica inserito per la 2FA sia errato o scaduto],
  [@Codice-2FA-errato @Codice-2FA-scaduto],

  [],
  [L'Utente non autenticato deve poter impostare la sua prima password, in seguito alla ricezione della mail contenente il link per la creazione della prima password],
  [@Impostazione-password],

  [],
  [L'Utente non autenticato deve poter richiedere il link di reimpostazione della password via email nel caso in cui l'abbia dimenticata],
  [@Password-dimenticata],

  [],
  [L'Utente non autenticato deve poter inserire l'indirizzo mail a cui è associato il proprio account per richiedere la reimpostazione della password],
  [@Inserimento-indirizzo-email],

  [],
  [Il Sistema deve inviare la mail per la reimpostazione della password, contente il link di reimpostazione, all'Utente non autenticato che ne fa richiesta],
  [@Invio-email-reimpostazione-password],

  [],
  [Il Sistema deve inviare la mail per la reimpostazione della password, contente il link di reimpostazione, all'Utente non autenticato che ne fa richiesta],
  [@Invio-email-reimpostazione-password],
)

== Requisiti non funzionali
#table(
  columns: (0.20fr, 0.60fr, 0.20fr),
  align: left,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [], [], [],
)

== Requisiti di dominio
#table(
  columns: (0.20fr, 0.60fr, 0.20fr),
  align: left,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [], [], [],
)





