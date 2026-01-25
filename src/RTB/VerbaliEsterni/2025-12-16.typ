#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 16/12/2025 (M31)",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "17/12/2025",
      "Elia Ernesto Stellin", "Riccardo Graziani",
      "Versione stabile documento"
    ),
    (
      "0.1.0",
      "17/12/2025",
      "Elia Ernesto Stellin", "Riccardo Graziani",
      "Prima stesura verbale esterno del 16/12/2025"
    ),
    (
      "0.0.1", 
      "16/12/2025", 
      "Elia Ernesto Stellin", "Riccardo Graziani", 
      "Prima bozza verbale esterno del 16/12/2025"
    ),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
    "Elia Ernesto Stellin"
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    "Discussione sugli use cases prodotti",
    "Dubbi e chiarimenti sugli use cases",
    "Dubbi su metriche rilevanti da considerare",
    "Organizzazione prossimi incontri",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Riccardo_Graziani.png",
  verificatore-esterno: "Cristian Pirlog",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *16 dicembre 2025* si è svolto l'incontro con il proponente *M31 SRL*, in modalità remota tramite _Microsoft Teams_, dalle ore 14:30 alle 15:45.

L'incontro ha avuto l'obiettivo di mostrare al proponente gli use cases (UC) prodotti e di rispondere ai dubbi del gruppo concernenti i casi d'utilizzo del progetto in corso di sviluppo

= Resoconto

== Discussione sugli use cases prodotti
Durante la riunione in oggetto, il gruppo ha mostrato al proponente gli UC prodotti fino ad allora, contenuti nella versione *v0.7.0* del documento di *Analisi dei requisiti*.

Il confronto con l'azienda ha al contempo risolto alcuni dubbi del gruppo relativi agli use cases e ne ha fatti emergere altri, i quali andranno risolti con uno studio più approfondito del capitolato e dei suoi casi d'utilizzo. I punti salienti del dialogo sono riassunti nella @dubbi-chiarimenti.

== Dubbi e chiarimenti sugli use cases <dubbi-chiarimenti>
In questa sezione vengono riassunti i punti principali del dialogo tra il gruppo e l'azienda proponente, relativo ai dubbi del gruppo emersi durante la scrittura degli use cases.

Tutti i chiarimenti forniti dalla proponente delineeranno delle azioni di correzione e di ulteriore sviluppo degli use cases da parte del gruppo, durante la redazione dell'*Analisi dei requisiti* (#issue_full(39)).

=== Focus degli use cases
Il gruppo non era sicuro se gli use cases dovessero descrivere l'#gloss[MVP] che verrà consegna to nella fase di #gloss[PB], oppure se essi dovessero descrivere un ipotetico prodotto finale.

La proponente ha specificato che il focus degli use cases è sull'MVP.

=== Flusso di registrazione account e recupero credenziali
Il gruppo era incerto sullo sviluppo degli use cases relativi alla registrazione di account *Tenant User* da parte dei *Tenant Admin* e di account *Tenant Admin* da parte dei *Super Admin*, e sullo sviluppo degli use cases relativi al recupero password di un qualunque account. In entrambi i casi, si deve fornire all'utente preso in considerazione un metodo per accedere al proprio account o per recuperarne l'accesso.

La proponente ha specificato che queste due situazioni devono corrispondere a due casi d'uso diversi che utilizzano, però, un workflow analogo, lasciando al gruppo la decisione su come descriverlo. Il recupero/registrazione dell'account, infatti, può avvenire o inviando all'utente in oggetto una password temporanea o un link temporaneo a una pagina che consente all'utente di cambiare password a suo piacimento.

=== Visualizzazione di tipi di dati eterogenei ottenuti dai #gloss[sensori] <visualizzazione-dati-eterogenei>
Durante il dialogo con la proponente, il gruppo ha esposto perplessità su come si debbano visualizzare i diversi tipi di dato ottenuti dai sensori. Infatti, è stata espressa la necessità del #gloss[Gateway] di normalizzare i dati ricevuti dai #gloss[sensori], i quali possono rappresentare:
- Dati biometrici (battito cardiaco, ossigeno nel sangue, dati ECG, temperatura corporea)
- Dati ambientali (temperatura, umidità)

Ciascuna di queste misurazioni richiede un trattamento specifico, sia nella loro lettura e parsing, che nel mostrarle all'utente finale.

L'azienda ha specificato che i dati che la piattaforma #gloss[Cloud] riceve dal gateway devono essere conformi a degli *Schema* definiti dai *profili standard* #gloss[BLE], dai quali è possibile determinare univocamente il tipo dei dati ricevuti e il modo migliore per visualizzarli. Inoltre, è stato specificato che ai fini del progetto didattico è sufficiente che il simulatore di gateway supporti 4 o 5 di questi profili.

=== Gestione di visualizzazione di dati multipli ottenuti dai #gloss[sensori]
In luce al dubbio descritto nella @visualizzazione-dati-eterogenei, il gruppo ha chiesto al proponente quanti tipi di dati possono essere inviati da un sensore allo stesso momento.

_M31_ ha specificato che un sensore invia in un dato intervallo di tempo *uno e un solo tipo di dato* specifico (descritto da uno *Schema*).

