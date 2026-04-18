==== Package `infra`

//TODO: FIXARE HEADING

Il package `infra` contiene tutti i componenti infrastrutturali dell'applicazione: gestione crittografica (hashing e JWT), connessione e migrazione dei database, middleware HTTP, routing, metriche, messaggistica NATS e utilità trasversali. È il livello più esterno dell'architettura esagonale e costituisce l'insieme degli _outbound adapter_ e dei componenti di supporto tecnico al dominio.

// TODO: mettere svg
/*
#figure(
  image("../../assets/c4/backend/infra/infra.svg", width:100%),
  caption: [Cloud Backend -- Overview del package `infra`],
)
*/

==== Package `infra/crypto`

Il sub-package `crypto` fornisce le primitive crittografiche usate dall'applicazione: hashing sicuro delle password tramite bcrypt, generazione e verifica di token JWT, e generazione di token opachi per operazioni come il reset della password.

// TODO: mettere svg

===== `BcryptHasher`

Struct concreta che implementa l'interfaccia `crypto.SecretHasher`. Esegue l'hashing di segreti tramite l'algoritmo bcrypt, con un pre-hashing SHA-512 per aggirare il limite di 72 byte imposto da bcrypt.

*Attributi:*
- *`cost int`*: Costo computazionale dell'algoritmo bcrypt

*Metodi:*
- *`HashSecret(plaintext string) (string, error)`*: Calcola l'hash bcrypt del testo in chiaro fornito. Restituisce l'hash risultante o un errore in caso di fallimento.
- *`CompareHashAndSecret(hashed string, plaintext string) error`*: Verifica che il testo in chiaro corrisponda all'hash fornito. Restituisce un errore se i valori non corrispondono.
- *`preHash(plaintext string) []byte`*: Esegue un pre-hashing SHA-512 sul testo in chiaro, usato come workaround per il limite di 72 byte di bcrypt.

*Funzione di costruzione:* `NewBcryptHasher(cfg *config.Config) *BcryptHasher`

===== `JWTManager`

Struct concreta che gestisce la generazione e la verifica dei token JWT. 

*Implementa*: `crypto.AuthTokenManager`.

*Attributi:*
- *`secret []byte`*: Chiave segreta usata per firmare i token JWT
- *`tokenDuration time.Duration`*: Durata di validità dei token JWT generati

*Metodi:*
- *`GenerateForRequester(requester identity.Requester) (string, error)`*: Genera un token JWT per il requester fornito. Restituisce il token firmato o un errore in caso di fallimento.
- *`GetRequesterFromToken(tokenString string) (identity.Requester, error)`*: Verifica e decodifica un token JWT, estraendo il `Requester` associato. Restituisce il requester o un errore se il token non è valido.
- *`stringToUserRole(roleString string) (identity.UserRole, error)`*: Converte una stringa nel corrispondente valore `identity.UserRole`. Restituisce un errore se la stringa non è riconosciuta.
- *`userRoleToString(role identity.UserRole) (string, error)`*: Converte un valore `identity.UserRole` nella corrispondente stringa. Restituisce un errore se il ruolo non è riconosciuto.

*Funzione di costruzione:* `NewJWTManager(cfg *config.Config) (*JWTManager, error)`

===== `MainTokenGenerator`

Struct concreta che implementa la generazione di token (non JWT), usati ad esempio per il reset della password. Genera una coppia token in chiaro / token hashato.

*Attributi:*
- *`hasher crypto.SecretHasher`*: Riferimento all'hasher usato per hashare il token generato
- *`decodedTokenLength int`*: Lunghezza del token grezzo prima della codifica
- *`encoding base64.Encoding`*: Encoding base64 usato per la serializzazione del token
- *`tokenDuration time.Duration`*: Durata di validità del token generato

*Metodi:*
- *`GenerateToken() (string, string, error)`*: Genera una coppia di token: il token in chiaro e il token hashato. Restituisce entrambi i valori o un errore in caso di fallimento.
- *`ExpiryFromNow() time.Time`*: Calcola e restituisce il timestamp di scadenza del token a partire dal momento corrente.

*Funzione di costruzione:* `NewMainTokenGenerator(hasher crypto.SecretHasher, cfg *config.Config) *MainTokenGenerator`

===== `jwtObj`

