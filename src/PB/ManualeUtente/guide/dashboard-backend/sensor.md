# Sensori
Il sistema prevede la possibilità di visionare ogni sensore simulato presente nel sistema, purché si abbiano le autorizzazioni necessarie. In particolare, i **Super Admin** possono visionare tutti i sensori simulati presenti nel sistema, mentre gli utenti **Tenant Admin** e **Tenant User** possono visionare solo i sensori simulati associati a un gateway appartenente al proprio tenant.

## Ottenimento sensore simulato per ID
L'ottenimento di un sensore simulato per ID è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono ottenere solo i sensori simulati associati a un gateway del proprio tenant. La richiesta restituisce i dettagli del sensore simulato identificato dall'ID.

### Richiesta
- **GET** `/api/v1/sensor/{sensor_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "sensor_id": "string<uuid>",
    "gateway_id": "string<uuid>", //id del gateway associato al sensore simulato
    "sensor_name": "string",
    "sensor_interval": 1,
    "status": "string", // stato del sensore simulato, può essere "active" o "inactive"
    "profile": "gatt_profile" // profilo GATT utilizzato dal sensore simulato
}
```

I profili GATT disponibili per i sensori simulati sono: **heart_rate**, **pulse_oximeter**, **ecg_custom**, **health_thermometer** ed **environmental_sensing**.

## Ottenimento di tutti i sensori simulati per gateway
L'ottenimento di tutti i sensori simulati associati ad un gateway è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono ottenere solo i sensori simulati associati ad un gateway associato al proprio tenant. La richiesta restituisce una lista di tutti i sensori simulati associati al gateway identificato dall'ID.

### Richiesta
- **GET** `/api/v1/gateway/{gateway_id}/sensors?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di sensori simulati restituiti nella risposta
    "total": 0, // numero totale di sensori simulati associati al gateway
    "sensors": [
        {
            "sensor_id": "string<uuid>",
            "gateway_id": "string<uuid>",
            "sensor_name": "string",
            "sensor_interval": 1,
            "status": "string", // stato del sensore simulato, può essere "active" o "inactive"
            "profile": "gatt_profile"
        }
    ]
}
```

## Ottenimento di tutti i sensori simulati per tenant
L'ottenimento di tutti i sensori simulati associati a un tenant è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** e **Tenant User** possono ottenere solo i sensori simulati associati al proprio tenant. La richiesta restituisce una lista di tutti i sensori simulati associati al tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/sensors?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di sensori simulati restituiti nella risposta
    "total": 0, // numero totale di sensori simulati associati al tenant
    "sensors": [
        {
            "sensor_id": "string<uuid>",
            "gateway_id": "string<uuid>",
            "sensor_name": "string",
            "sensor_interval": 1,
            "status": "string", // stato del sensore simulato, può essere "active" o "inactive"
            "profile": "gatt_profile"
        }
    ]
}
```
