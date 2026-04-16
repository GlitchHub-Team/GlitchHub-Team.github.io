# Interfaccia Principale (App Shell)
L'interfaccia utente è costruita attorno a un componente di layout fisso denominato **`#gloss("AppShell")`**{{gloss}}, che definisce la struttura globale della piattaforma e garantisce una navigazione coerente tra i vari moduli operativi.

## Layout globale
Il layout è diviso in due macro-aree principali:
1. **Navigazione laterale**: una barra fissa a sinistra che ospita i collegamenti alle funzionalità di sistema.
2. **Contenuto principale**: l'area centrale dove vengono caricati dinamicamente i moduli (Dashboard, Gestione Gateway, etc.) e che include nella parte superiore la barra degli strumenti (**header**).

## Barra di navigazione (Side-bar)
La **`side-bar`** permette all'utente di spostarsi tra le diverse aree della piattaforma in base ai propri permessi di accesso.

### Gestione delle voci di menu
La lista dei collegamenti è generata dinamicamente partendo dalla configurazione **#`gloss("NAV_ITEMS")`**{{gloss}}.
- **Accesso condizionale**: ogni voce viene visualizzata solo se il `PermissionService` conferma che l'utente possiede i permessi richiesti (es. `GATEWAY_MANAGEMENT` per la gestione dei gateway).
- **Organizzazione visiva** (solo per i Super Admin): il menu ha due titoli utili per raggruppare visivamente l'area generica dall'area dedicata all'impersonificazione.
- **Feedback di navigazione**: la pagina attualmente visualizzata è evidenziata nel menu tramite la direttiva `routerLinkActive`.

## Barra degli strumenti (Header)
L'**`header`** posizionato nella parte superiore fornisce informazioni contestuali sulla sessione e l'identità dell'utente loggato.

### Indicatori di stato e identità
All'interno della barra vengono mostrati i seguenti elementi:
- **Badge del tenant**: mostra il nome del tenant a cui l'utente appartiene attualmente. Nel caso di un Super Admin in modalità impersonificazione, questo badge riflette il tenant selezionato. (//TODO di quest'ultima non ne sono sicura)
- **Badge del ruolo**: indica il livello gerarchico dell'account (Super Admin, Tenant Admin o Tenant User).
- **Identificativo utente**: il nome dell'utente è visualizzato all'interno del menu a comparsa attivabile dall'icona del profilo.
// TODO ha senso rimettere questo?

## Azioni globali e gestione account
Attraverso l'icona del profilo nell'header, l'utente può accedere a funzioni trasversali per la gestione della propria utenza.

### Cambia password
Selezionando la voce "Cambia Password", il sistema apre il dialogo **#gloss("ChangePasswordDialog")**{{gloss}}. 
- L'utente deve inserire la password corrente per validare l'operazione, seguita dalla nuova password.
- In caso di successo, un messaggio di notifica conferma l'aggiornamento senza richiedere un nuovo login.

### Logout
L'azione di uscita termina la sessione di lavoro corrente.
- Il sistema invoca l'**#gloss("AuthSessionService")**{{gloss}} per rimuovere il token **#gloss("JWT")**{{gloss}} e i dati utente dalla memoria locale (`sessionStorage`).
- L'utente viene immediatamente reindirizzato alla pagina di login, garantendo che nessuna informazione sensibile rimanga accessibile nel browser.