# Autenticazione ed autorizzazione
Il Sistema facendo parte di un dominio multi-tenant, prevede un sistema di **autenticazione** e **autorizzazione** molto rigido per garantire la sicurezza e l'isolamento dei dati tra i diversi tenant.  
L'**autenticazione** avviene tramite JWT{{gloss}} e permette di identificare l'utente che sta accedendo al sistema, mentre l'**autorizzazione** avviene tramite i ruoli utente definiti sempre all'interno del JWT{{gloss}} e permette di definire le azioni che un utente può compiere all'interno del sistema in base al proprio ruolo e al proprio tenant di appartenenza.

Nel Sistema in questione è stata scelta l'autenticazione tramite JWT{{gloss}} per permettere scalabilità orizzontale dei diversi microservizi, in quanto il JWT{{gloss}} è un token che è firmato tramite una chiave privata, la cui validità può essere verificata tramite la chiave pubblica associata, senza la necessità di dover accedere ad un database centrale o ad una sessione per verificare i permessi dell'utente.

È importante sottolineare che le informazioni all'interno del JWT{{gloss}} sono firmate e non cifrate, quindi è possibile decodificare il token per leggere le informazioni in esso contenute, ma non è possibile modificarle senza invalidare la firma. Per questo motivo, è fondamentale proteggere la chiave privata utilizzata per firmare i token e garantire che solo il microservizio responsabile dell'autenticazione abbia accesso a questa chiave. 

All'interno dei microservizi sono stati utilizzati i JWT{{gloss}} per garantire autenticazione e autorizzazione, in due casi specifici, i quali verranno descritti nei paragrafi successivi.

## Dashboard
All'interno del microservizio **Dashboard**, l'autenticazione e l'autorizzazione avvengono tramite JWT{{gloss}} per permettere agli utenti di accedere alle funzionalità del sistema in base al proprio ruolo e al proprio tenant di appartenenza.

Il JWT{{gloss}} viene generato al momento del login dell'utente e contiene le informazioni necessarie per identificarlo, il suo ruolo e il tenant di appartenenza.   
Per utilizzare il token, esso deve essere inserito nell'header **Authorization** in ogni futura richiesta HTTP verso il microservizio **Dashboard Backend**.

Il JWT{{gloss}} in questione contiene le seguenti informazioni:

- **exp**: data di scadenza del token in formato UNIX timestamp (in secondi);
- **tid**: UUID{{gloss}} del tenant di appartenenza dell'utente;
- **uid**: UUID{{gloss}} dell'utente che ha effettuato il login;
- **rol**: ruolo dell'utente che ha effettuato il login, può essere **sa** per Super Admin, **ta** per Tenant Admin e **tu** per Tenant User.

## NATS
NATS è un message broker che supporta diversi meccanismi di autenticazione e autorizzazione:

- **Token-based authentication**: in questo caso i client devono fornire un token di autenticazione registrato nel server NATS per poter accedere al broker e pubblicare o sottoscrivere messaggi sui subject{{gloss}}. È sconsigliato in ambienti di produzione in quanto non è sicuro e non è facile registrarne di nuovi a runtime.
- **Username/Password authentication**: in questo caso i client devono fornire un nome utente e una password registrati nel server NATS per poter accedere al broker e pubblicare o sottoscrivere messaggi sui subject{{gloss}}. Anche questo metodo è sconsigliato per gli stessi motivi del **token-based authentication**.
- **mTLS**: in questo caso i client devono presentare un certificato digitale valido per poter accedere al broker e registrato nel server NATS. Questo metodo è più sicuro rispetto ai precedenti, ma richiede sempre un **reload** dei certificati per poter registrare nuovi client a runtime.
- **JWT-based authentication**: in questo caso i client devono fornire un JWT{{gloss}} che contiene le informazioni necessarie per identificare il client e i permessi associati. NATS ha una trust-chain basata su tre livelli, il precedente garantisce la validità del successivo a partire dal **Operator** il quale firma la validità degli **Account** (che tendenzialmente rappresentano i tenant) e questi ultimi a loro volta firmano la validità dei **User**. Questo metodo è il più adatto per ambienti di produzione in quanto permette di registrare nuovi client a runtime senza dover fare un reload dei certificati, inoltre permette di definire permessi molto granulari sui subject{{gloss}} e le stream{{gloss}} a cui i client possono accedere.

In questo sistema è stato scelto il metodo di autenticazione **JWT-based authentication** per garantire l'aggiunta di nuovi gateway simulati a runtime e la creazione di nuovi tenant, il meccanismo scelto comporta una complessità maggiore ma permette funzionalità come il commissioning di un gateway a runtime che non sarebbe possibile con gli altri metodi di autenticazione supportati da NATS.

La trust-chain di NATS è stata implementata nel seguente modo:

- L'**Operator** rappresenta l'entità che gestisce l'infrastruttura NATS e firma la validità degli **Account**. In questo sistema, l'**Operator** è registrato nel NATS server e ce ne è uno solo per tutta l'infrastruttura. Esso risiede all'interno del microservizio **nats-manager** e viene utilizzato per firmare la validità degli **Account**.
- Gli **Account** rappresentano i tenant del sistema e sono firmati dall'**Operator** all'interno del microservizio **nats-manager**. Ogni volta che viene creato un nuovo tenant dalla **Dashboard** è fondamentale generare un nuovo **Account** per il tenant appena creato e firmarlo con l'**Operator**. Gli **Account** contengono le informazioni necessarie per identificare il tenant e i permessi associati al tenant stesso. Inoltre è presente un **Account** speciale chiamato **application_core** che rappresenta il tenant di sistema e viene utilizzato per i microservizi interni che devono comunicare tra loro tramite NATS, come ad esempio il microservizio **Dashboard** e il microservizio **Gateway**.
- Gli **User** rappresentano i client che si connettono a NATS per pubblicare o sottoscrivere messaggi sui subject{{gloss}}.  
Gli **User** sono firmati dagli **Account** all'interno del microservizio **nats-manager**.   
Ogni volta che si vuole commissionare un nuovo gateway è fondamentale generare un nuovo **User** per il gateway appena creato e firmarlo con l'**Account** del tenant a cui il gateway deve essere associato. Fatto ciò si riceverà un JWT{{gloss}} che dovrà essere inserito in fase di commissioning nella **Dashboard**.   
Inoltre sono presenti degli **User** speciali per i microservizi interni che devono comunicare tra loro tramite NATS, come ad esempio il microservizio **Dashboard** e il microservizio **Gateway**, i quali sono firmati con l'**Account** del tenant di sistema **application_core**.

Per la creazione dei JWT{{gloss}} in ambito di commissioning di un gateway e di creazione di un nuovo tenant, sono stati implementati degli script **Bash** che utilizzano nsc{{gloss}} per interagire con il server NATS e generare i JWT{{gloss}} necessari. Questi script sono stati inseriti all'interno del microservizio **nats-manager** e possono essere eseguiti entrando nel terminale del microservizio stesso tramite Docker{{gloss}}.