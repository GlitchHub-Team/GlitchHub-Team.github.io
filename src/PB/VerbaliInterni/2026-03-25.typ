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



) 

= Assegnazione ruoli per le prossima settimana
- *Responsabile*: Siria Salvalaio
- *Amministratore*: Alessandro Dinato
- *Programmatore*: Jaume Bernardi, Riccardo Graziani, Hossam Ezzemouri, Michele Dioli, Elia Ernesto Stellin, Siria Salvalaio
- *Verificatore*: Jaume Bernardi, Riccardo Graziani, Michele Dioli, Elia Ernesto Stellin, Siria Salvalaio, Alessandro Dinato
- *Analista*: Hossam Ezzemouri