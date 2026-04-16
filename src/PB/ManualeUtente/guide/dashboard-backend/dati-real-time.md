# Dati real-time
Il sistema prevede la possibilità di ricevere dati in tempo reale relativi ai sensori simulati, purché si abbiano le autorizzazioni necessarie.   
La connessione avviene tramite **WebSocket**, pertanto la richiesta andrà effettuata utilizzando il protocollo `ws://` (per connessioni non sicure) o `wss://` (per connessioni sicure) al posto di `http://` o `https://`, e sempre sulla porta `8080`.

## Richiesta dati in tempo reale per sensore simulato
La richiesta di dati in tempo reale per un sensore simulato è disponibile a tutti i **super admin** nel caso in cui il tenant sia impersonificabile, mentre gli utenti **tenant admin** e **tenant user** possono ricevere solo i dati in tempo reale per i sensori simulati associati a un gateway appartenente al proprio tenant.   
La richiesta restituisce un flusso di dati in tempo reale generati dal sensore simulato identificato dall'ID.

Il microservizio **Dashboard Backend** si connette a **NATS** e attraverso il subject{{gloss}} `sensor.{tenant_id}.{gateway_id}.{sensor_id}` riceve i dati in tempo reale generati dal sensore simulato identificato dall'ID, e li inoltra al client connesso tramite **WebSocket**.

### Richiesta
- **WebSocket** `ws://{host}:8080/api/v1/tenant/{tenant_id}/sensor/{sensor_id}/real_time_data?jwt={jwt}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `jwt`: token JWT ottenuto tramite autenticazione, necessario per autorizzare la richiesta
- Dati inviati al client
```json
{
    "timestamp": "string<RFC3339>",
    "profile": "gatt_profile",
    "data": "json"
}
```

Il campo `profile` indica il profilo GATT utilizzato dal sensore simulato al momento della generazione del dato real-time e supporta i seguenti valori: **heart_rate**, **pulse_oximeter**, **ecg_custom**, **health_thermometer** ed **environmental_sensing**.

Il campo `data` contiene la misurazione generata dal sensore simulato, in formato JSON, e la struttura del dato dipende dal profilo GATT utilizzato dal sensore simulato al momento della generazione del dato real-time.   
Si consiglia di fare riferimento alla documentazione dei profili GATT supportati in **"Concetti di dominio > Profili GATT supportati"**<!--raw-typst (vedi @profili-gatt) -->.
