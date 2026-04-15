# Comandi per gateway e sensori
Il sistema prevede la possibilità di inviare comandi ai gateway e ai sensori per modificare la loro configurazione e il loro comportamento.

I comandi vengono inviati tramite il microservizio **Dashboard** e vengono ricevuti dal microservizio **Gateway** che si occupa di inoltrarli al gateway o al sensore interessato.

## Comandi per i gateway

### Creazione di un nuovo gateway
Per creare un nuovo gateway, è necessario fornire le seguenti informazioni:
- Nome del gateway
- Intervallo in millisecondi per l'invio dei dati (ad esempio, 1000 ms per inviare i dati ogni secondo)

All'interno del microservizio **Gateway**, viene creato un nuovo gateway simulato con la configurazione specificata e viene messo in stato Decommissioned{{gloss}}.
Inoltre il gateway simulato in fase di creazione genera una coppia di chiavi pubblica/privata per il futuro commissioning.
La **chiave privata** viene salvata nel database interno del microservizio **Gateway**, mentre la **chiave pubblica** viene inviata insieme al **gatewayId** all'interno di un messaggio di hello{{gloss}} la quale sarà ricevuta dal microservizio **Dashboard** e mostrata all'utente.

I gateway possono essere creati solo dagli utenti con ruolo di **Super Admin**.

### Eliminazione di un gateway
Per eliminare un gateway, è necessario selezionare il **gateway** da eliminare.

All'interno del microservizio **Gateway**, il gateway simulato verrà interrotto e rimosso dal sistema, eliminando anche tutti i sensori ad esso associati.
Inoltre i dati nel buffer interno del microservizio **Gateway** associati al gateway eliminato verranno anch'essi eliminati.

I gateway possono essere eliminati solo dagli utenti con ruolo di **Super Admin**.

### Riavvio di un gateway
Per riavviare un gateway, è necessario selezionare il **gateway** da riavviare.

All'interno del microservizio **Gateway**, il gateway simulato invierà nuovamente un messaggio di hello{{gloss}} con la sua chiave pubblica. Il comando è utile nel caso il messaggio di hello iniziale non venga ricevuto correttamente dal microservizio **Dashboard** o nel caso si voglia forzare l'invio di un nuovo messaggio di hello per aggiornare la chiave pubblica associata al gateway.

I gateway possono essere riavviati solo dagli utenti con ruolo di **Super Admin** o **Tenant Admin** in cui il gateway è commissionato verso il proprio tenant.

### Reset di un gateway
Per resettare un gateway, è necessario selezionare il **gateway** da resettare.

All'interno del microservizio **Gateway**, il gateway simulato cambierà intervallo di invio dei dati al valore di default di *5 secondi*, inoltre viene svuotato il buffer interno dei dati prodotti dai sensori simulati associati al gateway resettato.

I gateway possono essere resettati solo dagli utenti con ruolo di **Super Admin** o **Tenant Admin** in cui il gateway è commissionato verso il proprio tenant.

### Interruzione di un gateway
Per interrompere un gateway, è necessario selezionare il **gateway** da interrompere.

All'interno del microservizio **Gateway**, il gateway simulato interromperà l'invio dei dati all'interno del buffer interno verso il message broker NATS JetStream{{gloss}} e verrà messo in stato Inactive{{gloss}}.

I gateway possono essere interrotti solo dagli utenti con ruolo di **Super Admin** o **Tenant Admin** in cui il gateway è commissionato verso il proprio tenant e solo se il gateway è in stato Active{{gloss}}.

### Ripresa di un gateway
Per riprendere l'invio dei dati di un gateway, è necessario selezionare il **gateway** da riprendere.

All'interno del microservizio **Gateway**, il gateway simulato riprenderà l'invio dei dati all'interno del buffer interno verso il message broker NATS JetStream{{gloss}} e verrà messo in stato Active{{gloss}}.

I gateway possono essere ripresi solo dagli utenti con ruolo di **Super Admin** o **Tenant Admin** in cui il gateway è commissionato verso il proprio tenant e solo se il gateway è in stato Inactive{{gloss}}.

