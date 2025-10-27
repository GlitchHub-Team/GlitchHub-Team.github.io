#import "../../Templates/TemplateVerbale/template.typ": report

#show link: underline
#show: report.with(
  titolo: "Verbale interno 27/10/2025",
  stato: "In attesa di verifica",
  versione: "0.1.0",
  registro-modifiche: (
    ("0.1.0", "27/10/2025", "Elia Ernesto Stellin", "", "Prima stesura"),
    ("0.0.1", "27/10/2025", "Elia Ernesto Stellin", "", "Bozza terzo incontro interno"),
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
    "Prof. Vardenega Tullio",
  ),
  odg: (
    "Sollecito a VarGroup",

    // TODO: Scrivi meglio
    "Condivisione dei pensieri sui capitolati", 
    "Allineamento sulla documentazione",
    "Allineamento workflow Typst",
    "Varie ed eventuali"
  ),
  htmlId: "Candidatura-VerbaliInterni",
  verificatore-interno: "",
  left-signature: "",
  tipo-verbale: "Interno",
)

= Introduzione
Il presente documento attesta che, in data *27 ottobre 2025*, dalle 14:30 alle 17:15, si è tenuta, in modalità virtuale, la riunione del gruppo *GlitchHub Team*.

= Resoconto della riunione

== Sollecito a VarGroup
In data *18 ottobre 2025*, il gruppo ha contattato VarGroup S.p.A., richiedendo un incontro di approfondimento del capitolato C2 da loro proposto. Al momento dello svolgimento della riunione, VarGroup S.p.A. non ha ancora risposto alla nostra richiesta.

Per cui, è stato deciso dai presenti di contattare il Prof. Tullio Vardanega via e-mail, in modo tale da sollecitare l'azienda a rispondere alla nostra richiesta.

== Condivisione dei pensieri sui capitolati
In vista della scadenza di consegna della candidatura del *31 ottobre 2025*, la quale richiede il documento di Valutazione dei Capitolati, i presenti hanno analizzato insieme ognuno dei nove capitolati proposti, fornendo la propria opinione in merito.

// TODO: non mi piace sta frase
// TODO: si potrebbe aggiungere dettaglio, su come abbiamo considerato anche le esperienze pregresse e i campi d'interesse di ciascun membro
Ciascuno dei presenti ha espresso il proprio grado di interesse verso ciascuno dei capitolati, dal punto di vista del loro dominio e dei loro requisiti fondamentali. Per cui, è stato deciso in modo definitivo di candidarsi per il capitolato *C7*, considerando i capitolati *C2*, *C4* e *C9* come possibili seconde scelte, in caso di mancata approvazione della candidatura.

== Allineamento sulla documentazione
Dopodiché, il gruppo si è allineato sui workflow da adattare per la produzione dei documenti del progetto, quali verbali e manuali, in particolare soffermandosi sul *versionamento* e la *verifica* degli stessi.

=== Versionamento
Essendo la produzione di documentazione un processo iterativo, è necessario tenere traccia di ogni versione dei documenti prodotti, in modo tale da tracciare, nel tempo, quali modifiche vengono applicate a essi e da chi.

Per tale motivo, è stato deciso di adottare il sistema di versionamento #link("https://semver.org/lang/it/")[*Semantic Versioning*] (abbreviato SemVer), spesso utilizzata in ambito di versionamento del Software, in cui ogni versione è descritta da 3 numeri naturali separati da punto (*`MAJOR.MINOR.PATCH`*), dove:

- *`MAJOR`*: rappresenta le modifiche sostanziali applicate al documento
  - Se `MAJOR = 0`, la versione è da considerarsi non "stabile", ovvero soggetta in futuro a rapidi cambiamenti. In particolare, ciò rappresenta che il documento è in fase di prima stesura,
  - Se `MAJOR = 1`, allora il documento è nella versione di prima stesura "stabile", ovvero *verificata* da un altro membro del gruppo,
  - Ogni valore `MAJOR >= 1`, rappresenta una nuova stesura del documento sostanzialmente diversa dal precedente. Per cui, il numero `MAJOR` va aumentato solo in caso di modifiche sostanziali alla struttura o al contenuto del documento.

