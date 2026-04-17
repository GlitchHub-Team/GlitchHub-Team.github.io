# Installazione del Software <!--raw-typst <preparazione-sistema> -->
Questa pagina descrive i passaggi per scaricare ed installare il software.

## Download del software
Il software è disponibile al seguente link: [MVP](https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/releases/download/MVP/MVP.zip).

Il file scaricato è un archivio **ZIP** che contiene tutte le credenziali necessarie per eseguire il software, oltre a tutti i file di configurazione e script necessari per il setup del sistema.

## Estrazione del software
Dopo aver scaricato l'archivio ZIP, è necessario estrarlo in una cartella a scelta dell'utente. Si consiglia di estrarre il contenuto in una cartella dedicata, ad esempio `GlitchHubMVP`.

## Setup del codice sorgente
Dopo aver estratto l'archivio ZIP, è necessario eseguire lo script `setup.sh` presente all'interno della cartella estratta con il comando `./setup.sh`, il quale si occupa di scaricare tutti i repository rappresentanti i microservizi del sistema, e di posizionare i file di configurazione e le credenziali all'interno delle cartelle dei microservizi stessi.

Nel caso lo script non abbia i permessi di esecuzione, è possibile assegnarglieli eseguendo il seguente comando da terminale:
```bash
chmod +x setup.sh
```

## Avvio del sistema
Dopo aver eseguito lo script `setup.sh`, è possibile avviare il sistema seguendo i due passaggi seguenti:

- `cd MVP` per posizionarsi nella cartella del progetto;
- `docker compose --env-file Infrastructure/.env --env-file .env  up -d` per avviare tutti i container Docker{{gloss}} necessari per l'esecuzione del sistema.

L'avvio del sistema richiede qualche minuto, in quanto è necessario che tutti i container Docker{{gloss}} vengano avviati e che tutti i microservizi al loro interno vengano inizializzati correttamente.   
Solitamente l'ultimo microservizio ad avviarsi è il microservizio **Dashboard Backend**, perciò è consigliato monitorare l'avvio del sistema controllando i log di questo microservizio.