Struct interna che rappresenta il payload di un token JWT. I nomi delle chiavi JSON sono volutamente abbreviati per minimizzare la dimensione del token.

*Attributi:*
- *`Expiry int `*: Timestamp di scadenza del token
- *`TenantId string `*: UUID del tenant a cui il token è associato
- *`UserId int `*: ID numerico dell'utente a cui il token è associato
- *`Role string `*: Ruolo dell'utente codificato come stringa

*Metodi:*
- *`ToClaims() (jwt.MapClaims, error)`*: Converte l'oggetto `jwtObj` in una mappa di claim JWT compatibile con la libreria `golang-jwt`. Restituisce la mappa o un errore in caso di fallimento.

===== Funzioni del pakage `crypto`

- *`jwtTokenFromClaims(claims jwt.MapClaims) (jwtObj, error)`*: Funzione interna che ricostruisce un `jwtObj` a partire da una mappa di claim JWT. Restituisce l'oggetto deserializzato o un errore se i claim non sono validi.

==== Package `infra/database`

Il sub-pakage `database` contiene le utilità condivise per la gestione dei database, indipendentemente dal tipo (cloud DB o sensor DB). Espone funzioni per la creazione di connessioni, la gestione dei test e la trasformazione di liste di entità in oggetti di dominio.

===== Interfaccia `Tabler`

Interfaccia che definisce il contratto per le entità di database compatibili con la naming convention delle tabelle di GORM.

*Metodi:*
- *`TableName() string`*: Restituisce il nome della tabella associata all'entità.

===== Funzioni del package `database`

- *`MapEntityListToDomain[EntityT Tabler, DomainT any](entityList []EntityT, mapper func(*EntityT) (DomainT, error)) ([]DomainT, error)`*: Funzione generica che applica la funzione `mapper` a tutti gli elementi di `entityList` (di tipo `EntityT`), restituendo una lista di oggetti di dominio (di tipo `DomainT`). In caso di errore durante il mapping restituisce uno slice vuoto (non-nil). *Nota:* il mapper deve avere firma `func(*EntityT) (DomainT, error)` anche quando non genera errori, per garantire la compatibilità con i mapper che possono farlo.
- *`NewPostgresEngineConnection(host string, port int, user, password string) (*gorm.DB, error)`*: Crea e restituisce una nuova connessione all'engine Postgres con i parametri forniti. Restituisce un errore se la connessione fallisce.
- *`SetupTestDatabase(log *zap.Logger, cfg *config.Config, whichDb SetupTestDbEnum) error`*: Crea un database di test e aggiorna `cfg.CloudDBName` con il nome del database creato (che include il timestamp di esecuzione al nanosecondo). Per aggiungere un nuovo database di test è necessario estendere `SetupTestDbEnum` e aggiungere il relativo `case` nello switch interno alla funzione.
- *`SeverDropDatabase(log *zap.Logger, db *gorm.DB, targetDBName, dbType string) error`*: Disconnette forzatamente tutte le connessioni attive al database `targetDBName` ("sever") e lo elimina ("drop"). *Nota:* deve essere chiamata in modo sincrono e non causa conflitti con `OnStop` nel lifecycle Fx.
- *`getTestDbName(oldName string) string`*: Funzione interna che genera il nome del database di test a partire dal nome base fornito.

==== Package `infra/database/cloud_db`

Il sub-package `cloud_db` gestisce le operazioni di migrazione e popolamento del database cloud principale (PostgreSQL). Coordina la migrazione dello schema pubblico e degli schemi per-tenant.

===== Interfaccia `localCloudMigrator`

Interfaccia interna che rispecchia `migrate.CloudDBMigrator` e definisce il contratto per le operazioni di migrazione del cloud DB.

*Metodi:*
- *`DB() *gorm.DB`*: Restituisce il riferimento al database GORM.
- *`Logger() *zap.Logger`*: Restituisce il riferimento al logger zap.
- *`Hasher() crypto.SecretHasher`*: Restituisce il riferimento all'hasher crittografico.
- *`MigratePublic() error`*: Esegue la migrazione dello schema pubblico del database.
- *`MigrateTenantSchema(tenantId string, shouldLog bool) error`*: Esegue la migrazione dello schema per il tenant identificato da `tenantId`.