- *`MINOR`*: va aumentato a ogni nuova revisione sostanziale che non modifica la struttura o il significato del contenuto del documento,

- *`PATCH`*: va aumentato a ogni revisione che corregge la punteggiatura o refusi nel testo.

All'incremento di un numero di versione, tutti i numeri alla sua destra vengono messi a 0, per cui la versione `MINOR` successiva alla `0.1.1` non può essere `0.2.1`, ma deve essere necessariamente `0.2.0`.

In questo sistema, quindi:
- la prima *bozza* del documento è rappresentata dalla versione `0.0.1`,
- la prima *stesura* ancora non verificata dalla versione `0.1.0`
- la prima *stesura* verificata dalla versione `1.0.0`
- e così via, fino al completamento del documento

Sebbene questo sistema sia più complicato di un semplice sistema "a revisioni", in cui ogni revisione del documento viene rappresentata da un numero incrementale (ad es. "rev. 1", "rev. 2", "rev. 3", etc.), crediamo che, d'altro canto, esso permetta di rappresentare in modo conciso la differenza tra due versioni distinte di un documento.

Inoltre, si noti che questo sistema è già stato adottato nelle stesure dei verbali precedenti, avvenute prima dello svolgimento della riunione in oggetto, ma questo verbale sancisce formalmente la decisione del gruppo di utilizzarlo.

=== Verifica
Per quanto riguarda la verifica dei verbali, si è deciso di agire in questa maniera:

- Quando lo scrittore principale del verbale ha scritto una versione secondo egli "stabile", contattata il verificatore scelto per attuare il processo di verifica, ma non aggiornando ancora il numero della versione

- Quindi, il verificatore scelto, una volta finito di verificare ed eventualmente correggere il verbale, aumenta di 1 la versione `MAJOR`

  - Se il verificatore ha apportato delle modifiche, allora anche queste dovranno essere verificate da un altro verificatore, potenzialmente lo scrittore originale. A ogni modifica consegue un aggiornamento della versione del verbale, a seconda della portata della modifica.

  - Se il verificatore ritiene che il documento sia corretto e non debba essere modificato ulteriormente, invece, il documento è considerato "stabile" e non richiede ulteriori modifiche. Se, successivamente a quest'ultima correzione, dovessero sorgere ulteriori errori da correggere, allora il ciclo di verifica riprende, fino a una nuova versione stabile.

- Possibilmente, si deve cercare di avere più di un verificatore per verbale, in modo tale da mitigare bias di qualunque tipo.

// TODO: NON SO SE METTERLO COSI' IN DETTAGLIO QUI NEL VERBALE
== Allineamento workflow Typst
Il gruppo si è conformato a un unico workflow per la scrittura e la pubblicazione di documentazione sul sito del gruppo.

Ogni qualvolta si voglia eseguire un task di scrittura di documentazione, i passaggi:

1. creare un nuovo branch nominato `Documentation-[nome attività]`

2. si lavora esclusivamente su quel branch per quella attività, in locale si utilizza Visual Studio Code con l'estensione Tinymist Typst

3. Quando la prima stesura (versione `0.x.y`) è portata a termine, allora si crea sulla repo GitHub una Pull Request per fare il merge di `Documentation-[...]` in `main`, assegnando come Reviewer i verificatori scelti

4. Quindi, i Reviewer dovranno continuare ad apportare modifiche al branch `Documentation-[...]`, che siano esse nuove modifiche o solamente l'aggiornamento della versione, per poi accettare la Pull Request in main.

5. Una volta eseguito il merge, il verbale compilato apparirà sul sito del gruppo. In caso siano richiesti ulteriori modifiche, è possibile aprire una nuova Pull Request e continuare ad apportare modifiche al branch `Documentation-[...]`, per poi esgeuire nuovamente il merge in `main`

= Conclusioni
Il gruppo non ha ancora stabilito le coordinate della prossima riunione, verranno stabilite per le vie brevi.
