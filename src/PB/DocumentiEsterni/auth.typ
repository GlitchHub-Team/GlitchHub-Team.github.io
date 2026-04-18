==== Package `auth`

Il package `auth` contiene tutte le funzionalità relative alla gestione dell'autenticazione e dell'autorizzazione, come ad esempio la gestione dei token JWT e la verifica delle autorizzazioni degli utenti.\
//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/
==== Inbound adapter -- `Controller` e DTO
Il package `auth` presenta un controller che si occupa di ricevere le richieste HTTP ed è l'inbound adapter del package.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

===== Attributi:
- *`log *zap.Logger`*: Riferimento al logger zap
- *`tokenService crypto.TokenService`*: Riferimento al servizio per la gestione dei token JWT
- *`loginUserUseCase  LoginUserUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e autenticare un utente
- *`logoutUserUseCase LogoutUserUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e disautenticare un utente
- *`confirmAccountUseCase ConfirmAccountUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e confermare l'account di un utente
- *`verifyConfirmAccountTokenUseCase VerifyConfirmAccountTokenUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e verificare il token di conferma dell'account
- *`verifyForgotPasswordTokenUseCase VerifyForgotPasswordTokenUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e verificare il token per la reimpostazione della password
- *`requestForgotPasswordUseCase RequestForgotPasswordUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e richiedere la reimpostazione della password
- *`confirmForgotPasswordUseCase ConfirmForgotPasswordUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e confermare la reimpostazione della password
- *`changePasswordUseCase ChangePasswordUseCase`*: Riferimento all'_inbound port_ per comunicare con la classe `Service` e cambiare la password

===== Metodi:
Per ogni metodo si riporta il DTO ottenuto in input e il DTO restituito in output via HTTP, se presenti.
-*`LoginUser(ctx *gin.Context)`*: Logga un utente nel sistema
  - Input: `LoginUserDTO` 
  - Output: `LoginResponseDTO` 
-*`LogoutUser(ctx *gin.Context)`*: Dislogga un utente dal sistema ?
-*`VerifyConfirmAccountToken(ctx *gin.Context)`*:
  - Input: `VerifyConfirmAccountTokenBodyDTO`
-*`ConfirmAccount(ctx *gin.Context)`*:
  - Input: `ConfirmUserAccountBodyDTO`
  - Output: `LoginResponseDTO`
-*`VerifyForgotPasswordToken(ctx *gin.Context)`*:
  - Input: `VerifyForgotPasswordTokenBodyDTO`
  - Output: `ResultDTO`
-*`RequestForgotPasswordToken(ctx *gin.Context)`*:
  - Input: `RequestForgotPasswordBodyDTO`
  - Output: `ResultDTO`
-*`ConfirmForgotPassword(ctx *gin.Context)`*:
  - Input: `ConfirmForgotPasswordBodyDTO`
  - Output: `ResultDTO`
-*`ChangePassword(ctx *gin.Context)`*:
  - Input: `ChangePasswordBodyDTO`
  - Output: `ResultDTO`

I DTO usati da `Controller` sono i seguenti:
- *`LoginUserDTO`*: DTO usato per loggare un utente, contiene i seguenti campi:
  - `TenantId`: stringa rappresentante l'uuid del tenant dell'utente da loggare
  - `Email`: stringa rappresentante l'email dell'utente da loggare
  - `Password`: stringa rappresentante la password dell'utente da loggare

- *`LogoutUserDTO`*: DTO usato per disloggare un utente, contiene i seguenti campi:
  - *`Requester identity.Requester`*: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC]

- *`VerifyConfirmAccountTokenBodyDTO`*: DTO usato per verificare il token di conferma dell'account, contiene i seguenti campi:
  - `Token`: stringa rappresentante il token di conferma dell'account

- *`VerifyForgotPasswordTokenBodyDTO`*: DTO usato per verificare il token per la reimpostazione della password, contiene i seguenti campi:
  - `Token`: stringa rappresentante il token per la reimpostazione della password

-*`ConfirmUserAccountBodyDTO`*: DTO usato per confermare l'account di un utente, contiene i seguenti campi:
  - `Token`: stringa rappresentante il token di conferma dell'account
  - `NewPassword`: stringa rappresentante la nuova password da impostare per l'utente

- *`VerifyForgotPasswordTokenBodyDTO`*: DTO usato per verificare il token per la reimpostazione della password, contiene i seguenti campi:
  - `Token`: stringa rappresentante il token per la reimpostazione della password

- *`RequestForgotPasswordBodyDTO`* : DTO usato per richiedere la reimpostazione della password, contiene i seguenti campi:
  - `Email`: stringa rappresentante l'email dell'utente che richiede la reimpostazione della password
  - `TenantId`: stringa rappresentante l'uuid del tenant dell'utente che richiede la reimpostazione della password

- *`ConfirmForgotPasswordBodyDTO`*: DTO usato per confermare la reimpostazione della password, contiene i seguenti campi:
  - `Token`: stringa rappresentante il token per la reimpostazione della password
  - `NewPassword`: stringa rappresentante la nuova password da impostare

- *`ChangePasswordBodyDTO`*: DTO usato per cambiare la password, contiene i seguenti campi:

- *`LoginResponseDTO`*: DTO restituito in output quando un utente viene loggato con successo, contiene i seguenti campi:
  - `Token`: stringa rappresentante il token JWT da usare per autenticare le richieste successive

- *`ResultDTO`*: DTO usato per restituire il risultato di una operazione, contiene i seguenti campi:
  - `Result`: booleano che indica se l'operazione è stata eseguita con successo o meno

===== Inbound ports

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== LoginUserUseCase
*Metodi:*
- LoginUser(cmd LoginUserCommand) (user.User, error): Loggare un utente nel sistema tramite le credenziali fornite in `cmd` e restituisce l'utente loggato o un errore in caso di fallimento
====== LogoutUserUseCase
*Metodi:*
-LogoutUser(cmd LogoutUserCommand) error: Disloggare un utente dal sistema tramite i dati di autenticazione forniti in `cmd` e restituisce un errore in caso di fallimento
====== ConfirmAccountUseCase
*Metodi:*
- ConfirmAccount(cmd ConfirmAccountCommand) (user.User, error): Confermare l'account di un utente tramite il token di conferma fornito in `cmd` e restituisce l'utente con l'account confermato o un errore in caso di fallimento
====== VerifyConfirmAccountTokenUseCase
*Metodi:*
- VerifyConfirmAccountToken(cmd VerifyConfirmAccountTokenCommand) error: Verificare il token di conferma dell'account fornito in `cmd` e restituisce un errore in caso di fallimento
====== VerifyForgotPasswordTokenUseCase
*Metodi:*
- VerifyForgotPasswordToken(cmd VerifyForgotPasswordTokenCommand) error: Verificare il token per la reimpostazione della password fornito in `cmd` e restituisce un errore in caso di fallimento
====== RequestForgotPasswordUseCase
*Metodi:*
- RequestForgotPassword(cmd RequestForgotPasswordCommand) error: Richiedere la reimpostazione della password per un utente specifico e restituisce un errore in caso di fallimento
====== ConfirmForgotPasswordUseCase
*Metodi:*
- ConfirmForgotPassword(cmd ConfirmForgotPasswordCommand) error: Confermare la reimpostazione della password per un utente specifico tramite il token e la nuova password forniti in `cmd` e restituisce un errore in caso di fallimento
====== ChangePasswordUseCase
*Metodi:*
- ChangePassword(cmd ChangePasswordCommand) error: Cambiare la password per un utente specifico tramite i dati di autenticazione e la nuova password forniti in `cmd` e restituisce un errore in caso di fallimento

===== Commands
I comandi usati dagli _use case_ di `Controller` sono i seguenti:
- *`LoginUserCommand`* : Comando usato per ottenere un gateway specifico, contiene i seguenti campi:
  - `TenantId`: UUID del gateway da ottenere
  - `Email`: indirizzo email dell'utente che ha richiesto il gateway
  - `Password`: password dell'utente che ha richiesto il gateway

- *`LogoutUserCommand`*: Comando usato per ottenere tutti i gateway, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `requester`: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC]
  - `UserId`: UUID dell'utente che ha richiesto il logout, usato per disloggare l'utente dal sistema

- *`ConfirmAccountCommand`*: Comando usato per ottenere i gateway di un tenants specifico, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Token`: stringa rappresentante il token di conferma dell'account
  - `NewPassword`: stringa rappresentante la nuova password da impostare per l'utente

