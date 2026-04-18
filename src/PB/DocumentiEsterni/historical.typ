==== Package `historical_data`

Il package `historical_data` contiene tutte le funzionalità per poter accedere ai dati storici dei gateway creati dai sensori simulati.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/
==== Inbound adapter -- `Controller` e DTO
Il package `historical_data` presenta un controller che si occupa di ricevere le richieste HTTP ed è l'inbound adapter del package.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

===== Attributi:
- *`log *zap.Logger`*: Riferimento al logger zap
- *`getSensorHistoricalDataUseCase GetSensorHistoricalDataUseCase`*: Riferimento all'use case usato per ottenere i dati storici dei gateway

===== Metodi:
Per ogni metodo si riporta il DTO ottenuto in input e il DTO restituito in output via HTTP, se presenti.
- *`GetSensorHistoricalData(ctx *gin.Context)`*: Ottiene i dati storici di un sensore
  - Input: `GetHistoricalDataQueryDTO`
  - Output: `HistoricalDataResponseDTO`


I DTO usati da `Controller` sono i seguenti:
- *`HistoricalSampleResponseDTO`*: DTO usato per creare un nuovo gateway, contiene i seguenti campi:
  -`SensorId`: UUID del sensore per cui ottenere i dati storici
  -`TenantId`: UUID del tenant a cui il sensore è associato
  -`GatewayId`: UUID del gateway per cui ottenere i dati storici
  -`Timestamp`: timestamp del campione storico
  -`Profile`: profilo del campione storico
  - `Data`: data del campione storico

-*`HistoricalDataResponseDTO`*: DTO usato per restituire i dati storici di un sensore, contiene i seguenti campi:
  -`Count`: numero di campioni storici restituiti
  -`Samples`: lista di campioni storici restituiti

-*`GetHistoricalDataQueryDTO`*: DTO usato per ottenere i dati storici di un sensore, contiene i seguenti campi:
  -`From`: data di inizio del periodo per cui ottenere i dati storici
  -`To`: data di fine del periodo per cui ottenere i dati storici
  -`Limit`: numero massimo di campioni storici da restituire

===== Inbound ports

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== GetSensorHistoricalDataUseCase
*Metodi:*
- GetSensorHistoricalData(cmd GetSensorHistoricalDataCommand) ([]HistoricalSample, error): Ottiene i dati storici di un sensore specifico tramite il comando GetSensorHistoricalDataCommand. Restituisce una lista di campioni storici o un errore in caso di fallimento

===== Commands
I comandi usati dagli _use case_ di `Controller` sono i seguenti:
- *`GetSensorHistoricalDataCommand`* : Comando usato per ottenere i dati storici di un sensore specifico, contiene i seguenti campi:
  - `SensorId`: UUID del sensore per cui ottenere i dati storici
  - `TenantId`: UUID del tenant a cui il sensore è associato
  - `From`: data di inizio del periodo per cui ottenere i dati storici
  - `To`: data di fine del periodo per cui ottenere i dati storici
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto i dati

===== Services

====== GetHistoricalDataService
Implemeta le interfaccie GetSensorHistoricalDataUseCase

*Attributi*

- *`getHistoricalDataPort GetHistoricalDataPort,`*: _Outbound port_ usata per ottenere i dati storici di un sensore specifico
- *`getTenantPort GetTenantPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico tenant

*Funzione di costruzione* :NewGetHistoricalDataService(getHistoricalDataPort GetHistoricalDataPort, getTenantPort tenant.GetTenantPort,) \*GetHistoricalDataService 

===== Dominio

====== HistoricalSample
Rappresenta un campione di dati storici nello strato di business logic.

*Attributi:*
- *`SensorId`*: UUID del sensore per cui il campione è stato raccolto
- *`TenantID`*: UUID del tenant a cui il sensore è associato
- *`GatewayId`*: UUID del gateway per cui il campione è stato raccolto
- *`Timestamp`*: timestamp del campione storico
- *`Profile`*: profilo del campione storico
- *`Data`*: data del campione storico


====== HistoricalDataFilter
Rappresenta un filtro per ottenere i dati storici di un sensore specifico nello strato di business logic.

*Attributi:*
- *`From`*: data di inizio del periodo per cui ottenere i dati storici
- *`To`*: data di fine del periodo per cui ottenere i dati storici
- *`Limit`*: numero massimo di campioni storici da restituire

=====  Outbound ports – Database
In questa sezione sono riportate le descrizioni delle outbound port che hanno la responsabilità di comunicare con il database.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== GetHistoricalDataPort
*Metodi*
- *`GetHistoricalData(sensorId uuid.UUID, tenantId uuid.UUID, filter HistoricalDataFilter) ([]HistoricalSample, error)`*: Ottiene i dati storici di un sensore specifico dal database tramite l'UUID del sensore, l'UUID del tenant e un filtro per i dati storici. Restituisce una lista di campioni storici o un errore in caso di fallimento


===== Outbound adapter per database – HistoricalDataTimescaleAdapter
HistoricalDataTimescaleAdapter è l’outbound port usata per comunicare con il database per ottenere i dati storici dei sensori, traducendo l’interfaccia di dominio nell’interfaccia di TimescaleDB e viceversa.

*Interfaccie implementate*
- *`GetHistoricalDataPort`*

*Attributi*
- *`log *zap.Logger`*: Riferimento al logger zap
- *`repo HistoricalDataTimescaleRepository`*: Riferimento a classe Repository di accesso al database per i dati storici dei sensori

===== Repository per database – HistoricalDataTimescaleRepository

*Metodi*
- *`GetSensorHistoricalData(sample *HistoricalSample) error`* : Ottiene i dati storici di un sensore specifico dal database tramite un campione storico che contiene l'UUID del sensore, l'UUID del tenant e un filtro per i dati storici. Restituisce un errore in caso di fallimento

-*`buildHistoricalDataQuery(tenantId uuid.UUID, sensorId uuid.UUID, filter HistoricalDataFilter) (string, []any)(sample *HistoricalSample) error`* : Costruisce la query SQL per ottenere i dati storici di un sensore specifico dal database tramite l'UUID del sensore, l'UUID del tenant e un filtro per i dati storici. Restituisce la query SQL e i parametri da passare alla query
