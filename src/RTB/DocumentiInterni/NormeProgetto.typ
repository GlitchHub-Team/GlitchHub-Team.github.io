#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Norme di Progetto",
  stato: "In attesa di modifiche",
  registro-modifiche: (
    (
      "0.3.1",
      "07/02/2026",
      "Elia Ernesto Stellin",
      "-",
      [Applicate correzioni a @processi-organizzativi rilevate durante verifica.]
    ),
    (
      "0.3.0",
      "07/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Aggiunte @processi-organizzativi, @processi-organizzativi, @infrastruttura, @miglioramento-processi, @formazione],
    ),
    (
      "0.2.1",
      "28/11/2025",
      "Siria Salvalaio",
      "Hossam Ezzemouri",
      [
        Aggiunta paragrafo @doc-incrementali.
      ],
    ),
    (
      "0.2.0",
      "25/11/2025",
      "Elia Ernesto Stellin",
      "Jaume Bernardi",
      [
        Ristrutturazione di qualche frase e correzione di link mancanti.
      ],
    ),
    (
      "0.1.0",
      "24/11/2025",
      "Elia Ernesto Stellin",
      "Jaume Bernardi",
      [
        Stesura iniziale di @introduzione, @processi-di-supporto, introduzione di @documentazione; \
        Stesura di @doc-strumenti-a-supporto, @doc-attivita-previste, @doc-convenzioni, @doc-produzione, @doc-manutenzione.
      ],
    ),
    ("0.0.1", "15/11/2025", "Elia Ernesto Stellin", "Jaume Bernardi", "Bozza prima stesura"),
  ),

  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo"),
  htmlId: "RTB-DocumentiInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Norme di Progetto",
)



= Introduzione <introduzione>

== Scopo del documento
Lo scopo di questo documento è di descrivere il #gloss[_Way of Working_] del gruppo _GlitchHub Team_ durante lo svolgimento del progetto didattico.

A tale scopo, il gruppo ha deciso di prendere come riferimento lo standard internazionale *ISO/IEC 12207:1995*, che definisce una struttura normata per descrivere i processi di cicli di vita del Software.

Più nello specifico, vengono riconosciuti dallo standard tre tipi principali di processi:

- *Processi primari* (@processi-primari): i processi essenziali e imprescindibili per lo svolgimento del progetto
- *Processi di supporto* (@processi-di-supporto): i processi che si integrano con i processi primari per semplificare lo svolgimento del progetto
- *Processi organizzativi* (@processi-organizzativi): i processi che semplificano le procedure di sviluppo

Questo documento ha carattere #gloss[incrementale], per cui, verrà modificato e aggiornato col progredire dello sviluppo del progetto didattico a seguito di miglioramenti e modifiche al #gloss[_Way of Working_] del gruppo.

== Scopo del prodotto
Il progetto proposto dal #gloss[capitolato] *C7* di *M31 Srl* è inerente alla gestione e acquisizione di dati provenienti da sensori #gloss[IoT] distribuiti ed eterogenei a basso consumo energetico, i quali permettono di raccogliere dettagliatamente dati da qualunque fonte.

Nello specifico, lo sviluppo richiesto dal progetto si colloca in un sistema distribuito di acquisizione e smistamento dati da sensori #gloss[Bluetooth Low Energy (BLE)]. L'obiettivo del progetto è di sviluppare un'infrastruttura scalabile che comunichi in modo sicuro con sensori non conformati e che ne gestisca i dati raccolti tramite strumenti di monitoraggio e visualizzazione, ad amministratori e utenti finali, garantendo al contempo la totale separazione dei dati tra diversi _tenant_.

Secondo quanto specificato nella #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/LetteraPresentazione.pdf")[*Lettera di Presentazione*], il gruppo si è posto di realizzare questo progetto entro il *27 marzo 2026* con un budget massimo di *Euro 12.975*.

== Glossario
La creazione e lo sviluppo di un sistema software richiedono una grande operazione di progettazione e analisi del dominio del software, che avviene a priori della scrittura di codice. Il gruppo, perciò, si impegna a raccogliere tali informazioni in una maniera facilmente accessibile in modo tale da favorire una maggiore asincronia ed efficienza nelle attività di progetto.

Il principale tipo di ambiguità che si può creare nello svolgimento del progetto è l'incomprensione del significato dei termini utilizzati dal gruppo. A tale scopo, la nomenclatura adottata da quest'ultimo verrà raccolta nel #link("https://glitchhub-team.github.io/pdf/glossary.pdf")[*Glossario*], un #gloss[documento incrementale] che definisce ogni parola rilevante per il dominio del progetto.

Come descritto nel #link("https://glitchub-team.github.io/RTB/VerbaliInterni/2025-11-19.pdf")[*verbale interno del 19 novembre 2025*], il gruppo si impegna ad annotare tutte le parole del glossario che compaiono nei documenti con una G a pedice in questo modo:

#align(center, gloss("parola"))

Per una buona comprensione del dominio da parte del gruppo, è fondamentale che ogni membro visioni periodicamente il glossario per rimanere allineato sulle definizioni di dominio.

== Riferimenti
=== Riferimenti normativi

- *#gloss[Capitolato d'appalto] C7*
  - Link: https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf
  - Ultimo accesso: 13 novembre 2025

=== Riferimenti informativi

- *Standard ISO/IEC 12207:1995*
  - Link: https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
  - Ultimo accesso: 25 gennaio 2026
  - Note: Questo documento ha una struttura che si ispira a questo standard, ma non ha la pretesa di rispettarlo pienamente.

// NOTA: Importante tenere aggiornato questo numero
- *Glossario v0.2.1*
  - Link: https://glitchhub-team.github.io/pdf/glossary.pdf
  - Ultimo accesso: 25 gennaio 2026


= Processi primari <processi-primari>
In questa sezione, verranno descritti i processi essenziali allo svolgimento del progetto didattico.

Al momento della scrittura di questa versione delle Norme di Progetto, i processi di fornitura e sviluppo del prodotto non sono ancora iniziati, ma stanno venendo definite incrementalmente le Norme relative alla Documentazione (vd. @documentazione).

== Fornitura
// TODO: (2.1) spiegare fornitura
// The Supply Process contains the activities and tasks of the suppli er. The process may be initiated either by a decision to prepare a proposal to answer an acquirer’s request for proposal or by sign ing and entering into a contract with the acquirer to provide the system, software product or software service. The process continues with the determination of procedures and resources needed to mana ge and assure the project, including development of project plans and execution of the plans through delivery of the system, software product or software service to the acquirer.

// processo adottato dal fornitore
// - tratta del relazionarsi con la proponente -> analizzare e trattare sulle richieste

=== Strumenti a supporto
// TODO: (2.1.1) def. strumenti a supporto per fornitura

// Per svolgere le attività di progetto, il gruppo utilizza i seguenti strumenti:

=== Attività previste
// TODO: (2.1.2) def. attività previste per fornitura

== Sviluppo
// TODO: (2.2) spiega sviluppo, quando effettivamente iniziamo lo sviluppo
// The Development Process contains the activities and tasks of the developer. The process contains the activities for requirements analysis, design , coding , integration , testing, and installation and acceptance related to software products. It may contain system related activities if stipula ted in the contract. The developer performs or supports the activities in this process in accordance with the contract.

=== Strumenti a supporto
// TODO: (2.2.1) def. strumenti a supporto per sviluppo

=== Attività previste
// TODO: (2.2.2) traduci attività previste in italiano e tieni quelle effettivamente utili

// 1. Process implementation;
// 2. System requirements analysis;
// 3. System architectural design;
// 4. Software requirements analysis;
// 5. Software architectural design;
// 6. Software detailed design;
// 7. Software coding and testing;
// 8. Software integration;
// 9. Software qualification testing;
// 10. System integration;
// 11. System qualification testing;
// 12. Software installation;
// 13. Software acceptance support.


= Processi di supporto <processi-di-supporto>

Tra i #gloss[processi] di supporto applicati nel progetto si distinguono:
// NOTA: Questa lista è automatica e guarda tutti gli header 3.x
#context {
  let h1 = heading.where(level: 1)
  let h2 = heading.where(level: 2)
  let processi = query(
    selector(h2).after(here()).before(h1.after(here())),
  )

  for processo in processi {
    let loc = processo.location()
    let cur = counter(heading).get()

    [- *#processo.body*]
  }
}