===== Funzioni del package `cloud_db`

- *`migrateAll(tenantRepo tenant.TenantRepository, migrator localCloudMigrator, setDefaultData bool) error`*: Esegue la migrazione completa del database: schema pubblico e schema di tutti i tenant esistenti. Se `setDefaultData` è `true`, popola anche i dati di default. Restituisce un errore in caso di fallimento.
- *`populatePublicDefaultData(migrator localCloudMigrator) error`*: Popola lo schema pubblico del database con i dati di default. Restituisce un errore in caso di fallimento.
- *`populateTenantDefaultData(migrator localCloudMigrator) error`*: Popola lo schema di un tenant con i dati di default. Restituisce un errore in caso di fallimento.

==== Package `infra/database/cloud_db/connection`

Il sub-package `connection` gestisce la connessione al database cloud (PostgreSQL) e il suo ciclo di vita nell'applicazione tramite Fx.

===== Funzioni del package `cloud_db/connection`

- *`NewCloudDbConnection(log *zap.Logger, cfg *config.Config) (CloudDBConnection, error)`*: Crea e restituisce una nuova connessione al cloud DB. Restituisce un errore se la connessione fallisce.
- *`SetCloudDbLifecycle(lc fx.Lifecycle, log *zap.Logger, cfg *config.Config, cloudDB CloudDBConnection)`*: Registra gli hook di avvio e arresto della connessione al cloud DB nel lifecycle Fx.
- *`WithTenantSchema(tenantId string, table dbPackage.Tabler) func(*gorm.DB) *gorm.DB`*: Restituisce una funzione di scope GORM che imposta lo schema del tenant corretto per la tabella specificata. Usata per eseguire query nel contesto dello schema PostgreSQL del tenant.

==== Package `infra/database/cloud_db/migrate`

Il sub-pakage `migrate` si occupa della migrazione effettiva degli schemi del cloud DB, sia per lo schema pubblico sia per gli schemi per-tenant.

===== `CloudDBMigrator`

Struct concreta che implementa l'interfaccia `Migrator` e coordina la migrazione del cloud DB tramite GORM AutoMigrate.

*Attributi:*
- *`log *zap.Logger`*: Riferimento al logger zap
- *`cfg *config.Config`*: Riferimento alla configurazione dell'applicazione
- *`db *gorm.DB`*: Riferimento alla connessione al database
- *`hasher crypto.SecretHasher`*: Riferimento all'hasher crittografico, usato per la popolazione dei dati di default

*Metodi:*
- *`DB() *gorm.DB`*: Restituisce il riferimento alla connessione GORM.
- *`Logger() *zap.Logger`*: Restituisce il riferimento al logger.
- *`Hasher() crypto.SecretHasher`*: Restituisce il riferimento all'hasher.
- *`MigratePublic() error`*: Esegue la migrazione delle entità dello schema pubblico. Restituisce un errore in caso di fallimento.
- *`MigrateTenantSchema(tenantId string, shouldLog bool) error`*: Esegue la migrazione delle entità nello schema del tenant identificato da `tenantId`. Il parametro `shouldLog` controlla se la migrazione deve essere tracciata nel log. Restituisce un errore in caso di fallimento.
- *`DeleteTenantSchema(tenantId string) error`*: Elimina lo schema del tenant identificato da `tenantId`. Restituisce un errore in caso di fallimento.

*Funzione di costruzione:* `NewCloudDBMigrator(log *zap.Logger, cfg *config.Config, db connection.CloudDBConnection, hasher crypto.SecretHasher) *CloudDBMigrator`

===== Interfaccia `Migrator`

Interfaccia che definisce il contratto per le operazioni di migrazione del cloud DB.

*Metodi:*
- *`Logger() *zap.Logger`*: Restituisce il riferimento al logger.
- *`MigratePublic() error`*: Esegue la migrazione dello schema pubblico.
- *`MigrateTenantSchema(tenantId string, shouldLog bool) error`*: Esegue la migrazione dello schema di un tenant.
- *`DeleteTenantSchema(tenantId string) error`*: Elimina lo schema di un tenant.

===== Funzioni del package `cloud_db/migrate`

- *`GetPublicEntities() []any`*: Restituisce la lista delle entità GORM appartenenti allo schema pubblico del database.
- *`GetTenantSchemaEntities() [](interface{ TableName() string })`*: Restituisce la lista delle entità GORM appartenenti agli schemi per-tenant.