=== Gestione della disattivazione di un sensore dal Cloud
Il gruppo non era sicuro se l'attivare/disattivare uno *specifico sensore* dalla dashboard Cloud potesse essere uno use case per i *Super Admin*.

_M31_ ha dichiarato che, poiché il Cloud comunica solamente con il Gateway, l'attivazione/disattivazione di un sensore possa essere compiuta solamente dal Gateway e non dalla piattaforma Cloud. Però l'azienda ha suggerito che il *Super Admin* deve poter inviare al Gateway un comando che permetta ad esso di non inviare al Cloud i dati di un certo sensore.

=== Comandi di configurazione del Gateway <comandi-config-gateway>
Nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2025-12-09.pdf")[*verbale esterno del 9 dicembre 2025*], è stata rilevata la funzionalità da parte dei *Super Admin* e dei *Tenant Admin* di poter configurare i parametri dei Gateway.

Il gruppo, però, è riuscito a rilevare solo la frequenza d'invio dei dati del gateway verso il cloud come unico parametro modificabile, non sapendo in quali altri modi un gateway potesse essere configurabile.

_M31_ ha dichiarato che un altro parametro di configurazione di un Gateway è il metodo d'invio dei dati stessi, fornendo come esempio la possibilità di inviare al Cloud dati normalizzati in "rolling average". Questa funzionalità può essere usata dal *Tenant Admin* per permettere al gateway di inviare dati approssimativi consumando meno traffico di rete nelle casistiche in cui è accettabile visualizzare dati più imprecisi.

// TODO: va bene "consigliato"?
A tale scopo, il proponente ha consigliato al gruppo di analizzare con quali metodi i dati vengano normalizzati e inviati sulla rete nell'ambito dell'IoT, in modo tale da comprendere meglio quali tecniche di normalizzazione siano adatti a quali profili #gloss[BLE].

=== UC per autenticazione del REST Client
Poiché il gruppo ha supposto che il REST Client debba inviare al cloud un token di autenticazione a ogni richiesta fatta, non si era certi se si dovesse includere lo use case di autenticazione del token del REST Client in ogni altro UC.

_M31_ ha dichiarato che è sufficiente inserire come precondizione di ogni UC del REST Client il fatto che questo sia autenticato e aggiungere solamente un UC di autenticazione dello stesso.

=== UC per _health check_ del sistema <health-check-sistema>
Il gruppo ha espresso un dubbio su come descrivere gli UC per soddisfare il *RQ 16* del #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[*capitolato*] di progetto. Nello specifico, non è sicuro se sia sensato descrivere uno UC di visualizzazione di salute (_health check_) del sistema se gli strumenti proposti da _M31_ a tale scopo, quali Grafana e Prometheus, forniscono nativamente delle dashboard di _observability_ del sistema. Il gruppo ha, infatti, ritenuto che non abbia senso sviluppare uno UC per una parte del sistema che non deve sviluppare (l'ipotetica dashboard offerta da Grafana e Prometheus).

Durante la riunione in oggetto non si è riusciti a giungere una conclusione, per cui questo dubbio verrà risolto chiedendo al prof. Cardin come agire.


== Dubbi su metriche rilevanti da considerare
=== Tempo di risposta
Il gruppo ha chiesto a _M31_ se il sistema da sviluppare debba rispettare delle prestazioni minime di tempo di risposta, per quanto riguarda la ricezione di dati dal Gateway.

Il proponente ha espresso che non è richiesta un tempo di risposta minimo.

=== Scalabilità automatica
Il gruppo non era sicuro se il sistema da sviluppare dovesse scalare automaticamente.

Il proponente ha espresso che la piattaforma non deve scalare automaticamente ma deve comunque essere scalabile, come specificato nel *capitolato*.

== Organizzazione dei prossimi incontri
A causa delle ferie natalizie, _M31_ ha specificato che non sarà disponibile per fornire feedback sul progetto didattico *dal 20 dicembre 2025 al 7 gennaio 2026* inclusi. Per cui, i successivi meeting andranno fissati oltre al *7 gennaio 2026*.

Durante la riunione in oggetto non è stata fissata la data del prossimo incontro, per cui questo avverrà per le vie brevi.

= Attività conseguenti
L'incontro in oggetto ha fatto emergere la necessità di approfondire gli UC presentati, descrivendoli in maggior dettaglio e dividendo gli UC considerati troppo generici, di definire gli UC che considerano il simulatore di Gateway come "sistema principale" e di approfondire i temi di normalizzazione dati (vd. @comandi-config-gateway) e _observability_ del sistema Cloud con Grafana e Prometheus (vd. @health-check-sistema).

Le task rilevate dal gruppo in seguito alla riunione in oggetto sono le seguenti:
#table(
  columns: (2fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Approfondire UC presentati],
  [Alessandro Dinato, Riccardo Graziani],
  [#issue(123)],

  [Dividere UC "troppo generici"],
  [Jaume Bernardi, Elia Ernesto Stellin],
  [#issue(124)],

  [Definire UC con Gateway come sistema principale],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(125), #issue(126)],

  [Approfondimento normalizzazione dati],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(133)],

  [Approfondimento Grafana+Prometheus],
  [Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Elia Ernesto Stellin],
  [#issue(134)]
)
