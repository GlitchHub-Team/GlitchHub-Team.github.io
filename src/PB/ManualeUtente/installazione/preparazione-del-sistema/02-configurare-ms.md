# Personalizzare la Configurazione

Questa pagina descrive come personalizzare attraverso le variabili d'ambiente{{gloss}} e i parametri di avvio la configurazione del sistema.   
È importante che si consideri questa fase solo dopo aver completato l'installazione del software.

## Infrastruttura
L'infrastruttura del sistema è composta da servizi di base come NATS JetStream{{gloss}} e TimescaleDB{{gloss}}, i quali sono configurati attraverso un file `.env` e `docker-compose.yml` in `MVP/Infrastructure` e diversi file di configurazione singoli presenti all'interno delle cartelle dei servizi.

### Configurazione TimescaleDB
#### Schema SQL
Il file `MVP/Infrastructure/timescaledb/schema/tables.sql` contiene lo schema SQL per la creazione delle tabelle necessarie per il funzionamento del sistema all'interno del database TimescaleDB{{gloss}}.

```sql
CREATE EXTENSION IF NOT EXISTS timescaledb;

CREATE SCHEMA IF NOT EXISTS "tenant_<tenant_id>";

CREATE TABLE IF NOT EXISTS "tenant_<tenant_id>".sensor_data (
    sensor_id UUID NOT NULL,
    gateway_id UUID NOT NULL,
    timestamp TIMESTAMPTZ NOT NULL,
    tenant_id UUID NOT NULL,
    profile VARCHAR(255) NOT NULL,
    data JSONB NOT NULL,
    PRIMARY KEY (sensor_id, gateway_id, timestamp)
);
```

#### Variabili d'ambiente
- `POSTGRES_HOST`: nome del container Docker{{gloss}} o indirizzo IP del server TimescaleDB{{gloss}};
- `POSTGRES_DB`: nome del database TimescaleDB{{gloss}};
- `POSTGRES_USER`: nome utente dell'account con privilegi di amministratore del database;
- `POSTGRES_PASSWORD`: password dell'account con privilegi di amministratore del database;
- `POSTGRES_PORT`: porta in cui è in ascolto il server TimescaleDB{{gloss}}.

### Configurazione server NATS JetStream
#### File di configurazione
Il file `MVP/Infrastructure/nats/nats.conf` contiene la configurazione del server NATS JetStream{{gloss}}.

```yaml
port: $NATS_PORT #porta in cui è in ascolto il server NATS JetStream

http_port: $NATS_HTTP_PORT #porta in cui il server HTTP di NATS è in ascolto, serve per esporre le metriche

system_account: $NATS_SYS_ACCOUNT_ID #ID dell'account di sistema per NATS JetStream

jetstream {
	store_dir: /etc/nats/data
    cipher: "aes" # algoritmo di cifratura per i dati at-rest all'interno delle stream di NATS JetStream
    key: $NATS_ENCRYPTION_KEY
    limits {
        max_ack_pending: 10000 # numero massimo di ack non ancora ricevuti da NATS JetStream per i messaggi consegnati ai consumer, superato questo limite NATS JetStream smetterà di consegnare nuovi messaggi fino a che non riceverà degli ACK
        duplicate_window: 600s # finestra di tempo in cui NATS JetStream considera un messaggio come duplicato, se viene pubblicato un messaggio con lo stesso ID di un messaggio già pubblicato entro questa finestra di tempo, NATS JetStream lo scarterà come duplicato
    }
}

tls {
    cert_file: "/etc/nats/certs/server.pem" # file del certificato TLS pubblico del server NATS
    key_file:  "/etc/nats/certs/server.key" # file della chiave TLS privata del server NATS
    ca_file:   "/etc/nats/certs/ca.pem" # file del certificato TLS della CA
}

operator: /etc/nats/jwt-accounts/operator/operator.jwt # JWT dell'Operator, necessario per fidarsi degli Account firmati dall'Operator stesso

resolver: {
    type: full # tutti gli account salvati in ogni NATS server vengono considerati validi
    dir: '/etc/nats/jwt-accounts' # cache locale degli accounts
    allow_delete: true # permette l'eliminazione dell'account
}
```

#### Variabili d'ambiente
- `NATS_HOST`: nome del container Docker{{gloss}} o indirizzo IP del server NATS JetStream{{gloss}};
- `NATS_ENCRYPTION_KEY`: stringa qualsiasi utilizzata per cifrare i dati **at-rest**{{gloss}} all'interno delle stream di **NATS JetStream**{{gloss}};
- `NATS_PORT`: porta in cui è in ascolto il server NATS JetStream{{gloss}};
- `NATS_HTTP_PORT`: porta in cui il server HTTP di NATS è in ascolto, serve per esporre le metriche;
- `NATS_SYS_ACCOUNT_ID`: ID dell'account di sistema per NATS JetStream{{gloss}}.

### Configurazione CloudDB
#### Variabili d'ambiente
- `CLOUD_POSTGRES_HOST`: nome del container Docker{{gloss}} o indirizzo IP del server PostgreSQL{{gloss}};
- `CLOUD_POSTGRES_DB`: nome del database PostgreSQL{{gloss}};
- `CLOUD_POSTGRES_USER`: nome utente dell'account con privilegi di amministratore del database;
- `CLOUD_POSTGRES_PASSWORD`: password dell'account con privilegi di amministratore del database;
- `CLOUD_POSTGRES_PORT`: porta in cui è in ascolto il server PostgreSQL{{gloss}}.

