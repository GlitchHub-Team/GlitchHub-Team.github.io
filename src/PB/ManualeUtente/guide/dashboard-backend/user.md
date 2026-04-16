# Gestione utenti
Il sistema prevede la possibilità di gestire utenti, che possono essere creati e cancellati dagli utenti autorizzati. Gli utenti possono avere diversi ruoli, tra cui **super admin**, **tenant admin** e **tenant user**, che determinano le autorizzazioni e i permessi di accesso alle funzionalità del sistema.

## Creazione super admin
La creazione di un super admin è disponibile solo ai super admin esistenti. La richiesta crea un nuovo super admin nel sistema ed invia una email all'indirizzo specificato con le istruzioni per impostare la password.

### Richiesta
- **POST** `/api/v1/super_admin`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "username": "string",
    "email": "string" // l'email deve essere valida, è necessaria per ricevere le istruzioni per impostare la password
}
```

### Risposta
```json
{
    "user_id": 1, // id autoincrementale dell'utente creato
    "username": "string",
    "email": "string",
    "user_role": "super_admin"
}
```

I campi possibili per `user_role` sono: `super_admin`, `tenant_admin` e `tenant_user`.

## Creazione tenant admin
La creazione di un tenant admin è disponibile solo ai **super admin** e ai **tenant admin**, naturalmente i tenant admin possono creare altri tenant admin all'interno del loro tenant. La richiesta crea un nuovo tenant admin nel sistema ed invia una email all'indirizzo specificato con le istruzioni per impostare la password.

### Richiesta
- **POST** `/api/v1/tenant/{tenant_id}/tenant_admin`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "username": "string",
    "email": "string" // l'email deve essere valida, è necessaria per ricevere le istruzioni per impostare la password
}
```

### Risposta
```json
{
    "user_id": 1, // id autoincrementale dell'utente creato
    "username": "string",
    "email": "string",
    "tenant_id": "string<uuid>",
    "user_role": "tenant_admin"
}
```

## Creazione tenant user
La creazione di un tenant user è disponibile solo ai **super admin** e ai **tenant admin**, naturalmente i tenant admin possono creare anche tenant user all'interno del loro tenant. La richiesta crea un nuovo tenant user nel sistema ed invia una email all'indirizzo specificato con le istruzioni per impostare la password.

### Richiesta
- **POST** `/api/v1/tenant/{tenant_id}/tenant_user`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "username": "string",
    "email": "string" // l'email deve essere valida, è necessaria per ricevere le istruzioni per impostare la password
}
```

### Risposta
```json
{
    "user_id": 1, // id autoincrementale dell'utente creato
    "username": "string",
    "email": "string",
    "tenant_id": "string<uuid>",
    "user_role": "tenant_user"
}
```

## Eliminazione super admin
L'eliminazione di un super admin è disponibile solo ai super admin esistenti. La richiesta elimina il super admin identificato dall'ID, ma restituisce errore se si tenta di eliminare l'ultimo super admin presente nel sistema.

### Richiesta
- **DELETE** `/api/v1/super_admin/{user_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "user_id": 1,
    "username": "string",
    "email": "string",
    "user_role": "super_admin"
}
```

## Eliminazione tenant admin
L'eliminazione di un tenant admin è disponibile solo ai **super admin** e ai **tenant admin**, naturalmente i tenant admin possono eliminare solo altri tenant admin all'interno del loro tenant. La richiesta elimina il tenant admin identificato dall'ID, ma restituisce errore se si tenta di eliminare l'ultimo tenant admin presente all'interno del tenant.

### Richiesta
- **DELETE** `/api/v1/tenant/{tenant_id}/tenant_admin/{user_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "user_id": 1,
    "username": "string",
    "email": "string",
    "tenant_id": "string<uuid>",
    "user_role": "tenant_admin"
}
```

## Eliminazione tenant user
L'eliminazione di un tenant user è disponibile solo ai **super admin** e ai **tenant admin**, naturalmente i tenant admin possono eliminare solo altri tenant user all'interno del loro tenant. Non è presente nessun vincolo nel numero minimo di tenant user che possono esistere all'interno di un tenant. La richiesta elimina il tenant user identificato dall'ID.

### Richiesta
- **DELETE** `/api/v1/tenant/{tenant_id}/tenant_user/{user_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "user_id": 1,
    "username": "string",
    "email": "string",
    "tenant_id": "string<uuid>",
    "user_role": "tenant_user"
}
```

## Ottenimento di un tenant user per ID
L'ottenimento di un tenant user per ID è disponibile a tutti i **super admin**, inoltre gli utenti **tenant admin** possono ottenere solo i tenant user associati al proprio tenant, mentre gli utenti **tenant_user** possono ottenere solo i propri dati. La richiesta restituisce i dettagli del tenant user identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/tenant_user/{user_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "user_id": 1,
    "username": "string",
    "email": "string",
    "tenant_id": "string<uuid>",
    "user_role": "tenant_user"
}
```

## Ottenimento di un tenant admin per ID
L'ottenimento di un tenant admin per ID è disponibile a tutti i **super admin**, inoltre gli utenti **tenant admin** possono ottenere solo i tenant admin associati al proprio tenant. La richiesta restituisce i dettagli del tenant admin identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/tenant_admin/{user_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "user_id": 1,
    "username": "string",
    "email": "string",
    "tenant_id": "string<uuid>",
    "user_role": "tenant_admin"
}
``` 

## Ottenimento di un super admin per ID
L'ottenimento di un super admin per ID è disponibile solo ai super admin esistenti. La richiesta restituisce i dettagli del super admin identificato dall'ID.

### Richiesta
- **GET** `/api/v1/super_admin/{user_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "user_id": 1,
    "username": "string",
    "email": "string",
    "user_role": "super_admin"
}
```

## Ottenimento di tutti i tenant user per tenant
L'ottenimento di tutti i tenant user associati ad un tenant è disponibile a tutti i **super admin**, inoltre gli utenti **tenant admin** possono ottenere solo i tenant user associati al proprio tenant. La richiesta restituisce una lista di tutti i tenant user associati al tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/tenant_users?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di tenant user restituiti nella risposta
    "total": 0, // numero totale di tenant user associati al tenant
    "users": [
        {
            "user_id": 1,
            "username": "string",
            "email": "string",
            "tenant_id": "string<uuid>",
            "user_role": "tenant_user"
        }
    ]
}
```

## Ottenimento di tutti i tenant admin per tenant
L'ottenimento di tutti i tenant admin associati ad un tenant è disponibile a tutti i **super admin**, inoltre gli utenti **tenant admin** possono ottenere solo i tenant admin associati al proprio tenant. La richiesta restituisce una lista di tutti i tenant admin associati al tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/tenant_admins?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di tenant admin restituiti nella risposta
    "total": 0, // numero totale di tenant admin associati al tenant
    "users": [
        {
            "user_id": 1,
            "username": "string",
            "email": "string",
            "tenant_id": "string<uuid>",
            "user_role": "tenant_admin"
        }
    ]
}
```

## Ottenimento di tutti i super admin
L'ottenimento di tutti i super admin è disponibile solo ai super admin esistenti. La richiesta restituisce una lista di tutti i super admin presenti nel sistema.

### Richiesta
- **GET** `/api/v1/super_admins?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di super admin restituiti nella risposta
    "total": 0, // numero totale di super admin presenti nel sistema
    "users": [
        {
            "user_id": 1,
            "username": "string",
            "email": "string",
            "user_role": "super_admin"
        }
    ]
}
```
