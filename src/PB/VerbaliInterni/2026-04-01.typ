#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 01/04/2026",
  stato: "Verificato",
  registro-modifiche: (
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Hossam Ezzemouri",
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
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *01 aprile 2026* dalle ore 18:00 alle ore 19:30, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Allineamento tecnico: Workflow Commissioning
Il team ha effettuato un ripasso del flusso operativo per l'associazione di nuovi gateway al sistema. L'attività ha avuto scopo puramente didattico e di allineamento interno, garantendo che ogni membro abbia piena comprensione della procedura di commissioning.

== Revisione della distribuzione delle ore di lavoro
Il gruppo ha discusso la possibilità di revisionare la distribuzione delle ore di lavoro tra i membri e il totale per i ruoli. Si è arrivati alla conclusione di rimandare l'argomento ad un incontro successivo, dando la precedenza all'assegnazione dei compiti da svolgere.

=== Test di sistema
Dopo il Diario di Bordo svolto durante la stessa mattinata, il gruppo ha analizzato la propria capacità di stilare tutti i test di sistema nei modi e termini descritti dal Prof. Vardanega Tullio. Nonostante il massimo impegno nel rispondere a questa sfida entro la scadenza, il team è giusto alla conclusione che potrebbe non essere possibile garantire la copertura completa o l'ottimale livello qualitativo dei test a causa delle tempistiche ristrette.

== Revisione del lavoro

=== Stato di avanzamento Frontend
Questi sono i compiti più notevoli portati a termine durante lo sprint precedente, riguardo il frontend:
- Correzioni all'interfaccia, tra cui il CSS e la lingua principale.
- Aggiunta la sezione per gestire utenti Super Admin, visibile solo dagli stessi.
- Aggiunta la sezione per gestire utenti Tenant, utilizzabile da un Super Admin che impersona un Tenant Admin.
- Sviluppati test unitari (TU) per gli adapters.


=== Stato di avanzamento Backend
Questi sono i compiti più importanti portati a termine durante lo sprint precedente, riguardo il backend:
- Sviluppati i TU per il componente `auth` e gli adapter per componente `user`.
- Codifica del package `email` e suoi relativi TU.
- Codifica dei componenti `historical_data`, `sensor` e `hello` e loro relativi test.

Rimane da implementare il package `real_time_data`.

=== Altri documenti
Sono state apportate modifiche anche al Glossario, con l’aggiunta di nuovi termini, e alle Norme di Progetto, con la stesura delle convenzioni e delle regole di codifica.


= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
  [[Backend] Codifica package backend/internal/email ], [Elia Ernesto Stellin], [(#issue(37, repo:"dash"))],
  [[Backend] TI backend/internal/auth ], [Elia Ernesto Stellin], [(#issue(69, repo:"dash"))],
  [[Backend] TI backend/internal/user ], [Elia Ernesto Stellin], [(#issue(71, repo:"dash"))],
  [[Backend] TI backend/internal/email ], [Elia Ernesto Stellin], [(#issue(70, repo:"dash"))],
  [[Backend] Codifica package backend/internal/gateway ], [Michele Dioli], [(#issue(39, repo:"dash"))],
  [[Backend] Verifica package backend/internal/gateway ], [Michele Dioli], [(#issue(40, repo:"dash"))],
  [[PdP] Sprint 15 ], [Jaume Bernardi], [(#issue(498))],
  [Rendicontazione ore responsabile sprint 15 ], [Jaume Bernardi], [(#issue(497))],
  [[Backend] Codifica backend/internal/real_time_data ], [Elia Ernesto Stellin], [(#issue(76, repo:"dash"))],
  [[Backend] TU backend/internal/real_time_data ], [Elia Ernesto Stellin], [(#issue(77, repo:"dash"))],
  [[Backend] TI backend/internal/real_time_data ], [Elia Ernesto Stellin], [(#issue(78, repo:"dash"))],
  [[MU] Inizio stesura Manuale Utente ], [Jaume Bernardi], [(#issue(501))],
  [[ST] Architettura hexagonal ], [Jaume Bernardi], [(#issue(475))],
  [[ST] Aggiornamento librerie frontend ], [Riccardo Graziani], [(#issue(491))],
  [[ST] Descrizione pattern frontend ], [Riccardo Graziani], [(#issue(494))],
  [[ST] Completamento Specifica Tecnica per frontend ], [Riccardo Graziani, Siria Salvalaio], [(#issue(494))],
  [[Frontend] Integrazione con Cloud ], [Riccardo Graziani, Siria Salvalaio], [(#issue(100, repo:"dash"))],
  [[PdQ] Aggiornare metriche ], [Riccardo Graziani, Siria Salvalaio], [(#issue(496))],
  [[Frontend] Modificare Modello C4 sul codice attuale ], [Siria Salvalaio], [(#issue(94, repo:"dash"))],
  [[ST] Scrittura parte gateway e data consumer ], [Alessandro Dinato], [(#issue(493))],
  [[MVP] Setup sistema ], [Alessandro Dinato], [(#issue(1, repo:"mvp"))],
  [[Backend] TI historical_data ], [Hossam Ezzemouri], [(#issue(101, repo:"dash"))],
  [[Backend] modifica codice historical_data ], [Hossam Ezzemouri], [(#issue(102, repo:"dash"))],
  [[Obs] Implementazione metriche ], [Hossam Ezzemouri], [(#issue(2, repo:"obs"))],
  [[NdP] Aggiungere gomail v2 come tecnologia ], [Elia Ernesto Stellin], [(#issue(488, repo:"dash"))],

) 

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Jaume Bernardi
- *Progettista*: Jaume Bernardi, Riccardo Graziani, Siria Salvalaio, Alessandro Dinato
- *Programmatore*: Riccardo Graziani, Siria Salvalaio, Hossam Ezzemouri, Elia Ernesto Stellin, Michele Dioli
- *Verificatore*: Jaume Bernardi, Hossam Ezzemouri, Elia Ernesto Stellin, Michele Dioli, Alessandro Dinato
- *Amministratore*: Alessandro Dinato