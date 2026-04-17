# Observability
Il microservizio di **Observability** ha lo scopo di raccogliere e visualizzare metriche, rispettivamente attraverso Prometheus{{gloss}} e Grafana{{gloss}}.

## Funzioni principali

- Raccolta di metriche di NATS JetStream{{gloss}};
- Raccolta di metriche di Gin{{gloss}};
- Visualizzazione dashboard Grafana{{gloss}} con metriche di NATS JetStream{{gloss}};
- Visualizzazione dashboard Grafana{{gloss}} con metriche di Gin{{gloss}};
- Autenticazione via username e password per permettere l'accesso alle dashboard solo a utenti autorizzati.

## Scopo
Fornire un servizio di osservabilità che consenta di monitorare lo stato dell'infrastruttura e di identificare eventuali problemi presenti nel sistema.