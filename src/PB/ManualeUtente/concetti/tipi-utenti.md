# Tipi di utenti <!--raw-typst <tipiutenti> -->

Nel sistema multi-tenant, ogni Tenant<!--gloss[Tenant]--> accede ai propri dati isolati dagli altri tenant.

Le principali tipologie di utente sono:

- Il **Tenant User**;
- Il **Tenant Admin**;
- Il **Super Admin**.

## Tenant User

Il **Tenant User** è l'utente finale del tenant. Può utilizzare l'interfaccia e le API<!--gloss[API]--> per accedere ai dati del proprio tenant.

Azioni tipiche del Tenant User:

- **Autenticarsi** con le credenziali del proprio tenant;
- **Visualizzare** i dati dei sensori e dei gateway associati al tenant;
- **Consultare** le dashboard autorizzate per il proprio tenant;
- **Scaricare** report e informazioni consentite dal ruolo.

## Tenant Admin
L'**Tenant Admin** gestisce le risorse e le persone all'interno di un singolo tenant. Ha privilegi più ampi rispetto al Tenant User, ma limitati al proprio tenant.

Azioni tipiche del Tenant Admin:

- **Gestire** gli utenti del tenant e i relativi ruoli;
- **Configurare** i gateway, i sensori e le sorgenti dati del tenant;
- **Monitorare** lo stato operativo del tenant;
- **Visualizzare** report e metriche specifiche del tenant.

## Super Admin

Il **Super Admin** ha competenza globale su tutto il sistema multi-tenant. Può gestire tenant, utenti e controllare l'intera infrastruttura.

Azioni tipiche del Super Admin:

- **Creare** e gestire tenant;
- **Assegnare** ruoli globali e tenant-specifici;
- **Monitorare** le metriche di sistema e l'operatività dei servizi;
- **Gestire** i permessi e l'accesso alle dashboard globali.

## Riepilogo degli utenti

| Tipo di Utente | Ruolo principale | Azioni tipiche |
|---|---|---|
| Tenant User | Accesso ai dati del proprio tenant | Autenticarsi, visualizzare i dati dei sensori, consultare dashboard autorizzate |
| Tenant Admin | Gestire risorse e utenti di un tenant | Configurare gateway/sensori, monitorare tenant, gestire utenti |
| Super Admin | Supervisione globale del sistema | Gestire tenant, ruoli, permessi e metriche di sistema |