### Configurazione Prometheus
Il servizio di monitoraggio Prometheus{{gloss}} è configurato attraverso il file `MVP/Infrastructure/prometheus/prometheus.yml`, in cui si definiscono i target da monitorare e le regole di scraping{{gloss}} per raccogliere le metriche esposte dai microservizi del sistema.

### Configurazione Grafana
#### Configurazione dashboard
Le dashboard di Grafana{{gloss}} sono configurate attraverso i file JSON presenti nella cartella `MVP/Infrastructure/grafana/dashboards`, mentre le fonti dati sono configurate attraverso i file **YAML** presenti nella cartella `MVP/Infrastructure/grafana/datasources`.

#### Variabili d'ambiente
- `GF_SECURITY_ADMIN_USER`: nome utente dell'account amministratore di Grafana;
- `GF_SECURITY_ADMIN_PASSWORD`: password dell'account amministratore di Grafana;
- `GF_USERS_ALLOW_SIGN_UP`: indica se è consentita l'iscrizione di nuovi utenti a Grafana.

## Microservizio Gateway
Il microservizio **Gateway** è configurato attraverso il file `docker-compose.yml` presente nella cartella `MVP`.

Sono configurabili le seguenti variabili:

- `TEST_CREDS_PATH`: percorso del file **.creds** da utilizzare per i test di integrazione;
- `GATEWAY_BASE_CREDS_PATH`: percorso del file **.creds** con cui il microservizio ascolta i comandi in entrata e con cui si autentica un gateway non commissionato;
- `CA_PEM_PATH`: percorso del file **ca.pem** necessario per controllare l'identità del server NATS JetStream{{gloss}} a cui il microservizio si connette.

## Microservizio Data Consumer
Il microservizio **Data Consumer** è configurato attraverso il file `docker-compose.yml` presente nella cartella `MVP`.

Sono configurabili le seguenti variabili:

- `DATA_CONSUMER_TEST_CREDS_PATH`: percorso del file **.creds** da utilizzare per i test di integrazione;
- `DATA_CONSUMER_CREDS_PATH`: percorso del file **.creds** con cui il microservizio si autentica per ricevere i dati dei sensori simulati pubblicati su NATS JetStream{{gloss}};
- `CA_PEM_PATH`: percorso del file **ca.pem** necessario per controllare l'identità del server NATS JetStream{{gloss}} a cui il microservizio si connette.

## Microservizio Cloud Backend
Il microservizio **Cloud Backend** è configurato attraverso il file `docker-compose.yml` presente nella cartella `MVP`.

Sono configurabili le seguenti variabili:

- `TEST_CREDS_PATH`: percorso del file **.creds** da utilizzare per i test di integrazione;
- `DASHBOARD_CREDS_PATH`: percorso del file **.creds** con cui il microservizio si autentica per ricevere i dati dei sensori simulati in real-time;
- `CA_PEM_PATH`: percorso del file **ca.pem** necessario per controllare l'identità del server NATS JetStream{{gloss}} a cui il microservizio si connette;

Inoltre è possibile configurare ulteriormente il microservizio modificando il file `MVP/.env`, il quale contiene le seguenti variabili d'ambiente:

- `PORT`: porta in cui è in ascolto il microservizio;
- `MAIL_ADAPTER`: metodo di invio delle email, i valori supportati sono:
  - `smtp`: utilizza un server SMTP per inviare le email, è necessario configurare anche le variabili d'ambiente relative al server SMTP (vedi sotto);
  - `terminal`: stampa le email da inviare direttamente sulla console del microservizio.
- `TOKEN_LENGTH`: lunghezza in caratteri del token di impostazione o reset della password;
- `TOKEN_DURATION`: durata in secondi del token di impostazione o reset della password;
- `BCRYPT_COST`: costo dell'algoritmo di hashing bcrypt, dove un maggior costo comporta una maggiore sicurezza ma anche un maggior tempo di esecuzione dell'algoritmo stesso. Si consiglia di impostare un costo di **12**;
- `AUTH_TOKEN_DURATION`: durata in secondi del JWT di autenticazione;
- `AUTH_TOKEN_SECRET`: stringa qualsiasi utilizzata come chiave segreta per firmare i JWT di autenticazione;
- `APP_URL`: URL del frontend, utilizzato per generare i link da inserire nelle email inviate agli utenti;
- `SMTP_HOST`: hostname o indirizzo IP del server SMTP da utilizzare per inviare le email;
- `SMTP_PORT`: porta del server SMTP da utilizzare per inviare le email;
- `SMTP_USER`: nome utente per l'autenticazione al server SMTP;
- `SMTP_PASS`: password per l'autenticazione al server SMTP;
- `SMTP_FROM`: indirizzo email del mittente;

## Microservizio Dashboard Frontend
Il microservizio **Dashboard Frontend** è configurato attraverso il file `environment.ts` presente nella cartella `MVP/Dashboard/frontend/frontend/environments`.

Sono configurabili le seguenti variabili:

- `apiUrl`: URL del microservizio **Cloud Backend** a cui il frontend si connette per inviare le richieste HTTP;
- `wsUrl`: URL del microservizio **Cloud Backend** a cui il frontend si connette per ricevere i dati dei sensori simulati in real-time tramite WebSocket{{gloss}}.