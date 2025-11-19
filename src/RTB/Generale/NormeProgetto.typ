#import "../../Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Norme di Progetto",
  stato: "Bozza",
  versione: "0.0.2",
  registro-modifiche: (
    // TODO: metti data giusta
    ("0.0.2", "XX/11/2025", "Elia Ernesto Stellin", "-", [
      Bozza di @introduzione, @processi-di-supporto, introduzione di @documentazione; \
      Stesura di @doc-strumenti-a-supporto, @doc-attivita-previste, @doc-convenzioni, @doc-produzione
    ]),
    ("0.0.1", "15/11/2025", "Elia Ernesto Stellin", "-", "Bozza prima stesura"),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-Generale",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Norme di Progetto",
)

// TODO: la struttura va capita meglio, intanto questa è una bozza molto grossolana
= Introduzione <introduzione>

== Scopo del documento
Lo scopo di questo documento è di descrivere il _Way of Working_ del gruppo _GlitchHub Team_ durante lo svolgimento del progetto didattico.

A tale scopo, il gruppo ha deciso di prendere come riferimento lo standard internazionale ISO/IEC 12207:1995, che descrive una struttura standardizzata per descrivere i processi di cicli di vita del Software.

Più nello specifico, vengono riconosciuti dallo standard tre tipi principali di processi:

- *Processi primari* (@processi-primari): i processi essenziali e imprescindibili per lo svolgimento del progetto
- *Processi di supporto* (@processi-di-supporto): i processi che si integrano con i processi primari per semplificare lo svolgimento del progetto
- *Processi organizzativi* (@processi-organizzativi): i processi che semplificano le procedure di sviluppo

Questo documento ha carattere incrementale, per cui, verrà modificato e aggiornato col progredire dello sviluppo del progetto didattico a seguito di miglioramenti e modifiche nel _Way of Working_ del gruppo.

== Scopo del progetto
// TODO

== Glossario
// TODO: spiegare a cosa serve il glossario


== Riferimenti
// TODO: differenza tra riferimenti normativi e informativi


= Processi primari <processi-primari>

== Fornitura
// TODO: spiegare fornitura

=== Strumenti a supporto
// TODO: utilizza o ha utilizzato?
Per svolgere le attività di progetto, il gruppo utilizza i seguenti strumenti:


== Sviluppo

= Processi di supporto <processi-di-supporto>

Tra i processi di supporto applicati nel progetto si distinguono:
// NOTA: Questa lista è automatica e guarda tutti gli header 3.x
#context {
  let h1 = heading.where(level: 1)
  let h2 = heading.where(level: 2);
  let processi = query(
    selector(h2)
      .after(here())
      .before(h1.after(here()))
  )
  
  for processo in processi {
    let loc = processo.location()
    let cur = counter(heading).get()

    [ - *#processo.body* ]
  }

}

== Documentazione <documentazione>
// Riferimento: vd. Riunione Interna 2025-11-19
Il processo di produzione di documentazione è uno dei processi di supporto più importanti in quanto consente il tracciamento e la storicizzazione delle decisioni prese dal gruppo, permettendo a tutti i membri di rimanere allineati in modalità asincrona su queste ultime e sui metodi di lavoro.

Nello specifico, una decisione viene documentata solamente se questa si può tradurre in un'azione tracciabile e concreta, che necessariamente influisce sul ciclo di vita del prodotto.

Quindi, questo processo riguarda tutte le attività di pianificazione, progettazione, sviluppo, produzione e modifica dei documenti necessari al gruppo per lavorare secondo una linea di lavoro condivisa, e necessari alle proponente e alla committente per osservare l'avanzamento del prodotto.

=== Strumenti a supporto <doc-strumenti-a-supporto>
- *Typst*: è un sistema di composizione tipografica digitale, che permette di redigere documenti con un linguaggio di mark-up intuitivo e più semplice di LaTeX. Il sistema presente anche un linguaggio di scripting che permette di scrivere con semplicità macro e procedure che semplificano la scrittura di contenuti dinamici. La forza di Typst risiede nel suo sistema di templating, utilizzato in modo ubiquitario da _GlitchHub Team_ e dal reloading istantaneo, che consente una scrittura più rapida dei documenti.

