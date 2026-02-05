#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 03/02/2026 (M31)",
  stato: "Verificato",
  registro-modifiche: (
    (
      "1.0.0",
      "04/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      "Versione stabile verbale esterno 03/02/2026",
    ),
    (
      "0.1.0",
      "04/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      "Stesura verbale esterno del 03/02/2026",
    ),
    (
      "0.0.1",
      "04/02/2026",
      "Riccardo Graziani",
      "Alessandro Dinato",
      "Bozza iniziale verbale esterno del 03/02/2026",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Dubbi sulla classificazione dei #gloss[requisiti]],
    [Crittografia #gloss[NATS]],
    [Scambio di chiavi tra #gloss[NATS] e #gloss[Gin]],
    [Gestione dell'autenticazione tramite *Keycloak*],
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  verificatore-esterno: "Cristian Pirlog",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 3 febbraio 2026 dalle 14:40 alle 15:15, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

L'incontro ha avuto l'obiettivo di discutere e chiarire:
- il livello di importanza di alcuni #gloss[requisiti];
- come gestire la crittografia lato #gloss[NATS];
- come gestire lo scambio di chiavi di cifratura tra #gloss[NATS] e #gloss[Gin];
- come gestire l'autenticazione usando *Keycloak*.

= Resoconto
== Classificazione dei requisiti
Durante la riunione, il gruppo ha chiesto dei chiarimenti riguardo il livello di importanza di alcuni #gloss[requisiti], in particolare:
- *filtraggio* dei dati storici;
- la possibilità di *sospendere* l'invio di dati da parte di un #gloss[gateway];
- la possibilità di *sospendere* l'invio di dati da parte di un sensore;
- la visualizzazione delle richieste di *commissioning/decommissioning* in corso;
- la visualizzazione delle *metriche di sistema*;
- la presenza di *alert* di base riguardanti gateway non funzionanti o non raggiungibili;

La proponente ha chiarito che:
- il filtraggio dei dati storici è da considerarsi come #gloss[requisito] *obbligatorio*;
- la possibilità di *sospendere* l'invio di dati da parte di un #gloss[gateway] è da considerarsi come #gloss[requisito] *desiderabile*;
- la possibilità di *sospendere* l'invio di dati da parte di un sensore è da considerarsi come #gloss[requisito] *opzionale*;
- la visualizzazione delle richieste di *commissioning/decommissioning* in corso è da considerarsi come #gloss[requisito] *opzionale*;
- la visualizzazione delle *metriche di sistema*, in generale, è da considerasi come #gloss[requisito] *obbligatorio*, ma le seguenti metriche hanno un'importanza minore:
  - il *throughput dei dati* è *desiderabile*;
  - l'uso delle *risorse* dei nodi cloud è *opzionale*;
  - la *frequenza di disconnessione* dei gateway è *desiderabile*;
  - il *numero* di valori *out-of-range* è *opzionale*;
- la presenza degli *alert* di base è da considerarsi #gloss[requisito] *obbligatorio*.

== Crittografia NATS
Il gruppo ha esposto i propri dubbi su come gestire la crittografia dei dati su #gloss[NATS]. Il problema principale riguarda il salvataggio di tali dati su #gloss[TimescaleDB]: salvare tutti i dati crittografati nel database causerebbe un'importante perdita di performance, in quanto il server #gloss[Gin] dovrebbe richiedere tutti i dati e decrittarli in memoria prima di poter eseguire qualsiasi operazione di filtro o aggregazione.

\
La proponente ha dichiarato che la soluzione va determinata con uno studio più approfondito delle tecnologie ed ha consigliato di esporre questo dubbio attraverso una mail in maniera da poter fornire una risposta più completa.

== Scambio di chiavi di cifratura
In relazione al precedente dubbio, il gruppo ha individuato un problema riguardo allo scambio di chiavi di cifratura. In particolare il gruppo non ha chiaro come le istanze di #gloss[Gin] possano avere tutti le chiavi private di cifratura per poter decrittare i dati ricevuti da #gloss[NATS] o da #gloss[TimescaleDB], senza però esporre tali chiavi in chiaro sul network.
\
La proponente ha invitato ad esporre questo dubbio attraverso una mail in maniera da poter fornire una risposta completa.

== Gestione dell'autenticazione
Lo studio di preliminare di *Keycloak* ha evidenziato come una sua implementazione come sistema di autenticazione non sarebbe fattibile tenendo conto dei tempi di sviluppo del #gloss[PoC]. La soluzione proposta dal gruppo sarebbe di implementare un database #gloss[PostgreSQL] che separi gli utenti in diversi #gloss[tenant].
\
La proponente ha dichiarato che tale soluzione è accettabile nell'ambito del #gloss[PoC], e che lo studio di *Keycloak* può essere approfondito in vista dell'#gloss[MVP].

= Attività conseguenti
#table(
  columns: (2fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
  [Login con dashboard Angular], [Elia Ernesto Stellin], [#issue(16, repo: "poc")],
  [Sviluppo crittografia, autenticazione e account con NATS], [Alessandro Dinato], [#issue(2, repo: "poc")],
  [Sviluppo API di autenticazione], [Elia Ernesto Stellin], [#issue(8, repo: "poc")],
)
