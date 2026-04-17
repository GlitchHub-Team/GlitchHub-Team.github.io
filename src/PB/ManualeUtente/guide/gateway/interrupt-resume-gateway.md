# Comandi di interruzione e ripresa gateway
Il microservizio **Gateway** ha la possibilità di ricevere dei comandi di interruzione{{gloss}} e ripresa{{gloss}} del gateway simulato.    
Questi comandi vengono ricevuti su un **subject NATS** specifico e vengono eseguiti per interrompere o riprendere l'invio dei dati dei sensori simulati associati ad un gateway simulato attraverso il message broker in questione.

## Interruzione gateway
L'interruzione di un gateway simulato richiede l'invio di un comando al subject NATS `commands.interruptgateway` e comporta le seguenti azioni:

- Modifica dello stato del gateway simulato da **active** a **inactive**;
- Interruzione del processo di invio dei dati dei sensori simulati associati al gateway simulato attraverso il message broker in questione;
- Scrittura del nuovo stato nel database SQLite{{gloss}} del microservizio in questione.

Il comando deve essere inviato sul subject NATS `commands.interruptgateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string" // Identificativo univoco di tipo uuid del gateway simulato da interrompere
}
```

## Ripresa gateway
La ripresa di un gateway simulato richiede l'invio di un comando al subject NATS `commands.resumegateway` e comporta le seguenti azioni:

- Modifica dello stato del gateway simulato da **inactive** a **active**;
- Ripresa del processo di invio dei dati dei sensori simulati associati al gateway simulato attraverso il message broker in questione;
- Scrittura del nuovo stato nel database SQLite{{gloss}} del microservizio in questione.

Il comando deve essere inviato sul subject NATS `commands.resumegateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string" // Identificativo univoco di tipo uuid del gateway simulato da riprendere
}
```

