#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 09/12/2025 (M31)",
  stato: "Bozza",
  versione: "0.0.1",
  registro-modifiche: (
    (
      "0.0.1", 
      "16/12/2025", 
      "Elia Ernesto Stellin", "-", 
      "Prima stesura verbale esterno del 09/12/2025"
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
    "Dubbi sui requisiti del capitolato",
    "Organizzazione prossimi incontri",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *16 dicembre 2025* si è svolto l'incontro con il proponente *M31 SRL*, in modalità remota tramite _Microsoft Teams_, dalle ore 14:30 alle 15:45.
Hanno partecipato Jaume Bernardi, Alessandro Dinato, Michele Dioli, Riccardo Graziani, Siria Salvalaio ed Elia Ernesto Stellin da remoto.

L'incontro ha avuto l'obiettivo di mostrare al proponente gli use cases prodotti e di rispondere ai dubbi del gruppo concernenti i casi d'utilizzo del progetto in corso di sviluppo

= Resoconto

== Discussione sugli use cases prodotti
Durante la riunione in oggetto, il gruppo ha mostrato al proponente gli use cases prodotti fino ad allora, contenuti della versione *v0.6.0* del documento di *Analisi dei requisiti*.

Il confronto con l'azienda ha al contempo risolto alcuni dubbi del gruppo relativi agli use cases e ne ha fatti emergere altri, i quali vanno risolti con uno studio più approfondito del capitolato e dei suoi casi d'utilizzo. I punti salienti del dialogo sono riassunti nella @dubbi-chiarimenti.

== Dubbi e chiarimenti sugli use cases <dubbi-chiarimenti>
In questa sezione vengono riassunti i punti principali del dialogo tra il gruppo e l'azienda proponente relativo ai dubbi del gruppo emersi durante la scrittura degli use cases.

Tutti i chiarimenti forniti dalla proponente delineeranno delle azioni di correzione e di ulteriore sviluppo degli use cases da parte del gruppo, durante la redazione dell'*Analisi dei requisiti*.

=== Focus degli use cases
Il gruppo non era sicuro se gli use cases dovessero descrivere l'#gloss[MVP] che verrà consegnato nella fase di #gloss[PB], oppure se essi dovessero descrivere un ipotetico prodotto finale.

La proponente ha specificato che il focus degli use cases è sull'MVP.

=== Flusso di registrazione account e recupero credenziali
Il gruppo era incerto sullo sviluppo degli use cases relativi alla registrazione di account *Tenant User* da parte dei *Tenant Admin* e di account *Tenant Admin* da parte dei *Super Admin*, e sullo sviluppo degli use cases relativi al recupero password di un qualunque account. In entrambi i casi, si deve fornire all'utente preso in considerazione un metodo per accedere al proprio account o per recuperarne l'accesso.

La proponente ha specificato che queste due situazioni corrispondono a due casi d'uso diversi richiedendo che ci sia un workflow analogo per entrambe le situazioni, lasciando però al gruppo la decisione su come implementarlo. Il recupero/registrazione dell'account può avvenire inviando all'utente in oggetto una password temporanea oppure un link temporaneo che consente all'utente di cambiare password a suo piacimento.

=== Visualizzazione di tipi di dati eterogenei ottenuti dai #gloss[sensori] <visualizzazione-dati-eterogenei>
Durante il dialogo con la proponente, il gruppo ha esposto perplessità su come si dovrebbero visualizzare i diversi tipi di dato ottenuti dai sensori. Infatti, il capitolato stesso esprime la necessità del #gloss[Gateway] di normalizzare i dati ricevuti dai #gloss[sensori], i quali possono rappresentare:
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

=== Comandi di configurazione del Gateway
Nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliEsterni/2025-12-09.pdf")[*verbale esterno del 9 dicembre 2025*], è stata rilevata la funzionalità da parte dei *Super Admin* e dei *Tenant Admin* di poter configurare i parametri dei Gateway.

Il gruppo, però, è riuscito a rilevare solo la frequenza d'invio dei dati del gateway verso il cloud come unico parametro modificabile, non sapendo in quali altri modi un gateway potesse essere configurabile.

_M31_ ha dichiarato che un altro parametro di configurazione di un Gateway è il metodo d'invio dei dati stessi, fornendo come esempio la possibilità di inviare al Cloud dati normalizzati in "rolling average". Questa funzionalità può essere usata dal *Tenant Admin* per permettere al gateway di inviare dati approssimativi consumando meno traffico di rete nelle casistiche in cui è accettabile visualizzare dati più imprecisi.

// TODO: va bene "consigliato"?
A tale scopo, il proponente ha consigliato al gruppo di analizzare con quali metodi i dati vengano normalizzati e inviati sulla rete nell'ambito dell'IoT, in modo tale da comprendere meglio quali tecniche di normalizzazione siano adatti a quali profili #gloss[BLE].

== Organizzazione dei prossimi incontri


= Attività conseguenti

// #table(
//   columns: (4fr, 2fr, 1fr),
//   align: center + horizon,
//   [*Task*], [*Responsabile*], [*Issue*],

//   [Redazione use cases Super Admin], [Michele Dioli, Alessandro Dinato], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/97")[*\#97*]],
//   [Redazione use cases Tenant Admin], [Elia Ernesto Stellin, Riccardo Graziani], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/98")[*\#98*]],
//   [Redazione use cases Gateway], [Alessandro Dinato, Jaume Bernardi, Siria Salvalaio], [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/99")[*\#99*]],
// )

