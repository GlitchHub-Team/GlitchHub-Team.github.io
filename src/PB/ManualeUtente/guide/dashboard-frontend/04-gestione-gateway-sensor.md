# Gestione Gateway e Sensor
Il modulo **#gloss("Gateway-Sensor Manager")**{{gloss}} è l'ambiente dedicato all'amministrazione hardware del sistema. In questa sezione, gli utenti autorizzati possono censire nuovi dispositivi, configurarne i parametri operativi e gestire il loro intero ciclo di vita.

## Operazioni sui gateway
I gateway fungono da concentratori per i sensori Bluetooth; la loro corretta configurazione è fondamentale per garantire il flusso dati verso il backend.

### Aggiunta nuovo gateway
Per inserire un nuovo gateway nel sistema, l'utente deve inserire nella finestra dialogo apposita:
1. **Nome**: definire un'etichetta descrittiva per identificare il dispositivo.
2. **Intervallo dati**: impostare la frequenza di comunicazione predefinita in millisecondi. Il sistema impone un limite minimo di **100ms** per salvaguardare la stabilità della rete.

### Comandi operativi e manutenzione
Attraverso l'icona `terminal` nella tabella dei gateway, è possibile inviare istruzioni dirette tramite la finestra di dialogo apposita:
- **Commissioning**: procedura per associare un gateway nuovo ad un tenant specifico.
- **Reboot / Reset**: comandi per il riavvio software o il ripristino delle impostazioni di fabbrica del dispositivo.
- **Interrupt / Resume**: permettono di sospendere o riattivare globalmente la ricezione di dati da tutti i sensori associati a quel gateway.

### Gestione delle chiavi pubbliche
In modalità di gestione, la tabella mostra la **#gloss("Public Key")**{{gloss}} di ogni dispositivo. L'interfaccia mette a disposizione un pulsante di copia rapida per acquisire l'identificativo, necessario per la generazione dei token di commissioning tramite i tool del container `nats-manager`.

## Operazioni sui sensori
I sensori vengono gestiti e configurati all'interno del contesto del gateway a cui sono associati.

### Creazione e associazione
Per aggiungere un sensore, è necessario espandere la riga del gateway di riferimento e cliccare su **"Nuovo Sensore"**, attivando la finestra di dialogo dedicata. I parametri di configurazione richiesti sono:
- **Nome**: identificativo testuale del sensore.
- **Profilo**: selezione della tipologia di sensore tramite il menù a tendina.
- **Intervallo dati**: specifica la frequenza (in ms) con cui il sensore deve campionare ed emettere una lettura.

### Controllo del campionamento
Dalla tabella sensori è possibile gestire l'attivazione dei singoli dispositivi Bluetooth tramite la finestra di dialogo apposita:
- **Interrupt**: sospende il campionamento e l'invio delle letture per lo specifico sensore senza influenzare gli altri dispositivi collegati al medesimo gateway.
- **Resume**: riattiva il flusso dati verso il gateway e la dashboard.

L'esito di ogni operazione di creazione o eliminazione viene confermato all'utente tramite una notifica.