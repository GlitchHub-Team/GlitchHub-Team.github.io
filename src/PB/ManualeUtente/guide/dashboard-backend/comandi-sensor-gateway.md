# Comandi per i gateway e i sensori simulati
Il sistema offre diversi comandi per la modifica del comportamento dei gateway e dei sensori simulati. Per eseguire un comando, viene effettuata una richiesta HTTP API al microservizio **Cloud Backend**; quest'ultimo comunica, tramite **NATS**, con il microservizio **Gateway**, il quale esegue il comando richiesto modificando il comportamento del dispositivo simulato di conseguenza.

## Creazione di un gateway simulato
La creazione di un gateway simulato è disponibile solo agli utenti **Super Admin** ed invia un comando di creazione al microservizio **Gateway**. Se il comando viene eseguito con successo, il nuovo gateway simulato viene creato e messo in stato **decommissioned**{{gloss}}.

### Richiesta
- **POST** `/api/v1/gateway`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "name": "string",
    "interval": 1 // intervallo di tempo in millisecondi tra l'invio di nuovi dati
}
```

### Risposta
```json
{
    "gateway_id": "string<uuid>",
    "name": "string",
    "interval": 1,
    "status": "string", // stato del gateway simulato, può essere "active", "inactive" o "decommissioned"
    "public_identifier": null, // public key del gateway simulato
    "tenant_id": null // id del tenant associato al gateway simulato
}
```
Il campo `public_identifier` è `null` al momento della creazione del gateway simulato, ma viene compilato asincronamente **attraverso il messaggio di hello**{{gloss}}.

Il campo `tenant_id` è `null` al momento della creazione del gateway simulato, ma può essere aggiornato in fase di **commissioning**{{gloss}}.

## Eliminazione di un gateway simulato
L'eliminazione di un gateway simulato è disponibile solo agli utenti **Super Admin** ed invia un comando di eliminazione al microservizio **Gateway**. Se il comando viene eseguito con successo, il gateway simulato viene eliminato permanentemente.

### Richiesta
- **DELETE** `/api/v1/gateway/{gateway_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "gateway_id": "string<uuid>",
    "name": "string",
    "interval": 1,
    "status": "string", // stato del gateway simulato, può essere "active", "inactive" o "decommissioned"
    "public_identifier": null, // public key del gateway simulato
    "tenant_id": null // id del tenant associato al gateway simulato
}
```

## Commissioning di un gateway simulato
Il commissioning di un gateway simulato è disponibile solo agli utenti **Super Admin** ed invia un comando di commissioning al microservizio **Gateway**. Se il comando viene eseguito con successo, il gateway simulato viene associato al tenant specificato e messo in stato **active**{{gloss}}, ovvero pronto per l'invio dei dati.

### Richiesta
- **POST** `/api/v1/gateway/{gateway_id}/commission`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "tenant_id": "string<uuid>", // id del tenant da associare al gateway simulato
    "commission_token": "string"
}
```

Il campo `commission_token` è il token necessario al gateway simulato per inviare dati a **NATS JetStream**. È firmato dalla **public key** del gateway simulato e contiene al suo interno solo le autorizzazioni strettamente necessarie per inviare dati per il proprio tenant.

### Risposta
```json
{
    "gateway_id": "string<uuid>",
    "name": "string",
    "interval": 1,
    "status": "string",
    "public_identifier": "string",
    "tenant_id": "string<uuid>"
}
```

## Decommissioning di un gateway simulato
Il decommissioning di un gateway simulato è disponibile solo agli utenti **Super Admin** ed invia un comando di decommissioning al microservizio **Gateway**. Se il comando viene eseguito con successo, il gateway simulato viene disassociato dal tenant e messo in stato **decommissioned**{{gloss}}, ovvero non più autorizzato ad inviare dati.

### Richiesta
- **POST** `/api/v1/gateway/{gateway_id}/decommission`
- Autenticazione: richiesta

### Risposta
```json
{
    "gateway_id": "string<uuid>",
    "name": "string",
    "interval": 1,
    "status": "string",
    "public_identifier": "string",
    "tenant_id": null
}
```

## Reset di un gateway simulato
Il reset di un gateway simulato è disponibile solo agli utenti **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono resettare solo i gateway simulati associati al proprio tenant. Il comando invia un reset al microservizio **Gateway**. Se il comando viene eseguito con successo, l'intervallo di invio dati del gateway viene resettato ad un valore di default di **5 secondi**, inoltre viene svuotato il buffer interno.

### Richiesta
- **POST** `/api/v1/gateway/{gateway_id}/reset`
- Autenticazione: richiesta

### Risposta
```json
{
    "Result": "string" // esito dell'operazione di reset
}
```

