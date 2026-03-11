#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 10/03/2026 (M31)",
  stato: "Da verificare",
  versione: "1.0.0",
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Silvia Salvalaio"
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Presentazione design del #gloss("gateway") e dubbi correlati],
    [Ritrattazione di alcuni requisiti],
    [Presentazione design del backend #gloss("cloud")],
    [Consigli per il futuro e utilizzo di modelli ad agenti],
  ),
  htmlId: "PB-VerbaliEsterni",
  verificatore-interno: "Jaume Bernardi",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  verificatore-esterno: "-",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 10 marzo 2026 dalle 14:30 alle 15:20, si è svolto l'incontro con la #gloss("proponente") *M31 SRL*, in modalità remota.

Durante l'incontro il gruppo ha mostrato l'avanzamento dei diagrammi C4 del sistema e ha espresso alcuni dubbi relativi alla progettazione.

= Resoconto

== Presentazione diagramma gateway

Il gruppo ha presentato il code diagram aggiornato del #gloss("gateway"), illustrando le nuove implementazioni corrette a seguito dell’incontro con il Prof. Cardin. \
Il gruppo ha posto il seguente dubbio: ha senso che il GatewayManagerService mantenga uno stato per quanto riguarda la configurazione, al fine di far partire il data sender e i sensori simulati?\
La #gloss("proponente") ha risposto dicendo che è opportuno che il #gloss("gateway") mantenga uno stato a runtime in modalità “push”, in modo che ogni modifica alla configurazione si rifletta direttamente sullo stato del #gloss("gateway").\ 
Secondo la #gloss("proponente"), è prioritario concentrarsi sulla corretta implementazione delle funzionalità destinate al prodotto finale, considerando che componenti come il simulatore e i gateway non troverebbero applicazione in un futuro contesto reale.

=== Frequenza di invio dati
Il gruppo ha discusso il problema della frequenza d’invio variabile. In precedenza era stato stabilito che ogni tipo di sensore (#gloss("profilo GATT")) avrebbe potuto avere una frequenza d’invio dedicata. \ Tuttavia questa soluzione risulta complessa da implementare, dato l’utilizzo di #gloss("SQLite") come buffer interno e la necessità di un data sender per ogni tipo di sensore, il che rende difficile propagare e gestire lo stato a livello di #gloss("gateway").\
La #gloss("proponente") ha approvato il compromesso proposto dal gruppo, ovvero l'implementazione di una frequenza di trasmissione variabile per singolo #gloss("gateway"). Il parametro di frequenza sarà applicato all'intera istanza, garantendo l'invio complessivo indipendentemente dalla natura del dato.
\ L'obiettivo finale è garantire la precisione direttamente sul #gloss("gateway") per poi distribuire la configurazione ai sensori. Al momento, questa ottimizzazione è stata esclusa dal rilascio attuale e rimandata a sviluppi futuri.

=== Creazione nuovi tenant
Il gruppo, data la difficoltà implementativa, ha chiesto alla #gloss("proponente") come gestire la creazione di nuovi #gloss("tenant"), dato che la gestione tramite #gloss("NATS") risulterebbe troppo onerosa in termini di tempo. La proposta di una figura dedicata alla creazione delle credenziali è stata accettata dalla #gloss("proponente"), con la presenza di una nota indicante la futura miglioria.

== Presentazione design del backend cloud
Il gruppo ha presentato il diagramma del sistema #gloss("cloud"), illustrando l'individuazione dei servizi principali:
- User Service, per l'autenticazione;
- Gateway Service;
- Sensor Service;
- Authentication Service;
- Historical Data Service;
- Real-Time Service.

Dalla discussione con la #gloss("proponente") è emersa l'alta desiderabilità dell'Alert Service, un servizio che non era stato modellato. È stato consigliato al gruppo di proseguire comunque con il suo inserimento nel diagramma del sistema e, solo in caso di mancanza di tempo, rinunciare alla sua realizzazione.

== Ritrattazione dei requisiti
A seguito della discussione, la #gloss("proponente") ha ritrattato il livello di importanza di alcuni requisiti:
- frequenza d’invio variabile: da considerarsi requisito desiderabile;
- sospensione dell’invio dati: da considerarsi requisito opzionale;
- alert: da considerarsi requisito desiderabile con alto grado di desiderabilità.\

== Consigli per il futuro e utilizzo di modelli ad agenti
La #gloss("proponente") ha espresso soddisfazione per il lavoro di design svolto, ritenendo che esso indirizzi bene il prosieguo dello sviluppo, rendendo il lavoro meno dispersivo.\
Riguardo all’utilizzo di #gloss("LLM") nello sviluppo, la #gloss("proponente") ha consigliato di supervisionare sempre il lavoro prodotto dagli strumenti di intelligenza artificiale e di effettuare doppi controlli. In particolare, è stato suggerito di inserire nella cartella .github del workspace dei file di istruzioni e skill per personalizzare gli agenti di sviluppo (ad esempio, creare agenti con esperienza in #gloss("Go")). Consigliando l'utilizzo e lo studio di awesome-copilot.

= Attività conseguenti
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Modificare AdR con requisiti ritrattati], [Silvia Salvalaio], [#issue(429)],

  [Modificare code diagram con frequenza d'invio variabile per gateway], [Alessandro Dinato], [#issue(431)],

  [Aggiungere AlertService in code diagram], [Elia Ernesto Stellin], [#issue(432)],

)
