#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 13/01/2026 (M31)",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "20/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      "Creazione versione stabile del verbale esterno del 13/01/2026",
    ),
    (
      "0.0.1",
      "13/01/2026",
      "Hossam Ezzemouri",
      "Alessandro Dinato",
      "Stesura verbale esterno del 13/01/2026",
    ),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
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
    "Tecnologie suggerite",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  verificatore-esterno: "Cristian Pirlog",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 13 gennaio 2026 alle 14:30 si è svolto l'incontro con il #gloss[proponente] M31 SRL, in modalità ibrida.

L'incontro ha avuto l'obiettivo di discutere e chiarire alcuni aspetti funzionali del #gloss[sistema] sotto studio, con particolare riferimento agli use cases relativi alla gestione degli alert, alla visualizzazione dei dati, all'#gloss[impersonificazione] degli utenti, alla configurazione dei #gloss[gateway] e alla gestione della sicurezza e dell'osservabilità del #gloss[sistema].

= Resoconto
== Discussione su autenticazione e sicurezza
Durante la riunione, il gruppo ha chiesto chiarimenti riguardo l'eventuale utilizzo di meccanismi di autenticazione a due fattori (2FA).
Il #gloss[proponente] ha specificato che il supporto al 2FA è di interesse marginale e che non è richiesta un'implementazione esplicita di tale funzionalità nell'ambito del progetto.

È stata inoltre discussa la gestione delle #gloss[API] Key: l'azienda ha confermato che ha senso mostrare il token una sola volta al momento della creazione, per motivi di sicurezza, lasciando aperta la possibilità di rendere opzionale l'adozione delle #gloss[API] Key.

== Gestione degli alert
Il gruppo ha presentato la propria interpretazione degli alert di #gloss[sistema].

M31 ha chiarito che:
- la piattaforma non deve occuparsi della #gloss[validazione] dei valori oltre soglia;
- la #gloss[verifica] di soglie applicative è demandata a piattaforme esterne;
- gli alert gestiti dal #gloss[cloud] devono essere principalmente di tipo infrastrutturale o gestionale.

Sono stati ritenuti appropriati:
- alert relativi a #gloss[gateway] offline;
- alert relativi ai costi del #gloss[tenant], con invio di una mail al superamento di una soglia (funzionalità opzionale).

Gli alert proposti dal gruppo sono stati giudicati coerenti.

== Visualizzazione dei dati e dashboard
La #gloss[proponente] ha espresso parere positivo riguardo:
- l'uso di grafici per la visualizzazione dei dati dei sensori;
- la visualizzazione dello storico dei dati;
- il filtraggio dei dati storici;
- la presenza di una dashboard generica per l'utente autenticato.

È stata valutata positivamente l'introduzione di:
- una mappa con la posizione dei #gloss[gateway] nella dashboard del #gloss[Tenant Admin];
- una visualizzazione analoga nella dashboard del #gloss[Super Admin].

Per le richieste dei #gloss[gateway], è stata ritenuta adeguata una tabella semplice con stato della richiesta e azioni disponibili.

== Impersonificazione degli utenti
Il gruppo ha approfondito il tema dell'#gloss[impersonificazione].

M31 ha chiarito che:
- impersonare un account significa assumerne completamente il ruolo;
- l'#gloss[impersonificazione] è usata dal #gloss[Super Admin] per risolvere problematiche operative;
- l'operazione deve avvenire nei #gloss[Tenant] che hanno accettato la suddetta clausola.

È stato inoltre specificato che:
- il Super-Admin deve poter accedere agli stessi dati del #gloss[Tenant Admin] anche senza #gloss[impersonificazione], con esclusione delle informazioni più sensibili;
- gli use cases possono essere ricondotti a un ruolo di Admin generico, considerando il #gloss[Super Admin] come utente fidato.

È stata suggerita la tecnologia open source *Keycloak* per la gestione delle utenze e dell'#gloss[impersonificazione].

== Audit log
Il gruppo ha discusso la necessità di introdurre audit log.

M31 ha confermato che:
- gli audit log sono necessari;
- il #gloss[Tenant Admin] deve poter visualizzare le operazioni degli operatori del proprio #gloss[tenant];
- è sufficiente tracciare chi ha fatto cosa e quando;
- il filtraggio per tipologia di azione è sensato;
- l'esportazione in formato CSV è adeguata.

== Configurazione dei gateway e gestione dei sensori
È stata approfondita la gestione della frequenza di invio dei dati e delle tecniche di #gloss[normalizzazione].

M31 ha chiarito che:
- la frequenza di invio dati varia in base alla tipologia di sensore, #gloss[ci] sarà un parametro di default per ogni tipologia e successivamente ogni #gloss[tenant] potrà personalizzarlo;
- il #gloss[gateway] può inviare dati atomici o in pacchetti;
- è possibile definire limiti di invio a livello di #gloss[gateway].

Dal punto di vista del #gloss[Tenant]:
- è importante poter modificare la frequenza di invio per tipologia di sensore;
- ogni #gloss[gateway] deve avere configurazioni di default e custom;
- le modifiche devono essere inviate al #gloss[gateway] tramite comandi;
- le configurazioni custom devono essere tracciate dal #gloss[Cloud].

== Commissioning e decommissioning dei gateway
Il commissioning è considerato opzionale:
- per l'#gloss[MVP] è sufficiente che il #gloss[Super Admin] possa commissionare un numero arbitrario di #gloss[gateway].

Per il decommissioning:
- deve essere possibile specificare quali #gloss[gateway] decommissionare;
- il rifiuto della richiesta può essere rimosso.

== Profili GATT e sensori simulati
M31 ha confermato che:
- ha senso modellare #gloss[gateway] con sensori simulati;
- un singolo #gloss[profilo GATT] può fornire più tipologie di dato;
- il #gloss[sistema] deve essere consapevole delle diverse misurazioni prodotte.

== Monitoraggio del sistema e requisiti non funzionali
Il #gloss[requisito] di monitoraggio è da considerarsi obbligatorio.

È sufficiente fare riferimento al capitolato e adottare una soluzione semplice ma scalabile.

Per il #gloss[Proof of Concept]:
- non è richiesta una gestione completa di ruoli e permessi;
- è fondamentale dimostrare connessione dei device, transito e crittografia dei dati.

== Tecnologie suggerite
M31 ha suggerito:
- #gloss[NATS] per la comunicazione;
- #gloss[Node.js] per i servizi applicativi, favorendo #gloss[JavaScript] o #gloss[TypeScript] lungo l'intero stack.

= Attività conseguenti
#table(
  columns: (2fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Studio tecnologie suggerite], [Alessandro Dinato, Riccardo Graziani], [#issue(165), #issue(169)],

  [Stesura dei requisi e realizzazione diagrammi #gloss[use case]],
  [Hossam Ezzemouri,Jaume Bernardi, Michele Dioli],
  [#issue(166)],

  [Conclusione use cases Visualizzazione], [ Riccardo Graziani], [#issue(170)],

  [Approfondimento #gloss[normalizzazione] dati],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(133)],

  [Approfondimento Grafana+Prometheus],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(134)],
)
