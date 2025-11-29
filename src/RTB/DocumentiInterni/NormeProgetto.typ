#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Norme di Progetto",
  stato: "Da verificare",
  versione: "0.2.1",
  registro-modifiche: (
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

// TODO: la struttura va capita meglio, intanto questa è una bozza molto grossolana
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
  - Ultimo accesso: 24 novembre 2025
  - Note: Questo documento ha una struttura che si ispira a questo standard, ma non ha la pretesa di rispettarlo pienamente.

// NOTA: Importante tenere aggiornato questo numero
- *Glossario v0.1.1*
  - Link: https://glitchhub-team.github.io/pdf/glossary.pdf
  - Ultimo accesso: 24 novembre 2025

// TODO: differenza tra riferimenti normativi e informativi


= Processi primari <processi-primari>
In questa sezione, verranno descritti i processi essenziali allo svolgimento del progetto didattico.

Al momento della scrittura di questa versione delle Norme di Progetto, i processi di fornitura e sviluppo del prodotto non sono ancora iniziati, ma stanno venendo definite incrementalmente le Norme relative alla Documentazione (vd. @documentazione).
/*
== Fornitura
// TODO: spiegare fornitura

=== Strumenti a supporto
Per svolgere le attività di progetto, il gruppo utilizza i seguenti strumenti:


== Sviluppo
*/

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

A prescindere dal proprio tipo, il frontespizio di tutti i documenti tranne i Diari di Bordo è composto da:
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
//alcune sezioni
Alcuni documenti, come il presente _Norme di Progetto_, _Piano di Qualifica_ e _Piano di Progetto_, sono *incrementali*, cioè crescono parallelamente allo sviluppo del progetto. Per questo motivo alcuni sezioni possono rimanere inizialmente vuote o incomplete, poiché non è ancora possibile definirne i concetti.

Il workflow di questi documenti differisce dagli altri "monolitici", infatti ogni *versione stabile* (vd. @doc-versionamento) considera tali solo le sezioni complete e verificate (vd. @doc-verifica), ignorando quelle vuote. Ogni versione stabile deve essere poi pubblicata nel sito tramite _pull request_, così da rendere disponibile il prima possibile lo stato aggiornato del documento.

==== Verbali
I verbali hanno una versione modificata del frontespizio descritto sopra, in cui:
- Compare l'*ordine del giorno* come lista numerata tra il titolo e la versione;
- Tra lo *Stato* e la *Distribuzione*, compare la lista dei *partecipanti* alla riunione descritta dal verbale.

In generale, i verbali hanno la seguente struttura:
- *Introduzione*: Sezione dove si descrivono le coordinate della riunione in oggetto e un riassunto dello scopo della riunione.
- *Resoconto*: Sezione suddivisa in sotto-sezioni corrispondenti agli elementi dell'*ordine del giorno*. L'ultima sezione deve descrivere l'assegnazione dei compiti decisa durante la riunione per il prossimo periodo.
- Eventualmente può anche figurare una *conclusione*.

Si noti che i verbali esterni presentano la firma del revisore esterno del documento, a fianco della firma del revisore interno.

Il template da utilizzare per la scrittura dei verbali è il file `src/Templates/templateVerbali.typ`.

==== Diari di bordo
I diari di bordo sono degli incontri periodici in aula, organizzati dal prof. Vardanega durante l'orario di lezione, in cui ogni gruppo può esporre eventuali dubbi e difficoltà riscontrate durante lo svolgimento del progetto e porre domande al professore e agli altri gruppi, tramite una serie di diapositive brevi.

//"ma hanno la seguente organizzazione" per evitare ripetizioni,inotre conviene uniformare Diari di Bordo perche a volte si scrive con le maiuscole e a volte tutto in minuscolo
Le diapositive dei diari di bordo non seguono la struttura descritta precedentemente ma hanno la seguente struttura:
- *Difficoltà riscontrate*: Sezione in cui si enunciano le difficoltà riscontrate dal gruppo.
- *Questioni aperte*: Sezione in cui il gruppo pone eventuali domande al professore e/o agli altri gruppi.

La scrittura delle _slides_ di un Diario di Bordo prevede l'utilizzo del template `src/Templates/templateSlides.typ`

==== Altri documenti
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

La convenzione di versionamento di tutti i documenti tranne i Diari di Bordo, è riportata come descritta originariamente nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*].

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

==== Denominazione e Locazione File
I documenti in formato PDF sono resi disponibili sul #link("https://GlitchHub-Team.github.io")[sito web di _GlitchHub Team_].

I documenti seguono uno schema di locazione all'interno del file system del sito: tutti i documenti, eccetto i Diari di Bordo e il Glossario, sono disponibili nel _path_:

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

// TODO: inserire schema denominazione Diari di Bordo
Fanno da eccezione:
- I Diari di Bordo che sono locati in `...`
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
Ogni documento scritto deve essere verificato da un componente del gruppo diverso dallo scrittore originale, per evitare di travisare, intenzionalmente o meno, le decisioni e azioni prese dal gruppo.

Le procedure di verifica sono riportate di seguito, come descritte nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*] e nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-12.pdf")[*verbale interno del 12 novembre 2025*].

1. Quando il primo redattore contrassegna il documento come *Da verificare* (vd. @doc-def-da-verificare), quest'ultimo contatta il verificatore scelto per iniziare la procedura di verifica

2. Quindi, il verificatore scelto ha il compito di leggere attentamente il documento e di suggerire correzioni all'autore originale, se necessario

  a. Se il verificatore suggerisce delle correzioni l'autore è tenuto ad applicarle, quindi, il verificatore dovrà controllare la nuova versione corretta. Questo passo avviene in maniera ciclica, finché il documento non è considerato stabile.

  b. Se invece, esso ritiene che il documento sia corretto e non richieda ulteriori modifiche, il documento è da considerarsi stabile.

Si noti che nel caso di #gloss[documenti incrementali], la verifica deve avvenire a ogni versione intermedia, considerata "stabile" dall'autore.

Nel caso di questo documento, le versioni "intermedie" sono considerabili incomplete, poiché non tutte le sezioni sono presenti, ma le sezioni che sono già state scritte sono da considerarsi "stabili" e quindi da verificare.

=== Manutenzione <doc-manutenzione>
// TODO: dobbiamo definire bene la procedura di manutenzione
Un documento stabile non è da considerarsi finito e immutabile, poiché in seguito alla sua verifica potrebbero emergere errori che non sono stati rilevati né dallo scrittore che dal verificatore.
//tolto l apostrofo da "qualcun'altro"
In tal caso, chi si accorge dell'errore è tenuto a segnalarlo ed eventualmente proporre una modifica, che contribuirà a creare una nuova versione del documento, la quale andrà successivamente verificata da qualcun altro.


== Gestione delle configurazioni

// === Strumenti a supporto

// === Attività previste

// === Identificazione della configurazione

// === Controllo della configurazione

// === Registrazione dello stato di configurazione <registrazione-stato-configurazione>

// == Accertamento qualità

// == Qualifica


= Processi organizzativi <processi-organizzativi>
/*
== Gestione dei processi

== Infrastruttura

== Processo di miglioramento

== Processo di formazione
*/
