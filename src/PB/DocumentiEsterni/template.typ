==== Package `gateway`

Il package `gateway` contiene tutte le funzionalità relative alla gestione dei gateway, come ad esempio la gestione dei comandi da inviare ai gateway e la gestione dei dati ricevuti dai gateway e delle operazioni CRUD sui gateway stessi.\
//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/
==== Inbound adapter -- `Controller` e DTO
Il package `gateway` presenta un controller che si occupa di ricevere le richieste HTTP ed è l'inbound adapter del package.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

===== Attributi:
- *`log *zap.Logger`*: Riferimento al logger zap
- * `createGatewayUseCase CreateGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e creare un nuovo gateway
- *`deleteGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e eliminare un gateway
- *`getAllGatewaysUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e ottenere tutti i gateway
- *`getGatewaysByTenantUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e ottenere i gateway di un tenant specifico
- *`commissionGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e commissionare un gateway
- *`decommissionGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e decommissionare un gateway
- *`interruptGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e interrompere un gateway
- *`resumeGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e riprendere un gateway
- *`resetGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e resettare un gateway
- *`rebootGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e riavviare un gateway
- *`getGatewayUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e ottenere un gateway specifico
- *`getGatewayByTenantIDUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e ottenere i gateway di un tenant specifico

===== Metodi:
Per ogni metodo si riporta il DTO ottenuto in input e il DTO restituito in output via HTTP, se presenti.
- *`CreateGateway(ctx *gin.Context)`*: Crea un gateway
  - Input: `CreateGatewayDTO` 
  - Output: `GatewayResponseDTO` 
- *`DeleteGateway(ctx *gin.Context)`*: Elimina un gateway
  - Input: `DeleteGatewayDTO`
  - Output: `GatewayResponseDTO`
- *`GetAllGateways(ctx *gin.Context)`*: Ottiene tutti i gateway
  - Input: nessuno
  - Output: `GatewayListResponseDTO`
- *`GetGatewaysByTenant(ctx *gin.Context)`*: Ottiene i gateways di un tenant specifico
  - Input: `GetGatewayListDTO`
  - Output: `GatewayListResponseDTO`
- *`GetGateway(ctx *gin.Context)`*: Ottiene un gateway specifico
  - Output: `GatewayResponseDTO`
- *`GetGatewayByTenantID(ctx *gin.Context)`*: Ottiene il specifico gateway di un tenant specifico
  - Input: `GetGatewayByTenantIdDTO`
  - Output: `GatewayListResponseDTO`
- *`CommissionGateway(ctx *gin.Context)`*: Commissiona un gateway
  - Input: `CommissionGatewayDTO`
  - Output: `GatewayResponseDTO`
- *`DecommissionGateway(ctx *gin.Context)`*: Decommissiona un gateway
  - Output: `GatewayResponseDTO`
- *`InterruptGateway(ctx *gin.Context)`*: Interrompe un gateway
  - Output: `GatewayCommandResponseDTO`
- *`ResumeGateway(ctx *gin.Context)`*: Riprende un gateway
  - Output: `GatewayCommandResponseDTO`
- *`ResetGateway(ctx *gin.Context)`*: Resetta un gateway
  - Output: `GatewayCommandResponseDTO`
- *`RebootGateway(ctx *gin.Context)`*: Riavvia un gateway
  - Output: `GatewayCommandResponseDTO`

I DTO usati da `gateway/Controller` sono i seguenti:
- *`CreateGatewayDTO`*: DTO usato per creare un nuovo gateway, contiene i seguenti campi:
  - `Name`: stringa rappresentante il nome del gateway da creare
  - `Interval`: Frequenza di invio dei dati al cloud in millisecondi
- *`DeleteGatewayDTO`*: DTO usato per eliminare un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da eliminare
- *`DecommissionGateway`*: DTO usato per deccommissionare un gateway
  - `GatewayId`: UUID del gateway da decommissionare
- *`GatewayResponseDTO`*: DTO usato per restituire informazioni su un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway
  - `GatewayName`: stringa rappresentante il nome del gateway
  - `TenantId`: UUID del tenant a cui il gateway è associato, se il gateway è commissionto
  //TODO: -> fixare frase hello
  -`PubblicIdentifier`: stringa rappresentante l'identificativo pubblico del gateway, se il gateway ha fatto l'hello
  - `Interval`: Frequenza di invio dei dati al cloud in millisecondi
  - `Status`: Stato del gateway (Commissioned, Decommissioned, Interrupted)