- *`VerifyConfirmAccountTokenCommand`*: Comando usato per ottenere un gateway specifico di un tenant specifico, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Token`: stringa rappresentante il token di conferma dell'account

- *`VerifyForgotPasswordTokenCommand`*: Comando usato per commissionare un gateway, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Email`: indirizzo email dell'utente che ha richiesto il gateway

- *`RequestForgotPasswordCommand`*: Comando usato per decommissionare un gateway, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Email`: indirizzo email dell'utente che ha richiesto il gateway

- *`ConfirmForgotPasswordCommand`*: Comando usato per interrompere un gateway, contiene i seguenti campi:
  - `TenantId`: UUID del tenant di cui ottenere i gateway
  - `Token`: stringa rappresentante il token di conferma dell'account
  - `NewPassword`: stringa rappresentante la nuova password da impostare per l'utente

- *`ChangePasswordCommand`*: Comando usato per resettare un gateway, contiene i seguenti campi:
  - `Requester identity.Requester`: Dati dell'utente richiedente (vd. @backend-shared-identity) che vengono usati per il #gloss[RBAC]
  - `NewPassword`: stringa rappresentante la nuova password da impostare per l'utente
  - `OldPassword`: stringa rappresentante la vecchia password dell'utente


===== Services

====== Change Password Service
Implemeta le interfaccie VerifyForgotPasswordTokenUseCase, RequestForgotPasswordUseCase, ConfirmForgotPasswordUseCase, ChangePasswordUseCase.

*Attributi*

- *`log *zap.Logger`*: Riferimento al logger zap
- *`tokenGenerator crypto.SecurityTokenGenerator`*: _Outbound port_ usata per generare i token per la reimpostazione della password
- *`hasher crypto.SecretHasher`*: _Outbound port_ usata per hashare le password
- *`forgotPasswordTokenPort ForgotPasswordTokenPort`*: _Outbound port_ usata per ottenere informazioni sui token per la reimpostazione della password
- *`sendChangePasswordEmailPort SendForgotPasswordEmailPort`*: _Outbound port_ usata per inviare le email per la reimpostazione della password
- *`getUserPort user.GetUserPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico user
- *`saveUserPort user.SaveUserPort`*: _Outbound port_ usata per salvare un user

