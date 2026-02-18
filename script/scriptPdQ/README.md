# Come generare file Excel metriche
## Configurazione ambiente e creazione venv
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Creazione file .env
- Creare file .env dove è presente `metriche.py`
- Aggiungere variabile `GITHUB_TOKEN=<Token Script PdP>` token trovabile in Bitwarden

## Generazione file Excel metriche
```bash
python metriche.py
```