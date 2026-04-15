# Comandi di reset e riavvio gateway
Il microservizio **Gateway** ha la possibilità di ricevere dei comandi di reset{{gloss}} e riavvio{{gloss}} del gateway simulato.    
Questi comandi vengono ricevuti su un **subject NATS** specifico e vengono eseguiti per resettare alla configurazione iniziale o riavviare un gateway simulato.

## Reset gateway
Il reset di un gateway simulato richiede l'invio di un comando al subject NATS `commands.resetgateway` e comporta le seguenti azioni:

- Eliminazione dei dati associati al gateway simulato.
- Reset della frequenza di svuotamento del buffer interno al valore di default, ovvero **5000 ms**.

Il comando deve essere inviato sul subject NATS `commands.resetgateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string" // Identificativo univoco di tipo uuid del gateway simulato da resettare
}
```

## Riavvio gateway
Il riavvio di un gateway simulato richiede l'invio di un comando al subject NATS `commands.rebootgateway` e comporta il re-invio del **messaggio di Hello**{{gloss}} per la condivisione della **public key** del gateway simulato.

Il comando deve essere inviato sul subject NATS `commands.rebootgateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string" // Identificativo univoco di tipo uuid del gateway simulato da riavviare
}
```