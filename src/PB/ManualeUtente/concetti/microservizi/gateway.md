# Gateway

Il microservizio **Gateway** riceve i dati dai sensori e li inoltra al bus di messaggistica che connette i microservizi.

## Funzioni principali

- acquisizione dei messaggi dai sensori
- validazione e normalizzazione del payload
- invio dei dati verso il bus di messaggistica (es. NATS<!--gloss[NATS]-->)
- gestione del commissioning dei gateway
- associazione del gateway al tenant corretto
- segnalazione dello stato operativo

## Dipendenze

- broker di messaggistica per la pubblicazione degli eventi
- database o store per lo stato del gateway
- servizi di autenticazione e autorizzazione per l'associazione tenant

## Scopo

Fornire un punto di raccolta affidabile e scalabile per i dati sensoriali, garantendo che ogni messaggio sia instradato verso il tenant corretto e verso i servizi downstream.