==== Package `infra/database/pagination`

Il sub-package `pagination` fornisce utilità per la gestione della paginazione nelle query al database.

===== Funzioni del package `pagination`

- *`PageLimitToOffset(page int, limit int) (int, error)`*: Converte i parametri di paginazione `page` e `limit` nell'offset corrispondente da usare nelle query SQL. Restituisce l'offset calcolato o un errore se i parametri non sono validi (es. pagina ≤ 0).

==== Package `infra/database/schema`

Il sub-package `schema` fornisce funzioni di utilità per la gestione degli schemi PostgreSQL, utilizzate durante la creazione e l'eliminazione degli schemi per-tenant.

===== Funzioni del package `schema`

- *`CreateSchema(db *gorm.DB, schemaName string) error`*: Crea uno schema PostgreSQL con il nome specificato. Restituisce un errore se la creazione fallisce.
- *`DropSchema(db *gorm.DB, schemaName string) error`*: Elimina uno schema PostgreSQL con il nome specificato. Restituisce un errore se l'eliminazione fallisce.
- *`GetSchemaName(tenantId string) string`*: Restituisce il nome dello schema PostgreSQL associato al tenant identificato da `tenantId`.

==== Package `infra/database/sensor_db/connection`

Il sub-package `sensor_db/connection` gestisce la connessione al database dei sensori (TimescaleDB) e il suo ciclo di vita nell'applicazione tramite Fx.

===== Funzioni del package `sensor_db/connection`

- *`NewTimescaleDBConnection(log *zap.Logger, cfg *config.Config) (SensorDBConnection, error)`*: Crea e restituisce una nuova connessione al database TimescaleDB. Restituisce un errore se la connessione fallisce.
- *`SetSensorDbLifecycle(lc fx.Lifecycle, log *zap.Logger, cfg *config.Config, sensorDB SensorDBConnection)`*: Registra gli hook di avvio e arresto della connessione al sensor DB nel lifecycle Fx.

==== Package `infra/database/sensor_db/migrate`

Il sub-package `sensor_db/migrate` gestisce la migrazione degli schemi del database dei sensori (TimescaleDB), sia per la creazione sia per l'eliminazione degli schemi per-tenant.

===== `SensorDBMigrator`

Struct concreta che implementa l'interfaccia `Migrator` e gestisce la migrazione dello schema per-tenant nel sensor DB.

*Attributi:*
- *`log *zap.Logger`*: Riferimento al logger zap
- *`cfg *config.Config`*: Riferimento alla configurazione dell'applicazione
- *`db *gorm.DB`*: Riferimento alla connessione al database

*Metodi:*
- *`MigrateTenantSchema(tenantId string) error`*: Esegue la migrazione dello schema del sensor DB per il tenant identificato da `tenantId`. Restituisce un errore in caso di fallimento. *Nota:* possibile miglioramento futuro consiste nell'adottare GORM AutoMigrate anche qui, in linea con quanto fatto nel cloud DB.
- *`DeleteTenantSchema(tenantId string) error`*: Elimina lo schema del sensor DB per il tenant identificato da `tenantId`. Restituisce un errore in caso di fallimento.

*Funzione di costruzione:* `NewSensorDBMigrator(log *zap.Logger, cfg *config.Config, db connection.SensorDBConnection) *SensorDBMigrator`

===== Interfaccia `Migrator`

Interfaccia che definisce il contratto per le operazioni di migrazione del sensor DB.

*Metodi:*
- *`MigrateTenantSchema(tenantId string) error`*: Esegue la migrazione dello schema di un tenant.
- *`DeleteTenantSchema(tenantId string) error`*: Elimina lo schema di un tenant.

==== Package `infra/metrics`

Il sub-package `metrics` si occupa della registrazione e dell'esposizione delle metriche applicative tramite Prometheus, integrate nel router Gin.

===== Funzioni del package `metrics`

- *`RegisterPrometheus(router *gin.Engine)`*: Registra il middleware e l'endpoint di scraping Prometheus sul router Gin fornito. Non restituisce valori.

==== Package `infra/modules`

