#import "../../Templates/templateVerbali.typ": *

#show link: underline
#show: report.with(
  titolo: "Verbale interno 27/10/2025",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    ("1.0.0", "30/10/2025", "Alessandro Dinato", "Elia Ernesto Stellin", "Versione stabile verbale"),
    ("0.2.0", "30/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Correzione refusi e raffinamento della scorrevolezza"),
    ("0.1.0", "27/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Prima stesura"),
    ("0.0.1", "27/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Bozza terzo incontro interno"),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Michele Dioli",
    "Hossam Ezzemouri",
    "Siria Salvalaio",
    "Elia Ernesto Stellin",
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  odg: (
    "Sollecito a VarGroup",
    "Condivisione pensieri riguardo i capitolati",
    "Allineamento sul versionamento e la verifica della documentazione",
    "Allineamento workflow Typst",
    "Varie ed eventuali",
  ),
  htmlId: "Candidatura-VerbaliInterni",
  verificatore-interno: "Elia Ernesto Stellin",
  left-signature: "../assets/firme/firma_Elia_Ernesto_Stellin.jpg",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *27 ottobre 2025*, dalle 14:30 alle 17:15, si è tenuta, in modalità virtuale, la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Sollecito a VarGroup
In data *18 ottobre 2025*, il gruppo ha contattato VarGroup S.p.A., richiedendo un incontro di approfondimento del capitolato C2 da loro proposto. A tale richiesta il gruppo non ha ancora ricevuto risposta, per cui è stato deciso di considerare altri capitolati come "seconde scelte".\
La mancata risposta ha sollevato nel gruppo dubbi riguardo l'affidabilità e la disponibilità di VarGroup S.p.A. a fornire supporto per l'intera durata del progetto.

== Condivisione dei pensieri sui capitolati
In vista della scadenza di consegna della candidatura del *31 ottobre 2025*, la quale richiede il documento di Valutazione dei Capitolati, i presenti hanno analizzato insieme ciascuno dei nove capitolati proposti, fornendo la propria opinione in merito.

Ciascuno dei presenti ha espresso il proprio grado di interesse verso ciascun capitolato dal punto di vista del loro dominio applicativo e dei loro requisiti fondamentali, basandosi sui propri campi d'interesse e sulle proprie preferenze.
Inoltre, ogni partecipante ha condiviso le proprie aree di interesse e competenza, così da ottenere una visione più chiara e completa delle capacità complessive del gruppo.

In seguito a questa discussione, è stata confermata definitivamente la decisione di candidarsi per il capitolato *C7*, considerando i capitolati *C2*, *C4* e *C9* come possibili seconde scelte, in caso di mancata approvazione della candidatura.

== Allineamento sulla documentazione
Dopodiché, il gruppo si è allineato sui workflow e sulle convenzioni da adattare per la produzione dei documenti del progetto, quali verbali e manuali, in particolare soffermandosi sul *versionamento* e la *#gloss[verifica]* degli stessi.

=== Versionamento
Essendo la produzione di documentazione un processo iterativo, è necessario tenere traccia di ogni versione dei documenti prodotti, in modo tale da tracciare, nel tempo, quali modifiche vengono applicate a essi e da chi.

Per tale motivo, è stato deciso di adottare il sistema di versionamento #link("#gloss[https]://semver.org/lang/it/")[*Semantic Versioning*] (abbreviato SemVer), spesso impiegato in ambito di versionamento del Software, in cui ogni versione è descritta da 3 numeri naturali separati da punto (*`MAJOR.MINOR.PATCH`*), dove:

- *`MAJOR`*: rappresenta le modifiche sostanziali applicate al documento
  - Se `MAJOR = 0`, la versione è da considerarsi non "stabile", ovvero soggetta in futuro a cambiamenti rapidi e sostanziali. In particolare, #gloss[ci]ò rappresenta che il documento è in fase di prima stesura;
  - Se `MAJOR = 1`, allora il documento è nella versione di prima stesura "stabile", ovvero *verificata* da un altro membro del gruppo;
  - Ogni valore `MAJOR >= 1`, rappresenta una nuova stesura del documento sostanzialmente diversa dal precedente. Per cui, il numero `MAJOR` va aumentato solo in caso di modifiche sostanziali alla struttura o al contenuto del documento.

- *`MINOR`*: va aumentato a ogni nuova revisione sostanziale che non modifica la struttura o il significato del contenuto del documento,

- *`PATCH`*: va aumentato a ogni revisione che corregge la formattazione, refusi o punteggiatura del testo.