== Documentazione <documentazione>
// Riferimento: vd. Riunione Interna 2025-11-19
Il processo di produzione di documentazione è uno dei processi di supporto più importanti in quanto consente il tracciamento e la storicizzazione delle decisioni prese dal gruppo, permettendo a tutti i membri di rimanere allineati in modalità asincrona su queste ultime e sui metodi di lavoro.

Nello specifico, una decisione viene documentata solamente se questa si può tradurre in un'azione tracciabile e concreta, che necessariamente influisce sul ciclo di vita del prodotto.

Quindi, questo processo riguarda tutte le attività di pianificazione, progettazione, sviluppo, produzione e modifica dei documenti necessari al gruppo per lavorare secondo una linea di lavoro condivisa, e necessari al proponente e alla committente per osservare l'avanzamento del prodotto.

=== Strumenti a supporto <doc-strumenti-a-supporto>
- *#gloss[Typst]*: è un sistema di composizione tipografica digitale, che permette di redigere documenti con un linguaggio di mark-up intuitivo e più semplice di LaTeX. Il sistema fornisce anche un linguaggio di scripting che permette di scrivere con semplicità macro e procedure che semplificano la scrittura di contenuti dinamici. La forza di #gloss[Typst] risiede nel suo sistema di templating, utilizzato in modo ubiquitario da _GlitchHub Team_ e nel reloading istantaneo che consente una scrittura più rapida dei documenti.

- *#gloss[GitHub]*: per il controllo del versionamento dei sorgenti #gloss[Typst] dei documenti
  - *GitHub Issues*: per l'assegnazione degli elementi del _Backlog_ e la segnalazione di eventuali problemi nella #gloss[Repository];, sono fondamentali per il tracciamento delle azioni prese in seguito a decisioni di gruppo
  - *Github Project*: per la visualizzazione delle task in modalità Kanban, utile ad illustrare lo stato d'avanzamento delle task assegnate
  - #gloss[GitHub Pages]: per l'hosting via sito web della documentazione stabile di progetto

- *#gloss[ClickUp]*: per la condivisione di appunti e documenti interni
- *Google Calendar*: per il tracciamento delle date di riunione
- *#gloss[Discord]*: per lo svolgimento delle riunioni interne, effettuate da remoto

=== Attività previste <doc-attivita-previste>
Le attività previste per la scrittura di documentazione sono:
- *Produzione*: nella @doc-produzione sono descritte le metodologie che il gruppo applica nella scrittura dei documenti
- *Manutenzione*: nella @doc-manutenzione si descrive l'attività di eventuale modifica di un documento considerato #link(label("doc-def-verificato"))[*Verificato*]

=== Caratteristiche e struttura dei documenti <doc-caratteristiche-struttura>
Ogni tipo di documento prodotto ha una struttura e caratteristiche diverse, poiché ciascuno ha uno scopo ben preciso.

Per mantenere coerenza tra più documenti dello stesso tipo, mantenendo un processo di scrittura rapido, ogni tipo di documento prevede l'utilizzo di uno specifico template di #gloss[Typst].

A prescindere dal proprio tipo, il frontespizio di tutti i documenti tranne i diari di bordo è composto da:
- Il logo dell'Università di Padova, in alto a sinistra;
- Il logo di _GlitchHub Team_, in alto a destra;
- Il titolo del verbale, sotto i loghi;
- Al centro della pagina, la versione del documento;
- Lo stato del documento (descritto nella @doc-stato), sotto il titolo;
- La distribuzione del documento, ovvero i destinatari del documento, sotto lo stato.

Inoltre, dalla seconda pagina di ogni documento, vi è presente la tabella del registro delle modifiche, dove ogni riga rappresenta una versione del documento e con le seguenti colonne:
- Codice che descrive la *Versione* (vd. @doc-versionamento)
- *Data* di scrittura della versione;
- *Autore* della versione;
- *Verificatore* della versione;
- *Descrizione* delle modifiche della versione.

Dopo il registro delle modifiche è presente l'indice del documento il quale ne descrive la struttura delle intestazioni.

Infine, sull'ultima pagina è presente la firma del revisore interno del documento.

==== #gloss[Documenti incrementali] <doc-incrementali>
Alcuni documenti, come il presente _Norme di Progetto_, _Piano di Qualifica_ e _Piano di Progetto_, sono *incrementali*, cioè crescono parallelamente allo sviluppo del progetto. Per questo motivo alcune sezioni possono rimanere inizialmente vuote o incomplete, poiché non è ancora possibile definirne i concetti.

Il workflow di questi documenti differisce dagli altri "monolitici", infatti ogni *versione stabile* (vd. @doc-versionamento) considera tali solo le sezioni complete e verificate (vd. @doc-verifica), ignorando quelle vuote. Ogni versione stabile deve essere poi pubblicata nel sito tramite _pull request_, così da rendere disponibile il prima possibile lo stato aggiornato del documento.

==== Verbali <caratteristiche-struttura-verbali>
I verbali presentano una versione modificata del frontespizio descritto sopra, in cui:
- Compare l'*ordine del giorno* come lista numerata tra il titolo e la versione;
- Tra lo *Stato* e la *Distribuzione*, compare la lista dei *partecipanti* alla riunione descritta dal verbale.

In generale, i verbali hanno la seguente struttura:
- *Introduzione*: Sezione dove si descrivono le coordinate della riunione in oggetto e un riassunto dello scopo della riunione.
- *Resoconto*: Sezione suddivisa in sotto-sezioni corrispondenti agli elementi dell'*ordine del giorno*. L'ultima sezione deve descrivere l'assegnazione dei compiti decisa durante la riunione per il prossimo periodo.
- Eventualmente può anche figurare una *conclusione*.

Si noti che i verbali esterni presentano la firma del revisore esterno del documento, a fianco della firma del revisore interno.

Il template da utilizzare per la scrittura dei verbali è il file `src/Templates/templateVerbali.typ`.

==== Diari di bordo <caratteristiche-struttura-diari-di-bordo>
I diari di bordo sono degli incontri periodici in aula, organizzati dal prof. Vardanega durante l'orario di lezione, in cui ogni gruppo può esporre eventuali dubbi e difficoltà riscontrate durante lo svolgimento del progetto e porre domande al professore e agli altri gruppi, tramite una serie di diapositive brevi.

Le diapositive dei diari di bordo non seguono la struttura descritta precedentemente ma hanno la seguente organizzazione:
- *Difficoltà riscontrate*: Sezione in cui si enunciano le difficoltà riscontrate dal gruppo.
- *Questioni aperte*: Sezione in cui il gruppo pone eventuali domande al professore e/o agli altri gruppi.

La scrittura delle _slides_ di un diario di bordo prevede l'utilizzo del template `src/Templates/templateSlides.typ`

==== Altri documenti <caratteristiche-struttura-altri-documenti>
Tutti gli altri documenti prodotti non seguono una struttura specifica, poiché la struttura di ogni documento dipende dalla sua funzione. Ciononostante, è importante utilizzare il template `src/Templates/templateDocumentiGenerici.typ` per la scrittura di tali documenti, poiché quest'ultimo fornisce varie macro e funzioni di #gloss[Typst] utili.

=== Convenzioni <doc-convenzioni>
Il gruppo si impegna ad attuare sempre le seguenti convenzioni durante la redazione di documentazione in modo tale da mantenere una linea di lavoro consistente e coerente nel tempo.

==== Stato di un documento <doc-stato>
Un documento attraversa tre stadi principali durante la sua scrittura:

#heading(outlined: false, depth: 5)["Bozza"] <doc-def-bozza>
Un documento è una *"bozza"* quando è in fase di scrittura, per cui non è ancora da verificare, finché l'autore corrente non richiede una verifica;

#heading(outlined: false, depth: 5)["Da verificare"] <doc-def-da-verificare>
Un documento è *"da verificare"* quando ciò che è stato scritto è considerato completo e pronto per essere verificato;

#heading(outlined: false, depth: 5)["Verificato"] <doc-def-verificato>
Un documento è *"verificato"* quando un componente del gruppo diverso dallo scrittore ha controllato e sottoscritto il documento, sancendo che ciò che è stato scritto rappresenta in modo veritiero le decisioni, le azioni e le opinioni dei membri del gruppo.

==== Versionamento <doc-versionamento>
Essendo la produzione di documentazione un processo iterativo, è necessario tenere traccia di ogni versione dei documenti prodotti, in modo tale da tracciare, nel tempo, quali modifiche vengono applicate a essi e da chi.

