# Dati storici
Il sistema prevede la possibilità di richiedere dati storici relativi ai sensori simulati, purché si abbiano le autorizzazioni necessarie. In particolare, i **Super Admin** possono richiedere dati storici per tutti i sensori simulati, tranne per quelli associati a tenant non impersonificabili. Inoltre gli utenti **Tenant Admin** e **Tenant User** possono richiedere dati storici solo per i sensori simulati associati ad un gateway associato al proprio tenant.

## Ottenimento dati storici per sensore simulato
L'ottenimento di dati storici per un sensore simulato è disponibile a tutti i **Super Admin** nel caso in cui il tenant sia impersonificabile, mentre gli utenti **Tenant Admin** e **Tenant User** possono ottenere solo i dati storici per i sensori simulati associati al proprio tenant.

### Richiesta
- **GET** `/api/v1/sensor/{sensor_id}/historical_data?max_data_points={max_data_points}&from_time={from_time}&to_time={to_time}`
- Parametri nell'URL:
  - `max_data_points`: numero massimo di dati storici da restituire (opzionale, default: 50)
  - `from_time`: timestamp di inizio intervallo temporale per i dati storici (opzionale, default: 24 ore fa)
  - `to_time`: timestamp di fine intervallo temporale per i dati storici (opzionale, default: ora)
  
  I parametri `from_time` e `to_time` devono essere in formato **RFC3339** e sono opzionali, ma non può essere omesso solo uno dei due. Se entrambi i parametri sono omessi, la richiesta restituirà tutti i dati storici disponibili.

### Risposta
```json
{
    "count": 0, // numero di dati storici restituiti nella risposta
    "samples": [
        {
            "sensor_id": "string<uuid>",
            "gateway_id": "string<uuid>",
            "tenant_id": "string<uuid>",
            "timestamp": "string<RFC3339>",
            "profile": "gatt_profile",
            "data": "json"
        }
    ]
}
```

Il campo `profile` indica il profilo GATT utilizzato dal sensore simulato al momento della generazione del dato storico e supporta i seguenti valori: **heart_rate**, **pulse_oximeter**, **ecg_custom**, **health_thermometer** ed **environmental_sensing**.

Il campo `data` contiene la misurazione generata dal sensore simulato, in formato JSON, e la struttura del dato dipende dal profilo GATT utilizzato dal sensore simulato al momento della generazione del dato storico.   
Si consiglia di fare riferimento alla documentazione dei profili GATT supportati in **"Concetti di dominio > Profili GATT supportati"**<!--raw-typst (vedi @profili-gatt) -->.