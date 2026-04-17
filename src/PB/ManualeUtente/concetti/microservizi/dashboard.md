# Dashboard
Il microservizio **Dashboard** offre l'interfaccia utente e le API per gestire e visualizzare i dati dei sensori, i gateway, i tenant e gli utenti.

## Funzioni principali

- Creazione e gestione tenant
- Gestione utenti con ruoli diversi (super admin, tenant admin, tenant user)
- Gestione gateway e sensori simulati, con possibilità di invio comandi per la modifica della configurazione
- Visualizzazione dello storico dei dati acquisiti dai sensori, con possibilità di filtraggio per intervallo temporale
- Visualizzazione dei dati prodotti dai sensori in tempo reale
- Autenticazione via JWT{{gloss}} per permettere la scalabilità orizzontale del servizio

## Scopo
Fornire un'interfaccia utente semplice e intuitiva per la gestione del sistema da parte di diversi tipi di utenti con diversi livelli di accesso e diverse responsabilità.
