#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 13/02/2026",
  stato: "da verificare",
  versione: "0.0.3",
  registro-modifiche: (
    (
      "0.0.3",
      "18/02/2026",
      "Jaume Bernardi",
      "-",
      "Applicazione critica fornita dalla verifica",
    ),
    (
      "0.0.2",
      "18/02/2026",
      "Jaume Bernardi",
      "-",
      "Modifica ai ruoli",
    ),
    (
      "0.0.1",
      "16/02/2026",
      "Jaume Bernardi",
      "-",
      "Prima bozza documento",
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
    [Retrospective di sprint],
    [Miglioramento dell'organizzazione],
    [Assegnazione delle task],
    [Assegnazione ruoli],
  ),
  htmlId: "RTB-VerbaliInterni",
  verificatore-interno: "Riccardo Graziani",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *13 gennaio 2026* iniziato dalle ore 11:00 alle ore 11:50 si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Retrospettiva dello sprint

=== Migliorie nell'organizzazione del gruppo
Dopo un riscontro, il gruppo ha valutato molto positive le modifiche applicate al #gloss[Way of Working] durante il periodo di #gloss[sprint] precedente. In particolar modo la creazione di task atomiche, figlie di una rispettiva attività principale, ha reso sin da subito la suddivisione del lavoro più strutturata, sia tra i compiti da svolgere che tra i membri a cui vengono assegnati.

Per quanto riguarda la compilazione dei metadati di una issue durante e dopo la sua creazione, le convenzioni adottate hanno considerevolmente ridotto le possibilità di omissioni. A tal proposito, durante la riunione è stata effettuata una revisione generale delle issue precedenti queste migliorie.

In aggiunta, è stata considerata la convenzione di inserire nel messaggio di un commit il numero della issue che si presta a risolvere.

Il cambio di approccio alla verifica dei documenti, dove il verificatore ha il compito esclusivo di individuare e suggerire le correzioni anziché applicarle direttamente per poi necessitare di un ulteriore verifictore, ha reso l'operato ha reso l'attività più intuitiva.

=== Revisione della documentazione
In vista della fine dell'#gloss[RTB], durante il periodo di questo sprint il gruppo si focalizza sul ricontrollare tutta la documentazione esistente. Ciò include la struttura e completezza delle tabelle, dei grafici e delle figure, come i diagrammi delgi use case.

Infine, si prevede l'avvio dei contatti con il professor Vardanega per concordare la data della *seconda riunione* di valutazione relativa alla #gloss[RTB].

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Integrazione cruscotto di valutazione], [Michele Dioli], [#issue(247, repo:"docs")],

  [Stesura lettera di presentazione #gloss[RTB]], [Tutti i membri], [#issue(260, repo:"docs")],

  [Stesura #gloss[Sprint] 9 del PdP], [Riccardo Graziani], [#issue(267, repo:"docs")],

  [Revisione introduzione del PdP], [Alessandro Dinato], [#issue(269, repo:"docs")],

  [Modifica figure e caption su AdR, PdP e PdQ], [Siria Salvalaio], [#issue(271, repo:"docs")],

  [Stesura verbale interno 13/02/2026], [Jaume Bernardi], [#issue(273, repo:"docs")],

  [Stesura verbale esterno 10/02/2026], [Riccardo Graziani], [#issue(276, repo:"docs")],
  
)

== Assegnazione ruoli per le prossima settimana
- *Responsabile*: Jaume Bernardi
- *Amministratore*: Michele Dioli
- *Verificatore*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri
- *Analista*: Alessandro Dinato, Riccardo Graziani, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri