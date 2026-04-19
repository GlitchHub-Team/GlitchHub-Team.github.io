#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 15/04/2026",
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
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    [Revisione del lavoro svolto],
    [Discussione sui compiti da svolgere],
    [Riassegnazione ore],
  ),
  htmlId: "PB-VerbaliInterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *15 aprile 2026* dalle ore 14:30 alle ore 17:00, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

== Revisione della distribuzione delle ore di lavoro
Il gruppo ha dedicato del tempo a controllare e ridistribuire le ore rimanenti tra i vari ruoli, in vista delle fasi finali del progetto. È importante sottolineare che questo processo non ha incrementato il costo totale, né ha modificato il numero complessivo di ore di lavoro previste per ogni membro.

== Revisione del lavoro

=== Stato del progetto
Sono state portate a termine tutte le componenti necessarie per fornire le funzionalità attese dal _backend_ e dal _frontend_, sia con opportune fasi di verifica che con i relativi test di unità (TU) e di integrazione (TI).

Inoltre, sono state definite ed implementate delle metriche di _observability_ tramite libreria go-gin-prometheus, di cui manca la verifica.

=== Stato della documentazione
Il test book richiesto dalla proponente è stato compilato.
Parallelamente, è iniziata la stesura del #gloss[Manuale Utente], unitamente alle attività di aggiornamento e revisione dei documenti di #gloss[Analisi dei Requisiti] e #gloss[Specifica Tecnica].

= Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],
  [[ST] Stesura Cloud Backend - Michele], [Michele Dioli], [(#issue(524))], 
  [Test di Sistema], [Alessandro Dinato, Elia Ernesto Stellin, Michele Dioli, Riccardo Graziani, Siria Salvalaio], [(#issue(158, repo:"dashboard"))], 
  [Implementazione Test di Sistema - Alessandro], [Alessandro Dinato], [(#issue(159, repo:"dashboard"))], 
  [Implementazione Test di Sistema - Elia], [Elia Ernesto Stellin], [(#issue(160, repo:"dashboard"))], 
  [Implementazione Test di Sistema - Michele], [Michele Dioli], [(#issue(161, repo:"dashboard"))], 
  [[AdR] Revisione], [Alessandro Dinato], [(#issue(543))], 
  [[MU] Perfezionamento manuale utente backend, installazione], [Alessandro Dinato], [(#issue(544))], 
  [Implementazione Test di Sistema - Siria], [Siria Salvalaio], [(#issue(162, repo:"dashboard"))], 
  [Implementazione Test di Sistema - Riccardo], [Riccardo Graziani], [(#issue(163, repo:"dashboard"))], 
  [[MU] Perfezionamento manuale utente observability], [Hossam Ezzemouri], [(#issue(548))], 
  [[MU] Sezione frontend], [Siria Salvalaio], [(#issue(549))], 
  [[ST] Cloud Backend], [Elia Ernesto Stellin, Michele Dioli], [(#issue(522))], 
  [[ST] Tracciamento requisiti], [Elia Ernesto Stellin, Michele Dioli], [(#issue(525))], 
  [[ST] Stesura tracciamento requisiti - Elia], [Elia Ernesto Stellin], [(#issue(526))],
  [[PdP] Sprint 16], [Jaume Bernardi], [(#issue(547))], 
  [[ST] Stesura Cloud Backend - Elia], [Elia Ernesto Stellin], [(#issue(523))], 
  [Rendicontazione ore responsabile sprint 17], [Jaume Bernardi], [(#issue(545))],
  [[PdQ] Rendicontare test di unità/integrazione], [Jaume Bernardi], [(#issue(550))],

) 

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Jaume Bernardi
- *Progettista*: Alessandro Dinato, Jaume Bernardi, Elia Ernesto Stellin, Michele Dioli, Siria Salvalaio, Hossam Ezzemouri
- *Programmatore*: Alessandro Dinato, Elia Ernesto Stellin, Michele Dioli, Siria Salvalaio, Riccardo Graziani
- *Verificatore*: Alessandro Dinato
