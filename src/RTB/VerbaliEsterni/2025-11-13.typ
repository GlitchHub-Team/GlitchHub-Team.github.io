#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 13/11/2025 (M31)",
  stato: "Verificato",
  versione: "1.0.1",
  registro-modifiche: (
    ("1.0.1", "18/11/2025", "Riccardo Graziani", "Siria Salvalaio", "Minori modifiche per coerenza"),
    (
      "1.0.0",
      "18/11/2025",
      "Riccardo Graziani",
      "Siria Salvalaio",
      "Correzione refusi e raffinamento scorrevolezza per versione stabile",
    ),
    ("0.0.1", "17/11/2025", "Riccardo Graziani", "Siria Salvalaio", "Bozza primo incontro con proponente"),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
    "Riccardo Graziani",
  ),
  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo", "M31 SRL"),
  odg: (
    "Stabilire canali di comunicazione asincrona",
    "Conoscere framework organizzativo di M31",
    "Analizzare insieme il testo del capitolato",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *13 novembre 2025* si è svolto l'incontro con il #gloss[proponente] *M31 SRL*, in modalità mista (in presenza e da remoto tramite Microsoft Teams), dalle ore 11:00 alle 12:00.
Hanno partecipato:
- *in sede*: Elia Ernesto Stellin, Michele Dioli, Riccardo Graziani;
- *da remoto*: Alessandro Dinato, Siria Salvalaio, Hossam Ezzemouri, Jaume Bernardi.

La riunione è stata convocata a seguito dell'aggiudicazione del #gloss[capitolato d'appalto] C7: _Sistema di acquisizione dati da sensori_ da parte di GlitchHub Team. L'incontro aveva l'obiettivo di presentare ufficialmente il gruppo e conoscere i referenti di M31:
- *Luca Cossaro*
- *Moones Mobaraki*
- *Cristian Pirlog*

= Resoconto
== Canali di comunicazione asincroni
L'azienda si è detta disponibile a creare un canale privato su Microsoft Teams, precisando che in caso di comunicazioni brevi la mail resta il modo più rapido per restare in contatto. A tal fine è stato creato l'indirizzo dedicato alle comunicazioni di progetto: *swe\@m31.com*.

== Framework organizzativo M31
=== Metodologia di lavoro
Si è approfondito con Luca Cossaro del _#gloss[way of working]_ adottato da M31. L'azienda adotta una metodologia #gloss[agile], utilizzando *#gloss[Scrum]* per i progetti più intensivi e *Kanban* per quelli a ritmo più disteso. Dopo una breve confronto si è concordato di adottare un #gloss[framework] #gloss[agile], definendo due tipologie di meeting ricorrenti:
- *settimanale di allineamento*, in cui M31 assume un ruolo di mentore per discutere dubbi, eventuali ritardi e criticità. L'azienda ha precisato che non è necessaria la presenza dell'intero gruppo a questi incontri;
- *bisettimanale strutturato*, in cui l'azienda si pone come cliente e il gruppo presenta il lavoro svolto e la pianificazione delle attività successive.
Il periodo di tempo tra questi incontri formali rimane flessibile in base alle esigenze del gruppo. \
Per l'organizzazione interna del gruppo è stato suggerito di adottare un approccio ibrido *#gloss[Scrum]-Kanban*, definendo obiettivi chiari per ogni *#gloss[sprint]*.

== Analisi del capitolato
=== Architettura
Una parte significativa della riunione è stata dedicata all'analisi del capitolato insieme a Cristian Pirlog. La discussione si è focalizzata sul ruolo dei *gateway* e sull'*architettura* proposta, in particolare è stato evidenziato che:
- i dati grezzi verranno *simulati* tramite un simulatore di gateway;
- il simulatore dovrà *standardizzare* i dati e disporre di un *buffer* in grado di conservarli in ingresso in caso di disconnessione;
- l'architettura proposta è da considerarsi *indicativa*, e i dettagli implementativi verranno definiti nelle fasi successive.

=== Analisi dei requisiti
In merito ai #gloss[requisiti funzionali], sono stati evidenziati i seguenti:
- *RQ2.2*: è importante garantire l'invio al #gloss[cloud] tramite protocolli sicuri;
- *RQ3*: è essenziale assicurare l'*isolamento* logico tra diversi #gloss[tenant];
- *RQ5*: l'interfaccia web non deve risultare *complessa*; è sufficiente una #gloss[UI] essenziale e intuitiva.

Per quanto riguarda i #gloss[requisiti funzionali] opzionali, è stata indicata come prioritaria l'integrazione con applicazioni di terze parti (*RQ6*), rispetto a prevedere meccanismi di alert (*RQ7*). \

Tra i #gloss[requisiti di sicurezza] opzionali, l'attenzione dovrebbe concentrarsi sulla creazione di un sistema di audit e tracciamento (*RQ12*), poichè gli altri requisiti sono stati ritenuti non essenziali (*RQ11*) o eccessivamente complessi (*RQ13*).

=== Test e validazione
L'azienda M31 ha sottolineato l'importanza della *qualità* del codice e della *#gloss[validazione]* del sistema tramite test strutturati. Le attività di testing verranno eseguite durante *meeting dedicati*, previa condivisione del test book sviluppato dal gruppo. L'azienda ha chiarito che non sono richiesti *test di scalabilità* e *penetration test*.

= Conclusioni
L'incontro è stato estremamente utile per chiarire sia gli aspetti organizzativi sia i dubbi relativi ai requisiti richiesti dal capitolato.
I componenti del gruppo _GlitchHub Team_ ringraziano *M31 SRL* per l'accoglienza nella loro sede, la disponibilità, la chiarezza e la professionalità dimostrata.


