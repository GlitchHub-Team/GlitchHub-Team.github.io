# Comandi di creazione ed eliminazione gateway
Il microservizio **Gateway** ha la possibilità di ricevere dei comandi di creazione ed eliminazione gateway.   
Questi comandi vengono ricevuti su un **subject NATS** specifico e vengono eseguiti per creare o eliminare un gateway simulato.

## Creazione gateway
La creazione di un gateway simulato richiede l'invio di un comando al subject NATS `commands.creategateway` e comporta le seguenti azioni:

- Creazione di una **goroutine** che simula il funzionamento del gateway;
- Aggiunta nella mappa dei gateway attivi;
- Scrittura della configurazione nel database SQLite{{gloss}} del microservizio in questione;
- Invio del **messaggio di Hello**{{gloss}} per la condivisione della **public key** del gateway simulato.

Il comando deve essere inviato sul subject NATS `commands.creategateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string", // Identificativo univoco del gateway simulato di tipo uuid
  "interval": 1 // Invio dati ogni X ms, deve essere un intero maggiore o uguale a 1
}
```

## Eliminazione gateway
L'eliminazione di un gateway simulato richiede l'invio di un comando al subject NATS `commands.deletegateway` e comporta le seguenti azioni:

- Terminazione della **goroutine** che simula il funzionamento del gateway;
- Rimozione dalla mappa dei gateway attivi;
- Eliminazione della configurazione dal database SQLite{{gloss}} del microservizio in questione.
- Eliminazione dei dati associati al gateway simulato.
- Eliminazione dei sensori associati al gateway simulato.

Il comando deve essere inviato sul subject NATS `commands.deletegateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string" // Identificativo univoco del gateway simulato di tipo uuid
}
```