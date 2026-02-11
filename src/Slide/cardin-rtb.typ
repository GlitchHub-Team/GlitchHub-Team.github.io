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
  #set text(size: 21pt)
  - Sistema per *acquisire* dati da sensori IoT e *visualizzarli* su dashboard o da API Client

  - *Acquisizione* dati da sensori collegati a Gateway WiFi: generazione ed invio dei dati vengono *simulati*

  - *Separazione* di dati e utenti tra diversi *tenant*

  - Richiesti *scalability* e *monitoring* del Cloud
]

#content-slide(title: [Struttura PoC])[
  #align(center + horizon, image("../assets/diagrammi/diagrammaPoC.svg", width: 100%))

]

#content-slide(title: [Tecnologie usate])[
  #set text(size: 21pt)
  - Linguaggio *Go*: back-end dashboard e servizi _pub/sub_ di dati
    - *Alternative*: C\#
    - Goroutine, linguaggio compilato, sintassi semplice e utilizzato dalla proponente

  - *Gin*: framework Go lato back-end
    - *Alternative*: Fiber, Chi
    - Rapidità di sviluppo, funzionalità integrate, flessibilità

  - *Nginx*: reverse proxy, load balancing, cache HTTP
    - *Alternative*: Apache HTTP Server
    - Gestione asincrona richieste, più adeguato per scalare

  #pagebreak()
  #set text(size: 21pt)
  - *Grafana + Prometheus*: observability
    - *Alternative*: Loki(Prometheus), InfluxDB(Prometheus), Chronograf(Grafana)
    - Plug&Play, integrazione seamless con NATS

  - *NATS Jetstream*: message broker con sistema di persistenza
    - *Alternative*: Kafka, RabbitMQ
    - Scalabilità, multi-tenancy nativa, utilizzato dalla proponente, integrazione Prometheus

  - *TimescaleDB*: estensione di PostgreSQL, persistenza dati IoT
    - *Alternative*: InfluxDB
    - Conosciuto dal gruppo, buona gestione di dati _time-series_

  #pagebreak()
  #set text(size: 21pt)
  - *Angular*: framework lato front-end
    - *Alternative*: React
    - Tool built-in, architettura standardizzata, Typescript nativo

  - *Docker + Docker Compose*: virtualizzazione e gestione di container multipli
    - Conosciuto bene dal gruppo
    - Isolamento dei servizi in diversi container, deploy multi-platform
    - Ambiente di sviluppo riproducibile
    - Gestione semplificata di scalabilità
]
