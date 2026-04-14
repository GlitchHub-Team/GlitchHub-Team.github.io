# Data Consumer
Il microservizio **Data Consumer** ha come unica funzionalità quella di ricevere i dati dei sensori simulati pubblicati sul message broker NATS JetStream{{gloss}} e di salvarli nel database TimescaleDB{{gloss}}.

## Ricezione dati IoT
Il microservizio **Data Consumer** all'avvio istanzia un **consumer NATS** in modalità **pull**{{gloss}}.
Ciò consente di richiedere N messaggi per volta a NATS JetStream{{gloss}}, evitando di essere sovraccaricato da un numero eccessivo di messaggi in caso di picchi di produzione dei dati dei sensori simulati.

Il microservizio richiede un **batch** di N dati in base a quanti specificati nei parametri di avvio. Inoltre ascolta sul subject NATS dato in input in fase di avvio. Ciò consente ad ogni istanza del microservizio di essere altamente scalabile.   
Il microservizio infatti si avvia con il seguente comando:
```bash
go run main.go -batch-size N -subject "string"
```
Dove:
- `N` è il numero di messaggi da richiedere a NATS JetStream{{gloss}} ad ogni richiesta, e deve essere un intero maggiore o uguale di 1, altrimenti verrà impostato a **100** di default;
- `string` è il subject NATS su cui ascoltare per ricevere i dati dei sensori simulati.

### Credenziali necessarie
Per poter ricevere i dati dei sensori simulati pubblicati su NATS JetStream{{gloss}} è necessario che il microservizio **Data Consumer** abbia a disposizione le credenziali di un **NATS user** con i permessi necessari per accedere alla stream `SENSOR_DATA_STREAM` e al subject su cui ascoltare per ricevere i dati dei sensori simulati, inoltre deve essere associato al **NATS account** del tenant di sistema, chiamato `application_core`.

### Certificati necessari
Per poter ricevere i dati dei sensori simulati pubblicati su NATS JetStream{{gloss}} è necessario che il microservizio **Data Consumer** abbia a disposizione un **certificato TLS pubblico** (file **ca.pem**) per verificare che il server NATS a cui ci si sta connettendo sia effettivamente chi ci dice di essere.

Il file **ca.pem** deve essere creato a partire dalla **private key** (file **server.key**) presente nel **NATS server**.

### Subject NATS
Il subject NATS su cui il microservizio ascolta per ricevere i dati dei sensori simulati è composto da più livelli, ed è strutturato come segue:
```
sensor.<tenantId>.<gatewayId>.<sensorId>
```
Perciò, per esempio, se si vuole avviare un'istanza di **Data Consumer** per sopperire ad un picco di produzione dei dati dei sensori simulati associati ad un gateway simulato specifico, è possibile avviare il microservizio con il subject NATS `sensor.<tenantId>.<gatewayId>.*`, in questo modo si riceveranno i dati di tutti i sensori simulati associati al gateway simulato in questione.

In una situazione normale si tende ad avviare un'istanza del microservizio che ascolta il subject NATS `sensor.*.*.*`, in questo modo si ricevono i dati di tutti i sensori simulati prodotti da tutti i gateway simulati.

La stream da cui il microservizio riceve i dati dei sensori simulati è invece `SENSOR_DATA_STREAM`, la quale è impostata con la *retention policy*{{gloss}} **WorkQueue**{{gloss}}, così da garantire che i dati rimangano all'interno di NATS fino a che non viene inviata a NATS un **ACK**{{gloss}} a conferma dell'avvenuto salvataggio sul database TimescaleDB{{gloss}}.

### Struttura messaggio
Il messaggio che contiene i dati dei sensori simulati ha la seguente struttura:
```json
{
    "sensorId": "string", // Identificativo univoco di tipo uuid del sensore simulato che ha prodotto la misurazione
    "gatewayId": "string", // Identificativo univoco di tipo uuid del gateway simulato a cui è associato il sensore simulato che ha prodotto la misurazione
    "tenantId": "string", // Identificativo univoco di tipo uuid del tenant a cui è associato il gateway simulato a cui è associato il sensore simulato che ha prodotto la misurazione
    "timestamp": 0, // Timestamp in millisecondi della misurazione
    "profile": "string", // Profilo GATT del sensore simulato che ha prodotto la misurazione
    "value": "json" // Valore della misurazione prodotta dal sensore simulato, rappresentato in formato JSON
}
```

Il campo `value` del messaggio può rappresentare più tipologie di misurazione a seconda del `profile` specificato, ad esempio se il `profile` è `heart_rate` il campo `value` conterrà un valore numerico che rappresenta la frequenza cardiaca in battiti per minuto (BPM).   
Per maggiori dettagli sui profili GATT supportati vedi il paragrafo "Profili GATT supportati" <!--raw-typst (@profili-gatt-supportati) --> della sezione "Comandi di creazione ed eliminazione sensore" della presente guida.

Tuttavia il microservizio **Data Consumer** non controlla il profilo GATT dei dati ricevuti, ma si limita a salvare i dati nel database TimescaleDB{{gloss}}.

## Salvataggio dati IoT
Il microservizio **Data Consumer** salva i dati dei sensori simulati ricevuti da NATS JetStream{{gloss}} all'interno di un database TimescaleDB{{gloss}}.

Il salvataggio avviene dopo aver aggregato i dati ricevuti per **tenant** di appartenenza.

Il **Data Consumer** esegue un **bulk insert**{{gloss}} dei dati ricevuti dallo stesso **tenant** e li inserisce nello **schema**{{gloss}} apposito.
Ogni **schema**{{gloss}} è dedicato ad un singolo tenant ed ha una sola tabella, chiamata `sensor_data`. Tutto ciò si descrive in linguaggio **SQL** come segue:
```sql
CREATE SCHEMA IF NOT EXISTS "tenant_<tenantId>";

CREATE TABLE IF NOT EXISTS "tenant_<tenantId>".sensor_data (
    sensor_id UUID NOT NULL,
    gateway_id UUID NOT NULL,
    timestamp TIMESTAMPTZ NOT NULL,
    tenant_id UUID NOT NULL,
    profile VARCHAR(255) NOT NULL,
    data JSONB NOT NULL,
    PRIMARY KEY (sensor_id, gateway_id, timestamp)
);
```

Si nota che la **primary key** della tabella è composta dai campi `sensor_id`, `gateway_id` e `timestamp`, in questo modo si garantisce che non possano essere inseriti dati duplicati, ovvero dati con lo stesso `sensor_id`, `gateway_id` e `timestamp`, che rappresenterebbero la stessa misurazione prodotta dallo stesso sensore simulato associato allo stesso gateway simulato nello stesso momento. In caso di inserimento di dati duplicati si agisce in modalità **ON CONFLICT: DO NOTHING**, ovvero si ignora l'inserimento dei dati duplicati senza generare errori.

Ogni tabella ha i campi `sensor_id`, `gateway_id`, `tenant_id` per descrivere chi ha prodotto la misurazione e a chi è associato, il campo `timestamp` per indicare quando è stata prodotta la misurazione, il campo `profile` per indicare il profilo GATT del sensore simulato che ha prodotto la misurazione.
Infine il campo `data` contiene i dati della misurazione prodotta dal sensore simulato, rappresentati in formato JSONB{{gloss}}.
