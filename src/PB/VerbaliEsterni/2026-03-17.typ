#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 17/03/2026 (M31)",
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
    [Discussione dubbi tecnici su microservizi e persistenza],
    [Gestione accessi e sicurezza],
    [Pianificazione e data di consegna],
  ),
  htmlId: "PB-VerbaliEsterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 17 marzo 2026 dalle 14:35 alle 15:00, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

Durante l'incontro il gruppo ha esposto l'avanzamento della codifica dei vari moduli e ha discusso con la proponente circa alcune scelte implementative riguardanti l'architettura dei microservizi, la gestione del database e le politiche di sicurezza.

= Resoconto
== Presentazione stato avanzamento lavori
Il gruppo ha illustrato lo stato attuale dello sviluppo:
- *Simulatore di Gateway*: la fase di codifica è conclusa; sono previste sessioni di refactoring per ottimizzare il codice esistente.
- *Backend Dashboard*: è iniziato lo sviluppo delle funzionalità relative alle entità "User" e "Tenant".
- *Frontend Dashboard*: lo sviluppo dei componenti dell'interfaccia è stato avviato ed è ad un buon punto.


== Discussione dubbi tecnici su microservizi e persistenza
=== Gestione messaggi di Hello
Il gruppo ha proposto la creazione di un microservizio dedicato alla ricezione dei messaggi di "Hello" (autenticazione) dai gateway. 
*M31* ha consigliato di adottare una soluzione più semplice, integrando una goroutine separata direttamente nel backend della dashboard. Sebbene identificata come una soluzione sub-ottimale (anti-pattern), è stata approvata per favorire la semplicità e il rispetto delle tempistiche attuali; questa soluzione sarebbe da raffinare in versioni successive del prodotto.

=== Architettura del database
È stata discussa la scelta di utilizzare due istanze di persistenza separate: PostgreSQL per i dati utente e TimescaleDB per i dati IoT. Nonostante il rischio di lievi inconsistenze nella sincronizzazione degli schemi tra le due istanze, la proponente ha approvato l'approccio, ritenendo l'eventuale inconsistenza non problematica per gli obiettivi dell'MVP.

=== Inizializzazione stream JetStream
Per quanto riguarda la creazione degli stream di NATS JetStream, è stato deciso di delegare tale responsabilità a degli script all'interno della pipeline di *CI/CD*, esternamente alla logica applicativa. La proponente ha confermato che è la soluzione più adatta al contesto del progetto didattico e alle competenze tecniche del gruppo.


== Gestione accessi e sicurezza
=== Gestione dei Secret
La soluzione approvata prevede l'utilizzo di file `.env` per lo sviluppo locale e dei *Docker Secrets* per il deployment. È stato inoltre autorizzato l'inserimento di dati pubblici (come i JWT di NATS) direttamente nella repository.

=== Gestione Super Admin e Tenant Admin
È emersa la necessità di gestire correttamente la gerarchia amministrativa. La proponente ha indicato che ogni Tenant Admin deve poter gestire gli altri, garantendo però l'impossibilità di eliminare l'ultimo Super Admin del sistema. Si è concordato di implementare una funzione di migrazione per la creazione del primo Super Admin durante l'inizializzazione del database.

== Pianificazione e data di consegna
Il gruppo ha evidenziato l'infattibilità della consegna prevista per il 27 marzo a causa della mole di lavoro residua. *M31* si è mostrata favorevole a uno slittamento della data, riconoscendo l'ampiezza dello scope progettuale. Il gruppo comunicherà la nuova data stimata dopo un'analisi interna.

= Riunioni future
La prossima riunione è fissata per il giorno *24 marzo 2026*. È stata annotata l'indisponibilità di Cristian Pirlog per le date del 1 aprile e del 7-8 aprile.

= Registro delle prossime task 
#table(
  columns: (1fr, 3fr),
  align: (left, left),
  [*Componente*], [*Descrizione Task*],
  [Backend], [Creazione goroutine per l'ascolto dei messaggi di Hello.],
  [NATS-JetStream], [Sviluppo script CI/CD per l'inizializzazione degli stream.],
  [Backend], [Revisione logica di gestione Tenant Admin e Super Admin.],
)