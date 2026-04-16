# Autenticazione <!--raw-typst <dashboard-backend> -->
Il sistema prevede diverse funzionalità a supporto dell'autenticazione degli utenti, tra cui: login, logout, cambio password, recupero password e impostazione prima password.

Le sezioni seguenti descrivono in dettaglio come utilizzare queste funzionalità per il microservizio **Dashboard Backend**.

Il sistema utilizza password con vincolo di lunghezza minima di 8 caratteri.

## Login
Per accedere al sistema, gli utenti devono effettuare il login fornendo le proprie credenziali (username e password) e selezionando il tenant di appartenenza. In risposta, il sistema restituisce un token di autenticazione (JWT) da utilizzare per le richieste successive.

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
Il token JWT restituito al momento del login deve essere incluso nell'header `Authorization` di tutte le richieste al microservizio **Dashboard Backend** che richiedono autenticazione. Il formato dell'intestazione è il seguente:
```json
Authorization: Bearer <jwt_token>
```


## Logout
Il sistema prevede la possibilità di effettuare il logout, invalidando il token JWT in uso. La richiesta in questione allo stato attuale non fa altro che restituire una risposta di successo, ma in futuro potrebbe essere implementata una logica di invalidamento del token JWT e di logging dell'evento di logout.

### Richiesta
- **POST** `/api/v1/auth/logout`
- Autenticazione: richiesta

### Risposta
```json
{
  "result": "string"
}
```

## Richiesta cambio password per password dimenticata
Il sistema prevede la funzionalità di recupero password, che consente agli utenti di richiedere un cambio password nel caso in cui abbiano dimenticato la propria password. La richiesta invia una email all'indirizzo associato all'account dell'utente con le istruzioni per impostare una nuova password. La richiesta ha una scadenza configurabile nel file `.env` del microservizio **Dashboard Backend**.

### Richiesta
- **POST** `/api/v1/auth/forgot_password/request`
- Autenticazione: non richiesta
- Corpo della richiesta:
```json
{
  "email": "string<email>",
  "tenant_id": "string<uuid>" // campo opzionale, il super admin non deve specificarlo
}
```

### Risposta
```json
{
  "result": "string"
}
```

## Verifica token per cambio password
Il sistema prevede la funzionalità di verifica del token per il cambio password, che consente ai client di verificare la validità del token ricevuto tramite email prima di procedere con il cambio password. La richiesta restituisce una risposta di successo se il token è valido, altrimenti restituisce un errore.

### Richiesta
- **POST** `/api/v1/auth/forgot_password/verify_token`
- Autenticazione: non richiesta
- Corpo della richiesta:
```json
{
    "token": "string",
    "tenant_id": "string<uuid>" // campo opzionale, il super admin non deve specificarlo
}
```

### Risposta
```json
{
    "result": "string"
}
```

## Cambio password
Il sistema prevede la funzionalità di cambio password, che consente agli utenti di impostare una nuova password utilizzando un token valido ricevuto tramite email. La richiesta aggiorna la password dell'utente associato al token e restituisce una risposta di successo.

### Richiesta
- **POST** `/api/v1/auth/forgot_password`
- Autenticazione: non richiesta
- Corpo della richiesta:
```json
{
    "token": "string",
    "new_password": "string",
    "tenant_id": "string<uuid>" // campo opzionale, il super admin non deve specificarlo
}
```

### Risposta
```json
{
    "result": "string"
}
```

## Impostazione prima password
Il sistema prevede la funzionalità di impostazione della prima password, che consente agli utenti di impostare la propria password al primo accesso, utilizzando il token ricevuto tramite email. La richiesta aggiorna la password dell'utente associato al token e restituisce una risposta di successo.

### Richiesta
- **POST** `/api/v1/auth/confirm_account`
- Autenticazione: non richiesta
- Corpo della richiesta:
```json
{
    "token": "string",
    "new_password": "string",
    "tenant_id": "string<uuid>" // campo opzionale, il super admin non deve specificarlo
}
```

### Risposta
```json
{
    "result": "string"
}
```

## Verifica token per impostazione prima password
Il sistema prevede la funzionalità di verifica del token per l'impostazione della prima password, che consente ai client di verificare la validità del token ricevuto tramite email prima di procedere con l'impostazione della prima password. La richiesta restituisce una risposta di successo se il token è valido, altrimenti restituisce un errore.

### Richiesta
- **POST** `/api/v1/auth/confirm_account/verify_token`
- Autenticazione: non richiesta
- Corpo della richiesta:
```json
{
    "token": "string",
    "tenant_id": "string<uuid>", // campo opzionale, il super admin non deve specificarlo
}
```

### Risposta
```json
{
    "result": "string"
}
```

## Cambio password da parte dell'utente autenticato
Il sistema prevede la funzionalità di cambio password per gli utenti autenticati, che consente agli utenti di cambiare la propria password fornendo la password attuale e la nuova password desiderata. La richiesta aggiorna la password dell'utente autenticato e restituisce una risposta di successo.

### Richiesta
- **POST** `/api/v1/auth/change_password`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "old_password": "string",
    "new_password": "string"
}
```

### Risposta
```json
{
    "result": "string"
}
```