# Autenticazione
Il sistema prevede diverse funzionalità a supporto dell'autenticazione degli utenti, tra cui: login, logout, cambio password, recupero password e impostazione prima password.

Le sezioni seguenti descrivono in dettaglio come utilizzare queste funzionalità per il microservizio **Dashboard Backend**.

## Login
Per accedere al sistema, gli utenti devono effettuare il login fornendo le proprie credenziali (username e password) e selezionando il tenant di appartenenza, in risposta il sistema restituisce un token di autenticazione (JWT) da utilizzare per le richieste successive.

### Richiesta
- **POST** `/api/v1/auth/login`
- Autenticazione: non richiesta
- Corpo della richiesta:
```json
{
  "username": "string",
  "password": "string",
  "tenantId": "string<uuid>" // campo opzionale, il super admin non deve specificarlo
}
```

### Risposta
```json
{
  "jwt": "string" // JWT da utilizzare per le richieste successive
}
```

### Utilizzo del token JWT
Il token JWT restituito al momento del login deve essere incluso nell'intestazione nell'header `Authorization` di tutte le richieste al microservizio **Dashboard Backend** che richiedono autenticazione. Il formato dell'intestazione è il seguente:
```json
Authorization: Bearer <jwt_token>
```


## Logout
...? cosa fa?

## Password dimenticata
Nel caso