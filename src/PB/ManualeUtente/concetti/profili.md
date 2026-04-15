# Profili GATT supportati
I sensori simulati possono generare diversi tipi di dati.
Questi tipi di dati sono definiti attraverso i profili GATT{{gloss}}. Nelle sezioni sottostanti sono elencati i profili GATT supportati dai sensori simulati, con una breve descrizione di ciascuno.

## ECG Profile
Il profilo **ECG** è un profilo custom creato per simulare un sensore di elettrocardiogramma.   
Questo profilo invia un insieme di numeri interi che rappresentano i valori di una curva ECG per ogni misurazione. Il formato dei dati inviati da questo profilo è il seguente:
```
{
  "Waveform": [100, 54, 78, ...]
}
```

## Environmental Sensing Profile
Il profilo **Environmental Sensing** è un profilo standard definito per la simulazione di sensori ambientali.   
Questo profilo invia tre valori numerici che rappresentano la temperatura, l'umidità e la pressione atmosferica.  
La temperatura è espressa in **gradi Celsius**, l'umidità in **percentuale** e la pressione atmosferica in **millibar**.
Il formato dei dati inviati da questo profilo è il seguente:
```
{
  "TemperatureValue": 25.5,
  "HumidityValue": 60.2,
  "PressureValue": 1013.25
}
``` 

## HealthThermometer Profile
Il profilo **HealthThermometer** è un profilo standard definito per la simulazione di sensori di temperatura corporea.  
Questo profilo invia un valore numerico che rappresenta la temperatura corporea in **gradi Celsius**.  
Il formato dei dati inviati da questo profilo è il seguente:
```
{
  "TemperatureValue": 36.7
}
```

## HeartRate Profile
Il profilo **HeartRate** è un profilo standard definito per la simulazione di sensori di frequenza cardiaca.  
Questo profilo invia un valore numerico che rappresenta la frequenza cardiaca in **battiti per minuto (BPM)**.  
Il formato dei dati inviati da questo profilo è il seguente:
```
{
  "BpmValue": 72
}
```

## PulseOximeter Profile
Il profilo **PulseOximeter** è un profilo standard definito per la simulazione di sensori di pulsossimetria.  
Questo profilo invia due valori numerici che rappresentano la saturazione di ossigeno in **percentuale** di saturazione del sangue e la frequenza cardiaca in **battiti per minuto (BPM)**.
Il formato dei dati inviati da questo profilo è il seguente:
```
{
  "SpO2Value": 98.5,
  "PulseRateValue": 75
}
```