- *`GatewayListResponseDTO`*: DTO usato per restituire una lista di gateway, contiene i seguenti campi:
  - `Gateways`: array di `GatewayResponseDTO`
  - `Total`: numero totale di gateway restituiti
  - `Page`: numero della pagina restituita
- *`InterruptGatewayDTO`*: DTO usato per interrompere un gateway
  - `GatewayId`: UUID del gateway da interrompere
- *`ResumeGatewayDTO`*: DTO usato per riprendere un gateway
  - `GatewayId`: UUID del gateway da riprendere
- *`ResetGatewayDTO`*: DTO usato per resettare un gateway
  - `GatewayId`: UUID del gateway da resettare
- *`RebootGatewayDTO`*: DTO usato per riavviare un gateway
  - `GatewayId`: UUID del gateway da riavviare

===== Inbound ports

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== CreateGatewayUseCase
*Metodi:*
- CreateGateway(command CreateGatewayCommand) (Gateway, error): Crea un nuovo gateway con i dati specificati in `command` e restituisce il gateway creato o un errore in caso di fallimento
====== DeleteGatewayUseCase
*Metodi:*
- DeleteGateway(cmd DeleteGatewayCommand) (Gateway, error): Elimina un gateway specificato in `cmd` e restituisce il gateway eliminato o un errore in caso di fallimento
====== GetGatewayUseCase
*Metodi:*
- GetGateway(cmd GetGatewayByIdCommand) (Gateway, error): Ottiene un gateway specificato in `cmd` e restituisce il gateway o un errore in caso di fallimento
====== GetAllGatewaysUseCase
*Metodi:*
- GetAllGateways(command GetAllGatewaysCommand) ([]Gateway, uint, error): Ottiene tutti i gateway presenti nel sistema e restituisce una lista di gateway, il numero totale di gateway e un errore in caso di fallimento
====== GetGatewaysByTenantUseCase
*Metodi:*
- GetGatewaysByTenant(command GetGatewaysByTenantCommand) ([]Gateway, uint, error): Ottiene una lista di gateway associati a un tenant specifico e restituisce la lista, il numero totale di gateway e un errore in caso di fallimento
====== GetGatewayByTenantIDUseCase
*Metodi:*
- GetGatewayByTenantID(cmd GetGatewayByTenantIDCommand) (Gateway, error): Ottiene un gateway specifico associato a un tenant specifico e restituisce il gateway o un errore in caso di fallimento
====== CommissionGatewayUseCase
*Metodi:*
- CommissionGateway(cmd CommissionGatewayCommand) (Gateway, error): Commissiona un gateway specificato in `cmd` e restituisce il gateway commissionato o un errore in caso di fallimento
====== DecommissionGatewayUseCase
*Metodi:*
- DecommissionGateway(cmd DecommissionGatewayCommand) (Gateway, error): Decommissiona un gateway specificato in `cmd` e restituisce il gateway decommissionato o un errore in caso di fallimento
====== InterruptGatewayUseCase
*Metodi:*
- InterruptGateway(cmd InterruptGatewayCommand) (Gateway, error): Interrompe un gateway specificato in `cmd` e restituisce il gateway interrotto o un errore in caso di fallimento
====== ResumeGatewayUseCase
*Metodi:*
- ResumeGateway(cmd ResumeGatewayCommand) (Gateway, error): Riprende un gateway specificato in `cmd` e restituisce il gateway ripreso o un errore in caso di fallimento
====== ResetGatewayUseCase
*Metodi:*
- ResetGateway(cmd ResetGatewayCommand) (Gateway, error): Resetta un gateway specificato in `cmd` e restituisce il gateway resettato o un errore in caso di fallimento
====== RebootGatewayUseCase
*Metodi:*
- RebootGateway(cmd RebootGatewayCommand) (Gateway, error): Riavvia un gateway specificato in `cmd` e restituisce il gateway riavviato o un errore in caso di fallimento

===== Commands
I comandi usati dagli _use case_ di `gateway/Controller` sono i seguenti:
- *`GetGatewayByIdCommand`* : Comando usato per ottenere un gateway specifico, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da ottenere
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto il gateway

