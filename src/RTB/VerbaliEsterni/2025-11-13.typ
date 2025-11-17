#import "../../Templates/TemplateVerbale/template.typ": report

#show: report.with(
  titolo: "Verbale esterno 13/11/2025 (M31)",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    ("0.0.1", "17/11/2025", "Riccardo Graziani", "-", "Bozza primo incontro con proponente"),
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
  distribuzione: ("GlitchHub Team", "Prof. Vardenega Tullio", "Prof. Cardin Riccardo", "M31 SRL"),
  odg: (
    "Stabilire canali di comunicazione asincrona",
    "Conoscere framework organizzativo di M31",
    "Analizzare insieme il testo del capitolato"
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *13 novembre 2025* si è svolto l'incontro con il proponente *M31 SRL*, in modalità mista (in presenza e da remoto tramite Microsoft Teams), dalle ore 11:00 alle 12:00.
Hanno partecipato:
- *in sede*: Elia Ernesto Stellin, Michele Dioli, Riccardo Graziani
- *da remoto*: Alessandro Dinato, Siria Salvalaio, Hossam Ezzemouri, Jaume Bernardi

La riunione è stata organizzata a seguito dell'aggiudicazione del capitolato d'appalto C7: _Sistema di acquisizione dati da sensori_ da parte di GlitchHub Team, con l'obiettivo di presentare ufficialmente il gruppo e conoscere i referenti di M31:
- *Luca Cossaro*
- *Moones Mobaraki*
- *Cristian Pirlog*

= Resoconto
== Canali di comunicazione asincroni
L'azienda si è detta disponibile a creare un canale privato su Microsoft Teams, precisando però che la mail resta il modo più rapido per restare in contatto. A tal fine è stato creato l'indirizzo dedicato alle comunicazioni di progetto: *swe\@m31.com*.

== Framework organizzativo M31
=== Metodologia di lavoro
Abbiamo discusso con Luca Cossaro del way of working utilizzato da M31. L'azienda adotta una metodologia agile, utilizzando *Scrum* per i progetti più intensivi e *Kanban* per quelli a ritmo più disteso. È stato quindi concordato di adottare il framework Scrum, definendo due tipologie di meeting ricorrenti:
- *settimanale di allineamento*, in cui M31 assume un ruolo di mentore per discutere dubbi, eventuali ritardi e criticità. L'azienda ha precisato come non sia necessaria la presenza di tutto il gruppo a questi incontri settimanali;
- *bisettimanale strutturato*, in cui l'azienda si pone come cliente e il gruppo presenta il lavoro svolto e la pianificazione delle attività future. Il periodo di tempo tra questi incontri formali rimane sempre negoziabile in base alle necessità del gruppo.
Per quanto riguarda l'organizzazione interna del gruppo, l'azienda ha consigliato di utilizzare un misto *Scrum-Kanban* e di definire obiettivi chiari per ogni *sprint*.

== Analisi del capitolato
=== Architettura
Una parte significativa della riunione è stata dedicata all'analisi del capitolato insieme a Cristian Pirlog. L'attenzione si è concentrata sul ruolo dei *gateway* e sull'*architettura* proposta, in particolare:
- i dati grezzi verranno *simulati* tramite un simulatore di gateway;
- l simulatore dovrà *standardizzare* i dati e disporre di un *buffer* capace di conservarli in ingresso in caso di disconessione;
- l'architettura proposta è da considerarsi *indicativa*, e i dettagli verranno definiti in fasi successive.

=== Analisi dei requisiti
In merito ai requisiti funzionali:
- *RQ2.2*: è importante garantire l'invio al cloud attraverso protocolli sicuri;
- *RQ3*: è essenziale assicurare l'*isolamento* logico tra diversi tenant;
- *RQ5*: l'interfaccia web non deve essere *complessa*; è sufficiente una UI essenziale;

Per quanto riguarda i requisiti funzionali opzionali, è preferibile dare priorità all'integrazione con applicazioni di terze parti (*RQ6*) rispetto a prevedere meccanismi di alert (*RQ7*). \

Tra i requisiti di sicurezza opzionali, l'attenzione dovrebbe concentrarsi sulla creazione di un sistema di audit e tracciamento (*RQ12*), poichè gli altri requisiti sono stati ritenuti non essenziali (*RQ11*) o eccessivamente complessi (*RQ13*).

=== Test e validazione
L'azienda M31 ha sottolineato l'importanza attribuita alla *qualità* del codice e alla *validazione* del sistema tramite test strutturati. I test verranno eseguiti durante *meeting appositi*, previa condivisione del test book sviluppato dal gruppo. L'azienda ha chiarito che non sono richiesti *test di scalabilità* e *penetration test*.

= Conclusioni
L'incontro è stato estremamente utile per poter chiarire dubbi organizzativi e dubbi relativi ai requisiti richiesti dal capitolato.
I componenti del gruppo _GlitchHub Team_ ringranziano *M31 SRL* per averci accolto nella loro sede e per la disponibilità, la chiarezza e la professionalità dimostrata.


