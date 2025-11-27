#import "../../Templates/TemplateVerbale/template.typ": report

#show: report.with(
  titolo: "Verbale esterno 25/11/2025 (M31)",
  stato: "da verificare",
  versione: "0.1.0",
  registro-modifiche: (
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
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione

Il presente verbale attesta che in data *25 novembre 2025* si è svolto l'incontro con il proponente *M31 SRL*, in modalità mista (in presenza e da remoto tramite Microsoft Teams), dalle ore 10:03 alle 10:40.
Hanno partecipato:
- *in sede*: Alessandro Dinato, Elia Ernesto Stellin, Jaume Bernardi, Michele Dioli, Riccardo Graziani.
- *da remoto*:  Siria Salvalaio.

Come anticipato nel Verbale Esterno del 13 novembre, l’incontro odierno aveva l’obiettivo di approfondire, con il supporto dell’azienda , alcuni dubbi emersi sui casi d’uso. A seguito di una precedente comunicazione, era infatti stato richiesto un chiarimento su tali aspetti.

= Resoconto
== Discussione sui casi d'uso

L’incontro è stato organizzato per ottenere maggiore chiarezza sui casi d’uso. Durante la fase di “palestra” interna al gruppo sono emerse alcune domande che hanno rappresentato lo spunto della discussione.

/*NON SO COME METTERE o SE METTERE QUESTA PARTE */

È stata innanzitutto chiarita la catena logica che conduce alla definizione di un caso d’uso:

User Need → Design Input → Design Output

/*---------------------------------------------- */

I casi d’uso hanno il compito di rendere quantificabili gli User Need.

Trattamento dei casi d’uso per requisiti non funzionali / sicurezza
È stato chiarito che:
- Un caso d’uso è tale solo se coinvolge un attore.
- I requisiti non funzionali non vengono modellati tramite casi d’uso, bensì descritti attraverso specifiche, che definiscono come il software deve essere implementato per soddisfare i requisiti.

È stata inoltre fornita una definizione pratica di attore:

Un attore è una persona o un’entità esterna al sistema, che può agire su o attraverso il sistema.\

Per aiutare la comprensione sono stati discussi alcuni esempi presi dal nostro progetto:
- Il Gateway non è un attore.
- L’utente non può essere attore di sé stesso.
- Il Bluetooth è un attore, in quanto entità esterna non direttamente controllabile.

== Stabilire giorno settimanale per futuri incontri

È stato richiesto all’azienda di definire un giorno ricorrente per i futuri incontri, a causa delle indisponibilità di alcuni membri del gruppo in determinate giornate. Dopo un confronto interno, è stato proposto e approvato il martedì pomeriggio come giorno dedicato.\
Giorni e orari potranno comunque essere variati, purché comunicati con adeguato anticipo tramite email.\
Le due tipologie di incontro verranno alternate secondo il ciclo stabilito nel Verbale Esterno del 13 novembre.

#pagebreak()

= Conclusioni

Si è trattato del primo incontro nel quale M31 ha ricoperto il ruolo di mentore. Tutte le domande poste sono state accolte e affrontate con l’obiettivo di chiarire nel modo più completo possibile la tematica dei casi d’uso. \ Le spiegazioni fornite sono risultate chiare, mirate e utili a consolidare la comprensione dell’argomento.
I componenti del gruppo _GlitchHub Team_ ringraziano *M31 SRL* per l'accoglienza nella loro sede, la disponibilità, la chiarezza e la professionalità dimostrata.