- *`GetAllGatewaysCommand`*: Comando usato per ottenere tutti i gateway, contiene i seguenti campi:
  - `Page`: numero della pagina da ottenere
  - `Limit`: numero limite di gateway per pagina
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto i gateway

- *`GetGatewaysByTenantCommand`*: Comando usato per ottenere i gateway di un tenants specifico, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Page`: numero della pagina da ottenere
  - `Limit`: numero limite di gateway per pagina
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto i gateway

- *`GetGatewayByTenantIDCommand`*: Comando usato per ottenere un gateway specifico di un tenant specifico, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere il gateway
  - `GatewayId`: UUID del gateway da ottenere
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto il gateway

- *`CommissionGatewayCommand`*: Comando usato per commissionare un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da commissionare
  - `TenantId`: UUID del tenant a cui associare il gateway
  - `CommissionToken`: stringa rappresentante il token di commissionamento del gateway, usato per validare la richiesta di commissionamento
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto la commissione del gateway

- *`DecommissionGatewayCommand`*: Comando usato per decommissionare un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da decommissionare
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto il decommissionamento del gateway

- *`InterruptGatewayCommand`*: Comando usato per interrompere un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da interrompere
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto l'interruzione del gateway

- *`ResumeGatewayCommand`*: Comando usato per riprendere un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da riprendere
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto la ripresa del gateway

- *`ResetGatewayCommand`*: Comando usato per resettare un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da resettare
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto il reset del gateway

- *`RebootGatewayCommand`*: Comando usato per riavviare un gateway, contiene i seguenti campi:
  - `GatewayId`: UUID del gateway da riavviare
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto il riavvio del gateway

- *`CreateGatewayCommand`*: Comando usato per creare un nuovo gateway, contiene i seguenti campi:
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto la creazione del gateway
  - `Name`: stringa rappresentante il nome del gateway da creare
  - `Interval`: Frequenza di invio dei dati al cloud in millisecondi

- *`DeleteGatewayCommand`*: Comando usato per eliminare un gateway, contiene i seguenti campi:
  - `requester`: struct `Requester` contenente i dati di autenticazione dell'utente che ha richiesto l'eliminazione del gateway
  - `GatewayId`: UUID del gateway da eliminare


===== Services

====== Service
Implemeta le interfaccie GetGatewayUseCase, GetAllGatewaysUseCase, GetGatewaysByTenantUseCase, GetGatewayByTenantIDUseCase.

*Attributi*

- *`getGatewayPort GetGatewayPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico gateway
- *`getGatewaysPort GetGatewaysPort`*: _Outbound port_ usata per ottenere la lista di tutti i gateway
- *`getTenantPort GetTenantPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico tenant

*Funzione di costruzione* :NewGatewayManagementService getPort GetGatewayPort,getManyPort GetGatewaysPort,getTenantPort tenant.GetTenantPort,) \* GatewayManagementService

====== Service Gateway Command
Implemeta le interfaccie CommissionGatewayUseCase, DecommissionGatewayUseCase, InterruptGatewayUseCase, ResumeGatewayUseCase, ResetGatewayUseCase, RebootGatewayUseCase.

*Attributi*
- *`createGatewayPort CreateGatewayPort `* : _Outbound port_ usata per creare un nuovo gateway
- *`removeGatewayPort DeleteGatewayPort`* : _Outbound port_ usata per eliminare un gateway
- *`getTenantPort tenant.GetTenantPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico tenant
- *`getGatewayPort GetGatewayPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico gateway
- *`saveGatewayPort SaveGatewayPort`*: _Outbound port_ usata per salvare un gateway
- *`saveGatewayPort SaveGatewayPort`*: _Outbound port_ usata per salvare un gateway

*Funzione di costruzione* :NewGatewayCommandService(createGatewayPort CreateGatewayPort, removeGatewayPort DeleteGatewayPort, getGatewayPort GetGatewayPort, getTenantPort tenant.GetTenantPort, saveGatewayPort SaveGatewayPort, gatewayCommandPort GatewayCommandPort,) \*GatewayCommandService

===== Dominio

====== Gateway
Rappresenta un gateway simulato nello strato di business logic.

*Attributi:*
- *`ID`*: UUID del gateway
- *`Name`*: stringa rappresentante il nome del gateway
- *`TenantID`*: UUID del tenant a cui il gateway è associato, se il gateway è commissionato
- *`PublicIdentifier`*: stringa rappresentante l'identificativo pubblico del gateway
- *`Interval`*: Frequenza di invio dei dati al cloud in millisecondi
- *`Status`*: Stato del gateway

*Metodi:*
- *`IsZero() bool`*: Restituisce true se il gateway è commissionato, false altrimenti
- *`GetId() bool`*: Restituisce lo UUID del gateway
- *`BelongsToTenant() bool`*: Restituisce true se il gateway è associato a un tenant, false altrimenti

====== GatewayStatus
Rappresenta lo stato di un gateway, i valori possibili sono:
- *`active`*: Il gateway è commissionato e sta inviando dati al cloud
- *`inactive`*: Il gateway è commissionato ma non sta inviando dati al cloud
- *`decommissioned`*: Il gateway è stato decommissionato e non è più associato a nessun tenant, non può inviare dati al cloud

=====  Outbound ports – Database
In questa sezione sono riportate le descrizioni delle outbound port che hanno la responsabilità di
comunicare con il database.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== SaveGatewayPort
*Metodi*
- *`Save(g Gateway) (Gateway, error)`*: Salva un gateway a database. Restituisce il gateway salvato o un errore in caso di fallimento

====== CreateGatewayPort
*Metodi*
- *`Create(g Gateway) (Gateway, error)`*: Crea un nuovo gateway nel database. Restituisce il gateway creato o un errore in caso di fallimento

====== DeleteGatewayPort
*Metodi*
- *`Delete(gatewayId uuid.UUID) (Gateway, error)`*: Elimina un gateway dal database. Restituisce il gateway eliminato o un errore in caso di fallimento.

====== GetGatewayPort
*Metodi*
- *`GetById(gatewayId uuid.UUID) (Gateway, error)`*: Ottiene un gateway specifico dal database tramite il suo UUID. Restituisce il gateway o un errore in caso di fallimento
- *`GetGatewayByTenantID(tenantId uuid.UUID, gatewayId uuid.UUID) (Gateway, error)`*: Ottiene un gateway specifico associato a un tenant specifico dal database tramite il suo UUID e l'UUID del tenant. Restituisce il gateway o un errore in caso di fallimento

====== GetGatewaysPort
*Metodi*
- *`GetByTenantId(tenantId uuid.UUID, page int, limit int) ([]Gateway, uint, error)`*: Ottiene una lista di gateway associati a un tenant specifico dal database tramite l'UUID del tenant, con paginazione. Restituisce la lista di gateway, il numero totale di gateway e un errore in caso di fallimento
- *`GetAll(page int, limit int) ([]Gateway, uint, error)`*: Ottiene tutti i gateway presenti nel database, con paginazione. Restituisce la lista di gateway, il numero totale di gateway e un errore in caso di fallimento

=====  Outbound ports – NATS
In questa sezione sono riportate le descrizioni delle outbound port che hanno la responsabilità di
comunicare con NATS.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== GatewayCommandPort
*Metodi*
- *`SendCreateGateway(gatewayId uuid.UUID, interval int64) error`* : Invia un comando di creazione a un gateway specifico tramite il suo UUID e l'intervallo di invio dei dati al cloud in millisecondi. Restituisce un errore in caso di fallimento
- *`SendDeleteGateway(gatewayId uuid.UUID) error`*: Invia un comando di eliminazione a un gateway specifico tramite il suo UUID. Restituisce un errore in caso di fallimento
- *`SendCommission(gatewayId uuid.UUID, tenantId uuid.UUID, token string) error`*: Invia un comando di commissionamento a un gateway specifico tramite il suo UUID, l'UUID del tenant a cui associare il gateway e il token di commissionamento. Restituisce un errore in caso di fallimento
- *`SendDecommission(gatewayId uuid.UUID) error`*: Invia un comando di decommissionamento a un gateway specifico tramite il suo UUID. Restituisce un errore in caso di fallimento
- *`SendInterrupt(gatewayId uuid.UUID) error`*: Invia un comando di interruzione a un gateway specifico tramite il suo UUID. Restituisce un errore in caso di fallimento
- *`SendResume(gatewayId uuid.UUID) error`*: Invia un comando di ripresa a un gateway specifico tramite il suo UUID. Restituisce un errore in caso di fallimento
- *`SendReset(gatewayId uuid.UUID) error`*: Invia un comando di reset a un gateway specifico tramite il suo UUID. Restituisce un errore in caso di fallimento
- *`SendReboot(gatewayId uuid.UUID) error`*: Invia un comando di riavvio a un gateway specifico tramite il suo UUID. Restituisce un errore in caso di fallimento

===== Outbound adapter per database – GatewayPostgreAdapter
GatewayPostgreAdapter è l’outbound port usata per comunicare con il database per le operazioni CRUD sui gateway, traducendo l’interfaccia di dominio nell’interfaccia di PostgreSQL e viceversa.

*Interfaccie implementate*
- *`SaveGatewayPort`*
- *`CreateGatewayPort`*
- *`DeleteGatewayPort`*
- *`GetGatewayPort`*
- *`GetGatewaysPort`*

*Attributi*
- *`log *zap.Logger`*: Riferimento al logger zap
- *`repo GatewayRepository`*: Riferimento a classe Repository di accesso al database per operazioni CRUD 

/*

===== Outbound adapter per NATS – GatewayCommandNATSAdapter
GatewayCommandNATSAdapter è l’outbound port usata per comunicare con NATS per l’invio dei comandi ai gateway, traducendo l’interfaccia di dominio nell’interfaccia di NATS e viceversa.

*Interfaccie implementate*
- *`SendCreateGatewayPort`*
- *`SendDeleteGatewayPort`*
- *`SendCommissionPort`*
- *`SendDecommissionPort`*
- *`SendInterruptPort`*
- *`SendResumePort`*
- *`SendResetPort`*
- *`SendRebootPort`*

*Attributi*
- *`log *zap.Logger`*: Riferimento al logger zap
- *`natsClient nats.Conn`*: Riferimento al client NATS
*/
===== Repository per database – GatewayRepository, GatewayEntity

*Metodi*
- *`SaveGateway(gateway *GatewayEntity) error`* : Salva un gateway a database. Restituisce un errore in caso di fallimento
- *`CreateGateway(gateway *GatewayEntity) error`*: Crea un nuovo gateway nel database. Restituisce un errore in caso di fallimento
- *`DeleteGateway(id string) error`*: Elimina un gateway dal database tramite il suo UUID. Restituisce un errore in caso di fallimento
- *`GetGatewayById(gatewayId string) (GatewayEntity, error)`*: Ottiene un gateway specifico dal database tramite il suo UUID. Restituisce il gateway o un errore in caso di fallimento
- *`GetGatewaysByTenantId(tenantId string, offset int, limit int) ([]GatewayEntity, uint, error)`*: Ottiene una lista di gateway associati a un tenant specifico dal database tramite l'UUID del tenant, con paginazione. Restituisce la lista di gateway, il numero totale di gateway e un errore in caso di fallimento
- *`GetAllGateways(offset int, limit int) ([]GatewayEntity, uint, error)`*: Ottiene tutti i gateway presenti nel database, con paginazione. Restituisce la lista di gateway, il numero totale di gateway e un errore in caso di fallimento
- *`GetGatewayByTenantID(tenantId string, gatewayId string) (GatewayEntity, error)`*: Ottiene un gateway specifico associato a un tenant specifico dal database tramite il suo UUID e l'UUID del tenant. Restituisce il gateway o un errore in caso di fallimento

====== gatewayPostgreRepository

Struct concreta che implementa GatewayRepository, in modo tale da comunicare con PostgreSQL.

*Attributi*
- *`db *sql.DB`*: Riferimento al database PostgreSQL
- *`log *zap.Logger`*: Riferimento al logger zap

*Funzione di costruzione*: NewGatewayPostgreRepository(log zap.Logger, db clouddb.CloudDBConnection)\* GatewayPostgreRepository

====== GatewayEntity

Entità di database che rappresenta la tabella Gateway nel database

*Attributi*
- *`ID`*: UUID del gateway
- *`Name`*: stringa rappresentante il nome del gateway
- *`TenantID`*: UUID del tenant a cui il gateway è associato
- *`Interval`*: Frequenza di invio dei dati al cloud in millisecondi
- *`PublicIdentifier`*: L'identificativo pubblico del gateway, usato in fase di commissioning
- *`Status`*: Lo stato del gateway (es. attivo, inattivo)
- *`CreatedAt`*: Data di creazione del gateway
- *`UpdatedAt`*: Data di ultima modifica del gateway