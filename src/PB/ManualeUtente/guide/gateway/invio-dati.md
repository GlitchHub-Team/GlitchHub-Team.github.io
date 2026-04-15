# Invio dati dei sensori simulati
Il microservizio **Gateway** ha la possibilità di inviare i dati dei sensori simulati salvati nel buffer interno.

Questi dati vengono inviati attraverso il message broker NATS JetStream{{gloss}} e vengono pubblicati su un **subject NATS** e una specifica **stream**, in modo che possano essere ricevuti da altri microservizi e indipendentemente dal fatto che il **consumer** sia attivo o meno al momento della pubblicazione dei dati.

I dati in questione vengono generati dai sensori associati ad un gateway simulato ed inviati dal gateway simulato stesso. Il processo di invio dei dati dei sensori simulati attraverso il message broker **NATS JetStream**{{gloss}} viene eseguito solo se il gateway simulato a cui sono associati i sensori è in stato **active**.

## Subject e stream NATS
I dati dei sensori simulati vengono pubblicati sul subject NATS `sensor.<tenantId>.<gatewayId>.<sensorId>`, dove:

- `<tenantId>` è l'identificativo del tenant a cui è associato il gateway simulato a cui sono associati i sensori simulati che producono i dati in questione;
- `<gatewayId>` è l'identificativo del gateway simulato a cui sono associati i sensori simulati che producono la misurazione in questione;
- `<sensorId>` è l'identificativo del sensore simulato;

La **stream NATS** su cui vengono pubblicati i dati dei sensori simulati è invece `SENSOR_DATA_STREAM`. È impostata con la *retention policy*{{gloss}} **WorkQueue**{{gloss}}, così da garantire che i dati rimangano all'interno di NATS fino a che non viene inviata a NATS un **ACK**{{gloss}} a conferma dell'avvenuto salvataggio dei dati da parte del destinatario, il quale consuma i dati e si salva localmente una copia degli stessi.

## Struttura messaggio
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

## Risposta
Il messaggio che contiene i dati dei sensori simulati non prevede una risposta, una volta fatto il publish **JetStream** garantisce che il messaggio sia salvato all'interno della stream.