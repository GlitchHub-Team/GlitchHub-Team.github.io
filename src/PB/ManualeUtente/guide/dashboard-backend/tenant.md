# Gestione tenant
Il sistema prevede la possibilità di gestire i tenant, che possono essere creati e cancellati dai **super admin**. Ai tenant sono associati gateway, sensori simulati, dati IoT e utenti con ruoli **tenant admin** e **tenant user**.

Il tenant, in particolare, rappresenta un'organizzazione che si rivolge al sistema per utilizzare i servizi offerti. È importante che i dati di ogni tenant siano isolati e accessibili solo agli utenti autorizzati, in modo da garantire la sicurezza e la privacy dei dati.

## Creazione tenant
La creazione di un tenant è disponibile solo ai **super admin**. La richiesta crea un nuovo tenant nel sistema e crea gli **schema**{{gloss}} nei database per garantire l'isolamento logico.   

### Richiesta
- **POST** `/api/v1/tenant`
- Autenticazione: richiesta
- Corpo della richiesta:
```json
{
    "tenant_name": "string",
    "can_impersonate": boolean // indica se il tenant permette al super admin di accedere ai propri dati
}
```

### Risposta
```json
{
    "tenant_id": "string<uuid>",
    "tenant_name": "string",
    "can_impersonate": boolean
}
```

## Eliminazione tenant
L'eliminazione di un tenant è disponibile solo ai **super admin**. La richiesta elimina il tenant identificato dall'ID e tutti i dati ad esso associati, inclusi gateway, sensori simulati e utenti con ruoli **tenant admin** e **tenant user**.

### Richiesta
- **DELETE** `/api/v1/tenant/{tenant_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "tenant_id": "string<uuid>",
    "name": "string",
    "can_impersonate": boolean
}
```

## Ottenimento del singolo tenant per ID
L'ottenimento del singolo tenant per ID è disponibile solo ai **super admin**, inoltre gli utenti **tenant admin** e **tenant user** possono ottenere solo il tenant associato al proprio tenant. La richiesta restituisce i dettagli del tenant identificato dall'ID.

### Richiesta
- **GET** `/api/v1/tenant/{tenant_id}`
- Autenticazione: richiesta

### Risposta
```json
{
    "tenant_id": "string<uuid>",
    "tenant_name": "string",
    "can_impersonate": boolean
}
```

## Ottenimento di tutti i tenant
L'ottenimento di tutti i tenant è disponibile solo ai **super admin**. La richiesta restituisce una lista di tutti i tenant presenti nel sistema.

### Richiesta
- **GET** `/api/v1/tenants?page={page}&limit={limit}&impersonable={impersonable}`
- Autenticazione: richiesta
- Parametri nell'URL:
  - `page`: numero di pagina (opzionale, default: 1)
  - `limit`: numero di elementi per pagina (opzionale, default: 25)
  - `impersonable`: filtro booleano per ottenere solo i tenant che permettono al super admin di accedere ai propri dati (opzionale)

### Risposta
```json
{
    "count": 0, // numero di tenant restituiti nella risposta
    "total": 0, // numero totale di tenant presenti nel sistema
    "tenants": [
        {
            "tenant_id": "string<uuid>",
            "tenant_name": "string",
            "can_impersonate": boolean
        }
    ]
}
```

## Ottenimento di tutti i tenant per login
L'ottenimento di tutti i tenant per la funzionalità di login è utile per popolare la lista dei tenant disponibili al momento dell'accesso. La richiesta non prevede autenticazione e restituisce una lista di tutti i tenant presenti nel sistema, in modo che gli utenti possano selezionare il tenant di appartenenza al momento del login.

### Richiesta
- **GET** `/api/v1/all_tenants`
- Autenticazione: non richiesta

## Risposta
```json
{
    "tenants": [
        {
            "tenant_id": "string<uuid>",
            "tenant_name": "string"
        }
    ]
}
```