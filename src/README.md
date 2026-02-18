# Sorgente repo documentazione
In questa cartella si possono trovare tutti i sorgenti per la documentazione del gruppo _GlitchHub Team_ e il file `glossary.json` che contiene le definizioni di glossario in formato JSON.

## File di glossario (`glossary.json`)
Il file consiste in una lista di oggetti che presentano le chiavi `"term"` e `"definition"`, dove il primo rappresenta il nome della voce di glossario e il secondo la sua definizione.

### Sintassi speciale
Per consentire di utilizzare grassetto, corsivo e riferimento intra-glossario si usa una sintassi personalizzata simile a quella di Typst, da usare solamente all'interno del campo `"definition"` di una voce del file JSON.

#### Corsivo
Per scrivere una frase in _corsivo_ è sufficiente scrivere:
 
```json
    ...
    "definition": "... _contenuto in corsivo_ ..."
    ...
```

In caso si voglia scrivere il carattere underscore (`_`), allora è necessario usare l'escaping:
```json
    ...
    "definition": "Questo è il carattere underscore: \\_"
    ...
```

#### Grassetto
Per scrivere una frase in **grassetto** è sufficiente scrivere:
 
```json
    ...
    "definition": "... *contenuto in grassetto* ..."
    ...
```

In caso si voglia scrivere il carattere asterisco (`*`), allora è necessario usare l'escaping:
```json
    ...
    "definition": "Questo è il carattere asterisco: \\*"
    ...
```

#### Riferimento intra-glossario
Per riferirsi a una voce particolare è necessario usare la sintassi `@{termine}`.

> **NOTA**: `termine` è case insensitive ma richiede di scrivere il termine esattamente come scritto nel campo `"term"` della voce a cui si fa riferimento

_Esempio_:
```json
    {
        "term": "Requisito",
        "definition": "..."
    },
    {
        "term": "Caso d'uso",
        "definition": "Genera un @{requisito}."
    }
```
Nel documento la definizione apparirà come "Genera un [requisito]()" e il link porterà alla definizione di requisito.

Per cambiare come appare il link bisogna usare la sintassi `@{termine}{testo mostrato}`. Può essere utile in caso il termine linkato sia al singolare, ma il link deve contenere un termine plurale.
_Esempio_:
```json
    {
        "term": "Requisito",
        "definition": "..."
    },
    {
        "term": "Analisi dei requisiti",
        "definition": "Documento che racchiude i @{requisito}{requisiti}"
    }
```
Nel documento la definizione apparirà come "Documento che racchiude i [requisiti]()" e il link porterà alla definizione di requisito.

> **NOTA**: Non è possibile scrivere in una definizione la stringa di caratteri `@{}` senza che questo **non** venga interpretato come collegamento. Non dovrebbe essere un problema essendo una stringa di caratteri poco comune.

#### Altri caratteri speciali
Si possono usare i seguenti caratteri speciali nelle definizioni.

| Sintassi JSON | Risultato     | Codice HTML |
| ------------- | ------------- | ----------- |
| `--`          | &ndash;       | `&ndash;`   |
| `---`         | &mdash;       | `&mdash;`   |
| `\n`          | Nuova linea   | `<br>`      |

> **NOTA**: non è prevista la capacità di escaping del "-", quindi se uno vuole scrivere "meno meno" in caratteri non può.

#### Nota aggiuntiva
In generale il contenuto di `glossary.json` deve venire interpretato sia dal file Typst che dalla pagina HTML, per cui si cerchi di utilizzare solamente questi strumenti messi a disposizione, altrimenti si rischia di scrivere testo che viene interpretato correttamente solo da uno dei due sistemi.

In generale, Typst interpreta il codice che riceve come se fosse nativo, tranne per la funzione di collegamento `@{...}{...}` che viene interpretata come la funzione `#ref-term` e HTML interpreta il codice che riceve come se fosse nativo tranne per tutto ciò che è stato descritto finora. Per cui, scrivere codice Typst non supportato nelle definizioni (ad es. liste o funzioni) renderizza male su HTML e scrivere tag HTML renderizza male su Typst.