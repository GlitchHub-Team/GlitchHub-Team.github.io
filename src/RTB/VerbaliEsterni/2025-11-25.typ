#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 25/11/2025 (M31)",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    ("1.0.0", "28/11/2025", "Michele Dioli", "Siria Salvalaio", "Riviste frasi per migliorare la scorrevolezza"),
    ("0.1.0", "25/11/2025", "Michele Dioli", "Siria Salvalaio", "Bozza secondo incontro con M31"),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    "Discussione sui casi d'uso",
    "Stabilire giorno settimanale per futuri incontri",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  verificatore-esterno: "Cristian Pirlog",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *25 novembre 2025* si è svolto l'incontro con il #gloss[proponente] *M31 SRL*, in modalità mista (in presenza e da remoto tramite Microsoft Teams), dalle ore 10:03 alle 10:40.
Hanno partecipato:
- *in sede*: Alessandro Dinato, Elia Ernesto Stellin, Jaume Bernardi, Michele Dioli, Riccardo Graziani.
- *da remoto*:  Siria Salvalaio.

Come anticipato nel Verbale Esterno del 13 novembre, l'incontro odierno aveva l'obiettivo di approfondire, con il supporto dell'azienda, alcuni dubbi emersi sui casi d'uso. A seguito di una precedente comunicazione, era infatti stato richiesto un chiarimento su tali aspetti.

= Resoconto
== Discussione sui casi d'uso
L'incontro è stato organizzato per ottenere maggiore chiarezza sui casi d'uso. Durante la fase di “palestra” interna al gruppo sono emerse alcune domande che hanno rappresentato lo spunto della discussione.

È stato chiarito che i casi d'uso hanno il compito di rendere quantificabili gli User Need.\

Durante l'incontro sono stati approfonditi alcuni punti importanti riguardo alla gestione dei casi d'uso relativi ai #gloss[requisiti non funzionali].
Anzitutto, è stato ribadito che un caso d'uso può essere definito tale soltanto quando coinvolge un attore. I #gloss[requisiti non funzionali], invece, non vengono rappresentati tramite casi d'uso: per questi si utilizzano delle specifiche che descrivono nel dettaglio come il software deve essere realizzato affinché tali requisiti siano soddisfatti.\

Per rendere più chiari questi concetti, sono stati discussi alcuni esempi tratti direttamente dal nostro progetto. È stato sottolineato che:
- il Gateway non può essere considerato un attore;
- l'utente non può essere attore di sé stesso nei casi d'uso;
- il Bluetooth, invece, è considerato un attore, poiché rappresenta un'entità esterna non completamente controllabile dal sistema.

== Stabilire giorno settimanale per futuri incontri
È stato richiesto all'azienda di definire un giorno ricorrente per i futuri incontri, a causa delle indisponibilità di alcuni membri del gruppo in determinate giornate. \
Dopo un confronto interno, è stato proposto e approvato il martedì pomeriggio come giorno dedicato.
Giorni e orari potranno comunque essere variati, purché comunicati con adeguato anticipo tramite email.

Le due tipologie di incontro verranno alternate secondo il ciclo stabilito nel Verbale Esterno del 13 novembre.

#pagebreak()

= Conclusioni
Si è trattato del primo incontro nel quale M31 ha ricoperto il ruolo di mentore. Tutte le domande poste sono state accolte e affrontate con l'obiettivo di chiarire nel modo più completo possibile la tematica dei casi d'uso. \
Le spiegazioni fornite sono risultate chiare, mirate e utili a consolidare la comprensione dell'argomento.
I componenti del gruppo _GlitchHub Team_ ringraziano *M31 SRL* per l'accoglienza nella loro sede, la disponibilità, la chiarezza e la professionalità dimostrata.
