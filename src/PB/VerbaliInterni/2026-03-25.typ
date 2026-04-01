#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 25/03/2026",
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
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Revisione del lavoro svolto],
    [Allineamento tecnico workflow commissioning],
  ),
  htmlId: "PB-VerbaliInterni",
  verificatore-interno: "Jaume Bernardi",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *25 marzo 2026* dalle ore 15:00 alle ore 17:00, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Revisione del lavoro

=== DataConsumer e Gateway
I componenti relativi al DataConsumer e al simulatore di Gateway sono stati stabilizzati.

=== Observability e Infrastructure
- *Metriche:* Sono state definite le metriche principali per il monitoraggio. Il sistema utilizzerà #gloss[Prometheus], che interrogherà l'endpoint `/metrics` dei vari servizi per la raccolta dati.
- *Repository:* La repository _Infrastructure_ è stata stabilizzata con i dettagli necessari per il deploy ed è stata inclusa come riferimento nella repository _Dashboard_.

=== Stato di avanzamento Backend
Lo stato attuale dei package del backend è il seguente:
- *User/Tenant*: CRUD utente stabile; i test d'integrazione (TI) sono in corso.
- *Auth*: Codifica completata, test unitari (TU) in corso (lieve ritardo sulla tabella di marcia).
- *Gateway*: Codifica iniziata, ma risulta mancante la logica relativa alla gestione dei comandi.
- *Package non implementati*: `hello`, `historical_data`, `real_time_data`, `sensor`.

=== Stato di avanzamento Frontend
Lo sviluppo procede secondo i tempi previsti. La visualizzazione dei tenant è stata completata, mentre quella degli utenti è in fase di sviluppo.

== Allineamento tecnico: Workflow Commissioning
È stato definito il flusso operativo per l'associazione di un nuovo gateway al sistema:
1. Creazione manuale del gateway sulla dashboard.
2. Il gateway invia un messaggio di "Hello" al cloud tramite #gloss[NATS].
3. Il cloud registra automaticamente il gateway.
4. Il Super Admin esegue il comando di commissioning inviando il `tenant_id` e il `commissionedToken` (JWT firmato dal gateway).

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
  [[Backend] Verifica TU package backend/internal/auth], [Elia Ernesto Stellin], [(#issue(36, repo:"dash"))],
  [[Backend] Codifica package backend/internal/email ], [Elia Ernesto Stellin], [(#issue(37, repo:"dash"))],
  [[Backend] Verifica TU package backend/internal/email ], [Elia Ernesto Stellin], [(#issue(38, repo:"dash"))],
  [[Backend] Codifica package backend/internal/gateway ], [Michele Dioli], [(#issue(39, repo:"dash"))],
  [[Backend] Verifica package backend/internal/gateway ], [Michele Dioli], [(#issue(40, repo:"dash"))],
  [[Backend] Codifica componente hello ], [Jaume Bernardi], [(#issue(45, repo:"dash"))],
  [[Backend] Verifica componente hello ], [Jaume Bernardi], [(#issue(46, repo:"dash"))],
  [[PdP] Sprint 14 ], [Siria Salvalaio], [(#issue(462))],
  [Rendicontazione responsabile sprint 14 ], [Siria Salvalaio], [(#issue(471))],
  [[Frontend] Cambiare lingua (italiano) e migliorare CSS ], [Siria Salvalaio], [(#issue(59, repo:"dash"))],
  [[Frontend] Controllare endpoint con i model ], [Siria Salvalaio], [(#issue(60, repo:"dash"))],
  [[Frontend] Aggiungere sezione SUPER ADMIN MANAGEMENT ], [Siria Salvalaio], [(#issue(61, repo:"dash"))],
  [[Frontend] TENANT USER MANAGEMENT (e raggruppare con dashboard in basso alla Side bar) ], [Siria Salvalaio], [(#issue(62, repo:"dash"))],
  [[Frontend] Aggiornare sezione di autenticazione ], [Riccardo Graziani], [(#issue(63, repo:"dash"))],
  [[Frontend] Verificare gestione enums tra frontend/backend ], [Riccardo Graziani], [(#issue(64, repo:"dash"))],
  [[Frontend] Scrittura TU per la cartella adapters ], [Riccardo Graziani], [(#issue(65, repo:"dash"))],
  [[Backend] TU backend/internal/user/adapters.go ], [Elia Ernesto Stellin], [(#issue(67, repo:"dash"))],
  [[Backend] TI backend/internal/auth ], [Elia Ernesto Stellin], [(#issue(69, repo:"dash"))],
  [[Backend] TI backend/internal/email ], [Elia Ernesto Stellin], [(#issue(70, repo:"dash"))],
  [[Backend] TI backend/internal/user ], [Elia Ernesto Stellin], [(#issue(71, repo:"dash"))],
  [[Backend] Codifica backend/internal/sensor ], [Alessandro Dinato], [(#issue(73, repo:"dash"))],
  [[Backend] TU backend/internal/sensor ], [Alessandro Dinato], [(#issue(74, repo:"dash"))],
  [[Backend] TI backend/internal/sensor ], [Alessandro Dinato], [(#issue(75, repo:"dash"))],
  [[NdP] Aggiungere API Dog come strumento usato ], [Alessandro Dinato], [(#issue(473))],
  [[NdP] Aggiungere convenzioni di codifica ], [Alessandro Dinato], [(#issue(474))],
  [[Gloss] aggiungere API Dog al glossario ], [Alessandro Dinato], [(#issue(477))],
  [[Backend] Codifica backend/internal/real_time_data ], [], [(#issue(76, repo:"dash"))],
  [[Backend] TU backend/internal/real_time_data ], [], [(#issue(77, repo:"dash"))],
  [[Backend] TI backend/internal/real_time_data ], [], [(#issue(78, repo:"dash"))],
  [[Backend] Codifica backend/internal/historical_data ], [Hossam Ezzemouri], [(#issue(80, repo:"dash"))],
  [[Backend] TU backend/internal/historical_data ], [Hossam Ezzemouri], [(#issue(81, repo:"dash"))],
  [[Backend] TI backend/internal/historical_data ], [Hossam Ezzemouri], [(#issue(82, repo:"dash"))],
  [[ST] Architettura hexagonal ], [Jaume Bernardi], [(#issue(475))],
  [[Backend] Aggiornamento logica eliminazione super admin / tenant admin ], [Elia Ernesto Stellin], [(#issue(66, repo:"dash"))],
  [[Dashboard] Aggiornare endpoint su API dog relativamente a gateway commissioning ], [Elia Ernesto Stellin], [(#issue(68, repo:"dash"))],

) 

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Siria Salvalaio
- *Progettista*: Elia Ernesto Stellin, Jaume Bernardi
- *Programmatore*: Siria Salvalaio, Alessandro Dinato, Elia Ernesto Stellin, Jaume Bernardi, Michele Dioli, Hossam Ezzemouri, Riccardo Graziani
- *Verificatore*: Alessandro Dinato, Elia Ernesto Stellin, Jaume Bernardi, Michele Dioli, Hossam Ezzemouri, Riccardo Graziani
- *Analista*: Alessandro Dinato