### Commission di un gateway
Per commissionare un gateway, è necessario selezionare il **gateway** da commissionare, il **tenant** verso cui commissionare il gateway e il JWT{{gloss}} di autenticazione. Quest'ultimo deve essere generato per permettere al gateway simulato di pubblicare i dati sul message broker NATS JetStream{{gloss}} sul subject{{gloss}} del **tenantId** specificato e a partire dalla **chiave pubblica** associata al gateway.

Quest'ultima misura è necessaria per garantire che il JWT{{gloss}} possa essere utilizzato solo e soltanto dal gateway simulato per cui è stato generato, evitando così che un JWT generato per un gateway possa essere utilizzato da un altri client.

All'interno del microservizio **Gateway**, il gateway simulato si salverà il **tenantId** e il **token di commissioning**. Successivamente verrà messo in stato Active{{gloss}} e inizierà a pubblicare del proprio buffer interno verso il message broker NATS JetStream{{gloss}} sul subject{{gloss}} del **tenantId** specificato.

I gateway possono essere commissionati solo dagli utenti con ruolo di **Super Admin** e solo se il gateway è in stato Decommissioned{{gloss}}.

### Decommission di un gateway
Per decommissionare un gateway, è necessario selezionare il **gateway** da decommissionare.

All'interno del microservizio **Gateway**, il gateway simulato interromperà l'invio dei dati dei sensori verso il message broker NATS JetStream{{gloss}}, verrà messo in stato Decommissioned{{gloss}} e rimuoverà il **tenantId** e il **token di commissioning** associati al gateway in questione.

I gateway possono essere decommissionati solo dagli utenti con ruolo di **Super Admin** e solo se il gateway è in stato Active{{gloss}} o Inactive{{gloss}}.

## Comandi per i sensori

### Creazione di un nuovo sensore
Per creare un nuovo sensore, è necessario fornire le seguenti informazioni:
- Nome del sensore
- Profilo GATT{{gloss}} del sensore (ovvero la tipologia di dati che il sensore produrrà, ad esempio temperatura, ecg, etc...)
- Intervallo in millisecondi per l'invio dei dati (ad esempio, 1000 ms per generare dati ogni secondo)
- Il gateway a cui associare il sensore

All'interno del microservizio **Gateway**, viene creato un nuovo sensore simulato con la configurazione specificata e associato al gateway selezionato. Il sensore simulato in fase di creazione viene messo in stato Active{{gloss}} e inizia immediatamente a produrre dati all'interno del buffer interno del microservizio **Gateway**.

I sensori possono essere creati solo dagli utenti con ruolo di **Super Admin**.

### Eliminazione di un sensore
Per eliminare un sensore, è necessario selezionare il **sensore** da eliminare.

All'interno del microservizio **Gateway**, il sensore simulato verrà interrotto e rimosso dal sistema.

I sensori possono essere eliminati solo dagli utenti con ruolo di **Super Admin**.

### Interruzione di un sensore
Per interrompere un sensore, è necessario selezionare il **sensore** da interrompere.

All'interno del microservizio **Gateway**, il sensore simulato interromperà la produzione di dati all'interno del buffer interno verso il message broker NATS JetStream{{gloss}} e verrà messo in stato Inactive{{gloss}}.

I sensori possono essere interrotti solo dagli utenti con ruolo di **Super Admin** o **Tenant Admin** in cui il gateway a cui è associato il sensore è commissionato verso il proprio tenant e solo se il sensore è in stato Active{{gloss}}.

### Ripresa di un sensore
Per riprendere la produzione di dati di un sensore, è necessario selezionare il **sensore** da riprendere.

All'interno del microservizio **Gateway**, il sensore simulato riprenderà la produzione di dati all'interno del buffer interno verso il message broker NATS JetStream{{gloss}} e verrà messo in stato Active{{gloss}}.

I sensori possono essere ripresi solo dagli utenti con ruolo di **Super Admin** o **Tenant Admin** in cui il gateway a cui è associato il sensore è commissionato verso il proprio tenant e solo se il sensore è in stato Inactive{{gloss}}.