La convenzione di versionamento di tutti i documenti tranne i diari di bordo, è riportata come descritta originariamente nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*].

Il gruppo ha deciso di adottare il sistema di versionamento #link("https://semverdoc.org")[*#gloss[Semantic Versioning]*] (abbreviato SemVer) per i documenti, in cui ogni versione è descritta da 3 numeri naturali separati da punto (*`MAJOR.MINOR.PATCH`*), dove:

- *`MAJOR`*: rappresenta le modifiche sostanziali applicate al documento
  - Se `MAJOR = 0`, la versione è da considerarsi non "stabile", ovvero soggetta in futuro a cambiamenti rapidi e sostanziali. In particolare, ciò rappresenta che il documento è in fase di prima stesura;
  - Se `MAJOR = 1`, allora il documento è nella versione di prima stesura "stabile", ovvero *verificata* da un altro membro del gruppo;
  - Ogni valore `MAJOR >= 1`, rappresenta una nuova stesura del documento sostanzialmente diversa dal precedente. Per cui, il numero `MAJOR` va aumentato solo in caso di modifiche sostanziali alla struttura o al contenuto del documento.

- *`MINOR`*: va aumentato a ogni nuova revisione sostanziale che non modifica la struttura o il significato del contenuto del documento,

- *`PATCH`*: va aumentato a ogni revisione che corregge la formattazione, refusi o punteggiatura del testo.

All'incremento di un numero di versione, tutti i numeri alla sua destra vengono messi a 0, per cui la versione `MINOR` successiva alla `0.1.1` non può essere `0.2.1`, ma deve essere necessariamente `0.2.0`.

In questo sistema, quindi:
- la prima *bozza* del documento è rappresentata dalla versione `0.0.1`,
- la prima *stesura* ancora non verificata dalla versione `0.1.0`
- la prima *stesura* verificata dalla versione `1.0.0`
- e così via, fino al completamento del documento

==== Denominazione e locazione file
I documenti in formato PDF sono resi disponibili sul #link("https://GlitchHub-Team.github.io")[sito web di _GlitchHub Team_].

I documenti seguono uno schema di locazione all'interno del file system del sito: tutti i documenti, eccetto i diari di bordo e il Glossario, sono disponibili nel _path_:

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
  Si noti che l'utilizzo delle preposizioni (ad es. "di" in "Norme *di* progetto") è facoltativo.

// TODO: inserire schema denominazione diari di bordo
Fanno da eccezione:
- I diari di bordo che sono locati in `...`
- Il glossario, che è collocato in #link("https://glitchhub-team.github.io/pdf/glossary.pdf")[`pdf/glossary.pdf`]

Si noti che sul sito web il gruppo rende disponibile sempre l'*ultima* versione *verificata* (vd. @doc-def-verificato) dei documenti della _baseline_ corrente.

==== Metadati
Uno dei punti di forza di #gloss[Typst] è la funzionalità di codificare metadati all'interno del codice sorgente di un documento. Infatti, tutti i template utilizzati dal gruppo (descritti nella @doc-caratteristiche-struttura) richiedono la descrizione di una serie di metadati precisi per ogni documento.

#heading(outlined: false, depth: 5)[`htmlId`]
Il metadato `htmlId` permette di specificare a quale sottosezione della #link("https://GlitchHub-Team.github.io")[*pagina web del gruppo*] associare l'ancora verso il PDF di questo documento.

Si deve avere cura nell'utilizzare valori di `htmlId` che corrispondano con il #link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/blob/main/website/index.html")[layout HTML della pagina].

=== Produzione <doc-produzione>
La produzione di un documento avviene nei seguenti passaggi:
1. *Scrittura*, descritta nella @doc-scrittura
2. *#gloss[Verifica]*, descritta nella @doc-verifica

==== Scrittura <doc-scrittura>
Nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*], sono specificate le procedure scelte da _GlitchHub Team_ per la scrittura dei verbali, le quali si possono adattare alla scrittura di qualunque documento.

I passaggi descritti sono i seguenti:

1. All'interno della #gloss[repository] di documentazione di #gloss[GitHub], viene aperta una *issue* che descrive il compito di scrittura: ciò ha lo scopo di tenere traccia dell'azione e della responsabilità di chi la compie.

2. Quindi, nella #gloss[repository] si crea un branch secondario nominato `Documentation-[nome attività]`: è importante che questa convenzione sia seguita, poiché all'interno della #gloss[repository] vengono utilizzate delle automazioni *#gloss[GitHub Actions]* che permettono la compilazione dei file sorgenti #gloss[Typst] in PDF.

3. La stesura del documento avviene sul branch apposito usando Visual Studio Code con l'estensione *Tinymist Typst*, che consente di vedere un'anteprima del documento che si scrive. Inoltre, è richiesto il rispetto delle convenzioni descritte nella @doc-convenzioni.

4. Una volta terminata la prima stesura, si deve fare il _push_ delle proprie modifiche sul branch di lavoro e creare una nuova _Pull Request_ in modo tale da fare il _merge_ da `Documentation-[...]` a `main`, assegnando i verificatori scelti come Reviewer.

==== Verifica <doc-verifica>
// TODO: (3.1.5.2) forse questo va spostato in qualifica?
Ogni documento scritto deve essere verificato da un componente del gruppo diverso dallo scrittore originale, per evitare di travisare, intenzionalmente o meno, le decisioni e azioni prese dal gruppo.

Le procedure di verifica sono riportate di seguito, come descritte nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*] e nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-12.pdf")[*verbale interno del 12 novembre 2025*].

1. Quando il primo redattore contrassegna il documento come *Da verificare* (vd. @doc-def-da-verificare), quest'ultimo contatta il verificatore scelto per iniziare la procedura di verifica

2. Quindi, il verificatore scelto ha il compito di leggere attentamente il documento e di suggerire correzioni all'autore originale, se necessario

  a. Se il verificatore suggerisce delle correzioni l'autore è tenuto ad applicarle, quindi, il verificatore dovrà controllare la nuova versione corretta. Questo passo avviene in maniera ciclica, finché il documento non è considerato stabile.

  b. Se invece, esso ritiene che il documento sia corretto e non richieda ulteriori modifiche, il documento è da considerarsi stabile.

Si noti che nel caso di #gloss[documenti incrementali], la verifica deve avvenire a ogni versione intermedia, considerata "stabile" dall'autore.

Nel caso di questo documento, le versioni "intermedie" sono considerabili incomplete, poiché non tutte le sezioni sono presenti, ma le sezioni che sono già state scritte sono da considerarsi "stabili" e quindi da verificare.

==== Pubblicazione <doc-pubblicazione>
// TODO: (3.1.5.3) inserire descrizione di procedura GH action di pubblicazione sulla repo pubblica

=== Manutenzione <doc-manutenzione>
// TODO: (3.1.5.4) dobbiamo definire bene la procedura di manutenzione
Un documento stabile non è da considerarsi finito e immutabile, poiché in seguito alla sua verifica potrebbero emergere errori che non sono stati rilevati né dallo scrittore che dal verificatore.

In tal caso, chi si accorge dell'errore è tenuto a segnalarlo ed eventualmente proporre una modifica, che contribuirà a creare una nuova versione del documento, la quale andrà successivamente verificata da qualcun altro.


== Gestione delle configurazioni
// TODO: (3.2) definire gestione delle configurazioni
// The Configuration Management Process is a process of applying administrative and technical procedures through out the software life cycle to: identify, define, and baseline software items in a system; control modifications and releases of the items; record and report the status of the items and modification requests; ensure the completeness, consistency, and correctness of the items; and control storage, handling, and delivery of the items.

=== Strumenti a supporto
// TODO: (3.2.1) def. strumenti per gestione config-.

=== Attività previste
// TODO: (3.2.2) traduci attività previste gestione config. in italiano e prendi quelle che usiamo
1. Process implementation;
2. Configuration identification;
3. Configuration control;
4. Configuration status accounting;
5. Configuration evaluation;
6. Release management and delivery.

// === Identificazione della configurazione

// === Controllo della configurazione

// === Registrazione dello stato di configurazione <registrazione-stato-configurazione>



