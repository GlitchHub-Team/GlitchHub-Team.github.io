==== Package `tenant`

Il package `tenant` contiene tutte le funzionalità relative alla gestione dei tenant, le operazioni CRUD dei tenant.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/
===== Inbound adapter -- `Controller` e DTO
Il package `tenant` presenta un controller che si occupa di ricevere le richieste HTTP ed è l'inbound adapter del package.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

*Attributi*:
- *`log *zap.Logger`*: Riferimento al logger zap
- *`createTenantUseCase CreateTenantUseCase`*: _Inbound port_ per comunicare con la classe `Service` e creare un tenant
- *`deleteTenantUseCase DeleteTenantUseCase`*: _Inbound port_ per comunicare con la classe `Service` e eliminare un tenant
- *`getTenantUseCase GetTenantUseCase`*: _Inbound port_ per comunicare con la classe `Service` e ottenere informazioni su un tenant
- *`getTenantListUseCase GetTenantListUseCase`*: _Inbound port_ per comunicare con la classe `Service` e ottenere una lista,con paginazione , di tenant
- *`getAllTenantsUseCase GetAllTenantsUseCase`*: _Inbound port_ per comunicare con la classe `Service` e ottenere tutti i tenant

*Metodi*:
Per ogni metodo si riporta il DTO ottenuto in input e il DTO restituito in output via HTTP, se presenti.
-*`CreateTenant(ctx *gin.Context)`*: Crea un nuovo tenant
  - Input: `CreateTenantDTO`
  - Output: `TenantResponseDTO`
-*`DeleteTenant(ctx *gin.Context)`*: Elimina un tenant
  - Input: `DeleteTenantDTO`
  - Output: `ResultDTO`
-*`GetTenant(ctx *gin.Context)`*: Ottiene informazioni su un tenant
  - Input: `GetTenantDTO`
  - Output: `TenantResponseDTO`
-*`GetTenantList(ctx *gin.Context)`*: Ottiene una lista di tenant
  - Input: `GetTenantListDTO`
  - Output: `TenantListResponseDTO`
-*`GetAllTenants(ctx *gin.Context)`*: Ottiene tutti i tenant
  - Output: `AllTenantsResponseDTO`


I DTO usati da `Controller` sono i seguenti:

- *`CreateTenantDTO`*: DTO usato per creare un nuovo tenant, contiene i seguenti campi:
  - `TenantId`: stringa rappresentante l'uuid del tenant
  - `Name`: stringa rappresentante il nome del tenant
  - `CanImpersonate`: booleano che indica se il tenant può errere impersonato dal super admin

- *`DeleteTenantDTO`*: DTO usato per eliminare un tenant, contiene i seguenti campi:
  - `TenantId`: stringa rappresentante l'uuid del tenant da eliminare

- *`GetTenantDTO`*: DTO usato per ottenere informazioni su un tenant, contiene i seguenti campi:
  - `TenantId`: stringa rappresentante l'uuid del tenant

- *`GetTenantListDTO`*: DTO usato per ottenere una lista di tenant, contiene i seguenti campi:
  - `Page`: intero rappresentante la pagina da visualizzare
  - `Limit`: intero rappresentante il numero di tenant da visualizzare per pagina

- *`TenantResponseDTO`*: DTO restituito in output quando un tenant viene creato con successo, contiene i seguenti campi:
  - `TenantId`: stringa rappresentante l'uuid del tenant
  - `Name`: stringa rappresentante il nome del tenant

- *`TenantListResponseDTO`*: DTO restituito in output quando viene ottenuta una lista di tenant, contiene i seguenti campi:
  - `Tenants`: lista di `TenantResponseDTO`
  - `Total`: intero rappresentante il numero totale di tenant
  - `Count`: intero rappresentante il numero di tenant restituiti nella pagina

===== Inbound ports
Di seguito sono riportate le _inbound ports_ del package.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== CreateTenantUseCase
*Metodi:*
- CreateTenant(cmd CreateTenantCommand) (Tenant, error): Creare un nuovo tenant con i dati forniti in `cmd` e restituisce il tenant creato o un errore in caso di fallimento
====== DeleteTenantUseCase
*Metodi:*
- DeleteTenant(cmd DeleteTenantCommand) error: Eliminare un tenant con i dati forniti in `cmd` e restituisce un errore in caso di fallimento
====== GetTenantUseCase
*Metodi:*
- GetTenant(cmd GetTenantCommand) (Tenant, error): Ottenere informazioni su un tenant con i dati forniti in `cmd` e restituisce il tenant o un errore in caso di fallimento
====== GetAllTenantsUseCase
*Metodi:*
- GetAllTenants(cmd GetAllTenantsCommand) ([]Tenant, error): Ottenere tutti i tenant e restituisce una lista di tenant o un errore in caso di fallimento
====== GetTenantListUseCase
*Metodi:*
- GetTenantList(cmd GetTenantListCommand) ([]Tenant, error): Ottenere una lista di tenant e restituisce una lista di tenant o un errore in caso di fallimento


===== Comandi
I comandi usati dagli _use case_ di `Controller` sono i seguenti:
- *`CreateTenantCommand`* : Comando usato per creare un nuovo tenant, contiene i seguenti campi:
  - `TenantId`: UUID del tenant da creare
  - `Name`: nome del tenant da creare
  - `Requester`: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC], usato per verificare se l'utente ha i permessi per creare un tenant

