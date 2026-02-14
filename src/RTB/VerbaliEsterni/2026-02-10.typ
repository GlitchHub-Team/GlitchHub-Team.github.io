#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 10/02/2026 (M31)",
  stato: "Verificato",
  registro-modifiche: (
    (
      "1.0.0",
      "13/02/2026",
      "Riccardo Graziani",
      "Jaume Bernardi",
      "Versione stabile verbale esterno del 10/02/2026",
    ),
    (
      "0.1.0",
      "13/02/2026",
      "Riccardo Graziani",
      "Jaume Bernardi",
      "Prima stesura verbale esterno del 10/02/2026",
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
    [Esposizione #gloss[PoC]],
    [Dubbi riguardo la gestione dei JWT nell'#gloss[MVP]],
    [Dubbi sulla scalability del prodotto],
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Jaume Bernardi",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 10 febbraio 2026 dalle 14:30 alle 15:10, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

Durante l'incontro il gruppo ha presentato alla proponente il #gloss[Proof of Concept] sviluppato, e ha chiesto chiarimenti per quanto riguarda la gestione dei token JWT in vista dello sviluppo dell'#gloss[MVP] e consigli su come garantire la *scalability* del prodotto.

= Resoconto
== Esposizione PoC
Il gruppo ha presentato alla proponente il #gloss[Proof of Concept] sviluppato, illustrandone le funzionalità principali e l'architettura sottostante:
- è stato presentato il programma in esecuzione, dimostrando la fattibilità della soluzione proposta;
- è stata discussa l'architettura elaborata dal gruppo, spiegando il ruolo che ogni tecnologia ricopre all'interno del #gloss[PoC].

La proponente si è dichiarata soddisfatta rispetto a quanto sviluppato dal gruppo ed ha approvato le scelte tecnologiche effettuate.

== Gestione credenziali con JWT
Il gruppo ha esposto i propri dubbi riguardo la gestione delle credenziali di accesso tramite token *JWT*. Per lo sviluppo del #gloss[PoC] tutti i segreti sono stati posti nella _repository_. Tale scelta è stata ritenuta accettabile in quanto i secrets presenti non riguardano infrastrutture cloud o dati sensibili.

Invece in ottica di sviluppo dell'#gloss[MVP], il gruppo ha chiesto ad *M31* indicazioni sulle _best practices_ per una gestione professionale del ciclo di vita delle credenziali tramite *JWT*.

La proponente ha dichiarato che la soluzione va determinata con uno studio più approfondito delle tecnologie ed ha consigliato di esporre questo dubbio attraverso una mail in maniera da poter fornire una risposta più completa.

== Scalability
È stata validata la strategia tecnica per garantire la *scalability* del sistema, basata sull'autenticazione *stateless* tramite JWT e sull'utilizzo del modello di concorrenza basato su *Goroutines* offerto dal linguaggio #gloss[Go].

= Attività conseguenti
#table(
  columns: (2fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
  [Creazione presentazione RTB], [Riccardo Graziani], [#issue(20, repo: "poc")],
)