All'#gloss[incremento] di un numero di versione, tutti i numeri alla sua destra vengono messi a 0, per cui la versione `MINOR` successiva alla `0.1.1` non può essere `0.2.1`, ma deve essere necessariamente `0.2.0`.

In questo sistema, quindi:
- la prima *bozza* del documento è rappresentata dalla versione `0.0.1`,
- la prima *stesura* ancora non verificata dalla versione `0.1.0`
- la prima *stesura* verificata dalla versione `1.0.0`
- e così via, fino al completamento del documento

Sebbene questo sistema sia più complicato di un semplice sistema "a revisioni", in cui ogni revisione del documento viene rappresentata da un numero incrementale (ad es. "rev. 1", "rev. 2", "rev. 3", etc), d'altro canto, esso permette di rappresentare in modo conciso il cambiamento da una versione alla successiva.

Inoltre, si noti che questo sistema è già stato adottato informalmente nelle stesure dei verbali precedenti, avvenute prima dello svolgimento della riunione in oggetto, tuttavia questo verbale sancisce ufficialmente la decisione del gruppo di utilizzarlo.

=== Verifica
Per quanto riguarda la #gloss[verifica] dei verbali, si è deciso di agire in questa maniera:

1. Quando lo scrittore principale del verbale finisce di scrivere una versione considerata "stabile", contatta il verificatore scelto per iniziare il processo di #gloss[verifica], tenendo il numero della versione a `0.x.y`.

2. Quindi, il verificatore scelto, una volta finito di verificare ed eventualmente correggere il verbale:

  #set enum(numbering: "a.")
  1. Se il verificatore ha apportato delle modifiche, allora anche queste dovranno essere verificate da un altro verificatore, potenzialmente separato dallo scrittore originale, a meno che le modifiche apportate non siano esclusivamente di tipo `PATCH`. \
    La modifica del documento implica un aggiornamento della versione del verbale, a seconda della portata della modifica. Si noti che se la versione `MAJOR` è 0, allora bisogna incrementare la versione a `1.0.0` a priori.

  2. Se. invece, ritiene che il documento sia corretto e non debba essere modificato ulteriormente, il documento è da considerarsi "stabile". Se, successivamente a questa #gloss[verifica], dovessero emergere ulteriori errori da correggere, allora il ciclo di #gloss[verifica] riprende dal punto 2, fino al raggiungimento di  una nuova versione stabile.

Se possibile, è consigliabile che vi sia più di un verificatore per verbale, in modo tale da mitigare bias di qualunque tipo.

== Allineamento workflow Typst
Il gruppo si è conformato a un unico workflow per la scrittura e la pubblicazione di documentazione sul sito del gruppo.

Ogni qualvolta si voglia eseguire un task di scrittura di documentazione, bisogna eseguire i seguenti passaggi sulla #gloss[repository] #gloss[GitHub] #link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io")[`GlitchHub-Team/GlitchHub-Team.#gloss[github].io`]:

1. Si crea un nuovo branch nominato `Documentation-[nome attività]`.

2. Per tale attività, si lavora esclusivamente su quel branch usando Visual Studio Code con l'estensione #link("#gloss[https]://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist")[*Tinymist #gloss[Typst]*].

3. Quando la prima stesura (versione `0.x.y`) è portata a termine, allora si crea una #gloss[Pull Request] sulla #gloss[repository], per fare il merge di `Documentation-[...]` in `main`, assegnando come Reviewer i verificatori scelti.

4. Quindi, i Reviewer dovranno continuare ad apportare modifiche al branch `Documentation-[...]`, che siano esse nuove modifiche o solamente l'aggiornamento della versione, per poi accettare la #gloss[Pull Request] in main.

5. Una volta eseguito il merge, il verbale compilato apparirà sul sito del gruppo, grazie alle #gloss[GitHub Actions] impostate.
  #footnote[
    #gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/blob/main/.#gloss[github]/workflows/onPushMain.yml
  ]
  In caso siano richiesti ulteriori modifiche, è possibile aprire una nuova #gloss[Pull Request] e continuare ad apportare modifiche al branch `Documentation-[...]`, per poi eseguire nuovamente il merge in `main`.
  #footnote[
    Se il branch in questione è stato eliminato, è necessario prima ricrearlo.
  ]


= Conclusioni
Il gruppo non ha stabilito una data della prossima riunione, quindi #gloss[ci]ò avverrà per le vie brevi.
