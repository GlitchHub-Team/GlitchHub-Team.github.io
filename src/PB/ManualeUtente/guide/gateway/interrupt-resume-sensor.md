# Comandi di interruzione e ripresa sensore
Il microservizio **Gateway** ha la possibilità di ricevere dei comandi di interruzione{{gloss}} e ripresa{{gloss}} del sensore simulato.    
Questi comandi vengono ricevuti su un **subject NATS** specifico e vengono eseguiti per interrompere o riprendere la scrittura dei dati dei sensori simulati nel database SQLite{{gloss}} del microservizio in questione, che simula il buffer interno dei gateway simulati.

## Interruzione sensore
L'interruzione di un sensore simulato richiede l'invio di un comando al subject NATS `commands.interruptsensor` e comporta le seguenti azioni:

- Modifica dello stato del sensore simulato da **active** a **inactive**;
- Interruzione della scrittura dei dati dei sensori simulati nel database SQLite{{gloss}} del microservizio in questione.
- Scrittura del nuovo stato nel database SQLite{{gloss}} del microservizio in questione.

Il comando deve essere inviato sul subject NATS `commands.interruptsensor` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string", // Identificativo univoco di tipo uuid del gateway simulato a cui è associato il sensore simulato da interrompere
  "sensorId": "string" // Identificativo univoco di tipo uuid del sensore simulato da interrompere
}
```

## Ripresa sensore
La ripresa di un sensore simulato richiede l'invio di un comando al subject NATS `commands.resumesensor` e comporta le seguenti azioni:

- Modifica dello stato del sensore simulato da **inactive** a **active**;
- Ripresa della scrittura dei dati dei sensori simulati nel database SQLite{{gloss}} del microservizio in questione.
- Scrittura del nuovo stato nel database SQLite{{gloss}} del microservizio in questione.

Il comando deve essere inviato sul subject NATS `commands.resumesensor` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string", // Identificativo univoco di tipo uuid del gateway simulato a cui è associato il sensore simulato da riprendere
  "sensorId": "string" // Identificativo univoco di tipo uuid del sensore simulato da riprendere
}
``` 