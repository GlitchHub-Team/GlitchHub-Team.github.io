#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 31/03/2026 (M31)",
  stato: "Verificato",
  versione: "1.0.0",
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Siria Salvalaio",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Presentazione stato avanzamento lavori],
    [Dubbi e domande],
  ),
  htmlId: "PB-VerbaliEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  verificatore-esterno: "Cristian Pirlog",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 31 marzo 2026 dalle 14:30 alle 14:45, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

L'obiettivo dell'incontro è stato il monitoraggio dello stato di avanzamento del software, la definizione delle priorità relative alle fasi di testing e la risoluzione delle criticità inerenti alla gestione dei dati sensibili (Secret) per la consegna.

= Resoconto
== Presentazione stato avanzamento lavori
Il gruppo ha aperto la riunione confermando che, allo stato attuale, non sussistono più dubbi interpretativi sui requisiti del progetto. La fase di sviluppo è in uno stadio avanzato: quasi tutti i microservizi risultano completi, fatta eccezione per le componenti di Backend e Frontend e per le logiche di integrazione tra i vari moduli. \

Nello specifico, per quanto riguarda i package del backend:
- Le componenti *Auth*, *Gateway*, *User* e *Tenant* hanno concluso la fase di scrittura del codice; per la prima sono in corso i Test Unitari, mentre per le restanti si attende l'implementazione dei Test di Integrazione.
- I moduli relativi a *Sensor*, *Real Time Data* e *Historical Data* sono attualmente l'oggetto principale dell'attività di codifica e rifinitura.


== Dubbi e domande
=== Test di sistema e accettazione
Il confronto si è focalizzato sulla priorità da assegnare ai Test di Sistema (TS) rispetto ai Test di Accettazione (TA). La proponente ha chiarito che, sebbene i TS siano fondamentali per la stabilità tecnica, i TA restano lo strumento primario per validare le macro-funzionalità della piattaforma. È stato quindi concordato di mantenere i test di accettazione eseguibili anche manualmente (nonostante l'uso di Playwright per l'automazione), così da facilitare la revisione da parte di M31. Il gruppo si è inoltre impegnato a inviare il Test Book con qualche giorno di anticipo, evitando sessioni di "over-testing" sui sistemi interni per non rallentare lo sviluppo core.

=== Sicurezza e gestione delle credenziali (secrets)
È stato affrontato il problema della trasmissione delle credenziali, che non possono essere incluse nella repository pubblica per motivi di sicurezza. La soluzione concordata prevede l'invio, contestuale alla consegna del codice, di un archivio ZIP separato contenente esclusivamente i Secret. Per agevolare il deployment lato proponente, il pacchetto includerà uno script dedicato alla configurazione automatica dell'ambiente, garantendo così la protezione dei dati sensibili senza appesantire le procedure di installazione.
