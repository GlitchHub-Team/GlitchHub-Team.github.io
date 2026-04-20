# Ruoli utente <!--raw-typst <ruoliutente> -->
Nel sistema multi-tenant, ogni tenant{{gloss}} accede alla stessa infrastruttura ma con dati isolati dagli altri tenant.

Le principali tipologie di utente sono:

- Il **Super Admin**;
- Il **Tenant Admin**;
- Il **Tenant User**.

## Super Admin
Il **Super Admin** ha competenza globale su tutto il sistema multi-tenant, infatti può gestire tenant, utenti, gateway e sensori. Inoltre può accedere ai dati di tutti i tenant che accettano la clausola di impersonificazione.

Competenze del **Super Admin**:

- Creazione e gestione dei **tenant**;
- Creazione e gestione degli **utenti** di ruolo **Super Admin**, **Tenant Admin** e **Tenant User**;
- Configurazione e gestione dei **gateway** e dei **sensori**;
- Visualizzazione dei dati storici e real-time di ogni tenant che accetta la clausola di impersonificazione.

## Tenant Admin
Il **Tenant Admin** gestisce tutto ciò che riguarda il proprio tenant, in particolare ha competenza sui **gateway**, sui **sensori** e sugli **utenti** del proprio tenant.
Inoltre ha la possibilità di visualizzare i dati prodotti dai propri sensori.

Competenze del **Tenant Admin**:

- Creazione e gestione degli **utenti** di ruolo **Tenant User** e **Tenant Admin**;
- Gestione della configurazione dei **gateway** e dei **sensori** associati al proprio tenant;
- Visualizzazione dei dati storici e real-time dei sensori associati al proprio tenant.

## Tenant User
Il **Tenant User** è l'utente che ha la sola responsabilità di consultare i dati prodotti dai sensori associati al proprio tenant.

Competenze del **Tenant User**:

- Visualizzazione dei dati storici e real-time dei sensori associati al proprio tenant.