// TODO: non so se mettere tutto qua
- *GitHub*: 
  - per il controllo del versionamento del codice della repository di documentazione
  - *GitHub Issues*: per l'assegnazione degli elementi del _Backlog_ e la segnalazione di eventuali problemi nella Repo; sono fondamentali per il tracciamento delle azioni prese in seguito a decisioni di gruppo
  - *Github Project*: per la visualizzazione delle task in modalità Kanban, in modo tale da vedere lo stato d'avanzamento delle task assegnate
  - *GitHub Pages*: per l'hosting via sito web della documentazione stabile di progetto

- *ClickUp*: per la condivisione di appunti e documenti interni
- *Google Calendar*: per il tracciamento di
- *Discord*: per le riunioni interne, svolte da remoto

=== Attività previste <doc-attivita-previste>
Le attività previste per la scrittura di documentazione sono:
- *Produzione*: nella @doc-produzione sono descritte le metodologie che il gruppo applica nella scrittura dei documenti
- *Manutenzione*: nella @doc-manutenzione si descrive l'attività di eventuale modifica di un documento considerato #link(label("doc-def-verificato"))[*Verificato*]

=== Verbali
La scrittura di un verbale prevede l'utilizzo del template `Templates/templateVerbali.typ`.

=== Diari di bordo
La scrittura delle _slides_ di un Diario di Bordo prevede l'utilizzo del template `Templates/templateSlides.typ`
// TODO: Descrivi struttura verbali

=== Altri documenti
Ogni altro documento prevede l'utilizzo del template `Templates/templateDocumentiGenerici.typ`
// TODO: Descrivi struttura documenti

=== Convenzioni <doc-convenzioni>
Il gruppo si impegna ad attuare sempre le seguenti convenzioni durante la redazione di documentazione, in modo tale da mantenere una linea di lavoro consistente e coerente nel tempo.


==== Stato di un documento
Un documento, durante la sua scrittura, attraversa tre fasi principali:


#heading(outlined: false, depth: 5)["Bozza"] <doc-def-bozza>
Un documento è una bozza quando è in fase di scrittura, per cui non è ancora da verificare, finché l'autore corrente non richiede una verifica; 

#heading(outlined: false, depth: 5)["Da verificare"] <doc-def-da-verificare>
Un documento è da verificare quando la parte che è stata scritta è in una versione considerata 
"stabile", ovvero completa e pronta per essere verificata;

#heading(outlined: false, depth: 5)["Verificato"] <doc-def-verificato>
Un documento è verificato quando un componente del gruppo diverso dallo scrittore ha controllato e sottoscritto il documento, sancendo che ciò che è stato scritto all'interno di questo rappresenta in modo veritiero le decisioni, le azioni e le opinioni dei membri del gruppo.

==== Versionamento
Il versionamento della documentazione segue le specifiche dettate nella @registrazione-stato-configurazione

==== Denominazione e Locazione File
I documenti in formato PDF sono resi disponibili sul  #link("https://GlitchHub-Team.github.io")[sito web di GlitchHubTeam].

I documenti seguono uno schema di locazione all'interno del file system del sito:
tutti i documenti, eccetto i Diari di Bordo e il Glossario, sono disponibili nella cartella
#align(center, [`/pdf/`*`[FASE]`*`/`*`[TIPO DOCUMENTO]`*`/`*`[NOME DOCUMENTO]`*`.pdf`,])
dove:
- *`[FASE]`* è una tra `Candidatura`, `RTB` e `PB`, a seconda della fase della baseline di progetto a cui appartiene il documento
- *`[TIPO DOCUMENTO]`* corrisponde a:
  - `VerbaliInterni` per i verbali interni
  - `VerbaliEsterni` per i verbali esterni
  - `Generale` per tutti gli altri documenti
