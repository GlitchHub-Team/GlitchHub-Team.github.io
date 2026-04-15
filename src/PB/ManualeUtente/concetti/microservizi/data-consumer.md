# Data Consumer
Il microservizio **Data Consumer** ha lo scopo di ricevere i dati IoT dal message broker NATS JetStream{{gloss}} e di memorizzarli nel database time-series TimescaleDB{{gloss}}.

## Funzioni principali

- Ricezione dei dati IoT prodotti dai sensori tramite NATS JetStream{{gloss}}.
- Raggrupamento dati per tenant ottimizzando la query attraverso l'utilizzo di bulk insert{{gloss}}.
- Salvataggio dei dati in TimescaleDB{{gloss}} con divisione logica per tenant con lo scopo di garantire l'isolamento dei dati.

## Obiettivo
Garantire che i dati IoT siano memorizzati in un sistema di persistenza ottimizzato per i dati temporali, mantenendo l'isolamento multi-tenant e assicurando la scalabilità del sistema.
