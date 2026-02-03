#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 27/01/2026 (M31)",
  stato: "In attesa di modifiche",
  registro-modifiche: (
    (
      "0.1.1",
      "03/02/2026",
      "Elia Ernesto Stellin",
      "-",
      [Applicate correzioni relative a verifica della versione 0.1.0.]
    ),
    (
      "0.1.0",
      "01/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Stesura verbale esterno del 27/01/2026",
    ),
    (
      "0.0.1",
      "01/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Bozza iniziale verbale esterno del 27/01/2026",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Presentazione dello stato avanzamento lavori],
    [Comprensione del #gloss[simulatore di gateway]],
    [Discussione e dubbi sulla struttura del #gloss[PoC]],
    [Separazione dei dati tra #gloss[tenant]],
    [Gestione perdita di dati con #gloss[TimescaleDB]],
    [Contrattazione su #gloss[use case] suggeriti in precedenza],
    [Tecnologie suggerite],
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 27 gennaio 2026 dalle 14:30 alle 15:45, si è svolto l'incontro con la proponente M31 SRL, in modalità remota.

L'incontro ha avuto l'obiettivo di presentare lo stato di avanzamento dei lavori e di discutere sulla struttura del PoC rilevata dal gruppo e su come soddisfare specifici requisiti del prodotto con le tecnologie rilevate.

= Resoconto
Di seguito si riportano i punti salienti dell'incontro in oggetto, notando che ogni singolo argomento di discussione si rivelerà utile nella produzione del #gloss[PoC] e dell'#gloss[MVP] e, in generale, per una maggiore comprensione del capitolato.

== Presentazione stato avanzamento lavori
Il gruppo ha raggiunto una versione stabile dei requisiti del prodotto, i quali sono conformi alle attese della proponente. Inoltre, il gruppo ha iniziato le attività di studio delle tecnologie da usare nel #gloss[PoC], identificandone anche gli elementi architetturali principali.

== Comprensione del #gloss[simulatore di gateway]
Il gruppo ha posto alla proponente una serie di domande concernenti il funzionamento specifico del simulatore di gateway. Le domande poste e le relative risposte ricevute dalla proponente sono riportate di seguito.

=== Implementazione risposta a comandi del cloud da parte del Gateway
Il #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[#gloss[capitolato d'appalto]] pone come requisito funzionale obbligatorio (RQ 2.5) la possibilità che il #gloss[simulatore di gateway] risponda a #gloss[comandi] ricevuti dal #gloss[Cloud].

Il gruppo ha rilevato due possibili soluzioni per soddisfare questo requisito, chiedendo alla proponente quale fosse preferibile. Le opzioni sono le seguenti:
1. Usare una soluzione _publisher/subscriber_ (_Pub/Sub_) in cui il simulatore di gateway è al contempo _Publisher_ dei dati IoT e _Subscriber_ per i comandi ricevuti dal cloud. L'unico problema di ciò è il fatto che si fornisce al #gloss[simulatore di gateway] la duplice responsabilità di inviare i dati e ricevere i comandi.
2. Usare una soluzione che sfrutta il #gloss[long polling], ovvero in cui il #gloss[simulatore di gateway] apre una connessione persistente con l'infrastruttura #gloss[Cloud], chiedendo regolarmente a quest'ultima se siano presenti dei comandi eseguibili da parte del gateway.

La proponente ha dichiarato che la prima soluzione è altamente preferibile perché:
- Fornire al #gloss[simulatore di gateway] la duplice responsabilità di inviare dati e ricevere comandi non è un problema, non essendoci altro modo di ovviare ciò.
- Usare il #gloss[long polling] potrebbe essere problematico se l'infrastruttura #gloss[Cloud] dovesse scalare orizzontalmente, in quanto la connessione persistente creata non sarebbe in grado di raggiungere tutti i nodi dell'infrastruttura #gloss[Cloud] interessati nella comunicazione con il #gloss[gateway].

=== Scelta del client usato dal Gateway
Il gruppo ha chiesto se fosse preferibile che, nella comunicazione con l'infrastruttura #gloss[Cloud] tramite #gloss[NATS], il gateway usasse il client nativo a tale tecnologia oppure un client #gloss[MQTT] specifico.

La proponente ha dichiarato che è sufficiente utilizzare il client nativo di #gloss[NATS] in quanto, nel contesto dell'#gloss[MVP], il #gloss[simulatore di gateway] non deve soddisfare particolari requisiti di performance, che si potrebbero soddisfare usando il client #gloss[MQTT].

=== Utilizzo di _ingestion service_
Il gruppo ha chiesto se fosse necessario l'utilizzo di un _ingestion service_ da porre come strato di protezione tra il #gloss[simulatore di gateway] e il #gloss[Cloud], con lo scopo di isolare totalmente #gloss[NATS] dal resto dell'infrastruttura per:
- Eseguire autonomamente autenticazione, autorizzazione e validazione dei messaggi in ingresso;
- Rendere il #gloss[simulatore di gateway] indipendente da #gloss[NATS].

La proponente ha dichiarato che tale servizio non è necessario,  poiché non si pongono requisiti di scalabilità stringenti sul software, in quanto prodotto di un #gloss[progetto didattico].

== Discussione e dubbi sulla struttura del #gloss[PoC]
Il gruppo ha delineato come elementi principali del #gloss[PoC] i seguenti elementi:
1. Un servizio in #gloss[Go] che esegue il _publishing_ di dati su #gloss[NATS], simulando la funzionalità di publishing del #gloss[gateway] 
2. L'istanza #gloss[NATS] che agisce da _message broker_
3. Delle istanze #gloss[Go] che _consumano_ i dati provenienti da #gloss[NATS] e li salvano in un'istanza di #gloss[TimescaleDB]
4. Un servizio di #gloss[API] REST che accede ai dati salvati in #gloss[TimescaleDB].
5. Un web server che fornisce un'applicazione web scritta in #gloss[Angular.js] che accede ai dati dei sensori

Il gruppo non era sicuro se utilizzare #gloss[Go] o un linguaggio più strutturato come C\# per i servizi di #gloss[API] Rest (Punto 3) e di _data consuming_ (Punto 4), poiché #gloss[Go] non è considerato un linguaggio pienamente _object oriented_ e manca di alcune funzionalità che facilitano lo sviluppo di applicazioni complesse.

La proponente, però, ha caldamente consigliato al gruppo di utilizzare #gloss[Go] al posto di C\# onde evitare di dover imparare tre linguaggi (C\#, #gloss[Go] e JavaScript) invece che solo due (#gloss[Go] e JavaScript). Inoltre, sebbene #gloss[Go] non sia un linguaggio tradizionalmente con molte librerie, utilizzarlo per la creazione di #gloss[API] REST è ampiamente facilitato dall'esistenza di framework quali #link("https://gin-gonic.com/en/")[#gloss[Gin]] e #link("https://gofiber.io/")[#gloss[Fiber]].

== Separazione di dati tra tenant
Il #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[#gloss[capitolato d'appalto]] pone come requisito funzionale obbligatorio (RQ 3) la piena separazione dei dati tra #gloss[tenant] diversi.

Il gruppo ha rilevato due soluzioni possibili per soddisfare questo requisito, non essendo sicuro su quale soluzione scegliere. Le opzioni sono le seguenti:
1. Usare una singola istanza di #gloss[TimescaleDB] per salvare i dati di tutti i #gloss[tenant], ma separarne l'accesso tramite l'utilizzo di #gloss[Schema]. Questa soluzione rende più immediato lo sviluppo dell'infrastruttura del sistema di persistenza, ma al contempo rendendolo anche meno sicuro da attacchi esterni.
2. Creare un'istanza separata per ogni singolo #gloss[tenant], rendendo l'accesso ai dati più sicuro, ma rendendo il sistema più complicato da creare e mantenere, in quanto sarebbe richiesto anche l'utilizzo di un _resolver_ e un _secrets manager_ per associare a ogni #gloss[tenant] l'indirizzo dell'istanza del database che ne contiene i dati e le credenziali per accedervi.

La proponente ha dichiarato che per quanto concerne l'#gloss[MVP] la prima soluzione, per quanto parziale, è sufficiente, ma informandoci che in un progetto reale la separazione tra i dati dei #gloss[tenant] è un requisito più stringente.

== Gestione perdita di dati con #gloss[TimescaleDB]
Il gruppo ha deciso di utilizzare #gloss[TimescaleDB] per la persistenza dei dati ottenuti dal servizio di _data consuming_, data la sua performance nell'inserimento di massa (_bulk insert_) di dati associati a una scala temporale.

Il gruppo ha, però, notato che per sfruttare la funzionalità di _bulk insert_ di #gloss[TimescaleDB] è necessario che l'istanza #gloss[Go] di _data consuming_ salvi i dati raccolti in memoria volatile prima di effettuare l'operazione sul database, comportando però un rischio di perdita di dati in caso l'istanza #gloss[Go] riscontri un'avaria e si spenga. La proponente ha specificato che la perdita di dati è inammissibile e che il gruppo deve definire meglio questi dettagli dopo uno studio più approfondito delle tecnologie scelte.

Perciò, il gruppo ha deciso di cercare un'alternativa che possa comunque sfruttare la funzionalità di _bulk insert_ garantendo al contempo che nessun dato venga mai perso durante questa procedura.

== Contrattazione su #gloss[use case] suggeriti in precedenza
Data la vicinanza della scadenza della revisione dell'#gloss[RTB], il gruppo ha chiesto alla proponente se fosse necessario includere nel documento di #gloss[Analisi dei Requisiti] i seguenti #gloss[use case] opzionali identificati in incontri precedenti:
- Funzionalità di log di sistema che tiene traccia di tutti i #gloss[comandi] inviati a uno specifico #gloss[gateway];
- Funzionalità di invio email in caso di alert;
- Visualizzazione di costo monetario speso nell'utilizzo di una specifica #gloss[API Key];
- Visualizzazione di mappa nella dashboard che mostra le posizioni geografiche dei #gloss[gateway] associati al #gloss[tenant].

Il gruppo, infatti, ritiene che questi #gloss[casi d'uso] siano estremamente secondari e ininfluenti sul progetto finale e aggiungerli all'#gloss[Analisi dei Requisiti] potrebbe causare ritardi non previsti.

La proponente ha dichiarato che i casi d'uso sopra specificati non sono importanti in vista dell'#gloss[MVP].

== Tecnologie suggerite
In vista delle discussioni precedentemente riportate, *M31 Srl* ha consigliato l'approfondimento di #gloss[Gin] per la creazione del servizio di #gloss[API] REST.

= Attività conseguenti
#table(
  columns: (2fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Sviluppo parte #gloss[NATS]], [Alessandro Dinato], [#issue(1, repo: "poc")],

  [Sviluppo collegamento servizio _data consumer_ - #gloss[TimescaleDB]], [Alessandro Dinato], [#issue(4, repo: "poc")],

  [Studio framework #gloss[Gin]], [Michele Dioli, Jaume Bernardi, Elia Ernesto Stellin], [#issue(6, repo: "poc")],

  [Sviluppo API REST con #gloss[Gin]], [Michele Dioli, Jaume Bernardi, Elia Ernesto Stellin], [#issue(7, repo: "poc")],

  [Sviluppo dashboard #gloss[Angular.js]], [Siria Salvalaio, Riccardo Graziani], [#issue(11, repo: "poc")],
)
