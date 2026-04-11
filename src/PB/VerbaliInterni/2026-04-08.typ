#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 08/04/2026",
  stato: "Da verificare",
  registro-modifiche: (
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Hossan Ezzemouri",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Revisione del lavoro svolto],
    [Discussione sui compiti da svolgere],
  ),
  htmlId: "PB-VerbaliInterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *08 aprile 2026* dalle ore 14:30 alle ore 16:30, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

=== Gestione delle Issue
In seguito a una revisione dello stato di avanzamento, il gruppo ha riscontrato che alcune issue sono state chiuse manualmente anziché tramite l'integrazione automatica delle pull request. Questa procedura ha inizialmente causato la chiusura automatica di alcune PR e il mancato merge di alcune componenti del lavoro nel ramo principale. Nonostante l'incongruenza procedurale, il team è intervenuto tempestivamente risolvendo i conflitti e allineando i rami manualmente.

== Revisione del lavoro

=== Stato di avanzamento Frontend
Le attività più rilevanti portate a termine per il frontend e la relativa architettura includono:
- Modifiche sostanziali alle sezioni di _historical_data_ e _real_time_data_ per allinearle alle nuove specifiche.
- Aggiornamento al modello C4 sulla base del codice attuale per garantirne la coerenza.

=== Stato di avanzamento Backend e Infrastruttura
Il lavoro sul backend si è concentrato sul consolidamento del gateway e sulla verifica dei moduli:
- Completata la codifica e la successiva verifica del package gateway.
- Sviluppati i test di integrazione per i package _user_ e _auth_.
- Completato il setup iniziale del sistema per l'MVP.
- Avviata l'implementazione delle metriche di osservabilità all'interno del repository dedicato.

=== Altri documenti
Diversi documenti sono stati aggiornati o estesi, tra cui la specifica tecnica, le norme i progetto e il manuale utente.

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
  [[ST] Completamento Specifica Tecnica per frontend ], [Riccardo Graziani, Siria Salvalaio], [(#issue(495))],
  [[PdQ] Aggiornare metriche ], [Riccardo Graziani, Siria Salvalaio], [(#issue(496))],
  [[Frontend] Integrazione con Cloud ], [Riccardo Graziani, Siria Salvalaio], [(#issue(100, repo:"dashboard"))],
  [[Backend] TI historical_data ], [Hossam Ezzemouri], [(#issue(101, repo:"dashboard"))],
  [[Backend] TI backend/internal/email ], [Elia Ernesto Stellin], [(#issue(70, repo:"dashboard"))],
  [[NdP] Aggiungere gomail v2 come tecnologia ], [Elia Ernesto Stellin], [(#issue(488))],
  [[Backend] Codifica backend/internal/real_time_data ], [Elia Ernesto Stellin], [(#issue(76, repo:"dashboard"))],
  [[Backend] TU backend/internal/real_time_data ], [Elia Ernesto Stellin], [(#issue(77, repo:"dashboard"))],
  [[Backend] TI backend/internal/real_time_data ], [Elia Ernesto Stellin], [(#issue(78, repo:"dashboard"))],
  [[MU] Perfezionamento manuale utente Gateway, Data Consumer ], [Alessandro Dinato], [(#issue(520))],
  [[MU] Perfezionamento sezione Observability ], [Hossam Ezzemouri], [(#issue(528))],
  [[Backend] Fix backend gateway ], [Michele Dioli], [(#issue(130, repo:"dashboard"))],
  [[Backend] Fix bug per login su utente inesistente ], [Elia Ernesto Stellin], [(#issue(121, repo:"dashboard"))],
  [[ST] Cloud Backend ], [Elia Ernesto Stellin, Michele Dioli], [(#issue(522))],
  [[ST] Tracciamento requisiti ], [Elia Ernesto Stellin, Michele Dioli], [(#issue(525))],
  [[Backend] Togliere requester check da GetTenantList ], [], [(#issue(120, repo:"dashboard"))],
  [[TB] Stesura infrastruttura del Test Book ], [Michele Dioli, Riccardo Graziani, Siria Salvalaio, Alessandro Dinato], [(#issue(518))],
  [[PdP] Sprint 15 ], [Jaume Bernardi], [(#issue(498))],
  [[MU] Compilazione di più file possibile ], [Jaume Bernardi], [(#issue(513))],
  [Rendicontazione ore responsabile sprint 16 ], [Jaume Bernardi], [(#issue(516))],
  [[TB] Controllo test singoli del test book nel sistema reale ], [Michele Dioli, Riccardo Graziani, Siria Salvalaio, Alessandro Dinato], [(#issue(519))],
  [[Backend] Fix backend modulo gateway ], [Alessandro Dinato], [(#issue(128, repo:"dashboard"))],
  [[Backend] Review backend/internal/tenant ], [Elia Ernesto Stellin], [(#issue(129, repo:"dashboard"))],
  [[AdR] Controllo coerenza AdR e eventuali correzioni ], [Alessandro Dinato, Riccardo Graziani], [(#issue(521))],
  [Definizione metriche Gin-Prometheus ], [Hossam Ezzemouri], [(#issue(3, repo:"infrastructure"))],
  [[Backend] recupero files gateway ], [Michele Dioli], [(#issue(124, repo:"dashboard"))],
  [[Backend] Fix monitoring ], [Hossam Ezzemouri], [(#issue(126, repo:"dashboard"))],

) 

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Jaume Bernardi
- *Progettista*: Riccardo Graziani, Siria Salvalaio, Alessandro Dinato, Hossam Ezzemouri, Elia Ernesto Stellin, Michele Dioli
- *Programmatore*: Riccardo Graziani, Siria Salvalaio, Elia Ernesto Stellin, Michele Dioli, Alessandro Dinato, Hossam Ezzemouri
- *Verificatore*: Hossam Ezzemouri, Elia Ernesto Stellin, Riccardo Graziani, Alessandro Dinato