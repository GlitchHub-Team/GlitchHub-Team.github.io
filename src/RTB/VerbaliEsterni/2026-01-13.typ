#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 13/01/2026 (M31)",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1", 
      "13/01/2026", 
      "Hossam Ezzemouri", "-", 
      "Stesura verbale esterno del 13/01/2026"
    ),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Elia Ernesto Stellin"
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    "Discussione su autenticazione e sicurezza",
    "Gestione degli alert di sistema",
    "Visualizzazione dei dati e dashboard",
    "Impersonificazione degli utenti",
    "Audit log",
    "Configurazione dei gateway e gestione dei sensori",
    "Commissioning e decommissioning dei gateway",
    "Monitoraggio del sistema e requisiti non funzionali",
    "Tecnologie suggerite"
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 13 gennaio 2026 alle 14:30 si è svolto l'incontro con il proponente M31 SRL, in modalità ibrida.

L'incontro ha avuto l'obiettivo di discutere e chiarire alcuni aspetti funzionali del sistema sotto studio, con particolare riferimento agli use cases relativi alla gestione degli alert, alla visualizzazione dei dati, all'impersonificazione degli utenti, alla configurazione dei gateway e alla gestione della sicurezza e dell'osservabilità del sistema.

= Resoconto
== Discussione su autenticazione e sicurezza
Durante la riunione, il gruppo ha chiesto chiarimenti riguardo l'eventuale utilizzo di meccanismi di autenticazione a due fattori (2FA).
Il proponente ha specificato che il supporto al 2FA è di interesse marginale e che non è richiesta un'implementazione esplicita di tale funzionalità nell'ambito del progetto.

È stata inoltre discussa la gestione delle API Key: l'azienda ha confermato che ha senso mostrare il token una sola volta al momento della creazione, per motivi di sicurezza, lasciando aperta la possibilità di rendere opzionale l'adozione delle API Key.

== Gestione degli alert
Il gruppo ha presentato la propria interpretazione degli alert di sistema.

M31 ha chiarito che:
- la piattaforma non deve occuparsi della validazione dei valori oltre soglia;
- la verifica di soglie applicative è demandata a piattaforme esterne;
- gli alert gestiti dal cloud devono essere principalmente di tipo infrastrutturale o gestionale.

Sono stati ritenuti appropriati:
- alert relativi a gateway offlne;
- alert relativi ai costi del tenant, con invio di una mail al superamento di una soglia (funzionalità opzionale).

Gli alert proposti dal gruppo sono stati giudicati coerenti.

== Visualizzazione dei dati e dashboard
La proponente ha espresso parere positivo riguardo:
- l'uso di grafici per la visualizzazione dei dati dei sensori;
- la visualizzazione dello storico dei dati;
- il filtraggio dei dati storici;
- la presenza di una dashboard generica per l'utente autenticato.

È stata valutata positivamente l'introduzione di:
- una mappa con la posizione dei gateway nella dashboard del Tenant Admin;
- una visualizzazione analoga nella dashboard del Super Admin.

Per le richieste dei gateway, è stata ritenuta adeguata una tabella semplice con stato della richiesta e azioni disponibili.

== Impersonificazione degli utenti
Il gruppo ha approfondito il tema dell'impersonificazione.

M31 ha chiarito che:
- impersonare un account significa assumerne completamente il ruolo;
- l'impersonifcazione è usata dal Super Admin per risolvere problematiche operative;
- l'operazione deve avvenire previo consenso del Tenant Admin.

È stato inoltr specificato che:
- il Super-Admin deve poter accedere agli stessi dati del Tenant Admin anche senza impersonificazione, con esclusione delle informazioni più sensibili;
- gli use cases possono essere ricondotti a un ruolo di Admin generico, considerando il Super Admin come utente fidato.

È stata suggerita la tecnologia open source Keycloak per la gestione delle utenze e dell'impersonificazione.

== Audit log
Il gruppo ha discusso la necessità di introdurre audit log.

M31 ha confermato che:
- gli audit log sono necessari;
- il Tenant Admin deve poter visualizzare le operazioni degli operatori del proprio tenant;
- è sufficiente tracciare chi ha fatto cosa e quando;
- il filtraggio per tipologia di azione è sensato;
- l'esportazione in formato CSV è adeguata.

== Configurazione dei gateway e gestione dei sensori
È stata approfondita la gestione della frequenza di invio dei dati e delle tecniche di normalizzazione.

M31 ha chiarito che:
- il rolling average varia in base alla tipologia di sensore;
- il gateway può inviare dati atomici o in pacchetti;
- è possibile definire limiti di invio a livello di gateway.

Dal punto di vista del Tenant:
- è importante poter modificare la frequenza di invio per tipologia di sensore;
- ogni gateway deve avere configurazioni di default e custom;
- le modifiche devono essere inviate al gateway tramite comandi;
- le configurazioni custom devono essere tracciate dal Cloud.

== Commissioning e decommissioning dei gateway
Il commissioning è considerato opzionale:
- per l'MVP è sufficiente che il Super Admin possa commissionare un numero arbitrario di gateway.

Per il decommissioning:
- deve essere possibile specificare quali gateway decommissionare;
- il rifiuto della richiesta può essere rimosso.

== Profili GATT e sensori simulati
M31 ha confermato che:
- ha senso modellare gateway con sensori simulati;
- un singolo profilo GATT può fornire più tipologie di dato;
- il sistema deve essere consapevole delle diverse misurazioni prodotte.

== Monitoraggio del sistema e requisiti non funzionali
Il requisito di monitoraggio è da considerarsi obbligatorio.

È sufficiente fare riferimento al capitolato e adottare una soluzione semplice ma scalabile.

Per il Proof of Concept:
- non è richiesta una gestione completa di ruoli e permessi;
- è fondamentale dimostrare connessione dei device, transito e crittografia dei dati.

== Tecnologie suggerite
M31 ha suggerito:
- NATS per la comunicazione;
- NestJS per il backend;
- Node.js per i servizi applicativi, favorendo JavaScript e TypeScript.

= Attività conseguenti
#table(
  columns: (2fr, 2fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], 

  [Studio delle tecnologie suggerite],
  [Alessandro Dinato, Riccardo Graziani],
  

  [Revisione Use Cases],
  [Elia Ernesto Stellin, Hossam Ezzemouri, Michele Dioli, Jaume Bernardi, Siria Salvalaio],
  

)