Il sub-package `modules` centralizza la configurazione del dependency injection tramite il framework Fx. Aggrega tutti i moduli dell'applicazione in un unico `fx.Option`.

===== Funzioni del package `modules`

- *`AppModules() fx.Option`*: Restituisce l'`fx.Option` che aggrega tutti i moduli Fx dell'applicazione (database, router, controller, service, ecc.). Usata come punto di ingresso per la configurazione del DI container.

==== Package `infra/nats`

Il sub-package `nats` fornisce le funzioni di utilità per stabilire connessioni al broker NATS/JetStream, inclusa la gestione dei metodi di autenticazione supportati.

===== Funzioni del package `nats`

- *`NewNATSConnection(address NatsAddress, port NatsPort, credsPath NatsCredsPath, caPemPath NatsCAPemPath) *nats.Conn`*: Crea e restituisce una connessione al broker NATS con i parametri forniti. Usa `CredsFileAuth` e `CAPemAuth` come opzioni di autenticazione.
- *`NewNATSTestConnection(address NatsAddress, port NatsPort, credsPath NatsTestCredsPath, caPemPath NatsCAPemPath) NatsTestConnection`*: Crea e restituisce una connessione NATS destinata ai test di integrazione.
- *`NewJetStreamContext(nc *nats.Conn) (jetstream.JetStream, error)`*: Crea e restituisce un contesto JetStream a partire da una connessione NATS esistente. Restituisce un errore se l'operazione fallisce.
- *`CAPemAuth(caPemPath string) nats.Option`*: Restituisce un'opzione NATS per l'autenticazione tramite certificato CA in formato PEM.
- *`CredsFileAuth(credsPath string) nats.Option`*: Restituisce un'opzione NATS per l'autenticazione tramite file di credenziali `.creds`.
- *`JWTAuth(token, seed string) nats.Option`*: Restituisce un'opzione NATS per l'autenticazione tramite JWT e seed NKey.

==== Pakage `infra/router`

Il sub-pakage `router` si occupa della creazione e configurazione del router HTTP Gin, registrando tutti i controller e i middleware dell'applicazione.

===== Funzioni del package `router`

- *`NewGinEngine(log *zap.Logger, config *config.Config, authzMiddleware *httpMiddlewares.AuthzMiddleware, gatewayController *gateway.GatewayController, historicalDataController *historical_data.Controller, realTimeDataController *real_time_data.Controller, userController *user.Controller, authController *auth.Controller, sensorController *sensor.Controller, tenantController *tenant.Controller) *gin.Engine`*: Crea e restituisce un'istanza configurata del router Gin con tutti i middleware e i controller registrati. Ogni controller corrisponde a un package applicativo e viene montato sul router con i propri endpoint.

==== Package `infra/transport/http`

Il sub-package `transport/http` fornisce funzioni di utilità per la gestione delle risposte HTTP standardizzate e per l'estrazione del `Requester` dal contesto Gin.

===== Funzioni del package `transport/http`

- *`ExtractRequester(ctx *gin.Context) (identity.Requester, error)`*: Estrae il `Requester` dal contesto Gin. L'unico errore possibile è `ErrMissingIdentity`, restituito quando il requester non è presente nel contesto.
- *`RequestOk(ctx *gin.Context, obj any)`*: Risponde con HTTP 200 e serializza `obj` come JSON.
- *`RequestError(ctx *gin.Context, err error)`*: Risponde con un codice di errore HTTP appropriato in base al tipo di errore fornito.
- *`RequestNotFound(ctx *gin.Context, err error)`*: Risponde con HTTP 404 e il messaggio di errore fornito.
- *`RequestUnauthorized(ctx *gin.Context, err error)`*: Risponde con HTTP 401 e il messaggio di errore fornito.
- *`RequestServerError(ctx *gin.Context, err error)`*: Risponde con HTTP 500 e il messaggio di errore fornito.
- *`ValidationError(ctx *gin.Context, err error) bool`*: Verifica se `err` è un errore di validazione e, in caso affermativo, risponde con HTTP 400 e restituisce `true`. Restituisce `false` se l'errore non è di validazione.

==== Package `infra/transport/http/middlewares`

Il sub-package `middlewares` contiene i middleware Gin dell'applicazione. Attualmente espone il middleware di autorizzazione basato su JWT.

===== `AuthzMiddleware`