== Accertamento qualità
// TODO: (3.3) definire accertamento qualità
// The Quality Assurance Process is a process for providing adequate assurance that the software products and processes in the project life cycle conform to their specified requirements and adhere to their established plans. To be unbiased, qual ity assurance needs to have organizational freedom and authority from persons directly responsible for developing the software product or executing the process in the project. Quality assurance may be internal or external depending on whether evidence of product or process quality is demonstrated to the management of the supplier or the acquirer. Quality assurance may make use of the results of other supporting processes, such as Verification, Validation, Joint Reviews, Audits, and Problem Resolution.

== Qualifica
// TODO: (3.4) definire qualifica in termini generici
=== Verifica
// TODO: (3.4.1) definisci verifica
// The Verification Process is a process for determining whether the software products of an activity fulfill the requirements or conditions imposed on them in the previous activities. For cost and performance effectiveness, verification should be integrated, as early as possible, with the process (such as supply, development, ope ration, or maintenance) that employs it. This process may include analysis, review and test. This process may be executed with varying degrees of independence. The degree of independence may range from the same person or different person in the same organization to a person in a different organization with varying degrees of separation. In the case where the process is executed by an organization independent of the supplier, developer, operator, or maintainer, it is called Independent Verification Process
//
==== Attività previste

1. Implementazione processo
2. Verifica

=== Validazione
// TODO: (3.4.2) definisci validazione, traducendo e prendendo quello che serve
// The Validation Process is a process for determining whether the requirements and the final, as-built system or software product fulfills its specific intend ed use. Validation may be conducted in earlier stages. This process may be conducted as a part of Software Acceptance Support. This process may be executed with varying degrees of independence. The degree of independence may range from the same person or different person in the same organization to a person in a different organization with varying degrees of separation. In the case where the process is executed by an organization independent of the supplier, developer, operator, or maintainer, it is called Independent Validation Process.

==== Attività previste
1. Implementazione processo
2. Validazione

= Processi organizzativi <processi-organizzativi> 
I *processi organizzativi* avvengono parallelamente ai processi di progetto contribuendo a un buon andamento di quest'ultimo. Le attività previste da questi processi consentono di migliorare la strutturazione e l'organizzazione dei processi di cicli di vita applicati e di facilitare l'adozione di atti di miglioramento nei confronti di questi ultimi.

Nello specifico, si identificano i seguenti processi organizzativi:
- #link(<gestione-processi>)[*Gestione dei processi*]
- #link(<infrastruttura>)[*Infrastruttura*]
- #link(<miglioramento-processi>)[*Miglioramento dei processi*]
- #link(<formazione>)[*Formazione*]

== Gestione dei processi <gestione-processi>
La *gestione dei processi* è composta dalle attività compiute dal gruppo per pianificare e organizzare in modo efficace ed efficiente i compiti che ciascun membro deve svolgere, in modo tale che non vengano causati ritardi nello svolgimento di tali.

=== Strumenti a supporto
- #gloss[GitHub Issues]: Il gruppo utilizza l'Issue Tracking System nativo di #gloss[GitHub] per classificare le attività da compiere e assegnarle ai membri del gruppo. Con l'utilizzo delle #gloss[GitHub Actions], la loro creazione è ampiamente facilitata.

- #gloss[GitHub Project]: Il gruppo lo utilizza poiché le _issues_ semplici presentano una serie limitata di campi compilabili. I _projects_ permettono di rendere le _issues_ più descrittive, aggiungendo ad esse ulteriori campi quali la data d'inizio e la data di fine dell'attività, le ore di lavoro previste e le ore effettive. Inoltre, i _projects_ permettono di raggruppare le issue provenienti da diverse #gloss[repository].

=== Attività previste <gestione-processi-attivita-previste>
Le attività previste nella gestione di processi sono le seguenti:
- #link(<gestione-processi-avvio>)[Avvio dell'attività e definizione della portata]
- #link(<gestione-processi-pianificazione>)[Pianificazione]
- #link(<gestione-processi-esecuzione-controllo>)[Esecuzione e controllo]
- #link(<gestione-processi-revisione-valutazione>)[Revisione e valutazione]
- #link(<gestione-processi-conclusione>)[Conclusione]

Si noti che la descrizione di questo processo riguarda le attività rendicontabili il cui sviluppo produce prodotti di progetto "esterni", ovvero tutto il codice e la documentazione richiesta dal capitolato e dalle specifiche del progetto didattico. Inoltre, in ogni successiva sottosezione si riportano i passaggi da seguire per gestire le #gloss[GitHub Issues] relative a specifiche _task_, secondo quanto deciso dal gruppo nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2026-01-30.pdf")[*verbale interno del 30 gennaio 2026*]

Le attività non rendicontabili o di "palestra", ovvero il cui svolgimento non influisce sul budget fissato dal gruppo, seguono un ciclo di vita simile ma che spesso non comprende la fase di #link(<gestione-processi-revisione-valutazione>)[revisione e valutazione] e una fase di #link(<gestione-processi-conclusione>)[conclusione] più semplificata, ma ciononostante vengono tracciate con le #gloss[GitHub Issues].


#set heading(outlined: false)
==== Avvio dell'attività e definizione della portata <gestione-processi-avvio>
Innanzitutto, è necessario stabilire i requisiti e le risorse necessarie per completare l'attività. Dopodiché il #gloss[responsabile] del gruppo deve stabilire la fattibilità del processo controllando la disponibilità delle risorse del gruppo, ovvero controllando che l'attività sia fattibile nell'intervallo temporale fissato. Si noti che i requisiti del processo possono essere discussi con i loro assegnatari.

Il #gloss[responsabile] individua le attività che il gruppo deve svolgere e le divide in "_task_" assicurandosi che queste siano *atomiche*, *rapide* ed *eseguibili singolarmente*. A ogni _task_ corrisponde un'_issue_ e un gruppo di _task_ correlate possono essere raggruppate in una _parent issue_ che ha come assegnatari tutte le persone coinvolte, ma che non viene utilizzata per il conteggio delle risorse consumate per il suo svolgimento.

Si noti che le _issue_ in questo stato devono essere associate allo stato di *"Backlog"*, il quale indice che l'issue è stata rilevata ma ancora non pianificata.

==== Pianificazione <gestione-processi-pianificazione>
Per pianificare un'attività è fondamentale comprendere quali siano le risorse richieste, sia temporali che economiche, e le singole _task_ di cui è composta. Poiché le attività del progetto richiedono competenza in un'ampia gamma di ambiti diversi, ogni _task_ è assegnata a un *ruolo* specifico; si veda la @divisione-ruoli per un riassunto delle responsabilità e del valore economico del lavoro di ogni singolo ruolo.

Quando si deve pianificare lo svolgimento di una specifica _task_, il #gloss[responsabile] crea un'_issue_ specifica per un certo ruolo e determina i seguenti campi:
- _Start Date_: la data d'inizio prevista della _task_,
- _Target Date_: la data di fine prevista della _task_,
- _Expected Worked Hours_: il numero d'ore atteso per compiere la _task_,
- _Sprint Role_: il ruolo a cui corrisponde la _task_, può anche essere vuoto in caso l'attività sia di "palestra", ovvero sia una _task_ di studio o di produzione di documentazione interna; questo campo è solitamente compilato automaticamente dalle automazioni usate dal gruppo
- _Sprint_: l'iterazione a cui è assegnata questa _task_; questo campo è solitamente compilato automaticamente dalle automazioni usate dal gruppo
- _Priority_: priorità dell'_issue_.

Inoltre, lo stato dell'_issue_ rilevata dev'essere impostato a *"Ready"*, il quale indica che l'issue è pronta per essere svolta dall'assegnatario nell'iterazione corrente.

Il gruppo applica la procedura di tracciamento sopra descritta anche alle _task_ di "palestra" citate in precedenza con lo scopo di tenere traccia del carico effettivo di ogni membro del gruppo, il quale non può essere rappresentato fedelmente dal numero di ore spese su attività solamente rendicontabili.

==== Esecuzione e controllo <gestione-processi-esecuzione-controllo>
L'esecuzione delle diverse attività è affidata ai diversi ruoli e dev'essere monitorata regolarmente dal #gloss[responsabile] per accertarsi che ogni membro del gruppo rispetti i propri compiti nelle scadenze prefissate.

Una volta che le _issue_ sono state create dal #gloss[responsabile], la loro gestione viene affidata ai relativi assegnatari. Quando un membro del gruppo inizia a lavorare su una task, la relativa _issue_ dev'essere impostata come *"In progress"*.

