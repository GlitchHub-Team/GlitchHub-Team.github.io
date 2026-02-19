#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 13/02/2026",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    (
      "1.0.0",
      "18/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      "Creazione versione stabile del verbale interno del 13/02/2026",
    ),
    (
      "0.2.0",
      "18/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      "Applicazione critica fornita dalla verifica",
    ),
    (
      "0.1.0",
      "18/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
      "Modifica ai ruoli",
    ),
    (
      "0.0.1",
      "16/02/2026",
      "Jaume Bernardi",
      "Alessandro Dinato",
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
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *13 febbraio 2026* dalle ore 11:00 alle ore 11:50, si è tenuta in modalità virtuale la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Migliorie nell'organizzazione del gruppo
Dopo un riscontro, il gruppo ha valutato molto positive le modifiche applicate al #gloss[Way of Working] introdotte nello *sprint 9*. In particolar modo la creazione di task atomiche, figlie di una rispettiva attività principale, ha reso sin da subito l'esecuzione delle task più semplice ed ha permesso una pianificazione più accurata sia a livello di gruppo che a livello di singolo membro.\
Questo miglioramento verrà documentato in modo più approfondito all'interno della *retrospettiva* dello *sprint 9* all'interno del #gloss[Piano di Progetto].

Inoltre, il rispetto delle convenzioni per la rendicontazione delle #gloss[Issue] è stata semplificata dalla creazione di una nuova _GitHub View_ rappresentante tutte le #gloss[Issue] assegnate al membro con cui si accede a #gloss[Github].

In aggiunta, è stata considerata la convenzione di inserire nel messaggio di un commit il numero della #gloss[Issue] che si presta a risolvere, con  l’obiettivo di aumentare la tracciabilità delle modifiche

== Revisione della documentazione
In vista della fine dell'#gloss[RTB], durante questo sprint il gruppo si focalizza nel ricontrollare tutta la documentazione esistente, in particolare:
- la creazione degli indici delle tabelle e delle figure;
- la revisione del PdP con particolare attenzione alla sua introduzione;
- la revisione del PdQ con particolare attenzione ai test di accettazione e test di sistema.

== Programmazione in vista della revisione finale della RTB
Il gruppo, infine, ha pianificato le ultime attività in vista della revisione finale della RTB, che comprendono:
- la stesura di una lettera di presentazione della RTB;
- creazione delle diapositive per la presentazione della RTB al professor Vardanega;

Il gruppo è consapevole che, durante le revisioni dei documenti, sorgeranno ulteriori compiti, per questo ogni componente del gruppo si impegna a rendicontare e comunicare tempestivamente l'insorgere di nuove task. Ciò sarà facilitato dall'intensiva comunicazione sincrona attraverso #gloss[Discord].

== Assegnazione delle prossime task basate sulle decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Integrazione cruscotto di valutazione], [Michele Dioli], [#issue(247, repo: "docs")],

  [Stesura lettera di presentazione #gloss[RTB]], [Tutti i membri], [#issue(260, repo: "docs")],

  [Stesura #gloss[Sprint] 9 del PdP], [Riccardo Graziani], [#issue(267, repo: "docs")],

  [Revisione introduzione del PdP], [Alessandro Dinato], [#issue(269, repo: "docs")],

  [Presentazione RTB Parte 2(professor Vardanega)], [Siria Salvalaio], [#issue(270, repo: "docs")],

  [Modifica figure e caption su AdR, PdP e PdQ], [Siria Salvalaio], [#issue(271, repo: "docs")],

  [Stesura verbale interno 13/02/2026], [Jaume Bernardi], [#issue(273, repo: "docs")],

  [Verifica verbale interno 13/02/2026], [Alessandro Dinato], [#issue(274, repo: "docs")],

  [Stesura verbale esterno 10/02/2026], [Riccardo Graziani], [#issue(276, repo: "docs")],

  [Verifica verbale esterno 10/02/2026], [Jaume Bernardi], [#issue(277, repo: "docs")],

  [Adattare Norme di Progetto a modifiche alla repo], [Elia Ernesto Stellin], [#issue(307, repo: "docs")],
)

== Assegnazione ruoli per le prossima settimana
- *Responsabile*: Jaume Bernardi
- *Amministratore*: Michele Dioli
- *Verificatore*: Alessandro Dinato, Riccardo Graziani, Jaume Bernardi, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri
- *Analista*: Alessandro Dinato, Riccardo Graziani, Siria Salvalaio, Michele Dioli, Elia Ernesto Stellin, Hossam Ezzemouri