Middleware Gin di autorizzazione che verifica la presenza e la validità del token JWT nelle richieste in ingresso.

*Attributi:*
- *`authTokenManager crypto.AuthTokenManager`*: Riferimento al gestore dei token di autenticazione, usato per verificare e decodificare i JWT

*Metodi:*
- *`RequireAuthToken(ctx *gin.Context)`*: Middleware che richiede la presenza di un token JWT valido nell'header `Authorization` della richiesta. In caso di token assente o non valido, la richiesta viene rifiutata con HTTP 401.
- *`RequireAuthTokenInQuery(ctx *gin.Context)`*: Middleware che richiede la presenza del JWT come query parameter (`?jwt=...`). Da usare esclusivamente nei casi in cui non è possibile inserire l'header `Authorization` nella richiesta, come nelle connessioni WebSocket. *Nota:* questa è una soluzione temporanea; il miglioramento previsto è l'adozione di un sistema a "ticket" one-time con store in-memory (Redis o memdb), dove il client ottiene un ticket a vita breve da un endpoint dedicato (es. `/ws/new-ticket`) e lo usa nella successiva richiesta WebSocket (es. `/api/v1/sensor/.../real_time_data?ticket=<ticket>`).

*Funzione di costruzione:* `NewAuthzMiddleware(authTokenManager crypto.AuthTokenManager) *AuthzMiddleware`

==== Package `infra/transport/http/dto`

Il sub-package `dto` contiene i DTO condivisi usati dai controller HTTP dell'applicazione. Sono struct componibili tramite embedding, progettate per essere riutilizzate come blocchi costruttivi nei DTO specifici di ogni dominio.

===== DTO condivisi per i campi delle richieste

I DTO seguenti sono campi atomici e componibili tramite embedding:

- *`TenantIdField`*: Campo per l'UUID del tenant.
  - `TenantId string`

- *`TenantIdField_NotRequired`*: Variante nullable di `TenantIdField`, escluso dalla validazione per i `super_admin`.
  - `TenantId \*string`

- *`UserIdField`*: Campo per l'ID numerico dell'utente.
  - `UserId uint `

- *`UserRoleField`*: Campo per il ruolo dell'utente. I valori ammessi sono: `tenant_user`, `tenant_admin`, `super_admin`.
  - `UserRole string `

- *`UsernameField`*: Campo per lo username dell'utente.
  - `Username string `
- *`EmailField`*: Campo per l'indirizzo email.
  - `Email string `
- *`GatewayIdField`*: Campo per l'UUID del gateway.
  - `GatewayId string `
- *`GatewayNameField`*: Campo per il nome del gateway.
  - `GatewayName string `

- *`GatewayIntervalField`*: Campo per l'intervallo del gateway (in millisecondi, deve essere > 0).
  - `Interval int64 `

- *`SensorIdField`*: Campo per l'UUID del sensore.
  - `SensorId string `

- *`TenantNameField`*: Campo per il nome del tenant.
  - `TenantName string `

- *`TimestampField`*: Campo per un timestamp in formato `time.Time`.
  - `Timestamp time.Time `

- *`Pagination`*: Campi per la paginazione delle liste. `Page` minimo 1, `Limit` compreso tra 1 e 200.
  - `Page int `
  - `Limit int `

===== DTO condivisi per le password

- *`PasswordField`*: Campo per verificare la password corrente di un utente (minimo 8 caratteri).
  - `Password string `

- *`NewPasswordField`*: Campo per impostare una nuova password in contesti dove l'entità non aveva password in precedenza (minimo 8 caratteri). Per il cambio password (vecchia + nuova), usare `ChangePasswordFields`.
  - `NewPassword string `

- *`ChangePasswordFields`*: Campi per il cambio password: la nuova password deve essere diversa dalla vecchia (validazione `nefield=OldPassword`).
  - `OldPassword string `
  - `NewPassword string `

===== DTO composti

- *`TenantUriDTO`*: DTO che incorpora `TenantIdField`.
- *`TenantMemberUriDTO`*: DTO che incorpora `TenantIdField` e `UserIdField`.
- *`SuperAdminUriDTO`*: DTO che incorpora `UserIdField`.
- *`TokenFields`*: Campi per l'identificazione di un token: il token stesso e il tenant ID opzionale a cui appartiene.
  - `Token string `
  - `TenantIdField_NotRequired`

