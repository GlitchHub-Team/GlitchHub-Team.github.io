# Esecuzione test <!--raw-typst <esecuzione-test> -->
La codifica del Sistema è avanzata seguendo di pari passo una pianificazione dei test di integrazione in fase di progettazione logica, e di unità in fase di progettazione di dettaglio. In questo modo, il gruppo ha potuto identificare e correggere tempestivamente eventuali bug e garantire che il codice scritto si comportasse secondo le aspettative.

Si consiglia la lettura del documento di [Piano di Qualifica](https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/PianodiQualifica.pdf) per comprendere ogni singolo test pianificato e visionare l'associazione con il relativo requisito.

Nelle seguenti sezioni è possibile comprendere come eseguire e controllare l'esito dei test per ogni microservizio.

## Esecuzione test di unità ed integrazione in Go
L'esecuzione dei *test di unità* è la fase più semplice dei test e non richiede particolari dipendenze, mentre i *test di integrazione* richiedono l'esecuzione dell'infrastruttura del Sistema, con la necessità di avviare i **devcontainer**{{gloss}} dedicati ad ogni microservizio o direttamente i **container Docker**{{gloss}}.

Per eseguire i *test di unità e di integrazione* nei microservizi scritti in **Go**, ovvero **Data Consumer**, **Gateway** e **Cloud Backend**, è necessario eseguire il seguente comando nella root del microservizio:

```bash
go test -race -covermode atomic ./...
```

L'output dei test avrà un aspetto simile al seguente:
```bash
?       Gateway/cmd/modules     [no test files]
        Gateway/internal/commands               coverage: 0.0% of statements
?       Gateway/internal/configManager  [no test files]
        Gateway/internal/credentialsGenerator           coverage: 0.0% of statements
?       Gateway/internal/gatewayManager/gatewayUseCases [no test files]
        Gateway/internal/natsutil               coverage: 0.0% of statements
ok      Gateway/tests/bufferedDataSender        9.648s  coverage: [no statements]
ok      Gateway/tests/commands  1.044s  coverage: [no statements]
ok      Gateway/tests/configRepositories        1.153s  coverage: [no statements]
ok      Gateway/tests/credentialsGenerator      1.054s  coverage: [no statements]
ok      Gateway/tests/externalDatabases 1.403s  coverage: [no statements]
ok      Gateway/tests/integrationTests  6.366s  coverage: [no statements]
```
Con i possibili valori iniziali:
- `ok`: test superato con successo;
- `FAIL`: test fallito;
- `?`: test non eseguito, ad esempio per l'assenza di file di test nella cartella.

## Esecuzione test di unità ed integrazione in Angular
L'esecuzione dei *test di unità* e di *integrazione* per il microservizio **Dashboard Frontend**, scritto in **Angular**, richiede l'esecuzione del devcontainer dedicato al microservizio, o direttamente dei **container Docker**{{gloss}} del sistema.

Per eseguire i *test di unità* e di *integrazione* per il microservizio **Dashboard Frontend** è necessario eseguire i seguenti comandi nella root del microservizio:

1. `cd Dashboard/frontend/frontend` per posizionarsi nella cartella del microservizio;
2. `ng test` per eseguire i *test di unità* e di *integrazione*;
3. Controllare l'output dei test, che avrà un aspetto simile al seguente:
```bash
PASS  src/app/components/sensor-data-chart/sensor-data-chart.component.spec.ts
✓ should create 15 tests (24 ms)
```
Con i possibili valori iniziali:

- `PASS`: test superato con successo;
- `FAIL`: test fallito.
  
## Esecuzione dei test di sistema
I *test di sistema* sono test end-to-end che coinvolgono l'intero Sistema, e richiedono l'esecuzione dell'infrastruttura completa, con l'avvio di tutti i **container Docker**{{gloss}}.

Per eseguire i *test di sistema* è necessario eseguire i seguenti comandi nella repository `MVP`:

1. Per avviare l'infrastruttura completa del Sistema:
```bash
`docker compose --env-file Infrastructure/.env --env-file .env  up -d` 
```
1. Per eseguire i test di sistema, è necessario eseguire il comando all'interno del container **e2e-tests**, il quale usa Playwright{{gloss}}. Il comando in question è il seguente:
```bash
docker compose --env-file Infrastructure/.env  --env-file .env -f docker-compose.yml exec -T -e APP_URL=http://frontend -e PYTHONDONTWRITEBYTECODE=1 e2e-tests python -B -m pytest -q tests
```