# Tracciamento test e requisiti
In questa cartella sono presenti i file JSON per il tracciamento di test e requisiti.

Per essere sicuri si può leggere la documentazione sotto riportata, ma per scrivere velocemente i requisiti/test è possibile copiare e incollare già quelli esistenti, **stando attenti a cambiare `id`**!

## RD.json, RF.json, RNF.json
Questi file consentono il tracciamento di rispettivamente requisiti di dominio, requisiti funzionali e requisiti non funzionali.

Tutti questi file sono composti da un array di oggetti con la seguente struttura:
```json
{
    "id": "...",
    "urgenza": "Obb, Opt o Des",
    "desc": "Testo *Typst* valido...",
    "ref_uc": [
        "<Label-UC>"
    ],
    "ref_capitolato": [
        "Capitolato §z"
    ]
},
```
- `id`: Identificativo **univoco** del requisito, è importante che non ci siano requisiti con id duplicato.
    - Per i RD, inizia con "RD-"
    - Per i RF, inizia con "RF-"
    - Per i RNF, inizia con "RNF-"
- `urgenza`: Può essere "Obb", "Opt" o "Des"
- `desc`: La descrizione del requisito
    - **Questo campo viene interpretato come se fosse codice Typst**
- `ref_uc`: Riferimento a uno use case nell'AdR. Questi non sono tracciati in JSON, quindi il riferimento è al **label** con cui sono definiti gli UC nell'AdR
- `ref_capitolato`: Semplici stringhe di riferimento a sezioni del capitolato

## TA.json, TS.json
Questi file consentono il tracciamento rispettivamente di test di accettazione e test di sistema.

Questi file sono composti da un array di oggetti con la seguente struttura:
```json
{
    "id": "...",
    "descr": "Testo *Typst* valido...",
    "ref-req": "RQ-X oppure RF-blabla",
    "state": "NI, I, S o NS"
}
```
- `id`: Identificativo univoco del test
    - Per i TA, inizia con "TA-"
    - Per i TS, inizia con "TS-"
- `descr`: Descrizione del test. 
    - **Questo campo viene interpretato come se fosse codice Typst**
    - Attenzione che è con la **r**!
- `ref-req`: Riferimento al requisito
    - Per i TA, è un semplice riferimento al requisito di capitolato
    - Per i TS, è l'`id` di un **RF esistente**. Se l'id specificato non appartiene ad alcun RF, Typst andrà in errore
- `state`: Stringa che rappresenta stato del test
    - "NI": non implementato
    - "I": implementato
    - "S": superato
    - "NS": non superato

## TU.json
Questo file permette il tracciamento dei test di unità.

Il file è composto da un array di oggetti con seguente struttura:
```json
{
    "id": "TU-...",
    "descr": "...",
    "expected": "...",
    "state": "I, NI, S o NS"
},
```
- `id`: Identificativo univoco del test. Inizia con "TU-"
- `descr`: Descrizione del test
    - **Questo campo viene interpretato come se fosse codice Typst**
- `expected`: Valore atteso del test
    - **Questo campo viene interpretato come se fosse codice Typst**
- `state`: Stringa che rappresenta lo stato del test (vd. sopra)
