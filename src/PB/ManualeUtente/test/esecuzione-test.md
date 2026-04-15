# Esecuzione test <!--raw-typst <esecuzione-test> -->
La codifica del Sistema è sempre avanzata seguendo di pari passo una pianificazione dei test di integrazione, in fase di progettazione logica, e di unità, in fase di progettazione di dettaglio. In questo modo, il gruppo ha potuto identificare e correggere tempestivamente eventuali bug e garantire che il codice scritto si comportasse secondo le aspettative.

Si consiglia la lettura del documento di [Piano di Qualifica](https://glitchhub-team.github.io/pdf/PB/DocumentiEsterni/PianodiQualifica.pdf) per comprendere ogni singolo test pianificato e visionare l'associazione con il relativo requisito.

Nelle seguenti sezioni è possibile comprendere come eseguire e controllare l'esito dei test per ogni microservizio.

## Esecuzione test di unità ed integrazione in Go
L'esecuzione dei *test di unità* è la fase più semplice dei test e non richiede particolari dipendenze, mentre i *test di integrazione* richiedono l'esecuzione dell'infrastruttura del Sistema, con la necessità di avviare i **devcontainer{**{gloss}} dedicati ad ogni microservizio o direttamente i **container Docker**{{gloss}}.

Per eseguire i *test di unità e di integrazione* nei microservizi scritti in **Go**, ovvero **Data Consumer**, **Gateway** e **Dashboard Backend**, è necessario eseguire il seguente comando nella root del microservizio:

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
Per ricki
  
## Esecuzione dei test di sistema
....