==== Revisione e valutazione <gestione-processi-revisione-valutazione>
Una volta che l'attività è stata svolta, è fondamentale che questa venga verificata da un altro membro del gruppo che copre il ruolo di #gloss[Verificatore].

// TODO: aggiungere riferimento a processo di verifica codice
// (questo si potrà fare quando inizieremo a scrivere codice e a verificarlo ovviamente)
Il flusso di lavoro per le attività di verifica di documentazione è descritto nella @doc-verifica.

Il processo di verifica di un'_issue_ può avvenire in più modi:
- Per _issue_ che apportano modifiche che si riscontrano immediatamente nella #gloss[repository] pubblica (ovvero il sito web), allora è importante aprire una #gloss[Pull Request] (PR) che descrive la modifica apportata e segnare l'issue come *"In review"* sul _project_.

- Altrimenti, se l'attività non apporta modifiche immediate sulla repository pubblica, ad esempio nel caso della modifica di un #gloss[documento incrementale], allora è necessario segnare comunque l'issue come *"In review"*, ma anche creare un'ulteriore _issue_ relativa alla _task_ di verifica e segnarla come *"In progress"*, finché il processo di verifica non finisce.

==== Conclusione <gestione-processi-conclusione>
Per utilizzare una linea di lavoro comune, il gruppo applica una _Definition of Done_, ovvero una definizione di cosa determina se un'attività sia conclusa o meno, ben precisa: _Un attività è conclusa quando è stata approvata definitivamente da un verificatore diverso dall'assegnatario originale_.

//TODO: accettiamo "l'incoerenza" del fatto che prima abbiamo detto che non tutte le task hanno task di verifica associate? sezione 4.1.2
// -> ho sistemato specificando distinzione tra attività palestra e non
//TODO: è giusto in questa sezione citare le attività? la definition of done. non dovrebbe pplicarsi alle task prima di tutto?
// -> sostituisco con "task"
Questa definizione garantisce che il gruppo possa determinare in ogni momento quando una rendicontabile qualunque è conclusa o meno. Questa definizione non è sempre applicabile a tutte le _task_ di "palestra", poiché non sempre essere richiedono una verifica da parte di un terzo, ma ciononostante vengono inserite nel #gloss[backlog] di _task_ del gruppo per motivi di tracciamento.

Quando una _task_ viene conclusa, il suo assegnatario deve modificare la relativa _issue_ impostando i seguenti campi:
- _End Date_: data effettiva di fine della _task_
- _Worked Hours_: le ore effettive di lavoro sulla _task_
  - L'_issue_ relativa alla _task_ e l'eventuale _issue_ relativa alla sua verifica devono essere impostate come *"Done"*

#set heading(outlined: true)
=== Ruoli <divisione-ruoli>
Di seguito, sono riportate le descrizioni dei compiti, delle responsabilità e del valore del lavoro di tutti i ruoli che i membri del gruppo possono assumere durante l'esecuzione del progetto.

Si noti che durante una certa iterazione, chiunque può assumere più ruoli a patto che ciò non causi conflitti d'interesse: ad esempio, un #gloss[programmatore] non può anche essere #gloss[verificatore] del suo stesso codice.

#set heading(outlined: false)
//TODO forse metterei ore produttive
// -> ho sostituito con "valore delle ore produttive"
==== Amministratore
- *Presenza*: La figura dell'amministratore è presente a ogni iterazione di progetto
- *Compiti/responsabilità*:
  - Gestisce e apporta migliorie all'infrastruttura usata dal gruppo per compiere le attività di progetto, quali l'Issue Tracking System e gli strumenti di verifica;
  - Risolve le problematiche legate all'infrastruttura _as soon as possible_;
  - Con la sua conoscenza approfondita del #gloss[way of working], redige il documento di #gloss[Piano di Qualifica].
- *Valore delle ore produttive*: Ogni ora rendicontabile dell'amministratore ha il valore di *20 €/h*

==== Analista
- *Presenza*: La figura dell'#gloss[analista] è presente principalmente nella prima fase di progetto, tra la #gloss[candidatura] e l'#gloss[RTB], in cui si delinea la maggior parte dei requisiti del software. La sua presenza è ampiamente ridotta nella fase compresa tra l'#gloss[RTB] e il #gloss[PB], in cui i requisiti delineati sono stabili e soggetti a cambiamenti minori.
- *Compiti/responsabilità*:
  - Identifica gli scenari d'uso del prodotto, tramite sessioni di _brainstorming_ e le riunioni esterne con la #gloss[proponente];
  - Identifica i requisiti del Software e li classifica per tipologia e urgenza;
  - Redige il documento di #gloss[Analisi dei Requisiti].
- *Valore delle ore produttive*: Ogni ora rendicontabile dell'analista ha il valore di *25 €/h*

==== Progettista
- *Presenza*: La figura del progettista è presente nella fase tra l'#gloss[RTB] e il #gloss[PB], in cui si delinea il _design_ architetturale dell'MVP.
- *Compiti/responsabilità*:
  - Trasforma i requisiti, rilevati dall'#gloss[Analista], in _design_ architetturale;
  - Produce documenti e schemi che spiegano il _design_ rilevato;
  - Definisce le scelte tecnologiche.
- *Valore delle ore produttive*: Ogni ora rendicontabile del progettista ha il valore di *25 €/h*

==== Programmatore
- *Presenza*: La figura del #gloss[programmatore] è presente nella fase di sviluppo del #gloss[PoC], poco prima della scadenza #gloss[RTB] e per tutta la fase successiva fino alla produzione dell'#gloss[MVP].
- *Compiti/responsabilità*:
  - È responsabile dello sviluppo del software, portando il _design_ architetturale rilevato dai #gloss[progettisti] in codice funzionante;
  - Collabora con i #gloss[progettisti] per assicurarsi che il codice prodotto sia conforme al _design_ rilevato;
  - Lavora a stretto contatto con i #gloss[verificatori] per la produzione e l'esecuzione di #gloss[test] che verificano il codice prodotto
- *Valore delle ore produttive*: Ogni ora rendicontabile del programmatore ha il valore di *15 €/h*

==== Responsabile
- *Presenza*: La figura del responsabile è presente ad ogni iterazione di progetto
- *Compiti/responsabilità*:
  - Coordina il _team_, assicurandosi che tutti i membri rispettino il _Way of Working_ condiviso e le scadenze prefissate
  - All'inizio di ogni iterazione, comprende quali sono le attività che devono essere svolte e le pianifica, assegnando a ogni membro le adeguate _task_;
  - All'inizio di ogni iterazione, compila la sezione del #gloss[Piano di Progetto] relativa alla previsione delle risorse che verranno consumate e dei rischi che potrebbero occorrere durante lo _sprint_, mentre a fine dello _sprint_ ne compila la sezione relativa al consuntivo di periodo;
  - Fornisce l'approvazione finale delle aggiunte alla #gloss[repository] pubblica;
  - Rappresenta il progetto rispetto agli stakeholders e si occupa della comunicazione con questi ultimi;
  - Redige i verbali interni ed esterni, se presente alle relative riunioni.
- *Valore orario*: Ogni ora rendicontabile del responsabile ha il valore di *30€/h*

==== Verificatore
- *Presenza*: La figura del #gloss[verificatore] è presente per l'intera durata del progetto
- *Compiti/responsabilità*:
  - Garantisce che ogni attività di progetto sia eseguita secondo lo stato dell'arte;
  - Esegue test e revisioni del software approfonditi;
  - Verifica la correttezza di ogni versione della documentazione prodotta;
  - Identifica aree di miglioramento in ciò che verifica, codice o documentazione che sia.
- *Valore orario*: Ogni ora rendicontabile del verificatore ha il valore di *15 €/h*

#set heading(outlined: true)
=== Coordinamento
Il buon svolgimento del progetto è sancito dalla capacità dei membri del gruppo di comunicare e coordinarsi in maniera efficace tra loro e con la proponente.

Ciò avviene grazie a una buona organizzazione delle riunioni tra membri del gruppo e con la proponente grazie e a una scelta di strumenti appropriati per la comunicazione.

==== Riunioni
Le riunioni sono lo strumento principale con il quale è possibile comunicare *internamente* al gruppo o *esternamente* con la proponente e prendere delle decisioni tracciabili. Le riunioni sono fondamentali per permettere al gruppo e/o alla proponente di allinearsi sullo stato di avanzamento dei lavori e di prendere decisioni che vengono sancite con il verbale, ovvero il documento riassuntivo dell'incontro. Per maggiori informazioni sulle caratteristiche dei verbali, si può consultare la @caratteristiche-struttura-verbali.