## Riavvio di un gateway simulato
Il riavvio di un gateway simulato è disponibile solo agli utenti **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono riavviare solo i gateway simulati associati al proprio tenant. Il comando invia un riavvio al microservizio **Gateway**. Se il comando viene eseguito con successo, il gateway simulato invia nuovamente un **messaggio di hello**{{gloss}}.

### Richiesta
- **POST** `/api/v1/gateway/{gateway_id}/reboot`
- Autenticazione: richiesta

### Risposta
```json
{
    "Result": "string" // esito dell'operazione di riavvio
}
```

## Interruzione di un gateway simulato
L'interruzione di un gateway simulato è disponibile solo agli utenti **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono interrompere solo i gateway simulati associati al proprio tenant. Il comando invia un'interruzione al microservizio **Gateway**. Se il comando viene eseguito con successo, il gateway simulato smette di inviare dati temporaneamente passando in stato **inactive**{{gloss}}.

### Richiesta
- **POST** `/api/v1/gateway/{gateway_id}/interrupt`
- Autenticazione: richiesta

### Risposta
```json
{
    "Result": "string" // esito dell'operazione di interruzione
}
```

## Ripresa di un gateway simulato
La ripresa di un gateway simulato è disponibile solo agli utenti **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono riprendere solo i gateway simulati associati al proprio tenant. Il comando invia una ripresa al microservizio **Gateway**. Se il comando viene eseguito con successo, il gateway simulato riprende ad inviare dati passando in stato **active**{{gloss}}.

### Richiesta
- **POST** `/api/v1/gateway/{gateway_id}/resume`
- Autenticazione: richiesta

### Risposta
```json
{
    "Result": "string" // esito dell'operazione di ripresa
}
```



## Creazione di un sensore simulato
La creazione di un sensore simulato è disponibile solo agli utenti **Super Admin** ed invia un comando di creazione al microservizio **Gateway**. Se il comando viene eseguito con successo, il nuovo sensore simulato viene creato ed inizia immediatamente a produrre dati per il profilo GATT specificato.

### Richiesta
- **POST** `/api/v1/sensor`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "sensor_name": "string",
    "data_interval": 1, // intervallo di tempo in millisecondi tra la produzione di nuovi dati
    "profile": "gatt_profile", // profilo GATT da utilizzare per il sensore simulato,
    "gateway_id": "string<uuid>" // id del gateway da associare al sensore simulato
}
```

I profili GATT disponibili per i sensori simulati sono: **heart_rate**, **pulse_oximeter**, **ecg_custom**, **health_thermometer** ed **environmental_sensing**.

### Risposta
```json
{
    "sensor_id": "string<uuid>",
    "gateway_id": "string<uuid>",
    "sensor_name": "string",
    "sensor_interval": 1,
    "status": "string", // stato del sensore simulato, può essere "active" o "inactive"
    "profile": "gatt_profile"
}
```

## Eliminazione di un sensore simulato
L'eliminazione di un sensore simulato è disponibile solo agli utenti **Super Admin** ed invia un comando di eliminazione al microservizio **Gateway**. Se il comando viene eseguito con successo, il sensore simulato viene cancellato e smette di produrre dati.

### Richiesta
- **DELETE** `/api/v1/sensor/{sensor_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "sensor_id": "string<uuid>",
    "gateway_id": "string<uuid>",
    "sensor_name": "string",
    "sensor_interval": 1,
    "status": "string", // stato del sensore simulato, può essere "active" o "inactive"
    "profile": "gatt_profile"
}
```

## Interruzione di un sensore simulato
L'interruzione di un sensore simulato è disponibile solo agli utenti **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono interrompere solo i sensori simulati associati ad un gateway associato al proprio tenant. Il comando invia un'interruzione al microservizio **Gateway**. Se il comando viene eseguito con successo, il sensore simulato smette di produrre dati temporaneamente passando in stato **inactive**{{gloss}}.

### Richiesta
- **POST** `/api/v1/sensor/{sensor_id}/interrupt`
- Autenticazione: richiesta

### Risposta
Il body della risposta è vuoto, tutto ciò che viene restituito è lo status code HTTP, `200 OK` in caso di successo.

## Ripresa di un sensore simulato
La ripresa di un sensore simulato è disponibile solo agli utenti **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono riprendere solo i sensori simulati associati ad un gateway associato al proprio tenant. Il comando invia una ripresa al microservizio **Gateway**. Se il comando viene eseguito con successo, il sensore simulato riprende a produrre dati passando in stato **active**{{gloss}}.

### Richiesta
- **POST** `/api/v1/sensor/{sensor_id}/resume`
- Autenticazione: richiesta

### Risposta
Il body della risposta è vuoto, tutto ciò che viene restituito è lo status code HTTP, `200 OK` in caso di successo.