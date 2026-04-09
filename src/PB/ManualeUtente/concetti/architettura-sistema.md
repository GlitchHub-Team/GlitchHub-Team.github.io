# Architettura del Sistema

Il progetto è un sistema<!--gloss[sistema]--> per l'acquisizione di dati da sensori, basato su un'architettura a microservizi.
Il ruolo principale è raccogliere dati dai gateway, mantenere la separazione multi-tenant e offrire accesso ai dati tramite dashboard e servizi backend.

## Componenti principali

- **Gateway**: riceve i messaggi dai sensori e li inoltra al bus di messaggistica.
- **Data Consumer**: consuma i messaggi dal broker, li normalizza e li salva in un database time-series.
- **Dashboard**: fornisce interfacce utenti e backend per la visualizzazione dei dati e la gestione operativa.
- **Auth**: gestisce autenticazione, autorizzazione e generazione di token JWT.
- **User**: gestisce utenti, ruoli e relazioni tra tenant.
- **Tenant**: garantisce l'isolamento dei dati e le regole di accesso per cliente.

## Tecnologia e flusso dati

- Il sistema utilizza un broker di messaggistica (ad esempio NATS<!--gloss[NATS]-->) per la comunicazione asincrona tra servizi.
- I gateway inviano eventi sensoriali al bus di messaggistica.
- Il Data Consumer memorizza i dati in un database ottimizzato per serie temporali.
- La Dashboard rende i dati accessibili ai tenant autorizzati.
- I servizi Auth, User e Tenant garantiscono che ogni richiesta sia autorizzata e associata al tenant corretto.

## Obiettivi architetturali

- separazione multi-tenant dei dati
- comunicazione resiliente e scalabile tra servizi
- disponibilità dei dati per visualizzazione e analisi
- trasparenza operativa mediante telemetria e monitoraggio
