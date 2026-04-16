# Amministrazione di Sistema
Le funzionalità di amministrazione sono riservate agli utenti con privilegi elevati (Super Admin e Tenant Admin) e consentono la gestione delle entità fondamentali che compongono l'ecosistema multi-tenant.

## Gestione tenant (Tenant Management)
Il modulo **#gloss("Tenant Manager")**{{gloss}} permette ai Super Admin di amministrare le organizzazioni censite nel sistema.

### Configurazione e creazione
Attraverso il dialogo **#gloss("TenantFormDialog")**{{gloss}}, è possibile aggiungere nuove organizzazioni definendo:
- **Nome**: identificativo univoco del tenant;
- **Permesso di impersonificazione**: tramite il checkbox `canImpersonate`, l'amministratore abilita o disabilita la possibilità per i Super Admin di accedere ai dati operativi di quel tenant.

### Impersonificazione e navigazione contestuale
La **#gloss("tenant-table")**{{gloss}} espone azioni specifiche per ogni organizzazione:
- **Accesso dashboard**: Cliccando sull'icona `dashboard`, il Super Admin "entra" nell'ambiente del tenant selezionato. Il sistema aggiunge il `tenantId` ai parametri di ricerca dell'URL per filtrare gateway e sensori.
- **Gestione utenti tenant**: l'icona `people` reindirizza direttamente alla gestione degli utenti specifica per quel tenant.

## Gestione utenti (User Management)
Il modulo **#gloss("User Manager")**{{gloss}} gestisce l'anagrafica degli account, supportando flussi di lavoro diversi per Super Admin e Tenant Admin.

### Creazione e invito
La creazione di un utente non prevede l'impostazione immediata di una password, ma attiva un processo di invito:
1. L'amministratore inserisce `username` ed `email` nel **#gloss("UserFormDialog")**{{gloss}}.
2. Se il ruolo creato è `TENANT_ADMIN` o `TENANT_USER`, è necessario associare l'utente a un tenant (campo bloccato se si opera già nel contesto di un tenant specifico).
3. Al salvataggio, il sistema invia un'email di attivazione (verificabile su **#gloss("Mailtrap")**{{gloss}} in ambiente di test).

### Filtri e tabella utenti
L'interfaccia si adatta dinamicamente per mostrare i dati pertinenti:
- **Tab ruoli**: permette di commutare rapidamente tra la lista dei "Tenant User" e dei "Tenant Admin".
- **Selezione tenant**: i Super Admin dispongono di un menu a tendina per filtrare la lista utenti in base all'organizzazione di appartenenza.
- **Sicurezza**: nella **#gloss("user-table")**{{gloss}}, il sistema inibisce automaticamente il pulsante di eliminazione per l'utente correntemente loggato, impedendo l'auto-cancellazione accidentale del proprio profilo.

### Modello dati configurazione utente
Ogni nuova utenza viene creata seguendo la struttura **#gloss("UserConfig")**{{gloss}}:

```json
{
  "email": "string",    // Indirizzo email per l'invio del link
  "username": "string"  // Nome utente visualizzato nell'header
}
```

Al termine di ogni operazione amministrativa (creazione, eliminazione o cambio permessi), il sistema aggiorna la vista e fornisce un feedback visivo tramite #gloss("MatSnackBar"){{gloss}}.