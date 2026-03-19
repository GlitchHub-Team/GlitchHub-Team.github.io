#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 18/03/2026",
  stato: "Da verificare",
  registro-modifiche: (
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Revisione del lavoro svolto],
    [Modifica data di consegna],
  ),
  htmlId: "PB-VerbaliInterni",
  verificatore-interno: "Elia Ernesto Stellin",
  left-signature: "../assets/firme/firma_Elia_Ernesto_Stellin.jpg",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *18 marzo 2026* dalle ore 16:00 alle ore 18:00, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Revisione del lavoro
=== Infrastruttura NATS e Messaggistica
Il comparto relativo ai servizi Data Consumer è stato sviluppato e verificato con successo mediante Test Unitari (TU) e Test di Integrazione (TI). Per garantire la sicurezza delle comunicazioni, è stata implementata l'autorizzazione del message broker tramite JWT e protocollo TLS. Inoltre, sono stati configurati i GitHub Secrets per ottimizzare la catena di CI/CD.

=== Sviluppo Gateway
Lo stato del simulatore di Gateway necessita di un intervento di stabilizzazione. Parallelamente, è stata completata la scrittura dei Test Unitari per il Gateway, i quali sono stati ufficialmente integrati nel Piano di Qualifica (PdQ).

=== Cloud: back-end
Il lavoro sul back-end ha prodotto i seguenti risultati:
- _CRUD Utente_: codifica ultimata e Test Unitari in fase di conclusione.
- _CRUD Tenant_: codifica ultimata con Test Unitari attualmente in corso.
Sebbene il codice richieda un successivo processo di refactoring per raggiungere uno stato ottimale, il team ritiene l'attuale versione accettabile per la prima iterazione.

=== Cloud: front-end e Dashboard
È stata completata la visualizzazione dei Tenant, mentre è in corso quella relativa agli utenti. La Dashboard è stata strutturata secondo una logica gerarchica basata sui ruoli:
- _Tenant User_: visualizza i dati relativi ai sensori.
- _Admin Tenant User_: ha visibilità sulla lista dei gateway di competenza.

=== Norme di Progetto e Specifica Tecnica
In merito alla documentazione e ai processi:
- _Workflow_: aggiornate le Norme di Progetto (NdP) con il nuovo flusso di lavoro relativo alla codifica.
- _Automazioni_: l'automation di CI è stata perfezionata integrando golangci-lint per l'analisi statica del codice.
- _Specifica Tecnica_: il documento è stato aggiornato con l'inserimento dei diagrammi relativi ai primi tre livelli del modello C4. Sono state inoltre aggiornate le versioni delle tecnologie utilizzate nel progetto.


== Modifica data di consegna
A seguito di un'analisi dettagliata dello stato di avanzamento dei lavori e delle pendenze residue, il gruppo ha rinegoziato la data di consegna interna, fissandola per il 13 aprile 2026. Tale decisione scaturisce dalle seguenti stime temporali relative alle macro-aree di sviluppo:
- _Front-end Dashboard_: Lo sviluppo dei componenti della dashboard, affidato a Riccardo G. e Siria S., prevede una conclusione stimata per la fine della settimana del 23-29 marzo.
- _Back-end Dashboard_: Il carico di lavoro per Elia E.S. e Michele D. è stato quantificato in circa 21-23 giorni totali; distribuendo equamente i task (circa 13 giorni a testa), la chiusura della componente è prevista intorno al 1 aprile. Si è stabilito che Jaume B. si aggiungerà al team di sviluppo back-end per supportare Elia e Michele, permettendo così di velocizzare i passaggi critici e garantire il rispetto delle tempistiche.
- _Gateway e Infrastruttura_: Le attività di Alessandro D. (integrazione NATS) e Hossam E. (configurazione Grafana e Prometheus) procedono in parallelo, con una data di completamento prevista per la settimana del 23-29 marzo.
Il margine temporale tra la chiusura delle singole componenti e la data del 13 aprile sarà impiegato per le fasi di integrazione finale, testing sistemico e rifinitura della documentazione.

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Ruolo da responsabile], [Siria Salvalaio], [#issue(463)],

  [Scrittura del PdP (sprint 13)], [Siria Salvalaio], [#issue(440)],

  [Scrittura verbale interno 18/03/2026], [Siria Salvalaio], [#issue(459)],

  [Scrittura verbale esterno 24/03/2026], [Siria Salvalaio], [#issue(466)],

  [[Frontend] Codifica Gateway/sensori], [Siria Salvalaio], [#issue(42, repo:"dash")],

  [[Frontend] Verifica Gateway/sensori], [Siria Salvalaio], [#issue(43, repo:"dash")],

  [Setup configurazione NATS], [Alessandro Dinato], [#issue(4, repo:"dc")],

  [Aggiornare ConfigManager, GatewayManager, credenziali], [Alessandro Dinato], [#issue(5, repo: "gw")],

  [Scrivere i test intergativi del Gateway], [Alessandro Dinato], [#issue(8, repo: "gw")],

  [[Backend] Codifica backend/internal/user (sprint 13)], [Elia Ernesto Stellin], [#issue(17, repo:"dash")],

  [[Backend] Verifica backend/internal/user (sprint 13)], [Elia Ernesto Stellin], [#issue(28, repo:"dash")],

  [[Backend] Codifica backend/internal/auth], [Elia Ernesto Stellin], [#issue(35, repo:"dash")],

  [[Backend] Verifica backend/internal/auth], [Elia Ernesto Stellin], [#issue(36, repo:"dash")],

  [[Backend] Codifica backend/internal/email], [Elia Ernesto Stellin], [#issue(37, repo:"dash")],

  [[Backend] Verifica backend/internal/email], [Elia Ernesto Stellin], [#issue(38, repo:"dash")],

  [[Backend] Scrittura test unità servizio tenant (sprint 13)], [Michele Dioli], [#issue(33, repo:"dash")],

  [[Backend] Codifica package backend/internal/gateway], [Michele Dioli], [#issue(39, repo:"dash")],

  [[Backend] Verifica package backend/internal/gateway], [Michele Dioli], [#issue(40, repo:"dash")],

  [[AdR] Aggiornamento metriche (RNF, RD)], [Hossam Ezzemouri], [#issue(461)],

  [Setup Grafana, Prometheus, NATS Exporter], [Hossam Ezzemouri], [#issue(1, repo:"obs")],

  [Scrivere gli unit test del gateway], [Hossam Ezzemouri], [#issue(6, repo:"gw")],

  [[Frontend] Codifica Dashboard - Grafici real-time e storici], [Riccardo Graziani], [#issue(23, repo:"dash")],

  [[Frontend] Verifica Dashboard - Grafici real-time e storici], [Riccardo Graziani], [#issue(41, repo:"dash")],

  [[Studio] Go ed Hexagonal], [Jaume Bernardi], [#issue(47, repo:"dash")],

  [[Backend] Codifica componente hello], [Jaume Bernardi], [#issue(45, repo:"dash")],

  [[Backend] Verifica componente hello], [Jaume Bernardi], [#issue(46, repo:"dash")],

) 

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Siria Salvalaio
- *Amministratore*: Alessandro Dinato
- *Programmatore*: Jaume Bernardi, Riccardo Graziani, Hossam Ezzemouri, Michele Dioli, Elia Ernesto Stellin, Siria Salvalaio
- *Verificatore*: Jaume Bernardi, Riccardo Graziani, Michele Dioli, Elia Ernesto Stellin, Siria Salvalaio, Alessandro Dinato
- *Analista*: Hossam Ezzemouri