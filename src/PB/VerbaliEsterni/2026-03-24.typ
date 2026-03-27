#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 24/03/2026 (M31)",
  stato: "Verificato",
  versione: "1.0.0",
  partecipanti: (
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Siria Salvalaio",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Presentazione stato avanzamento lavori],
    [Stesura del test book],
    [Dubbi e domande],
  ),
  htmlId: "PB-VerbaliEsterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 24 marzo 2026 dalle 14:35 alle 15:00, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

Durante l'incontro, il gruppo ha aggiornato la proponente sullo stato di avanzamento dei lavori, focalizzandosi sulla definizione degli endpoint e sulla linearità dello sviluppo attuale. Sono stati definiti i requisiti per la stesura del *Test Book* (fondamentale per la validazione delle funzionalità obbligatorie) e sono state chiarite le modalità operative per la consegna finale, con particolare attenzione alla gestione della sicurezza e dei segreti.

= Resoconto
== Presentazione stato avanzamento lavori
Il gruppo ha presentato l'attuale stato di sviluppo, sottolineando che il progetto si sta avvicinando alla metà del ciclo produttivo:
- *Backend Dashboard*: Il lavoro procede in modo lineare dopo una fase iniziale di assestamento. Si è scelto di procedere con uno sviluppo "orizzontale": i test di integrazione verranno eseguiti alla fine del processo, evitando per ora verticalizzazioni eccessive su singoli package.
- *Interfacce*: Sono stati definiti e stabiliti gli endpoint di comunicazione tra backend e frontend.
- *Frontend*: Lo sviluppo della dashboard prosegue come previsto, integrando le componenti precedentemente avviate.

== Stesura del Test Book
La proponente ha richiesto formalmente la redazione di un *Test Book*, specificandone le finalità e i criteri:
- *Obiettivo*: Documentare test di validazione manuali per dimostrare il soddisfacimento dei requisiti obbligatori. Si differenzia dal manuale utente in quanto serve come storico delle funzionalità implementate.
- *Contenuto*: Devono essere inclusi circa 25 test essenziali (high-level), focalizzati sulle funzionalità utente.
- *Dettagli Tecnici*: Per ogni test vanno indicati la funzionalità verificata e i passaggi manuali per l'esecuzione. In caso di funzionalità non ancora implementate in UI, è ammesso l'uso di script per il mocking delle parti mancanti, purché non vi siano lacune nei requisiti obbligatori.
- *Consegna*: Il documento deve essere inviato entro il 9-10 aprile (il giovedì/venerdì precedente la consegna finale).

== Dubbi e domande
Sono stati chiariti i seguenti punti tecnici e logistici:
- *Modalità di Deploy*: Non è richiesto un deploy formale su server esterno. È sufficiente fornire la repository GitHub accompagnata da un file `README` esaustivo per un'esecuzione "plug&play".
- *Gestione Credenziali*: Per la produzione, i segreti di GitHub dovranno essere inviati tramite un archivio `.zip` criptato insieme al link della repository.
- *Gestione Tenant ID*: È stata approvata la soluzione di inserire il tenant ID tramite un campo `select` nei form, trattandosi di un prototipo funzionale.

= Riunioni future
La prossima riunione è confermata per il giorno *31 marzo 2026*, come precedentemente concordato.