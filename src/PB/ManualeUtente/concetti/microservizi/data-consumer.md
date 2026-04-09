# Data Consumer

Il microservizio **Data Consumer** consuma i messaggi dal bus di messaggistica e li elabora per l'archiviazione.

## Funzioni principali

- ricezione dei messaggi dal broker di messaggistica
- trasformazione dei dati sensoriali in eventi persistenti
- memorizzazione in un database time-series ottimizzato per query temporali
- mantenimento della separazione dei tenant
- esposizione di metriche operative e statistiche aggregate

## Obiettivo

Garantire una pipeline affidabile per i dati dei sensori e renderli disponibili alla Dashboard e ai servizi di analisi, preservando l'isolamento tra tenant.
