#import "../../Templates/templateDocumentiGenerici.typ": report

#show: report.with(
    titolo: "Analisi dei Requisiti",
    stato: "Bozza",
    versione: "0.3.0",
    registro-modifiche: (
        ("0.3.0","16/11/2025","Hossam Ezzemouri","-","Stesura degli Use Case 3, 3.1, 3.2, 3.3, 4, 5 e 6"),
        ("0.2.0","16/11/2025","Riccardo Graziani","-","Stesura descrizione struttura dei casi d'uso, aggiunta sezione 2.2"),
        ("0.1.0","15/11/2025","Hossam Ezzemouri","-","Stesura introduzione e inizio dei Casi d'uso"),
    ),

    distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
    htmlId: "Analisi-dei-Requisiti",
    verificatore-interno: "",
    left-signature: "",
    tipo-documento: "Analisi dei Requisiti",
)

= Introduzione
Questo documento ha come obiettivo quello di fornire informazioni  dettagliate e chiare riguardo i requisiti che il software progettato possiede: questo per poter esser un punto di riferimento sia per i soggetti coinvolti nello sviluppo sia per gli appaltanti, consentendo ad entrambi di verificare che il progetto soddisfi i requisiti funzionali e non funzionali esplicitati.

== Panoramica del prodotto
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
=== UC3 - Inserimento nuovo utente da parte di un Admin
#figure(
  image("UC_images/UC3.png", width: 11cm)
)

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
#figure(
  image("UC_images/UC4.png", width: 11cm)
)

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

