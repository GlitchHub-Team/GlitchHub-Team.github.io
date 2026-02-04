#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 03/02/2026 (M31)",
  stato: "Bozza",
  registro-modifiche: (
    (
      "0.0.1",
      "04/02/2026",
      "Riccardo Graziani",
      "-",
      "Bozza iniziale verbale esterno del 03/02/2026",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi"
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Dubbi sulla classificazione dei #gloss[requisiti]],
    [Crittografia #gloss[NATS]],
    [Scambio di chiavi tra #gloss[NATS] e #gloss[Gin]],
    [Gestione dell'autenticazione tramite *Keycloak*]
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 3 febbraio 2026 dalle 14:40 alle 15:15, si è svolto l'incontro con la proponente M31 SRL, in modalità remota.

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
Il gruppo ha esposto i propri dubbi su come gestire la crittografia dei dati su #gloss[NATS]. Il problema principale riguarda il salvataggio di tali dati su #gloss[TimescaleDB]: salvare tutti i dati crittografati nel database causerebbe un'importante perdita di performance, in quanto il server #gloss[Gin] dovrebbe richiedere tutti i dati e decrittarli in memoria.
\
La proponente ha dichiarato che la soluzione va determinata con uno studio più approfondito delle tecnologie.

== Scambio di chiavi di cifratura
In relazione al precedente dubbio, il gruppo ha individuato un problema riguardo allo scambio di chiavi di cifratura. In particolare il gruppo si chiede come poter gestire lo scambio di chiavi tra #gloss[NATS] e #gloss[Gin] senza compromettere la cifratura dei dati.
\
La proponente ha invitato ad esporre questo dubbio attraverso una mail in maniera da poter fornire una risposta completa.

== Gestione dell'autenticazione
Lo studio di preliminare di *Keycloak* ha evidenziato come una sua implementazione come sistema di autenticazione non sarebbe fattibile tenendo conto dei tempi di sviluppo del #gloss[PoC]. La soluzione proposta dal gruppo sarebbe di implementare un database #gloss[PostgreSQL] che separi gli utenti in diversi #gloss[tenant].
\
La proponente ha dichiarato che tale soluzione è accettabile nell'ambito del #gloss[PoC], e che lo studio di *Keycloak* può essere approfondito in vista dell'#gloss[MVP].

= Attività conseguenti
// TODO: Ci sono attività conseguenti?
#table(
  columns: (2fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
)