- *`DeleteTenantCommand`*: Comando usato per eliminare un tenant, contiene i seguenti campi:
  - `TenantId`: UUID del tenant da eliminare
  - `Requester`: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC], usato per verificare se l'utente ha i permessi per eliminare un tenant

- *`GetTenantListCommand`*: Comando usato per ottenere i gateway di un tenants specifico, contiene i seguenti campi:
  - `Requester`: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC], usato per verificare se l'utente ha i permessi per ottenere una lista di tenant
  - `Limit`: intero rappresentante il numero di tenant da visualizzare per pagina
  - `Page`: intero rappresentante la pagina da visualizzare

- *`GetTenantCommand`*: Comando usato per ottenere un gateway specifico di un tenant specifico, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Requester`: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC], usato per verificare se l'utente ha i permessi per ottenere informazioni su un tenant


===== Services

====== TenantService
Implemeta le interfaccie CreateTenantPort, DeleteTenantPort, GetTenantPort, GetTenantsPort.

*Attributi*
- *`createTenantPort CreateTenantPort`*: _Outbound port_ usata per ottenere informazioni sui token per la reimpostazione della password
- *`deleteTenantPort DeleteTenantPort`*: _Outbound port_ usata per ottenere informazioni sui token per la reimpostazione della password
- *`getTenantPort GetTenantPort`*: _Outbound port_ usata per ottenere informazioni sui token per la reimpostazione della password
- *`getTenantsPort GetTenantsPort`*: _Outbound port_ usata per ottenere informazioni sui token per la reimpostazione della password

*Funzione di costruzione* :NewTenantService (createTenantPort CreateTenantPort, deleteTenantPort DeleteTenantPort, getTenantPort GetTenantPort, getTenantsPort GetTenantsPort) \* TenantService


===== Dominio

====== Tenant
Rappresento i tenant dell'applicazione, che rappresentano le organizzazioni che utilizzano la piattaforma.

*Attributi:*
- *`ID`*: UUID del tenant a cui il token è associato
- *`Name`*: nome del tenant
- *`CanImpersonate`*: booleano che indica se il tenant può essere impersonato dal super admin


*Metodi:*
- *`IsZero() bool`*: Restituisce true se il tenant è vuoto, false altrimenti
- *`GetId() uuid.UUID`*: Restituisce l'UUID del tenant


=====  Outbound ports – Database
In questa sezione sono riportate le descrizioni delle outbound port che hanno la responsabilità di comunicare con il database.


//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== CreateTenantPort
*Metodi*
- *`CreateTenant(tenant Tenant) (Tenant, error)`*: Crea un nuovo tenant. Restituisce il tenant creato o un errore in caso di fallimento.

====== DeleteTenantPort
*Metodi*
- *`DeleteTenant(tenantId uuid.UUID) (Tenant, error)`*: Elimina un tenant specifico. Restituisce il tenant eliminato o un errore in caso di fallimento.

====== GetTenantPort
*Metodi*
- *`GetTenant(tenantId uuid.UUID) (Tenant, error)`*: Ottiene un tenant specifico. Restituisce il tenant trovato o un errore in caso di fallimento.

====== GetTenantsPort
*Metodi*
- *`GetTenants(limit int, page int) ([]Tenant, error)`*: Ottiene una lista di tenant. Restituisce la lista di tenant trovati o un errore in caso di fallimento.
- *`GetAllTenants() ([]Tenant, error)`*: Ottiene tutti i tenant. Restituisce la lista di tenant trovati o un errore in caso di fallimento.



===== Outbound adapter per database – TenantPostgreAdapter
TenantPostgreAdapter è l’outbound port usata per comunicare con il database per le operazioni CRUD sui tenant, traducendo l’interfaccia di dominio nell’interfaccia di PostgreSQL e viceversa.

*Interfaccie implementate*
- *`CreateTenantPort`*
- *`DeleteTenantPort`*
- *`GetTenantPort`*
- *`GetTenantsPort`*

*Attributi*
- *`repo TenantRepository`*: Riferimento al repository per dei tenants


===== Repository per database – TenantRepository, TenantEntity

*Metodi*
- *`SaveTenant(entity *TenantEntity) (error)`*: Salva un tenant nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`DeleteTenant(entity *TenantEntity) (error)`*: Elimina un tenant nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`GetTenant(tenantId uuid.UUID) (entity *TenantEntity, error)`*: Restituisce un tenant specifico tramite l'UUID. Restituisce il tenant trovato o un errore in caso di fallimento.
- *`GetTenants(offset int, page int) (entities []TenantEntity, int, error)`*: Restituisce una lista di tenant tramite paginazione. Restituisce la lista di tenant trovati, il numero totale di tenant e un errore in caso di fallimento.
- *`GetAllTenants() (entities []TenantEntity, error)`*: Restituisce tutti i tenant. Restituisce la lista di tenant trovati o un errore in caso di fallimento.

====== TenantEntity
Rappresenta l'entità di database dei tenant, usata per comunicare con PostgreSQL.
*Attributi*
- *`ID`*: UUID del tenant a cui il token è associato
- *`Name`*: nome del tenant
- *`CanImpersonate`*: booleano che indica se il tenant può essere impersonato dal super admin

====== TenantPostgreRepository

Struct concreta che implementa TenantRepository, in modo tale da comunicare con PostgreSQL.

*Attributi*
- *`db clouddb.CloudDBConnection`*: Riferimento al database PostgreSQL
- *`log zap.Logger`*: Riferimento al logger zap

*Funzione di costruzione*: NewTenantPostgreRepository(db clouddb.CloudDBConnection, log zap.Logger)\* TenantPostgreRepository






