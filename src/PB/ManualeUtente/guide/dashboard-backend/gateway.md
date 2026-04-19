# Gateway 
Il sistema prevede la possibilità di visionare ogni gateway simulato presente nel sistema, purché si abbiano le autorizzazioni necessarie. In particolare, i **super admin** possono visionare tutti i gateway simulati presenti nel sistema, mentre gli utenti **tenant admin** e **tenant user** possono visionare solo i gateway simulati associati al proprio tenant.

## Ottenimento di tutti i gateway simulati
L'ottenimento di tutti i gateway simulati è disponibile solo ai **super admin**. La richiesta restituisce una lista di tutti i gateway simulati presenti nel sistema.

### Richiesta
- **GET** `/api/v1/gateways?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0,
    "total": 0,
    "gateways": [
        {
            "gateway_id": "string<uuid>",
            "name": "string",
            "interval": 0,
            "status": "string", // stato del gateway simulato, può essere "active", "inactive" o "decommissioned"
            "public_identifier": "string", // public key del gateway simulato
            "tenant_id": "string<uuid>" // nullable, non tutti i gateway sono per forza associati ad un tenant
        }
    ]
}
```

## Ottenimento di un gateway simulato per ID
L'ottenimento di un gateway simulato per ID è disponibile a tutti i **super admin**, inoltre gli utenti **tenant admin** e **tenant user** possono ottenere solo i gateway simulati associati al proprio tenant. La richiesta restituisce i dettagli del gateway simulato identificato dall'ID.

### Richiesta
- **GET** `/api/v1/gateway/{gateway_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "gateway_id": "string<uuid>",
    "name": "string",
    "interval": 0,
    "status": "string", // stato del gateway simulato, può essere "active", "inactive" o "decommissioned"
    "public_identifier": "string", // public key del gateway simulato
    "tenant_id": "string<uuid>" // nullable, non tutti i gateway sono per forza associati ad un tenant
}
```

## Ottenimento di tutti i gateway simulati per tenant
L'ottenimento di tutti i gateway simulati associati ad un tenant è disponibile a tutti i **super admin**, inoltre gli utenti **tenant admin** e **tenant user** possono ottenere solo i gateway simulati associati al proprio tenant. La richiesta restituisce una lista di tutti i gateway simulati associati al tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/gateways?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0,
    "total": 0,
    "gateways": [
        {
            "gateway_id": "string<uuid>",
            "name": "string",
            "interval": 0,
            "status": "string", // stato del gateway simulato, può essere "active", "inactive" o "decommissioned"
            "public_identifier": "string", // public key del gateway simulato
            "tenant_id": "string<uuid>" // nullable, non tutti i gateway sono per forza associati ad un tenant
        }
    ]
}
```