*Funzione di costruzione* :NewChangePasswordService (log \*zap.Logger, tokenGenerator crypto.SecurityTokenGenerator, hasher crypto.SecretHasher, forgotPasswordTokenPort ForgotPasswordTokenPort, sendChangePasswordEmailPort SendForgotPasswordEmailPort, getUserPort user.GetUserPort, saveUserPort user.SaveUserPort) \* ChangePasswordService

====== Service Confirm User Account
Implemeta le interfaccie ConfirmAccountUseCase, VerifyConfirmAccountTokenUseCase.

*Attributi*
- *`confirmAccountTokenPort ConfirmAccountTokenPort`* : _Outbound port_ usata per ottenere informazioni sui token di conferma dell'account
- *`saveUserPort user.SaveUserPort`*: _Outbound port_ usata per salvare un user
- *`getUserPort user.GetUserPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico user
- *`log *zap.Logger`*: Riferimento al logger zap
- *`hasher crypto.SecretHasher`*: _Outbound port_ usata per hashare le password

*Funzione di costruzione* :NewConfirmUserAccountService(confirmAccountTokenPort ConfirmAccountTokenPort, saveUserPort user.SaveUserPort, getUserPort user.GetUserPort, log \*zap.Logger, hasher crypto.SecretHasher) \*ConfirmUserAccountService

====== Service Session
Implemeta le interfaccie LoginUserUseCase, LogoutUserUseCase.

*Attributi*
- *`getUserPort user.GetUserPort`*: _Outbound port_ usata per ottenere informazioni su uno specifico user
- *`hasher crypto.SecretHasher`*: _Outbound port_ usata per hashare le password

*Funzione di costruzione* :NewSessionService(getUserPort user.GetUserPort, hasher crypto.SecretHasher) \*SessionService

===== Dominio

====== ForgotPasswordToken
Rappresento i token JWT usati per la reimpostazione della password, contengono le seguenti informazioni:

*Attributi:*
- *`Token`*: stringa rappresentante il token di reimpostazione della password
- *`TenantID`*: UUID del tenant a cui il token è associato
- *`UserID`*: UUID dell'utente a cui il token è associato
- *`ExpirationDate`*: Data di scadenza del token


*Metodi:*
- *`IsExpired() bool`*: Restituisce true se il token è scaduto, false altrimenti


====== ConfirmAccountToken
Rappresenta un token per la conferma di un account appena creato.
- *`Token`*: stringa rappresentante il token di conferma dell'account
- *`TenantID`*: UUID del tenant a cui il token è associato
- *`UserID`*: UUID dell'utente a cui il token è associato
- *`ExpirationDate`*: Data di scadenza del token

*Metodi:*
- *`IsExpired() bool`*: Restituisce true se il token è scaduto, false altrimenti


=====  Outbound ports – Database
In questa sezione sono riportate le descrizioni delle outbound port che hanno la responsabilità di comunicare con il database.

//TODO: mettere svg 
/*
#figure(
  image("../../assets/c4/backend/gateway/hello/hello.svg", width:100%),
  caption: [Cloud Backend -- Code Diagram per `gateway/hello`],
)
*/

====== ForgotPasswordTokenPort
*Metodi*
- *`NewForgotPasswordToken(user user.User) (string, error)`*: Crea un nuovo token per la reimpostazione della password. Restituisce il token creato o un errore in caso di fallimento.
- *`DeleteForgotPasswordToken(tenantId uuid.UUID, tokenString string) error`*: Elimina un token per la reimpostazione della password specifico tramite un token stringa e l'UUID del tenant. Restituisce un errore in caso di fallimento.
- *`GetTenantMemberByForgotPasswordToken(tenantId uuid.UUID, tokenString string) (userFound user.User, err error)`*: Ottiene un tenant member specifico tramite un token per la reimpostazione della password e l'UUID del tenant. Restituisce il tenant member trovato o un errore in caso di fallimento.
- *GetSuperAdminByForgotPasswordToken(tokenString string) (userFound user.User, err error)*: Ottiene un super admin specifico tramite un token per la reimpostazione della password. Restituisce il super admin trovato o un errore in caso di fallimento.
-*GetTenantForgotPasswordToken(tenantId uuid.UUID, tokenString string) (token ForgotPasswordToken, err error)*: Ottiene un token per la reimpostazione della password specifico tramite un token stringa e l'UUID del tenant. Restituisce il token trovato o un errore in caso di fallimento.
- *GetSuperAdminForgotPasswordToken(tokenString string) (token ForgotPasswordToken, err error)*: Ottiene un token per la reimpostazione della password specifico tramite un token stringa. Restituisce il token trovato o un errore in caso di fallimento.

====== ChangePasswordTokenPort
*Metodi*
- *`NewChangePasswordToken(user user.User) (string, error)`*: Crea un nuovo token per la reimpostazione della password. Restituisce il token creato o un errore in caso di fallimento.
- *`DeleteChangePasswordToken(tenantId uuid.UUID, tokenString string) error`*: Elimina un token per il cambio della password specifico tramite un token stringa e l'UUID del tenant. Restituisce un errore in caso di fallimento.
- *`GetTenantMemberByChangePasswordToken(tenantId uuid.UUID, tokenString string) (userFound user.User, err error)`*: Ottiene un tenant member specifico tramite un token per la reimpostazione della password e l'UUID del tenant. Restituisce il tenant member trovato o un errore in caso di fallimento.
- *GetSuperAdminByChangePasswordToken(tokenString string) (userFound user.User, err error)*: Ottiene un super admin specifico tramite un token per la reimpostazione della password. Restituisce il super admin trovato o un errore in caso di fallimento.
-*GetTenantChangePasswordToken(tenantId uuid.UUID, tokenString string) (token ChangePasswordToken, err error)*: Ottiene un token per la reimpostazione della password specifico tramite un token stringa e l'UUID del tenant. Restituisce il token trovato o un errore in caso di fallimento.
- *GetSuperAdminChangePasswordToken(tokenString string) (token ChangePasswordToken, err error)*: Ottiene un token per la reimpostazione della password specifico tramite un token stringa. Restituisce il token trovato o un errore in caso di fallimento.


===== Outbound adapter per database – ConfirmTokenAdapter
ConfirmTokenAdapter è l’outbound port usata per comunicare con il database per le operazioni CRUD sui token di conferma, traducendo l’interfaccia di dominio nell’interfaccia di PostgreSQL e viceversa.

*Interfaccie implementate*
- *`ForgetPassowordTokenTokenPort`*

*Attributi*
- *`repo ConfirmTokenPostgreRepository`*: Riferimento al repository per i token di conferma

===== Outbound adapter per database – ChangePasswordTokenPgAdapter
ChangePasswordTokenPgAdapter è l’outbound port usata per comunicare con il database per le operazioni CRUD sui token di cambio password, traducendo l’interfaccia di dominio nell’interfaccia di PostgreSQL e viceversa.

*Interfaccie implementate*
- *`ChangePasswordTokenPort`*

*Attributi*
- *`repo ChangePasswordTokenPostgreRepository`*: Riferimento al repository per i token di cambio password


===== Repository per database – SuperAdminConfirmTokenRepository, SuperAdminConfirmTokenEntity

*Metodi*
- *`SaveToken(entity *SuperAdminConfirmTokenEntity) (err error)`*: Salva un token di conferma per un super admin nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`DeleteToken(entity *SuperAdminConfirmTokenEntity) (err error)`*: Elimina un token di conferma per un super admin nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`GetToken(tenantId string, tokenString string) (entity *SuperAdminConfirmTokenEntity, err error)`*: Restituisce un token di conferma per un super admin specifico tramite un token stringa e l'UUID del tenant. Restituisce il token trovato o un errore in caso di fallimento.
- *`GetTokenWithUser(tenantId string, tokenString string) (entity *SuperAdminConfirmTokenEntity, err error)`*: Restituisce un token di conferma per un super admin specifico tramite un token stringa e l'UUID del tenant, includendo le informazioni sull'utente associato al token. Restituisce il token trovato o un errore in caso di fallimento.

====== SuperAdminConfirmTokenPgRepository

Struct concreta che implementa SuperAdminConfirmTokenRepository, in modo tale da comunicare con PostgreSQL.

*Attributi*
- *`db clouddb.CloudDBConnection`*: Riferimento al database PostgreSQL

*Funzione di costruzione*: NewSuperAdminConfirmTokenPostgreRepository(db clouddb.CloudDBConnection)\* SuperAdminConfirmTokenPostgreRepository

===== Repository per database – SuperAdminPasswordTokenRepository, SuperAdminPasswordTokenEntity

*Metodi*
- *`SaveToken(entity *SuperAdminPasswordTokenEntity) (err error)`*: Salva un token di ripristino per un super admin nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`DeleteToken(entity *SuperAdminPasswordTokenEntity) (err error)`*: Elimina un token di ripristino per un super admin nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`GetToken(tenantId string, tokenString string) (entity *SuperAdminPasswordTokenEntity, err error)`*: Restituisce un token di ripristino per un super admin specifico tramite un token stringa e l'UUID del tenant. Restituisce il token trovato o un errore in caso di fallimento.
- *`GetTokenWithUser(tenantId string, tokenString string) (entity *SuperAdminPasswordTokenEntity, err error)`*: Restituisce un token di ripristino per un super admin specifico tramite un token stringa e l'UUID del tenant, includendo le informazioni sull'utente associato al token. Restituisce il token trovato o un errore in caso di fallimento.

====== SuperAdminPasswordTokenPgRepository

Struct concreta che implementa SuperAdminPasswordTokenRepository, in modo tale da comunicare con PostgreSQL.

*Attributi*
- *`db clouddb.CloudDBConnection`*: Riferimento al database PostgreSQL

*Funzione di costruzione*: NewSuperAdminPasswordTokenPostgreRepository(db clouddb.CloudDBConnection)\* SuperAdminPasswordTokenPostgreRepository


===== Repository per database – TenantPasswordTokenRepository, TenantPasswordTokenEntity

*Metodi*
- *`SaveToken(entity *TenantPasswordTokenEntity) (err error)`*: Salva un token di ripristino per un tenant nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`DeleteToken(entity *TenantPasswordTokenEntity) (err error)`*: Elimina un token di ripristino per un tenant nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`GetToken(tenantId string, tokenString string) (entity *TenantPasswordTokenEntity, err error)`*: Restituisce un token di ripristino per un tenant specifico tramite un token stringa e l'UUID del tenant. Restituisce il token trovato o un errore in caso di fallimento.
- *`GetTokenWithUser(tenantId string, tokenString string) (entity *TenantPasswordTokenEntity, err error)`*: Restituisce un token di ripristino per un tenant specifico tramite un token stringa e l'UUID del tenant, includendo le informazioni sull'utente associato al token. Restituisce il token trovato o un errore in caso di fallimento.

====== TenantPasswordTokenPgRepository

Struct concreta che implementa TenantPasswordTokenRepository, in modo tale da comunicare con PostgreSQL.

*Attributi*
- *`db clouddb.CloudDBConnection`*: Riferimento al database PostgreSQL

*Funzione di costruzione*: NewTenantPasswordTokenPostgreRepository(db clouddb.CloudDBConnection)\* TenantPasswordTokenPostgreRepository

===== Repository per database – TenantConfirmTokenRepository, TenantConfirmTokenEntity

*Metodi*
- *`SaveToken(entity *TenantConfirmTokenEntity) (err error)`*: Salva un token di conferma per un tenant nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`DeleteToken(entity *TenantConfirmTokenEntity) (err error)`*: Elimina un token di conferma per un tenant nel database tramite un'entità di database. Restituisce un errore in caso di fallimento.
- *`GetToken(tenantId string, tokenString string) (entity *TenantConfirmTokenEntity, err error)`*: Restituisce un token di conferma per un tenant specifico tramite un token stringa e l'UUID del tenant. Restituisce il token trovato o un errore in caso di fallimento.
- *`GetTokenWithUser(tenantId string, tokenString string) (entity *TenantConfirmTokenEntity, err error)`*: Restituisce un token di conferma per un tenant specifico tramite un token stringa e l'UUID del tenant, includendo le informazioni sull'utente associato al token. Restituisce il token trovato o un errore in caso di fallimento.

====== TenantConfirmTokenPgRepository

Struct concreta che implementa TenantConfirmTokenRepository, in modo tale da comunicare con PostgreSQL.

*Attributi*
- *`db clouddb.CloudDBConnection`*: Riferimento al database PostgreSQL

*Funzione di costruzione*: NewTenantConfirmTokenPostgreRepository(db clouddb.CloudDBConnection)\* TenantConfirmTokenPostgreRepository



====== SuperAdminPasswordTokenEntity

Entità di database che rappresenta la tabella SuperAdminPasswordToken nel database

*Attributi*
- *`Token`*: UUID del token
- *`UserId`*: ID dell'utente al quale il token è associato
- *`SuperAdmin user.SuperAdminEntity`*: Riferimento all'entità dell'super admin associato al token
- *`CreatedAt`*: Data di creazione del token
- *`ExpiresAt`*: Data di scadenza del token


====== SuperAdminConfirmTokenEntity
Entità di database che rappresenta la tabella SuperAdminConfirmToken nel database
*Attributi*
- *`Token`*: UUID del token
- *`UserId`*: ID dell'utente al quale il token è associato
- *`SuperAdmin user.SuperAdminEntity`*: Riferimento all'entità dell'super admin associato al token
- *`CreatedAt`*: Data di creazione del token
- *`ExpiresAt`*: Data di scadenza del token

====== TenantPasswordTokenEntity

Entità di database che rappresenta la tabella TenantPasswordToken nel database

*Attributi*
- *`Token`*: UUID del token
- *`UserId`*: ID dell'utente al quale il token è associato
- *`TenantMember user.TenantMemberEntity`*: Riferimento all'entità del tenant member associato al token
- *`CreatedAt`*: Data di creazione del token
- *`ExpiresAt`*: Data di scadenza del token

====== TenantConfirmTokenEntity

Entità di database che rappresenta la tabella TenantConfirmToken nel database

*Attributi*
- *`Token`*: UUID del token
- *`UserId`*: ID dell'utente al quale il token è associato
- *`TenantMember user.TenantMemberEntity`*: Riferimento all'entità del tenant member associato al token
- *`CreatedAt`*: Data di creazione del token
- *`ExpiresAt`*: Data di scadenza del token