- *`[NOME DOCUMENTO]`* rappresenta il nome del file pdf che segue uno standard diverso a seconda del documento:
  - I verbali hanno come nome il giorno della riunione che riassumono in formato *`YYYY-MM-DD`*, dove `YYYY` rappresenta l'anno per esteso, `MM` il numero del mese (`01`--`12`) con 2 cifre e `DD` (`01`--`31`) il giorno con 2 cifre.
  - Gli altri documenti hanno invece `[NOME DOCUMENTO]` pari al nome del tipo di documento in stile #link("https://it.wikipedia.org/wiki/CamelCase")[CamelCase], ad esempio:
    - `LetteraPresentazione` per la lettera di presentazione
    - `ValutazioneCapitolati` per la valutazione dei capitolati
    - `DichiarazioneImpegni` per la dichiarazione di impegni
    - `NormeProgetto` per il documento di norme di progetto
    - `PianoDiProgetto` per il piano di progetto.
  // TODO: dovremmo decidere se mettere preposizioni o meno
  Si noti che l'utilizzo delle preposizioni (ad es. "di" in "Norme *di* progetto") è facoltativo.

Fanno da eccezione:
- I Diari di Bordo che sono locati in `...`
  // TODO: inserire schema denominazione Diari di Bordo
- Il glossario, che è collocato in #link("https://glitchhub-team.github.io/pdf/glossary.pdf")[`pdf/glossary.pdf`]

Si noti che sul sito web il gruppo rende disponibile sempre l'*ultima* versione *verificata* (vd. @doc-def-verificato) dei documenti della _baseline_ corrente.

==== Metadati
// TODO: parla dei metadati dei template

#heading(outlined: false, depth: 5)[`htmlId`]


=== Produzione <doc-produzione>
La produzione di un documento avviene nei seguenti passaggi:
1. *Scrittura*, descritta nella @doc-scrittura
2. *Verifica*, descritta nella @doc-verifica

==== Scrittura <doc-scrittura>
Nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*], sono specificate le procedure scelte da _GlitchHub Team_ per la scrittura dei verbali, le quali si possono adattare alla scrittura di qualunque documento.

I passaggi descritti sono i seguenti:

1. All'interno della repository di documentazione di GitHub, viene aperta una *issue* che descrive il compito di scrittura: ciò ha lo scopo di tenere traccia dell'azione e della responsabilità di chi la compie

2. Quindi, nella repository si crea un branch secondario nominato `Documentation-[nome attività]`: è importante che questa convenzione sia seguita, poiché all'interno della repository vengono utilizzate delle automazioni *GitHub Actions* che permettono la compilazione dei file sorgenti Typst in PDF.

3. La stesura del documento avviene sul branch apposito usando Visual Studio Code con l'estensione *Tinymist Typst*, che consente di vedere un'anteprima del documento che si scrive. Inoltre, è richiesto il rispetto delle convenzioni descritte nella @doc-convenzioni

4. Una volta terminata la prima stesura, si deve fare il _push_ delle proprie modifiche sul branch di lavoro e creare una nuova _Pull Request_ in modo tale da fare il _merge_ da `Documentation-[...]` a `main`, assegnando i verificatori scelti come Reviewer.

==== Verifica <doc-verifica>
Ogni documento scritto deve essere verificato da un componente del gruppo diverso dallo scrittore originale, per evitare di travisare, intenzionalmente o meno, le decisioni e azioni prese dal gruppo.

Le procedure di verifica sono riportate di seguito, come descritte nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*].

1. Quando il primo redattore contrassegna il documento come *Da verificare* (@doc-def-da-verificare) il verificatore scelto

2. Quindi, il verificatore scelto ha il compito di leggere attentamente il documento ed eventualmente di modificarlo se necessario

  a. Se il verificatore ha apportato delle modifiche, anche queste dovranno essere verificate, possibilmente da un terzo membro, a meno che le modifiche apportate non siano minime.

  b. Se invece, esso ritiene che il documento sia corretto e non richieda ulteriori modifiche, il documento è da considerarsi "stabile"

=== Manutenzione <doc-manutenzione>
// TODO: prendi da verifica



== Gestione delle configurazioni

=== Strumenti a supporto

=== Attività previste

=== Identificazione della configurazione

=== Controllo della configurazione

=== Registrazione dello stato di configurazione <registrazione-stato-configurazione>

== Accertamento qualità

== Qualifica

= Processi organizzativi <processi-organizzativi>

== Gestione dei processi

== Infrastruttura

== Processo di miglioramento

== Processo di formazione
