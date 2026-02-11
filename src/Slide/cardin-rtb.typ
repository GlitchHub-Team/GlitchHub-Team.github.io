#import "../Templates/templateSlidesRTB.typ": *

#show: report.with(
  title: [RTB: Tecnologie PoC],
  subtitle: [
    #set text(weight: 300)
    Gruppo 5 -- A.A. 2025/2026 \ *GlitchHub Team*
  ],
  date: "12/02/2026",
  htmlId: "Diapositive",
)


#content-slide(title: [Capitolato C7 -- Sistema di acquisizione dati da sensori])[
  #set text(size: 27pt)
  - Sistema per *acquisire* dati da sensori IoT e *visualizzarli* su dashboard

  - *Acquisizione* dati da sensori collegati a Gateway WiFi: generazione ed esposizione dei dati vengono *simulate*

  - *Visualizzazione* di dati ottenuti su dashboard online

  - *Separazione* di dati e utenti tra diversi *tenant*
]

#content-slide(title: [Struttura PoC])[
  - *Dashboard*: Angular per front-end, Go e Gin per back-end, comunicazione via WebSocket
  - *Generazione dati*: Go per servizi di _pub/sub_ comunicanti su NATS
  - *Observability*: Grafana + Prometheus


]

#content-slide(title: [Tecnologie usate])[
  #set text(size: 25pt)
  - Linguaggio *Go*: back-end dashboard e servizi _pub/sub_ di dati
    - *Alternative*: C\#
    - Scelto perché bla bla

  - *Gin*: framework Go per back-end dashboard
    - *Alternative*: Fiber, Chi, stdlib
    - Rapidità di sviluppo, funzionalità integrate, scalabilità

  - *Angular*: front-end dashboard
    - *Alternative*: React
    - Molti tool built-in, architettura ben definita

  - *NATS*: message broker
    - *Alternative*: Kafka, RabbitMQ
    - ...
    
  - *TimescaleDB*: estensione di PostgreSQL, persistenza dati IoT
    - *Alternative*: InfluxDB
    - Conosciuto dal gruppo, buona gestione di dati _time-series_

  - *Grafana + Prometheus*: observability
    - *Alternative*: ?
    - Plug&Play, integrazione seamless con NATS

  - *Docker + Docker Compose*: virtualizzazione e gestione di container multipli
    - Molto conosciuto dal gruppo
    - Isolamento dei servizi in diversi container, deploy multi-platform
    - Ambiente di sviluppo riproducibile
    - Gestione semplificata di scalabilità

  - *Nginx*: reverse proxy, load balancing, cache HTTP
    - *Alternative*: Apache2
    - Gestione asincrona richieste, più adeguato per scalare
]

