# Gestione utenti
Il sistema prevede la possibilità di gestire utenti, che possono essere creati e cancellati dagli utenti autorizzati. Gli utenti possono avere diversi ruoli, tra cui **Super Admin**, **Tenant Admin** e **Tenant User**, che determinano le autorizzazioni e i permessi di accesso alle funzionalità del sistema.

## Creazione Super Admin
La creazione di un **Super Admin** è disponibile solo ai **Super Admin** esistenti. La richiesta crea un nuovo **Super Admin** nel sistema ed invia una email all'indirizzo specificato con le istruzioni per impostare la password.

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

## Creazione Tenant Admin
La creazione di un **Tenant Admin** è disponibile solo ai **Super Admin** e ai **Tenant Admin** all'interno dello stesso tenant dell'admin creato. La richiesta crea un nuovo **Tenant Admin** nel sistema ed invia una email all'indirizzo specificato con le istruzioni per impostare la password.

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

## Creazione Tenant User
La creazione di un **Tenant User** è disponibile solo ai **Super Admin** e ai **Tenant Admin** appartenenti allo stesso tenant dell'utente creato. La richiesta crea un nuovo **Tenant User** nel sistema ed invia una email all'indirizzo specificato con le istruzioni per impostare la password.

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

## Eliminazione Super Admin
L'eliminazione di un **Super Admin** è disponibile solo ai **Super Admin** esistenti. La richiesta elimina il **Super Admin** identificato dall'ID, ma restituisce errore se si tenta di eliminare l'ultimo **Super Admin** presente nel sistema.

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

## Eliminazione Tenant Admin
L'eliminazione di un **Tenant Admin** è disponibile solo ai **Super Admin** e ai **Tenant Admin**; tuttavia, i **Tenant Admin** possono eliminare esclusivamente altri **Tenant Admin** appartenenti al proprio tenant. La richiesta elimina il **Tenant Admin** identificato dall'ID, ma restituisce un errore se si tenta di eliminare l'ultimo **Tenant Admin** presente all'interno del tenant.

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

## Eliminazione Tenant User
L'eliminazione di un **Tenant User** è disponibile solo ai **Super Admin** e ai **Tenant Admin**; tuttavia, i **Tenant Admin** possono eliminare esclusivamente **Tenant User** appartenenti al proprio tenant. Non vi è alcun vincolo sul numero minimo di **Tenant User** che possono esistere all'interno di un tenant. La richiesta elimina il **Tenant User** identificato dall'ID.

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

## Ottenimento di un Tenant User per ID
L'ottenimento di un **Tenant User** per ID è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** possono visualizzare solo i **Tenant User** associati al proprio tenant, mentre gli utenti **Tenant User** possono visualizzare solo i propri dati. La richiesta restituisce i dettagli del **Tenant User** identificato dall'ID.

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

## Ottenimento di un Tenant Admin per ID
L'ottenimento di un **Tenant Admin** per ID è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** possono visualizzare solo i **Tenant Admin** associati al proprio tenant. La richiesta restituisce i dettagli del **Tenant Admin** identificato dall'ID.

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

## Ottenimento di un Super Admin per ID
L'ottenimento di un **Super Admin** per ID è disponibile solo ai **Super Admin** esistenti. La richiesta restituisce i dettagli del **Super Admin** identificato dall'ID.

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

## Ottenimento di tutti i Tenant User per tenant
L'ottenimento di tutti i **Tenant User** associati a un tenant è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** possono visualizzare solo i **Tenant User** associati al proprio tenant. La richiesta restituisce una lista di tutti i **Tenant User** associati al tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/tenant_users?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di Tenant User restituiti nella risposta
    "total": 0, // numero totale di Tenant User associati al tenant
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

## Ottenimento di tutti i Tenant Admin per tenant
L'ottenimento di tutti i **Tenant Admin** associati a un tenant è disponibile a tutti i **Super Admin**, inoltre gli utenti **Tenant Admin** possono visualizzare solo i **Tenant Admin** associati al proprio tenant. La richiesta restituisce una lista di tutti i **Tenant Admin** associati al tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}/tenant_admins?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di Tenant Admin restituiti nella risposta
    "total": 0, // numero totale di Tenant Admin associati al tenant
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

## Ottenimento di tutti i Super Admin
L'ottenimento di tutti i **Super Admin** è disponibile solo ai **Super Admin** esistenti. La richiesta restituisce una lista di tutti i **Super Admin** presenti nel sistema.

### Richiesta
- **GET** `/api/v1/super_admins?page={page}&limit={limit}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)

### Risposta
```json
{
    "count": 0, // numero di Super Admin restituiti nella risposta
    "total": 0, // numero totale di Super Admin presenti nel sistema
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