- *`CommissionTokenField`*: Campo per il token di commissioning di un gateway.
  - `CommissionToken string `

===== DTO per le risposte

- *`CommandResponse`*: DTO di risposta generica per operazioni di comando.
  - `Success bool `
  - `Message string `

- *`ListInfo`*: DTO contenente le informazioni di paginazione restituite nelle risposte di lista.
  - `Count uint `: numero di elementi nella pagina corrente
  - `Total uint `: numero totale di elementi

===== DTO per i dati dei sensori

- *`ECGData`*: Dato di misurazione ECG.
  - `Waveform []int`

- *`EnvironmentalSensingData`*: Dato di misurazione ambientale.
  - `TemperatureValue float64`, `HumidityValue float64`, `PressureValue float64`

- *`HealthThermometerData`*: Dato di misurazione della temperatura corporea.
  - `TemperatureValue float64`

- *`HeartRateData`*: Dato di misurazione del battito cardiaco.
  - `BpmValue int`

- *`PulseOximeterData`*: Dato di ossimetria.
  - `Spo2Value float64`, `PulseRateValue int`

===== Funzioni del package `transport/http/dto`

- *`DecodeSensorProfileData(profile sensorProfile.SensorProfile, raw json.RawMessage) (any, error)`*: Decodifica il payload grezzo `raw` nel tipo di dato concreto corretto (es. `ECGData`, `HeartRateData`, ecc.) in base al profilo sensore `profile`. Restituisce il dato decodificato o un errore se il profilo non è riconosciuto o se il payload non è valido.
- *`decodeSensorProfileData[T any](raw json.RawMessage) (T, error)`*: Funzione generica interna che decodifica `raw` nel tipo `T` specificato. Restituisce il valore decodificato o un errore in caso di fallimento.

==== Pakage `infra/transport/nats/dto`

Il sub-package `nats/dto` contiene i DTO usati per la comunicazione tramite NATS/JetStream, in particolare per i messaggi di campioni di dati provenienti dai sensori.

===== Interfaccia `DataSampleNATSDto`

Interfaccia che definisce il contratto per i DTO di campioni di dati ricevuti via NATS.

*Metodi:*
- *`GetTimestamp() string`*: Restituisce il timestamp del campione di dati come stringa.

===== `ConcreteDataSampleNATSDto[T]`

Struct generica concreta che implementa `DataSampleNATSDto`. Contiene tutti i campi necessari a identificare univocamente un campione di dati proveniente da un sensore.

*Attributi (tramite embedding):*
- *`SensorIdField`*: `SensorId string `
- *`GatewayIdField`*: `GatewayId string `
- *`TenantIdField`*: `TenantId string `
- *`TimestampField`*: `Timestamp string`
- *`ProfileField`*: `Profile string`
- *`Data T `*: Payload del campione, il cui tipo concreto dipende dal profilo sensore.

*Metodi:*
- *`GetTimestamp() string`*: Restituisce il timestamp del campione di dati.

===== Funzioni del package `transport/nats/dto`

- *`MapRawToDataSampleNATSDto(profile sensorProfile.SensorProfile, raw json.RawMessage) (DataSampleNATSDto, error)`*: Mappa il payload grezzo `raw` nel tipo concreto `ConcreteDataSampleNATSDto[T]` corretto (rappresentato dall'interfaccia `DataSampleNATSDto`), dove `T` è determinato in modo forzato in base al parametro `profile`. Restituisce un errore se il profilo non è riconosciuto o se la decodifica fallisce.
- *`mapRawToDto[T any](raw json.RawMessage) (\*ConcreteDataSampleNATSDto[T], error)`*: Funzione generica interna che deserializza `raw` nel tipo `ConcreteDataSampleNATSDto[T]`. Restituisce un errore se la deserializzazione fallisce.

==== Package `infra/utils`

Il sub-package `utils` raccoglie funzioni di utilità generali usate trasversalmente dall'infrastruttura.

===== Funzioni del package `utils`

- *`EnvInt(key string, fallback int) int`*: Legge la variabile d'ambiente identificata da `key` e la restituisce come intero. Se la variabile non è definita o non è parsabile come intero, restituisce il valore di fallback `fallback`.
