# Comandi
Il microservizio **Gateway** ha la possibilità di ricevere diversi tipi di comandi su specifici **subject NATS** e di eseguirli per gestire i gateway simulati e i sensori simulati associati.

## Credenziali necessarie
Per poter inviare i comandi al microservizio in questione è necessario autenticarsi su NATS con le credenziali di un **NATS user** che abbia permessi di pubblicazione sui subject `commands.*` e di sottoscrizione sul subject `_INBOX.*` per ricevere le risposte ai comandi inviati.   
Inoltre è necessario che il **NATS user** sia associato al **NATS account** del tenant di sistema, chiamato `application_core`.

## Certificati necessari
Per poter inviare comandi al microservizio in questione è necessario avere un **certificato TLS pubblico** (file **ca.pem**) per verificare che il server NATS a cui ci si sta connettendo sia effettivamente chi ci dice di essere.

Il file **ca.pem** deve essere creato a partire dalla **private key** (file **server.key**) presente nel **NATS server**.

## Risposta comandi
Ogni comando inviato al microservizio in questione restituirà una risposta con la seguente struttura:

```json
{
  "Success": true, // Indica se il comando è stato eseguito con successo o meno
  "Message": "string" // Messaggio di errore o di successo
}
```