Il gruppo ha deciso di svolgere una *riunione interna* all'inizio di ogni #gloss[sprint] con lo scopo di svolgere regolarmente la #gloss[retrospettiva] sullo sprint passato, la pianificazione delle attività dello sprint venturo ed eventualmente ruotare i ruoli. Nello specifico, la retrospettiva è lo strumento con cui il gruppo ragiona sul _way of working_ applicato nello sprint passato in modo tale da poterlo migliorare negli sprint successivi: i risultati della retrospettiva poi si riflettono necessariamente sulla pianificazione futura e sulle decisioni prese sul gruppo.

Le *riunioni esterne*, invece, sono lo strumento con cui il gruppo comunica direttamente con la proponente *M31 Srl*. Insieme all'azienda è stato deciso che ogni settimana avvenga un incontro in cui questa svolge il ruolo di mentore, ovvero si rende disponibile per chiarimenti sui requisiti o consigli sulle tecnologie e soluzioni da adottare per soddisfarli. Mentre ogni due settimane, si tiene un incontro in cui l'azienda svolge il ruolo di cliente, ovvero osserva e monitora lo stato di avanzamento dei lavori e chiede di vedere dei risultati concreti.

==== Comunicazioni
Per quanto riguarda le comunicazioni interne, _GlitchHub Team_ utilizza principalmente *WhatsApp* e *Discord* per, rispettivamente, le comunicazioni asincrone e veloci e le comunicazioni sincrone e strutturate. Infatti, tutte le comunicazioni di servizio che devono essere recapitate in maniera immediata a tutti i membri del gruppo avvengono tramite WhatsApp, mentre le conversazioni più strutturate e le riunioni avvengono tramite il gruppo Discord del _team_.

Eventuali comunicazioni dirette tra membri specifici che non richiedono l'attenzione del resto del gruppo avvengono tramite i messaggi diretti
di Whatsapp.

Le comunicazioni esterne con la proponente vengono svolte dal #gloss[Responsabile] via mail usando l'indirizzo di posta elettronica del gruppo #link("mailto:glitchhubteam@gmail.com")[`glitchhubteam@gmail.com`].


== Infrastruttura <infrastruttura>
Il processo di *infrastruttura* ha l'obiettivo di stabilire e mantenere gli strumenti di supporto a tutti gli altri processi, sia _hardware_ che _software_.

=== Attività previste
Il processo d'infrastruttura è composto dalle seguenti attività:
- #link(<infrastruttura-implementazione>)[Implementazione dell'infrastruttura]
- #link(<infrastruttura-creazione>)[Creazione dell'infrastruttura]
- #link(<infrastruttura-manutenzione>)[Manutenzione dell'infrastruttura]

=== Implementazione <infrastruttura-implementazione>
Durante lo svolgimento del progetto, il gruppo ha appreso i seguenti strumenti che hanno consentito un'organizzazione più efficace delle attività e dei processi di progetto:

- *ClickUp*: È un servizio web che consente una gestione totale dell'organizzazione delle _task_ di gruppo. Inizialmente, _GlitchHub Team_ ha provato ad utilizzarlo per pianificare le  _task_ degli _sprint_, ma lo strumento si è rivelato troppo macchinoso e inefficiente da usare, per cui è utilizzato dal gruppo principalmente per la condivisione degli appunti delle riunioni e della pianificazione degli eventi, quali i meeting esterni ed interni.

- *Discord*: È un servizio di messaggistica istantanea e videoconferenza usato da _GlitchHub Team_ per svolgere le riunioni interne in maniera virtuale.

- *Git*: È uno dei _Version Control System_ (VCS) open-source più usati al mondo: offre un sistema di versionamento efficace del codice e permette di separare lo spazio di lavoro degli utenti in _branch_ separate. _GlitchHub Team_ ha deciso di utilizzare questo strumento per versionare la propria documentazione e il proprio codice.

- *GitHub*: È un servizio che permette di eseguire l'_hosting_ di #gloss[repository] Git gratuitamente, fornendo molti strumenti che facilitano la collaborazione tra sviluppatori, quali:
  - *GitHub Issues* per il tracciamento del _backlog_ delle _task_
  - *GitHub Actions* per la gestione delle automazioni e delle pipeline #gloss[CI/CD]
  - *GitHub Projects* per una gestione più fine della pianificazione delle  _task_, tramite diagrammi di #gloss[Gantt] e _#gloss[Kanban] boards_
  _GlitchHub Team_ ha deciso di utilizzare questo strumento per l'_hosting_ pubblico delle proprie #gloss[repository] di documentazione e di codice per il progetto.

- *Google Calendar*: È un servizio di calendaristica che consente un'integrazione nativa con molti strumenti di pianificazione delle _task_. Il gruppo ha deciso di usarlo per la pianificazione degli incontri interni ed esterni.

- *Google Mail* (Gmail): È il servizio di posta elettronica dell'ecosistema Google. Viene usato da _GlitchHub Team_ per la comunicazione con gli _stakeholders_ del progetto.

- *Google Spreadsheets* (Google Fogli): È il foglio di calcolo elettronico online integrato nell'ecosistema Google. Viene usato da _GlitchHub Team_ per la compilazione del cruscotto di valutazione.

- *Microsoft Teams*: È il servizio di videoconferenza di Microsoft. Viene utilizzato dal gruppo per le riunioni esterne con la proponente *M31 Srl*.

- *Script in Python e Go*: Vengono utilizzati dal gruppo per l'automazione di _task_ ripetitive, quali la compilazione automatica dei file #gloss[Typst], la compilazione dei campi delle _issue_ o il conteggio delle ore automatico.

- *Typst*: È un sistema di composizione tipografica digitale moderno che consente di scrivere documentazione in maniera rapida, consentendo un alto grado di personalizzazione dei documenti. Il gruppo utilizza Typst per la redazione di tutta la documentazione, usando degli script per automatizzare la loro compilazione in PDF.

- *WhatsApp*: È un servizio di messaggistica istantanea.

=== Creazione <infrastruttura-creazione>
La creazione dell'infrastruttura è l'attività iniziale di impostazione degli strumenti infrastrutturali usati dal gruppo. Di seguito sono riportati i dettagli per ogni strumento utilizzato.

==== ClickUp
Per usare *ClickUp*, il gruppo ha creato un ambiente condiviso, nel quale è possibile condividere documenti testuali e pianificare, assegnare e gestire attività.

==== Discord
Il gruppo ha creato un server *Discord* privato per le comunicazioni e le riunioni interne. Non sono state necessarie altre configurazioni particolari.

==== Git
Essendo *Git* uno strumento usato localmente dai membri del gruppo, non sono richiesti particolari passaggi di configurazione per farlo funzionare.

Gli unici passaggi che ogni membro del gruppo deve compiere quando clona le #gloss[repository] del progetto sono l'impostazione di nome utente e email che devono coincidere con il nome utente e l'email usate per accedere a #gloss[GitHub].

==== GitHub
Di seguito sono riportati tutti gli strumenti dell'ecosistema *GitHub* utilizzati da _GlitchHub Team_

#set heading(outlined: false)
===== GitHub Organization
Prima di iniziare le attività di progetto, il gruppo ha istituito la #link("https://github.com/GlitchHub-Team")[#gloss[GitHub Organization] di _GlitchHub Team_], in cui sono raccolte tutte le #gloss[repository] e tutti il #gloss[GitHub Project] utilizzati dal gruppo.

La pagina principale dell'_organization_ introduce brevemente il gruppo e i suoi membri.

