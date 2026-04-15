# Comandi di creazione ed eliminazione sensore
Il microservizio **Gateway** ha la possibilità di ricevere dei comandi di creazione ed eliminazione sensore.   
Questi comandi vengono ricevuti su un **subject NATS** specifico e vengono eseguiti per creare o eliminare un sensore simulato associato ad un gateway simulato.

## Creazione sensore
La creazione di un sensore simulato richiede l'invio di un comando al subject NATS `commands.addsensor` e comporta le seguenti azioni:

- Creazione di una **goroutine** che simula il funzionamento del sensore per il profilo GATT{{gloss}} specificato;
- Aggiunta nella mappa dei sensori attivi associati al gateway simulato;
- Scrittura della configurazione nel database SQLite{{gloss}} del microservizio in questione.
- Scrittura dei dati ogni X ms nel database SQLite{{gloss}} che simula il buffer interno dei gateway simulati.

Il comando deve essere inviato sul subject NATS `commands.addsensor` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string", // Identificativo univoco del gateway simulato di tipo uuid a cui associare il sensore simulato
  "sensorId": "string", // Identificativo univoco del sensore simulato di tipo uuid
  "profile": "string", // Profilo GATT per il tipo di dati da generare (vedi dati supportati nel paragrafo successivo)
  "interval": 1 // Frequenza di generazione dati, ogni X ms, deve essere un interno maggiore o uguale di 1
}
```

### Profili GATT supportati <!--raw-typst <profili-gatt-supportati> -->
I valori dei profili GATT supportati per la generazione dei dati sono i seguenti:

- `ecg_custom`: genera onde rappresentanti una misurazione di elettrocardiogramma, con una sequenza di campioni interi che rappresentano i valori di una curva ECG per ogni misurazione;
- `environmental_sensing`: genera dati ambientali, con tre valori numerici che rappresentano la temperatura in gradi Celsius, l'umidità in percentuale e la pressione atmosferica in millibar;
- `health_thermometer`: genera dati di temperatura corporea, con un valore numerico che rappresenta la temperatura corporea in gradi Celsius;
- `heart_rate`: genera dati di frequenza cardiaca, con un valore numerico che rappresenta la frequenza cardiaca in battiti per minuto (BPM);
- `pulse_oximeter`: genera dati di pulsossimetria, con due valori numerici che rappresentano la saturazione di ossigeno in percentuale di saturazione del sangue e la frequenza cardiaca in battiti per minuto (BPM).

## Eliminazione sensore
L'eliminazione di un sensore simulato richiede l'invio di un comando al subject NATS `commands.deletesensor` e comporta le seguenti azioni:

- Terminazione della **goroutine** che simula il funzionamento del sensore;
- Rimozione dalla mappa dei sensori attivi associati al gateway simulato;
- Eliminazione della configurazione dal database SQLite{{gloss}} del microservizio in questione.

Il comando deve essere inviato sul subject NATS `commands.deletesensor` con il modello request-reply{{gloss}}, e deve contenere i seguenti parametri obbligatori:

```json
{
  "gatewayId": "string", // Identificativo univoco del gateway simulato di tipo uuid a cui è associato il sensore simulato
  "sensorId": "string" // Identificativo univoco del sensore simulato di tipo uuid da eliminare
}
```