#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 03/12/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "06/12/2025",
      "Alessandro Dinato",
      "Hossam Ezzemouri",
      "Versione stabile del verbale interno del 03/12/2025",
    ),
    (
      "0.1.0",
      "04/12/2025",
      "Alessandro Dinato",
      "Hossam Ezzemouri",
      "Prima stesura verbale interno del 03/12/2025",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Elia Ernesto Stellin",
    "Hossam Ezzemouri",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    "Allineamento sulla comprensione generale del capitolato",
    "Allineamento sulla comprensione dei nuovi concetti espressi da M31",
    "Allineamento sugli attori del sistema",
    "Assegnazione delle prossime task basate sulle decisioni prese",
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Hossam Ezzemouri",
  left-signature: "../assets/firme/firma_Hossam_Ezzemouri.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *03 dicembre 2025* dalle ore 14.30 alle ore 16:10, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Allineamento sulla comprensione generale del capitolato
Il gruppo ha riscontrato difficoltà nella comprensione del capitolato andando nello specifico su alcuni punti. \
Perciò si è deciso di assicurarsi che tutti i membri del gruppo avessero compreso i concetti espressi da M31 così da poter procedere con le attività di analisi dei requisiti.

== Discussione incontro con M31 del 02/12/2025
Il gruppo ha discusso l'incontro con M31 del 02/12/2025.
Gli assenti alla riunione sono stati allineati sui concetti espressi da M31, che erano comunque già stati condivisi tramite un documento su #gloss[ClickUp].\
Il gruppo attraverso la discussione ha fatto emergere i seguenti dubbi:
- Non è chiaro come la visualizzazione anonima dei dati, da parte del super-admin, implichi che le sorgenti vengano mostrate con etichette generiche (ad esempio “Sensore 1” anziché “Sensore Battito XYZK”). È inoltre emerso che il super-admin, qualora necessario, può creare un proprio account tenant-admin per accedere ai dati in forma non anonimizzata, il che implica la possibilità di visualizzare le sorgenti con le loro etichette originali.
- Sono emersi dubbi riguardo al contenuto effettivo dell'azione di configurazione del gateway. Il gruppo si chiede se la configurazione includa esclusivamente l'associazione al tenant e l'avvio del provisioning, oppure se siano previsti ulteriori aspetti tecnici legati, per esempio, alla rete.
- Il gruppo ha discusso i meccanismi di autenticazione del gateway. In particolare, non è chiaro se, oltre alla cifratura dei dati, il gateway debba utilizzare la firma digitale per dimostrare la propria autenticità ed evitare che dispositivi esterni possano fingersi gateway M31.\
È stata inoltre ipotizzata una possibile procedura in cui l'operatore comunica al super-admin (o inserisce direttamente) la chiave pubblica del gateway, così da consentire la verifica dell'autenticità durante la comunicazione con il cloud.
- Sono presenti dubbi riguardo quali controlli il super-admin possa esercitare durante il processo di provisioning. L'ipotesi concepita è che, una volta associato un gateway “in attesa di essere associato” (ovvero appena installato e collegato al cloud), il provisioning avvenga in maniera completamente automatica. Si richiede conferma su tale interpretazione.

I dubbi sono stati prontamente inviati a M31 tramite email per ricevere chiarimenti.

== Allineamento sugli attori del sistema
Il gruppo ha discusso gli attori del sistema per assicurarsi che tutti i membri avessero una comprensione comune.
Sono stati identificati i seguenti attori principali:
- *Super-admin*: amministratore globale del sistema, responsabile della gestione dei tenant-admin e della visualizzazione aggregata dei dati;
- *Tenant-admin*: amministratore di un singolo tenant, responsabile della gestione degli utenti e dei gateway associati al proprio tenant;
- *Gateway*: dispositivo fisico che raccoglie i dati dai sensori e li invia al cloud;
- *User*: utente generico che accede al sistema;
- *REST client*: applicazione o servizio _esterno_ che interagisce con il sistema tramite API REST;
- *Tenant user*: utente associato a un tenant specifico, con soli permessi di lettura dati.

== Assegnazione delle prossime task basate sulle decisioni prese
Il gruppo ha deciso di suddividersi la scrittura dei casi d'uso per attore principale.
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],

  [Sviluppo casi d'uso relativi al super-admin],
  [Michele Dioli, Hossam Ezzemouri],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/77")[*\#77*]],

  [Sviluppo casi d'uso relativi al tenant-admin],
  [Riccardo Graziani, Elia Ernesto Stellin],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/76")[*\#76*]],

  [Sviluppo casi d'uso relativi al gateway],
  [Jaume Bernardi, Siria Salvalaio],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/75")[*\#75*]],

  [Sviluppo casi d'uso relativi a user, REST client e tenant user],
  [Alessandro Dinato],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/88")[*\#88*]],

  [Scrittura e verifica verbale esterno],
  [Alessandro Dinato, Hossam Ezzemouri],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/79")[*\#79*]],

  [Scrittura e verifica verbale interno],
  [Alessandro Dinato, Hossam Ezzemouri],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/80")[*\#80*]],

  [Scrittura e verifica PdP Sprint 4],
  [Alessandro Dinato, Hossam Ezzemouri],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/81")[*\#81*]],
)