===== Repository documentazione (#repo("docs")[`GlitchHub-Team/GlitchHub-Team.github.io`]) <infrastruttura-github-repo-doc>
La #gloss[repository] di documentazione del gruppo è stata istituita con il nome `GlitchHub-Team.github.io`, poiché ciò consente la creazione di una #gloss[GitHub Page], ovvero una pagina web statica utilizzabile gratuitamente che il gruppo usa per esporre al pubblico le versioni stabili dei prodotti di progetto.

All'interno della repository si trovano il file *README.md* che la descrive dettagliatamente, il file *.gitignore* che permette di impedire il versionamento per certi file specifici e le seguenti cartelle:
- `.github/`, in cui sono contenuti i file relativi ai workflow di #gloss[GitHub Actions] e gli #gloss[issue templates] descritti
- `script/` in cui è presente il sorgente degli script di compilazione dei file Typst e di altre automazioni
- `src/` in cui sono presenti i sorgenti dei file di documentazione
- `website/` in cui è presente il sorgente della #gloss[GitHub Page]

Inoltre, la cartella `src/` contiene al suo interno:
- Le cartelle `Candidatura/` e `RTB/` sono contenuti i sorgenti dei documenti appartenenti rispettivamente alla fase di #gloss[candidatura] e alla fase #gloss[RTB];
- La cartella `Slide/`, che contiene i sorgenti delle presentazioni dei diari di bordo:
- La cartella `Templates/`, che contiene i #link(<infrastruttura-creazione-typst>)[template di Typst utilizzati dal gruppo];
- La cartella `assets/`, che contiene le immagini utilizzate nei documenti;
- La cartella `fonts/`, che contiene i font usati dai documenti;
- La cartella `lib/`, che contiene le librerie usate dai file Typst;
- Il file `glossary.typ` che contiene i sorgenti del file di glossario.

===== Repository PoC (#repo("poc")[`GlitchHub-Team/PoC`])
La #gloss[repository] che contiene il codice sorgente del #gloss[PoC] contiene al suo interno:
- La cartella `.github/`, come nella @infrastruttura-github-repo-doc
- La cartella `.vscode/`, che contiene elementi di configurazione comuni per l'editor di testo Visual Studio Code;
- La cartella `evaluation/`, che contiene dei documenti che riportano la valutazione delle tecnologie scelte;
- La cartella `src/` che contiene il codice sorgente del PoC;
- Il file `README.md` che descrive in modo dettagliato il PoC e le istruzioni per avviarlo;
- Il file `docker-compose.yml` che contiene la configurazione di *Docker Compose* per l'esecuzione del PoC su qualunque computer.

===== Repository GitHub Actions (#repo("actions")[`GlitchHub-Team/actions`])
Questa #gloss[repository] viene usata dal gruppo per raggruppare tutte le #gloss[GitHub ]Actions comuni a tutte le altre repository.

Si nota principalmente l'_action_ `.github/workflows/issue-action.yml` che consente di assegnare automaticamente qualunque #gloss[Github Issue] al #gloss[GitHub Project] del gruppo, compilando in modo automatico i campi _Sprint_ e _Sprint Role_ dell'_issue_.

In generale per utilizzare questa _action_ in una #gloss[repository] specifica, è necessario inserire sul branch `main` di quest'ultima un file nella cartella `.github/workflows/` che descriva il flusso dell'action.

===== GitHub Issues
Il gruppo ha deciso di utilizzare le #gloss[GitHub Issues] per il tracciamento delle attività su tutte le #gloss[repository], disponendo una serie di #gloss[issue templates] per facilitarne la creazione.

Il nome di un'_issue_ segue la seguente convenzione:
#align(center)[*`[scope] attività`*]
Dove:
- *`scope`* rappresenta ciò che l'issue modifica:
  - Se l'issue modifica un documento, allora sarà l'abbreviazione del suo nome, come ad esempio "`AdR`" per l'#gloss[Analisi dei Requisiti] o "`PdQ`" per il #gloss[Piano di Qualifica].
  - Se l'issue concerne il #gloss[PoC], allora si userà la dicitura "`PoC`"
- *`attività`* rappresenta una breve descrizione delle modifiche apportate dall'_issue_.

Per maggiori informazioni riguardanti la gestione delle _issues_ durante lo svolgimento della relativa _task_, si consiglia di consultare la @gestione-processi-attivita-previste.

===== GitHub Project
Il gruppo ha deciso di utilizzare un #gloss[GitHub Project] per raggruppare tutte le _issue_ delle diverse #gloss[repository] in un luogo unico e per assegnare a ogni _issue_ dei campi aggiuntivi che descrivono l'organizzazione delle relative _task_. La descrizione dei campi aggiuntivi forniti dal _project_ è presente nella @gestione-processi-attivita-previste.

Inoltre, il _project_ impostato consente di visualizzare anche le _issue_ in diagrammi di #gloss[Gantt] (separati per membro del gruppo o per sotto-attività) e di visualizzare anche una board #gloss[Kanban] per una visualizzazione rapida di quali _task_ sono in #gloss[Backlog], quali sono pronte per essere eseguite, su quali _issue_ si sta lavorando al momento e su quali sono in revisione.

#set heading(outlined: true)
==== Google Calendar
Il gruppo ha creato un calendario condiviso in cui il #gloss[Responsabile] può pianificare nuovi eventi o modificare quelli presenti permettendo a ogni membro dell gruppo di visualizzarli sui propri dispositivi e di ricevere le relative notifiche di promemoria.

==== Google Mail
Il gruppo ha creato la casella di posta all'indirizzo #link("mailto:glitchhubteam@gmail.com")[`glitchhubteam@gmail.com`] per tutte le comunicazioni con gli _stakeholders_ del progetto, ovvero i professori Tullio Vardanega e Riccardo Cardin e l'azienda proponente M31 Srl.

Nella casella di posta, sono state configurate le etichette automatiche per identificare immediatamente i tipi di messaggi ricevuti e per archiviare i messaggi superflui.

==== Google Spreadsheets
Il file condiviso di *Google Spreadsheets* è stato creato dal gruppo per contenere le informazioni relative al cruscotto di valutazione, poi inserito all'interno del #gloss[Piano di Qualifica].

Il file non ha richiesto particolari configurazioni.

==== Microsoft Teams
La piattaforma *Microsoft Teams* viene usata dalla proponente, per cui il gruppo non ne ha alcun controllo.

==== Script in Python e Go
Gli script utilizzati dal gruppo sono i seguenti nella #repo("docs")[repository di documentazione]:
- Il file `compile.sh` permette di compilare tutti i file sorgenti Typst in file PDF;
- Il file `script/renderHTMLwithPDFs.go` permette di modificare la #gloss[GitHub Page] in modo tale da rendere accessibili pubblicamente i documenti compilati in PDF;
- La cartella `src/RTB/DocumentiEsterni/sprintPdPGenerator` contiene lo script necessario per generare automaticamente le tabelle di consuntivo di periodo e di preventivo a finire di un determinato sprint, tramite il calcolo delle ore di lavoro attese ed effettive delle _issues_ collegate al #gloss[GitHub Project] del gruppo.
- La cartella `script/scriptPdQ` contiene lo script per la rilevazione dei dati utili al calcolo delle metriche presenti nel #gloss[Piano di Qualifiche]

==== Typst <infrastruttura-creazione-typst>
Prima di iniziare a redigere la documentazione, il gruppo ha stabilito un ambiente di Typst nella #repo("docs")[repository di documentazione] per la creazione di documenti eleganti ed omogenei, creando degli appositi _templates_ e funzioni personalizzate.

#set heading(outlined: false)
===== Template
I _template_ utilizzati dal gruppo risiedono nella cartella `src/Templates` e forniscono gli strumenti per usare uno stile standard nella redazione dei documenti.

Per maggiori informazioni riguardanti le caratteristiche dei documenti e dei relativi _template_ è possibile consultare la @doc-caratteristiche-struttura.

===== Funzioni personalizzate
Nei template e nella cartella `src/lib` sono messe a disposizione le seguenti funzioni _helper_ che facilitano la redazione dei documenti:
- `issue()` e `issue_full()` consentono di creare rapidamente un link a una #gloss[issue] di qualunque #gloss[repository] del gruppo;
- `repo()` consente di creare rapidamente un link a una delle #gloss[repository] del gruppo;
- `gloss()` consente di visualizzare una parola con la convenzione delle parole di glossario, ovvero in grassetto e con una "G" a pedice.


#set heading(outlined: true)
==== WhatsApp
Il gruppo ha creato un gruppo WhatsApp privato per le comunicazioni interne. Non sono state necessarie configurazioni particolari.

=== Manutenzione <infrastruttura-manutenzione>
L'attività di manutenzione del'infrastruttura è fondamentale per assicurare che il _way of working_ del gruppo rimanga allo stato dell'arte. Si affida, pertanto, alla figura dell'#gloss[amministratore] la responsabilità di controllare frequente il regolare funzionamento dell'infrastruttura e di risolvere il prima possibile eventuali problemi che possono insorgere nel suo utilizzo da parte del gruppo.


== Miglioramento <miglioramento-processi>
Il processo di *miglioramento* è definito dallo standard _ISO/IEC 12207:1995_ come l'insieme di attività atte allo stabilimento, valutazione, misurazione, controllo e miglioramento dei processi di cicli di vita del software.

I processi di miglioramento continuo del _way of working_ sono delle attività fondamentali per consentire al gruppo di aumentare la propria efficacia ed efficienza del proprio lavoro a ogni iterazione.

=== Attività previste
Le attività previste da questo processo sono le seguenti
- #link(<miglioramento-init>)[Inizializzazione dei processi]
- #link(<miglioramento-valutazione>)[Valutazione dei processi]
- #link(<miglioramento-miglioramento>)[Miglioramento dei processi]


=== Inizializzazione dei processi <miglioramento-init>
Per poter attuare il processo di miglioramento, è prima necessario stabilire e documentare tutti i processi organizzativi per ogni processo di ciclo di vita del software: questo documento ha questo preciso scopo. Inoltre, è fondamentale stabilire dei meccanismi di controllo dei processi per permetterne il miglioramento.

=== Valutazione dei processi <miglioramento-valutazione>
Quando i processi sono stati stabiliti e documentati è necessario anche stabilire un processo di valutazione degli stessi, il quale dev'essere anch'esso documentato e applicato. Per poter applicare il processo di valutazione è necessario revisionare regolarmente i processi applicati in modo tale da garantire la loro idoneità al progetto ed efficacia.

_GlitchHub Team_ ha redatto il documento di #gloss[Piano di Qualifica] con lo scopo di misurare la qualità dei processi applicati a ogni _sprint_ in maniera quantificabile e misurabile, in modo tale da poter trarre delle conclusioni su quali siano i difetti del _way of working_ del gruppo e come questi si possano migliorare in modo continuo.

=== Miglioramento dei processi <miglioramento-miglioramento>
Le misurazioni e i controlli compiuti nella @miglioramento-valutazione hanno lo scopo di rilevare quali siano i processi che presentano problematiche; una volta rilevati, è necessario individuare delle soluzioni che possano migliorarne l'efficacia ed efficienza, aggiornando anche la relativa documentazione.

== Processo di formazione <formazione>
Il processo di *formazione* ha lo scopo di far sì che i membri del gruppo sviluppino le abilità necessarie per affrontare il progetto e che le affinino costantemente, in modo tale da produrre i prodotti di progetto in maniera sempre più efficiente.

=== Attività previste
Le attività previste da questo processo sono:
- #link(<formazione-implementazione>)[Implementazione del processo]
- #link(<formazione-sviluppo>)[Sviluppo del materiale di formazione]
- #link(<formazione-implementazione-piano>)[Implementazione del piano di formazione]

=== Implementazione del processo <formazione-implementazione>
Secondo lo standard _ISO/IEC 12207:1995_, per poter attuare il processo di formazione è fondamentale condurre una revisione dei requisiti del progetto, in modo tale da acquisire e sviluppare le risorse e abilità necessarie per il suo buon svolgimento.

Dopo un'attenta analisi dei requisiti del progetto, il gruppo ha stabilito che è necessario studiare e approfondire le seguenti tecnologie:
- Per lo sviluppo del codice del progetto:
  - Il linguaggio di programmazione #gloss[Go] e il framework #gloss[Gin]
  - Il linguaggio #gloss[JavaScript] insieme al framework #gloss[Angular.js] e alla libreria Chart.js
  - Il sistema di virtualizzazione #gloss[Docker]
  - Il sistema di _messaging_ #gloss[NATS JetStream]
  - I sistemi di _observability_ #gloss[Grafana] e #gloss[Prometheus]

- Per la scrittura e la compilazione della documentazione:
  - Il sistema di composizione tipografica digitale *Typst*
  - Il linguaggio *Go* per gli script di compilazione

- Per la gestione del versionamento del codice:
  - Il _Version Control System_ (VCS) #gloss[Git]
  - La piattaforma di _hosting_ di repository #gloss[GitHub]
  - Il linguaggio #gloss[Python] per la creazione di #gloss[GitHub Actions] utili

=== Sviluppo del materiale di formazione <formazione-sviluppo>
Di seguito sono riportate le risorse utilizzate dal gruppo per imparare le tecnologie identificate.

==== Angular e JavaScript
- #link("https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide")[Guida per _JavaScript_ -- Mozilla Foundation]
- #link("https://www.chartjs.org/docs/latest/getting-started/")[Documentazione ufficiale di _Chart.js_]
- #link("https://angular.dev/overview")[Documentazione ufficiale di _Angular.js_]
- #link("https://www.youtube.com/watch?v=oUmVFHlwZsI")[_Crash course_ su _Angular.js_ -- Non ufficiale]

==== Docker
- #link("https://docs.docker.com/get-started/")[_Get started_ ufficiale di _Docker_]
- #link("https://docs.docker.com/compose/")[Documentazione ufficiale di _Docker Compose_]

==== Git e GitHub
Risorse per l'approfondimento di *Git*:
- #link("https://git-scm.com/docs/gittutorial")[Tutorial ufficiale di _Git_]
- #link("https://git-scm.com/docs")[Manuale di riferimento ufficiale di _Git_]

Risorse per l'approfondimento di *GitHub*:
- #link("https://docs.github.com/en")[Documentazione ufficiale di _GitHub_]
- #link("https://docs.github.com/en/get-started")[_Get started_ ufficiale di _GitHub_]
- #link("https://docs.github.com/en/rest?apiVersion=2022-11-28")[Documentazione ufficiale dell'API di _GitHub_]
  - Questa risorsa si rivela particolarmente utile per lo sviluppo delle #gloss[GitHub Actions]

==== Go e Gin
Risorse per l'approfondimento di *Go*:
- #link("https://go.dev/doc")[Documentazione ufficiale di _Go_]
- #link("https://go.dev/tour")[_Tour of Go_, tutorial interattivo di _Go_]

Risorse per l'approfondimento di *Gin*:
- #link("https://gin-gonic.com/en/docs/")[Documentazione ufficiale di _Gin_]
  - Si noti che è questa documentazione è carente sotto alcuni punti vista, per cui si consiglia l'utilizzo di articoli non ufficiali per una maggiore comprensione _hands-on_ di Gin
- #link(
    "https://ututuv.medium.com/building-user-authentication-and-authorisation-api-in-go-using-gin-and-gorm-93dfe38e0612",
  )[_Building user authentication and authorisation API in Go using Gin and Gorm -- Verdotte Aututu_ (non ufficiale)]

==== Grafana e Prometheus
- #link("https://prometheus.io/docs")[Documentazione ufficiale di _Prometheus_]
- #link(
    "https://betterstack.com/community/guides/monitoring/visualize-prometheus-metrics-grafana/",
  )[_Creating Grafana Dashboards for Prometheus: A Beginner's Guide -- Ayooluwa Isaiah_ (non ufficiale)]
- #link(
    "https://geekpaul.medium.com/introducing-prometheus-with-grafana-metrics-collection-and-monitoring-36ca88ac4332",
  )[_Introducing Prometheus with Grafana: Metrics Collection and Monitoring -- Arindam Paul_ (non ufficiale)]
- #link(
    "https://dev.to/devcorner/monitoring-with-prometheus-and-grafana-a-comprehensive-guide-48gf",
  )[_Monitoring with Prometheus and Grafana: A Comprehensive Guide_ (non ufficiale)]

==== NATS
- #link("https://docs.nats.io/")[Documentazione ufficiale di _NATS_]
- #link("https://docs.nats.io/nats-concepts/jetstream")[Documentazione ufficiale di _NATS JetStream_]

==== Python
Essendo Python un linguaggio molto semplice, è possibile utilizzare una _cheatsheet_ come https://learnxinyminutes.com/python/ per approfondirlo in maniera rapida.


=== Implementazione del piano di formazione <formazione-implementazione-piano>
Ogni membro di _GlitchHub Team_ si impegna a ricavare in ogni _sprint_ le risorse temporali necessarie per approfondire le tecnologie usate, in modo tale da permettere una formazione omogenea e comprensiva di tutte le tecnologie utilizzate. La formazione personale di ogni membro avverrà principalmente in maniera asincrona, ma sfruttando anche le sessioni di _brainstorming_ come strumenti di formazione collettiva.

Si noti anche che lo sviluppo del #gloss[Proof of Concept] e dell'#gloss[MVP] costituiranno i momenti di maggiore formazione e pratica nell'uso delle tecnologie sopra riportate.
