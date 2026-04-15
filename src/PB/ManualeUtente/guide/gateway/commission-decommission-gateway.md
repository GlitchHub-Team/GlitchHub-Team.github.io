# Comandi di commissioning e decommissioning del gateway
Il microservizio **Gateway** ha la possibilità di ricevere dei comandi di commissioning{{gloss}} e decommissioning{{gloss}} del gateway simulato.   
Questi comandi vengono ricevuti su un **subject NATS** specifico e vengono eseguiti per associare o disassociare un gateway simulato ad un **tenant**.

## Commissioning gateway
Il commissioning di un gateway simulato richiede l'invio di un comando al subject NATS `commands.commissiongateway` e comporta le seguenti azioni:
- Associazione del gateway simulato al tenant specificato;
- Utilizzo del nuovo **token di commissioning** ricevuto per autenticare il gateway simulato su NATS allo scopo di inviare i dati dei sensori simulati associati attraverso il message broker in questione.
- Scrittura del **tenantId** e del nuovo **token di commissioning** nel database SQLite{{gloss}} del microservizio in questione.
- Modifica dello stato del gateway simulato da **commissioned** ad **active**.
- Inizio del processo di svuotamento del buffer interno dei gateway simulati per il conseguente invio dei dati dei sensori simulati associati.

Il comando deve essere inviato sul subject NATS `commands.commissiongateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string", // Identificativo univoco di tipo uuid del gateway simulato da commissionare
  "tenantId": "string", // Identificativo univoco del tenant di tipo uuid a cui associare il gateway simulato
  "commissionedToken": "string" // JWT firmato dall'account del tenant, ma singolo per gateway (vedi paragrafo successivo per i dettagli sulla generazione del token di commissioning)
}
```

### Generazione del token di commissioning
Il token di commissioning è un JWT{{gloss}} che deve essere generato dall'account del tenant a cui si vuole associare il gateway simulato, e deve essere singolo per gateway simulato.   
Il token di commissioning deve essere firmato con la **public key** del gateway simulato che si vuole commissionare.

È disponibile un tool apposito per la generazione del token nel container **nats-manager**, di seguito sono riportate le istruzioni:
1. Entrare nella CLI del container `nats-manager`
2. Entrare nella root: `cd /`
3. Eseguire lo script seguente: `./create-gateway.sh --tenant-name <tenant-name> --tenant-id <tenant-id> --gateway-name <gateway-name> --gateway-id <gateway-id> --gateway-public-key <gateway-public-key>`
   - `<tenant-name>`: indica il nome del **NATS account** relativo al tenant a cui si vuole associare il gateway, in caso non si ricordi il nome è possibile recuperarlo attraverso il comando `nsc list accounts` sempre nella CLI del container `nats-manager`;
   - `<gateway-name>`: indica il nome del **NATS user** relativo al gateway all'interno di NATS;
   - `<tenant-id>`: indica lo **UUID** del tenant (all'interno del sistema) a cui si vuole associare il gateway;
   - `<gateway-id>`: indica lo **UUID** del gateway (all'interno del sistema) che si vuole commissionare;
   - `<gateway-public-key>`: indica la **Public Key** del gateway (all'interno del sistema) che si vuole commissionare.
4. Il comando restituirà il **token di commissioning** da utilizzare per il commissioning del gateway simulato.

## Decommissioning gateway
Il decommissioning di un gateway simulato richiede l'invio di un comando al subject NATS `commands.decommissiongateway` e comporta le seguenti azioni:
- Disassociazione del gateway simulato dal tenant specificato;
- Modifica dello stato del gateway simulato da **active** o **inactive** a **decommissioned**.
- Terminazione del processo di invio dei dati dei sensori simulati associati al gateway simulato attraverso il message broker in questione.
- Eliminazione del **tenantId** e del **token di commissioning** dal database SQLite{{gloss}} del microservizio in questione.

Il comando deve essere inviato sul subject NATS `commands.decommissiongateway` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string" // Identificativo univoco di tipo uuid del gateway simulato da decommissionare
}
```