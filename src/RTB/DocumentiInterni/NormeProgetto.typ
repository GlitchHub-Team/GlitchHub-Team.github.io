#import "../../Templates/templateDocumentiGenerici.typ": *
#show ref: underline

// NOTA: se dovete riferirvi a delle sezioni del testo (ad es. scrivere Sezione 1.2.3), usate ref e label
#show: report.with(
  titolo: "Norme di Progetto",
  stato: "Verificato",
  registro-modifiche: (
    (
      "1.2.0",
      "18/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [
        Modificato utilizzo delle maiuscole;
        Aggiornata @infrastruttura-github-repo-documentazione in modo tale da rispecchiare struttura della repo;
        Aggiornata @validazione-implementazione-processo per includere informazioni su tracciamento di requisiti e test
      ],
    ),
    (
      "1.1.0",
      "17/02/2026",
      "Michele Dioli",
      "Alessandro Dinato",
      [Aggiunta sezioni metriche],
    ),
    (
      "1.0.1",
      "17/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Corretta formula per metrica MPC-WD (@mpc-wd)],
    ),
    (
      "1.0.0",
      "13/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Versione stabile del documento],
    ),
    (
      "0.5.1",
      "13/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Sistemati link rotti e riferimenti al glossario],
    ),
    (
      "0.5.0",
      "11/02/2026",
      "Elia Ernesto Stellin",
      "Riccardo Graziani",
      [Espansa @documentazione; \ Create @controllo-configurazione, @accertamento-qualita, @verifica e @validazione],
    ),
    (
      "0.4.1",
      "10/02/2026",
      "Riccardo Graziani",
      "Elia Ernesto Stellin",
      [Applicate correzioni a @attivita-previste-sviluppo rilevate durante la verifica],
    ),
    (
      "0.4.0",
      "09/02/2026",
      "Riccardo Graziani",
      "Jaume Bernardi",
      [Aggiunte @processi-primari, @processo-fornitura, @processo-sviluppo],
    ),
    (
      "0.3.1",
      "07/02/2026",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      [Applicate correzioni a @processi-organizzativi rilevate durante verifica.],
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
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
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

Il principale tipo di ambiguità che si può creare nello svolgimento del progetto è l'incomprensione del significato dei termini utilizzati dal gruppo. A tale scopo, la nomenclatura adottata da quest'ultimo verrà raccolta nel #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf")[*glossario*], un #gloss[documento incrementale] che definisce ogni parola rilevante per il dominio del progetto.

Come descritto nel #link("https://glitchhub-team.github.io/pdf/RTB/VerbaliInterni/2025-11-19.pdf")[*verbale interno del 19 novembre 2025*], il gruppo si impegna ad annotare tutte le parole del glossario che compaiono nei documenti con una G a pedice in questo modo:

#align(center, gloss("parola"))

Per una buona comprensione del dominio da parte del gruppo, è fondamentale che ogni membro visioni periodicamente il glossario per rimanere allineato sulle definizioni di dominio.

== Riferimenti
=== Riferimenti normativi
- #gloss[Capitolato d'appalto] C7
- #link(
    "https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf",
  )[`https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf`]
  - *Ultimo accesso*: 17 febbraio 2025

=== Riferimenti informativi

- *Standard ISO/IEC 12207:1995*
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf`]
  - *Ultimo accesso*: 17 febbraio 2026
  - *Note*: Questo documento ha una struttura che si ispira a questo standard, ma non ha la pretesa di rispettarlo pienamente.

// NOTA: Importante tenere aggiornato questo numero
- *Glossario v0.5.0*
  - #link(
      "https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf",
    )[`https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf`]
  - *Ultimo accesso*: 17 febbraio 2026

- *Verifica e validazione: introduzione* -- Lezione T9 del prof. Vardanega
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T09.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T09.pdf`]
  - *Ultimo accesso*: 17 febbraio 2026

- *Verifica e validazione: analisi dinamica* -- Lezione T11 del prof. Vardanega
  - #link(
      "https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T11.pdf",
    )[`https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T11.pdf`]
  - *Ultimo accesso*: 17 febbraio 2026


= Processi primari <processi-primari>
I processi primari della norma #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")[*ISO/IEC 12207:1995*] definiscono le attività fondamentali del ciclo di vita del software attraverso cinque processi: acquisizione, fornitura, sviluppo, operazione e manutenzione, assicurando la conformità ai requisiti e agli obiettivi di qualità stabiliti.

Tra i #gloss[*processi*] primari applicati nel progetto si distinguono:
- #link(<processo-fornitura>)[*Fornitura*]
- #link(<processo-sviluppo>)[*Sviluppo*]

== Fornitura <processo-fornitura>
Il processo di *fornitura* definisce le attività attraverso cui un fornitore pianifica, realizza e consegna un prodotto software. Il processo comprende la risposta alla richiesta del cliente, la definizione e l'accordo sui termini di fornitura, la pianificazione del progetto, l'esecuzione, il monitoraggio dell'avanzamento e la consegna del prodotti.

L'obiettivo del processo è garantire che il software sia sviluppato e fornito in modo controllato, tracciabile e conforme agli standard di qualità concordati con il proponente.

=== Strumenti a supporto <fornitura-strumenti-supporto>
- #gloss[*GitHub*]: come infrastruttura per il controllo di versione
  - *GitHub Issues*: per l'assegnazione degli elementi del _backlog_ e la segnalazione di eventuali problemi nella #gloss[Repository];
  - *Github Project*: per la visualizzazione delle task in modalità Kanban, utile ad illustrare lo stato d'avanzamento delle task assegnate;
- *Whatsapp*: come canale di comunicazione all'interno del gruppo;
- #gloss[*Discord*]: per svolgere le riunioni interne del gruppo;
- #gloss[*ClickUp*]: come strumento di project management, utilizzato principalmente come piattaforma di organizzazione e *condivisione* di documenti.

Le comunicazioni e gli incontri con l'azienda proponente necessitano invece dei seguenti strumenti:
- *Gmail*: come piattaforma di comunicazione asincrona con la proponente;
- *Microsoft Teams*: per svolgere le riunioni da remoto con l'azienda proponente.

=== Attività previste <attivita-previste-fornitura>
Il processo di fornitura si compone delle seguenti attività di seguito descritte:
- *Inizializzazione*: il fornitore analizza i requisiti contenuti nella richiesta dell'acquirente per valutare la fattibilità tecnica ed economica. In questa fase si decide se partecipare alla fornitura, si definiscono le risorse necessarie e si individuano eventuali requisiti da contrattare con il proponente;
- *Preparazione della risposta*: il fornitore elabora la proposta formale che tenga conto di quanto emerso durante l'attività di inizializzazione;
- *Contrattazione*: riguarda la negoziazione con il proponente, in cui il fornitore presenta la proposta elaborata in precedenza, con l'obiettivo di giungere alla sottoscrizione di un accordo formale;
- *Pianificazione*: il fornitore stabilisce la struttura di gestione e qualità, selezionando, se non specificato nel contratto, il modello di ciclo di vita software adeguato. Sono definite le risorse e le tecnologie necessarie allo sviluppo, a fronte di un'analisi dei rischi associati a ciascuna di esse;
- *Esecuzione e controllo*: il fornitore, dopo aver documentato l'attività di pianificazione, realizza quanto stabilito, monitorando la qualità del prodotto software e lo stato di avanzamento dello sviluppo;
- *Revisione e valutazione*: il fornitore assume la responsabilità di coordinare le attività di comunicazione con il proponente, supportando attivamente riunioni informali e revisioni congiunte. Il fornitore esegue la verifica e la validazione del processo per dimostrare conformità del prodotto ai requisiti;
- *Consegna e completamento*: il fornitore consegna il prodotto finale, garantendo assistenza al proponente a supporto del prodotto consegnato.

=== Documentazione fornita
Di seguito presentiamo l'elenco completo della documentazione che *GlitchHub Team* consegnerà all'azienda proponente *M31* e ai committenti *Prof. Tullio Vardanega* e *Prof. Riccardo Cardin*.
==== Lettera di candidatura <doc-fornita-lettera-candidatura>
// TODO: Su pages si chiama ancora lettera di presentazione, ma dovrebbe chiamarsi lettera di candidatura
La #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/LetteraPresentazione.pdf")[*Lettera di Candidatura*] è il documento con cui *GlitchHub Team* ha presentato formalmente la propria candidatura al
#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[#gloss[capitolato d'appalto]] proposto dall'azienda *M31*.

==== Valutazione dei capitolati <doc-fornita-valutazione-capitolati>
La #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/ValutazioneCapitolati.pdf")[*Valutazione dei capitolati*] è il documento in cui *GlitchHub Team* ha fornito, per ogni #gloss[capitolato], un'analisi
dei rispettivi punti di forza e debolezza, e le motivazioni che hanno spinto il gruppo a scegliere/non scegliere tale #gloss[capitolato].

==== Dichiarazione degli impegni <doc-fornita-dichiarazione-impegni>
La #link("https://glitchhub-team.github.io/pdf/Candidatura/Generale/DichiarazioneImpegni.pdf")[*Dichiarazione degli impegni*] è il documento in cui *GlitchHub Team* ha formalizzato la pianificazione economica e organizzativa del progetto.
Il documento espone le stime relative all'impegno *orario* suddiviso per singoli componenti e per ruoli, definisce il costo *complessivo* dell'opera e illustra i criteri adottati per la *rotazione* dei ruoli all'interno del gruppo

==== Lettera di presentazione <doc-fornita-lettera-presentazione>
// TODO: Da linkare quando sarà su pages
La *Lettera di Presentazione* è il documento tramite il quale *GlitchHub Team* intende formalizzare la propria candidatura alle revisioni di avanzamento legate alle #gloss[baseline] del progetto didattico, ossia la *Requirements and Technology Baseline (#gloss[RTB])* e la *Product Baseline (#gloss[PB])*.

==== Analisi dei Requisiti <doc-fornita-analisi-requisiti>
L'#link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/AnalisiDeiRequisiti.pdf")[*Analisi dei Requisiti*] è il documento in cui *GlitchHub Team* definisce in dettaglio tutti i #gloss[requisiti] del progetto, classificandoli in obbligatori, desiderabili e opzionali.
Partendo da un'introduzione sul contesto operativo, l'analisi descrive i #gloss[casi d'uso] individuati e i relativi #gloss[requisiti] specifici, per poi mappare la corrispondenza tra questi elementi attraverso un'apposita tabella di tracciamento

==== Piano di Progetto <doc-fornita-piano-progetto>
Il #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf")[*Piano di Progetto*] è il documento in cui *GlitchHub Team* documenta
l'evoluzione di ogni #gloss[sprint] confrontando la fase previsionale con quella consuntiva. Per ciascuno #gloss[sprint], infatti, vengono inizialmente definite le *attività* previste,
i *rischi* potenziali e il *preventivo* delle risorse; successivamente, il documento registra le attività effettivamente svolte, il consumo reale delle risorse (con relativo aggiornamento di quelle residue) e gli esiti della *retrospettiva* del gruppo.

==== Piano di Qualifica <doc-fornita-piano-qualifica>
// NOTA: il link è già segnato come esterno
Il #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiQualifica.pdf")[*Piano di Qualifica*] illustra le strategie e le attività operative volte a garantire la *qualità* del prodotto finale da parte del gruppo *GlitchHub Team*.
Nello specifico, il documento stabilisce le *metriche* di valutazione applicate sia ai *processi* che al *prodotto* stesso, riportando inoltre i dettagli sui *test* di verifica effettuati

==== Norme di Progetto <doc-fornita-norme-progetto>
Le *Norme di Progetto* definiscono il #gloss[Way of Working] del gruppo *GlitchHub Team*,
stabilendo gli *strumenti* da utilizzare, le convenzioni per la *stesura* del codice e della documentazione, e le procedure operative necessarie a garantire uniformità ed efficienza nello sviluppo.

==== Glossario <doc-fornita-glossario>
Il #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiInterni/glossary.pdf")[*glossario*] raccoglie e definisce la *terminologia* tecnica adottata nel corso del progetto. Il suo obiettivo è costituire un punto di *riferimento* univoco per tutti i membri del gruppo, garantendo una comunicazione chiara e priva di ambiguità.

==== Verbali interni <doc-fornita-verb-interni>
Rappresentano i *verbali* delle riunioni svolte con la sola presenza dei membri del gruppo.

==== Verbali esterni <doc-fornita-verb-esterni>
Rappresentano i *verbali* delle riunioni svolte con la presenza di persone esterne al gruppo.

== Sviluppo <processo-sviluppo>
Il processo di *sviluppo* definisce le attività per la realizzazione del software, comprendendo l'analisi dei requisiti, la progettazione, l'implementazione, l'integrazione e la verifica, al fine di garantire la conformità del prodotto alle specifiche e ai requisiti di qualità stabiliti.

=== Strumenti a supporto <sviluppo-strumenti-supporto>
- #gloss[Angular]: come framework di sviluppo frontend;
- #gloss[Gin]: come framework di sviluppo backend;
- #gloss[Go]: come linguaggio di programmazione per lo sviluppo dei servizi di publish e subscribe;
- *Visual Studio Code*: per la codifica del software;
- *StarUML*: come strumento per la redazione dei *diagrammi dei #gloss[casi d'uso]*.

=== Attività previste <attivita-previste-sviluppo>
- *Implementazione del processo*: in cui viene stabilita l'articolazione delle fasi di ingegnerizzazione, garantendo che ogni attività di sviluppo sia coerente con la strategia di realizzazione scelta;
- *Analisi dei requisiti di sistema*: in cui si individuano le necessità dell'utente finale e si definiscono le funzionalità che il Sistema deve soddisfare;
- *Progettazione dell'architettura di sistema*: in cui si stabilisce l'architettura di alto livello del Sistema identificando gli elementi hardware e software atti a soddisfare i requisiti individuati;
- *Analisi dei requisiti software*: in cui si stabiliscono e documentano i requisiti software (funzionali, prestazionali, di interfaccia, di sicurezza e di qualità) per ogni elemento software identificato nel Sistema;
- *Progettazione dell'architettura software*: ossia trasformare i requisiti in un'architettura che descriva la struttura del software, identificando i componenti software e le interfacce esterne ed interne;
- *Progettazione dettagliata del software*: ossia la progettazione in dettaglio dei componenti software individuati, fino alla definizione delle singole unità software;
- *Codifica e test del software*: ossia lo sviluppo delle unità software individuate per ogni singolo componente, seguito da test effettuati sulle singole unità per verificarne il corretto funzionamento in isolamento;
- *Integrazione del software*: ossia l'integrazione delle unità software e dei componenti software, testando gli aggregati man mano che vengono sviluppati per verificarne il corretto funzionamento;
- *Test di qualificazione del software*: ossia lo svolgimento dei test di qualificazione per dimostrare che il prodotto software soddisfi i requisiti definiti.
- *Integrazione di sistema*: ossia integrare tutte le componenti sviluppate nel Sistema;
- *Test di qualificazione del sistema*: ossia eseguire test di qualificazione sul Sistema completo per valutare la conformità ai requisiti e assicurare che il Sistema sia pronto per la consegna;
- *Installazione del software*: ossia la fornitura del prodotto software nell'ambiente operativo secondo quanto specificato nel contratto;
- *Supporto all'accettazione del software*: in cui si fornisce supporto alle revisioni e ai test di accettazione dell'acquirente per completare la consegna formale del prodotto software.

In relazione alla definizione delle #gloss[baseline] previste per il progetto, ossia la Requirements and Technology Baseline (#gloss[RTB]) e la Product Baseline (#gloss[PB]), *GlitchHub Team* ha identificato l'*analisi dei requisiti* (@attivita-analisi-requisiti[§]) e la *codifica* (@attivita-codifica[§]) come attività principali dell'#gloss[RTB]. Di contro, sono state identificate la *progettazione dell'architettura software*, la *progettazione dettagliata del software* e la *codifica* come attività principali della #gloss[PB]. Di conseguenza sono state approfondite le attività principali relative all'#gloss[RTB], mentre verranno stese (o ampliate) in seguito le sezioni relative alle attività principali della #gloss[PB].

=== Analisi dei Requisiti <attivita-analisi-requisiti>
L'attività di *analisi dei requisiti* ha lo scopo di comprendere, individuare e definire in modo completo e strutturato tutti i #gloss[requisiti] che il *sistema* dovrà soddisfare. Essa consente di formalizzare le esigenze del proponente e di tradurle in #gloss[requisiti] chiaramente identificabili e verificabili.
\
Il risultato di tale attività è documentato nel documento di #gloss[Analisi dei Requisiti], che raccoglie l'insieme dei #gloss[casi d'uso] individuati e i #gloss[requisiti] ad essi associati, costituendo il riferimento principale per le successive fasi di progettazione e sviluppo del sistema.

==== Casi d'uso <attivita-casi-uso>
I #gloss[casi d'uso] sono identificati secondo la seguente nomenclatura:
#align(center)[
  *UC[Primario].[Secondario]*
]
in cui:
- *UC* indica *Use Case*, ossia la traduzione inglese di "#gloss[caso d'uso]";
- *[Primario]* è un numero progressivo che identifica univocamente il #gloss[caso d'uso] all'interno dell'#gloss[Analisi dei Requisiti];
- *[Secondario]* è un numero progressivo che identifica un #gloss[caso d'uso] correlato in modo esclusivo al caso *primario*.
Ogni #gloss[caso d'uso] è inoltre corredato da un titolo che ne riassume lo scopo e da una descrizione testuale; per ulteriori dettagli si rimanda alla sezione introduttiva sui #gloss[casi d'uso] del documento di #gloss[Analisi dei Requisiti].

==== Requisiti <attivita-requisiti>
I #gloss[requisiti] sono identificati secondo la seguente nomenclatura:
#align(center)[
  *R[Tipologia]-[Codice]-[Priorità]*
]
in cui:
- *R* indica l'abbreviazione di #gloss[requisito];
- *[Tipologia]* indica il tipo di requisito tra i seguenti valori:
  - *F* per *Funzionale*;
  - *NF* per *Non Funzionale*;
  - *D* per *Dominio*;
  - *V* per *Vincolo*;
- *[Codice]* identifica i #gloss[requisiti] per tipologia, ed è composto da un numero progressivo univoco nell'ambito della tipologia;
- *[Priorità]* indica la priorità di ogni #gloss[requisito] tra i seguenti valori:
  - *Obb* per *Obbligatorio*;
  - *Des* per *Desiderabile*;
  - *Opt* per *Opzionale*.
Per una descrizione più approfondita della tipologia e della priorità di un #gloss[requisito], si rimanda alla sezione introduttiva sui #gloss[requisiti] del documento di #gloss[analisi dei requisiti].

//TODO: post-RTB sarà da aggiungere sezione relativa alla progettazione ed espandere su queste norme di codifica
=== Codifica <attivita-codifica>
L'attività di *codifica*, svolta dai programmatori, consiste nel tradurre la progettazione definita dai *progettisti* nel prodotto software finale. In questa sezione vengono illustrate le *norme* e le *convenzioni* che i programmatori sono tenuti a rispettare, con l'obiettivo di:
- *Ottimizzare* la revisione: velocizzare le attività di verifica e collaudo del codice attraverso una scrittura più chiara.
- *Assicurare* l'evoluzione del sistema: migliorare la manutenibilità e la futura estensibilità del software prodotto.
- *Garantire l'uniformità* qualitativa: certificare che il codice sia conforme agli standard di qualità precedentemente fissati.

==== Stile di codifica Typescript <codifica-typescript>
In questa sezione vengono definiti gli standard implementativi per lo sviluppo in linguaggio *Typescript* all'interno del framework Angular, al fine di garantire l'uniformità del codice prodotto dal team.

===== Convenzioni di nomenclatura <convenzioni-nomenclatura-typescript>
- *File*: utilizzare il formato `kebab-case` separando il nome dal tipo di feature (es. `sensor-chart.component.ts`, `sensor-data.service.ts`);
- *Classi e Interfacce*: utilizzare il formato `PascalCase` (es. `DashboardComponent`);
- *Variabili e Metodi*: utilizzare il formato `camelCase`;
- *Costanti*: utilizzare il formato `UPPER_SNAKE_CASE` per valori immutabili definiti a livello globale o di modulo;

==== Stile di codifica Go <codifica-go>
In questa sezione vengono definiti gli standard implementativi per lo sviluppo in linguaggio *Go* al fine di garantire l'uniformità del codice prodotto dal team.

===== Convenzioni di nomenclatura
- *File*: utilizzare il formato `camelCase` (es. `writeToDatabase.go`, `apiController.go`);
- *Struct*: utilizzare il formato `PascalCase` (es. `PulseOxData`);
- *Variabili e Metodi*: utilizzare il formato `camelCase` per le variabili e il formato `PascalCase` per i metodi;
- *Costanti*: utilizzare il formato `UPPER_SNAKE_CASE` per valori immutabili definiti a livello globale o di package;

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
  - *GitHub Issues*: per l'assegnazione degli elementi del _backlog_ e la segnalazione di eventuali problemi nella #gloss[Repository];, sono fondamentali per il tracciamento delle azioni prese in seguito a decisioni di gruppo
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
- Codice che descrive la *versione* (vd. @doc-versionamento)
- *Data* di scrittura della versione;
- *Autore* della versione;
- *Verificatore* della versione;
- *Descrizione* delle modifiche della versione.

Dopo il registro delle modifiche è presente l'indice del documento il quale ne descrive la struttura delle intestazioni.

Infine, sull'ultima pagina è presente la firma del revisore interno del documento.

==== Documenti incrementali <doc-incrementali>
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

Per maggiori informazioni sul versionamento della documentazione, si consulti la @controllo-configurazione.

==== Denominazione e locazione file
I documenti in formato PDF sono resi disponibili sul #link("https://GlitchHub-Team.github.io")[sito web di _GlitchHub Team_].

Tutti i documenti, fatta eccezione per i diari di bordo e il glossario, seguono il seguente schema di collocazione all'interno dell'alberatura del dominio del #link("https://GlitchHub-Team.github.io")[sito web del gruppo]:
#align(center, [`/pdf/`*`[FASE]`*`/`*`[TIPO DOCUMENTO]`*`/`*`[NOME DOCUMENTO]`*`.pdf`])

Dove:
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
    - `glossary` per il glossario
  Si noti che l'utilizzo delle preposizioni (ad es. "di" in "Norme *di* progetto") è facoltativo.

Fanno da eccezione i diari di bordo che sono collocati nella cartella `Slide`;


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

==== Pubblicazione <doc-pubblicazione>
Una volta che il documento da pubblicare è stato verificato, la relativa #gloss[Pull Request] dev'essere accettata, eseguendo così il _merge_ del documento nel #gloss[branch] principale (`main`).

Ciò darà inizio all'esecuzione automatica della #gloss[GitHub Action] che compila il codice Typst del documento in PDF e pubblica il file sul sito web del gruppo.

=== Manutenzione <doc-manutenzione>
Un documento stabile non è da considerarsi finito e immutabile, poiché in seguito alla sua verifica potrebbero emergere errori che non sono stati rilevati né dallo scrittore che dal verificatore.

In tal caso, chi si accorge dell'errore è tenuto a segnalarlo ed eventualmente proporre una modifica, che contribuirà a creare una nuova versione del documento, la quale andrà successivamente verificata da qualcun altro.


== Gestione delle configurazioni <gestione-configurazioni>
Secondo lo standard #gloss[ISO/IEC 12207:1995], la *gestione delle configurazioni* è il processo di applicazione di procedure di natura tecnica e amministrativa durante tutto il ciclo di vita del software con i seguenti scopi:
- identificare e definire le parti di un prodotto software e associarle a specifiche #gloss[baseline];
- controllare le modifiche e il rilascio di tali parti;
- registrare e riportare il loro _status_ e di eventuali richieste di modifica ad esse;
- assicurare la loro completezza, coerenza e correttezza.

=== Strumenti a supporto
Il principale strumento a supporto del processo di gestione delle configurazioni è #gloss[GitHub], il quale permette di gestire il versionamento e i cambiamenti da effettuare di codice e documentazione.

Per ulteriori informazioni sullo strumento si consiglia la lettura della @infrastruttura-implementazione

=== Attività previste
Le attività previste dal processo sono:
- *Identificazione della configurazione*
- *Controllo della configurazione*
- *Registrazione dello stato di configurazione*
- *Valutazione della configurazione*

=== Identificazione della configurazione
L'attività di *identificazione della configurazione* consiste nell'individuazione di tutte le componenti, sia documentali che composte da codice, che formeranno il prodotto da sviluppare.

Secondo lo standard #gloss[ISO/IEC 12207:1995], è necessario stabilire per ogni prodotto di software e le sue versioni:
- La documentazione che ne stabilisce la #gloss[baseline];
- I riferimenti alla versione;
- Altri dettagli di identificazione.

Nello specifico, questa attività avverrà durante la fase di progettazione, in cui verrà schematizzata l'architettura del _software_, che poi verrà implementata dai #gloss[programmatori].

Per quanto riguarda l'identificazione della configurazione della documentazione, si consulti la @documentazione.

=== Controllo della configurazione <controllo-configurazione>
L'attività di *controllo della configurazione* disciplina le richieste di modifica alla documentazione o al codice, le quali potranno dovranno essere accettate o meno.

A tale scopo, _GlitchHub Team_ ha deciso numerosi strumenti offerti da #gloss[GitHub], descritti di seguito.

- #gloss[GitHub Issues]: Il gruppo utilizza le _issues_ per descrivere le modifiche da apportare a documentazione e codice; una _issue_ dev'essere assegnata al singolo membro che si assume la responsabilità di portare a termine la modifica. Una qualunque _issue_ è composta da:
  - Un identificativo numerico univoco all'interno della #gloss[repository] in cui è stata creata;
  - Un nome che descrive brevemente la modifica da compiere;
  - Una descrizione facoltativa che fornisce ulteriori informazioni sull'attività da svolgere;
  - L'assegnatario che si assumerà la responsabilità di compiere la _task_;
  - Una serie di etichette o "_label_" che descrivono il tipo di modifica da compiere;
  - Il collegamento con uno o più #gloss[GitHub Projects];
  - La #gloss[milestone] a cui corrisponde la modifica;
  - La relazione dell'_issue_ con altre _issue_.

  Per maggiori informazioni sull'utilizzo delle _issue_ durante l'organizzazione delle attività, si consulti la @gestione-processi.

- #gloss[GitHub Project]: Il gruppo utilizza un _project_ collegato a tutte le #gloss[repository] istituite dal gruppo, per organizzare le attività negli _sprint_ in modo da massimizzare la parallelizzazione del lavoro. Infatti, il _project_ usato permette di associare a ogni _issue_ dei campi aggiuntivi che facilitano una buona organizzazione temporale delle _task_ da compiere, e di visualizzare le _issue_ in _board_ #gloss[Kanban] e in diagrammi di #gloss[Gantt].

- #gloss[Pull Request] (PR) e _*branch protection*_: All'interno delle #gloss[repository] del gruppo, il #gloss[branch] `main` è *protetto*, ovvero non è possibile applicarvi direttamente delle modifiche: per fare ciò è necessario utilizzare le _PR_. Queste, infatti, sono uno strumento che necessitano che tutte le modifiche applicate al branch principale siano verificate da un altro membro del gruppo detto _Reviewer_, il quale può fornire l'approvazione diretta o richiedere un'ulteriore revisione. Questo strumento è fondamentale per un buon controllo della configurazione, in quanto costringe tutti i membri del gruppo a lavorare con un _way of working_ corretto che considera la verifica come passo fondamentale di qualunque attività di progetto.

=== Registrazione dello stato di configurazione
L'attività di *registrazione dello stato di configurazione* consiste nel tracciare lo stato e la storia di tutte le componenti del progetto. A tale scopo, il gruppo ha istituito una convenzione di versionamento della documentazione, riportata di seguito come descritta originariamente nel #link("https://glitchhub-team.github.io/pdf/Candidatura/VerbaliInterni/2025-10-27.pdf")[*verbale interno del 27 ottobre 2025*].

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

Inoltre, ogni documento versionato presenterà il proprio *registro delle modifiche*, descritto nella @doc-caratteristiche-struttura.

=== Valutazione della configurazione <valutazione-configurazione>
L'attività di *valutazione della configurazione* consiste nel controllo che il software prodotto presenti una completezza funzionale rispetto ai requisiti rilevati.

A tale scopo, il documento di #gloss[analisi dei requisiti] presenta una sezione di *tracciamento dei requisiti* che verrà usata dal gruppo durante la fase di progettazione e sviluppo come riferimento per verificare che il software prodotto sia adeguato alle aspettative e richieste della #gloss[proponente].

== Accertamento della qualità <accertamento-qualita>
Secondo lo standard #gloss[ISO/IEC 12207:1995], il processo di *accertamento qualità* consiste nell'accertare in modo adeguato che i processi e i prodotti dei cicli di vita del progetto siano conformi ai requisiti specificati.

Perché questo processo sia privo di _bias_ e di conflitti d'interesse, è fondamentale che avvenga in modo svincolato dalle persone responsabili dell'applicazione del processo controllato o dello sviluppo del componente controllato.

=== Attività previste
Le attività previste dal processo sono le seguenti:
- *Implementazione del processo*: L'implementazione consiste nella creazione di un processo di accertamento della qualità su misura per il progetto in modo tale da garantire che i prodotti di progetto siano conformi alle attese e ai requisiti rilevati.

- *Accertamento della qualità di prodotto*: Consiste nel controllare che il software prodotto rispetti i requisiti rilevati, tramite i test prodotti dai #gloss[verificatori] e la misurazione delle metriche di qualità del prodotto.

- *Accertamento della qualità di processo*: Consiste nel controllo e nella misurazione delle metriche di qualità dei processi, per assicurarsi che i processi rispettino gli standard di qualità stabiliti dal gruppo.

Per svolgere le attività di *accertamento della qualità di prodotto e processo*, il gruppo ha stabilito nel documento di #gloss[Piano di Qualifica] le metriche di qualità di prodotto e processo e il *cruscotto di valutazione* che riporta l'andamento delle misurazioni di tali durante lo svolgimento del progetto. Si noti che queste misurazioni vanno effettuate al termine di ogni _sprint_.


== Verifica <verifica>
Il processo di *verifica* ha lo scopo di determinare se un prodotto di progetto sia conforme ai requisiti e rispetti le condizioni imposte sul prodotto dalle attività precedenti: l'obiettivo del processo si può sintetizzare nella domanda _"Did I build the system *right*?"_, ovvero "Ho costruito il sistema *correttamente*?".

In generale, gli esiti di questo processo, ovvero le misurazioni delle metriche di qualità, sono racchiuse nel documento di #gloss[Piano di Qualifica].

=== Attività previste
Le attività previste da questo processo, secondo lo standard #gloss[ISO/IEC 12207:1995] sono le seguenti:
- *Implementazione del processo*: L'attività di implementazione consiste nella rilevazione dei processi e prodotti di progetto che presentano criticità e/o richiedono di essere verificati, e nell'istituzione e documentazione di un processo di verifica che documenti e risolva tutte le non conformità da esso rilevate.
- *Attività di verifica*: Consiste nell'applicazione del processo stabilito dal passaggio precedente, che ha lo scopo di controllare l'efficacia di:
  - #gloss[processi], i quali devono rispettare gli standard stabiliti dal gruppo e dalla #gloss[proponente];
  - #gloss[requisiti], i quali devono essere coerenti con le aspettative della #gloss[proponente], fattibili e verificabili;
  - #gloss[progettazione], la quale deve rispecchiare tutti i requisiti rilevati ed essere ad essi tracciabile, e dev'essere corretta e coerente;
  - #gloss[codice], il quale deve rispettare progettazione e requisiti ed essere ad essi tracciabile, e dev'essere verificabile e rispettoso degli standard di codifica del _team_;
  - #gloss[integrazione] del sistema, la quale deve consentire a tutte le componenti del software prodotto di essere completamente integrabili e compatibili tra loro;
  - #gloss[documentazione], la quale dev'essere adeguata, completa e coerente, e dev'essere prodotto con puntualità.

=== Implementazione del processo
Il gruppo è giunto alla conclusione che, per quanto concerne il processo di verifica, la priorità principale è soddisfare le aspettative della #gloss[proponente]: ciò è possibile tramite la realizzazione di test approfonditi che garantiscano il più possibile la conformità con le attese di *M31*.

Il principale punto critico che è stato rilevato sin da subito dal gruppo è la necessità che il #gloss[branch] principale di tutte le #gloss[repository] usate dal gruppo contenga solamente elementi corretti.

Infatti, tale branch deve soltanto contenere tutti gli elementi che soddisfano la #gloss[baseline] corrente, ovvero tutti i prodotti di progetto che sono stati adeguatamente verificati e quindi considerabili corretti: ciò è ampiamente facilitato dalle regole di _branch protection_ di #gloss[GitHub], descritte nella @controllo-configurazione.

Nella @verifica-attivita si descrive i dettagli dell'attività di verifica applicata del gruppo durante lo svolgimento del progetto.

=== Attività di verifica <verifica-attivita>
Per quanto concerna la verifica della *documentazione*, il gruppo ha determinato sin da subito la necessità di processi di applicare ad essa dei processi di verifica rigidi e tempestivi che possano garantirne la correttezza formale e contenutistica. Infatti, lo scopo di verificare i documenti redatti è di garantire che vengano rappresentate correttamente le opinioni e le decisioni prese dal gruppo, onde evitare malintesi durante il dialogo interno al gruppo e con la #gloss[proponente].

Per informazioni più dettagliate sul processo di verifica della documentazione, si consulti la @doc-verifica.

Per quanto concerne la verifica del *codice* prodotto, questa sezione verrà ampliata una volta iniziate le attività di sviluppo dell'#gloss[MVP], in quanto il codice prodotto per il #gloss[PoC] non richiede di essere testato tramite le procedure descritte successivamente.

Tutte le informazioni specifiche relative alla verifica verranno riportate nel documento di #gloss[Piano di Qualifica]. In generale, però, si può applicare il processo di verifica al codice sorgente del _software_ tramite l'*analisi statica* (descritta nella @verifica-analisi-statica) e l'*analisi dinamica* (descritta nella @verifica-analisi-dinamica).

==== Analisi statica <verifica-analisi-statica>
L'*analisi statica* comprende tutte le attività di verifica che non prevedono l'esecuzione dell'oggetto di test, ma si concentra sulla sintassi e la correttezza del contenuto di quanto scritto con lo scopo di rilevare problemi prima che si possano presentare durante la sua esecuzione.

Questa può avvenire usando *metodi formali*, i quali dimostrano formalmente che l'oggetto in esame soddisfa specifiche proprietà, e tramite *metodi di lettura*, i quali sono meno formali ma comunque efficaci nel rilevare problematiche nell'oggetto di test.

I principali *metodi di lettura* sono:
- *_Walkthrough_*: Metodo di analisi che cerca di rilevare difetti leggendo l'oggetto in esame con una modalità ad ampio spettro: quindi, si è consapevoli dell'esistenza di un problema ma non si quale questo possa essere e dove trovarlo. Questo metodo è costoso e poco applicabile perché non automatizzabile, ma potenzialmente molto efficace.

- *_Inspection_*: Metodo di analisi che invece rileva la presenza di difetti tramite una lettura mirata dell'oggetto: quindi, si sa quali siano i problemi da rilevare e i test si concentrano esclusivamente sulla rilevazione di questi ultimi. Questo metodo si rivela meno costoso e più facilmente automatizzabile, ma non è in grado di determinare se l'oggetto in esame è totalmente corretto, in quanto non si può avere completa certezza che i test scelti siano esaustivi.

In generale, i metodi di _inspection_ sono preferibili per il progetto in quanto sono realizzabili tramite la verifica di _checklist_, ovvero di liste di controllo automatizzabili che possono rilevare gli errori più frequenti nella scrittura del codice.

==== Analisi dinamica <verifica-analisi-dinamica>
L'*analisi dinamica* comprende tutte le attività di verifica che prevedono l'esecuzione dell'oggetto in esame, in modo tale da eliminare i _fault_, ovvero gli elementi del prodotto che hanno un comportamento inatteso ("failure") rilevato durante l'esecuzione del codice. Essendo il software immutabile di natura, possono essere introdotti in esso tali _fault_ solamente a causa di errori umani.

Quindi, l'*analisi dinamica* consiste nell'esecuzione di più oggetti di prova, detti _test_, che corrispondono a diverse esecuzioni degli oggetti di prova. Ogni _test_ studia il comportamento di una singola parte di codice su un insieme finito di casi di prova. I test dinamici devono essere:
- *ripetibili*: ovvero eseguibili con gli stessi esiti su diversi ambienti di esecuzione, in modo tale che solo le modifiche al codice possano causare esiti diversi dei test.
- *automatizzabili*: ovvero eseguibili automaticamente dalla macchina, in quanto la procedura di esecuzione manuale dei test è uno spreco di risorse, essendo essa pienamente automatizzabile tramite l'utilizzo di:
  - _driver_: componente attiva fittizia che eseguono il test, sostituendosi alla procedura "`main()`" del programma
  - _stub_: componenti passive fittizie che simulano parti del sistema esterne all'oggetto in esame ma utili per l'esecuzione del _test_ stesso
  - _logger_: componente secondario che registra l'esito dei test senza interferire con la loro esecuzione

I principali tipi di test sono i seguenti:
- *#link(<test-unita>)[Test di unità]*
- *#link(<test-integrazione>)[Test d'integrazione]*
- *#link(<test-sistema>)[Test di sistema]*
- *#link(<test-regressione>)[Test di regressione]*
- *#link(<test-accettazione>)[Test di accettazione]*, i quali non corrispondono propriamente a verifiche del codice ripetibili e automatizzabili, ma sono inclusi per completezza.

La convenzione usata da _GlitchHub Team_ per identificare i test è la seguente:
#align(center)[*`T[Tipo]-[Numero]`*]
Dove:
- *`T`* è l'abbreviazione di "Test"
- *`[Tipo]`* è una lettera che indica la tipologia di test
  - `U` per i test di Unità
  - `I` per i test d'Integrazione
  - `S` per i test di Sistema
  - `A` per i test di Accettazione
- *`[Numero]`* è un numero identificativo incrementale univoco per la tipologia di test (per cui possono esistere contemporaneamente i test `TU-1` e `TS-1`).

Inoltre ogni test si può trovare in ogni momento in uno di quattro stati:
- *NI* ovvero *Non implementato*, se il test è stato ideato ma non implementato in codice;
- *I* ovvero *Implementato*, se il test è stato implementato ma non ancora eseguito;
- *NS* ovvero *Non superato*, se il test è stato implementato, eseguito e non superato;
- *Superato*, se il test è stato implementato, eseguito e superato correttamente.

===== Test di unità <test-unita>
Un *unità* è definita come la più piccola quantità di software che sia sufficientemente grande da essere verificata in quanto oggetto singolo. Quindi, un componente di un _software_ è composto da un insieme di *unità* tra loro integrate, le quali sono composte da uno o più *moduli* cadauna.

I *test di unità*, quindi, verificano la correttezza delle *unità* del _software_ e si dividono in due sottocategorie principali:
- *Test funzionali* (_black-box_), i quali verificano solamente che a ogni input preso in considerazione corrisponda l'output corretto senza considerare la logica interna dell'unità, da cui il nome _"black-box"_. Poiché il dominio di un valore in input può essere potenzialmente infinito, ma il tempo a disposizione per eseguire un test è necessariamente finito, un buon test di unità viene eseguito usando come input un valore per ognuna delle seguenti _classi d'equivalenza_:
  - Classe dei *valori nominali* nel dominio, ovvero tutti i valori validi che l'input può assumere
  - Classe dei *valori illegali inferiori*, ovvero tutti i valori oltre il limite *inferiore* del dominio
  - Classe dei *valori illegali superiori*, ovvero tutti i valori oltre il limite *superiore* del dominio
  - Classe dei *valori legali d'estremo inferiore*, ovvero tutti i valori al confine tra il dominio e il suo limite inferiore
  - Classe dei *valori legali d'estremo superiore*, ovvero tutti i valori al confine tra il dominio e il suo limite superiore

- *Test strutturali* (_white-box_), i quali verificano la logica interna del codice dell'oggetto di verifica, misurando quanti _statement_, _branch_ e _decision_ vengono eseguiti all'interno di ogni test.

===== Test d'integrazione <test-integrazione>
I *test d'integrazione* verificano il corretto assemblaggio delle componenti del _software_ individuate nella fase di _design_ architetturale, rilevando difetti di progettazione o problemi di qualità nei #link(<test-unita>)[test di unità].

Per verificare una corretta integrazione delle componenti, è necessario eseguire il loro assemblaggio in maniera incrementale e reversibile, utilizzando una delle seguenti strategie:

- *Bottom--up*, in cui si integrano prima le componenti con minori dipendenze e maggiore utilità interna, richiedendo una minore quantità di _stub_ durante lo sviluppo, ma mostrando risultati all'utente con maggiore ritardo;

- *Top--down*: in cui, invece, si integrano prima le componenti con maggiori dipendenze d'uso e maggiore utilità esterna, richiedendo l'uso di molti più _stub_ durante lo sviluppo, ma rendendo visibili le funzionalità usabili dall'utente molto prima.

===== Test di sistema <test-sistema>
I *test di sistema* verificano la conformità funzionale del sistema rispetto ai requisiti stabiliti nel documento di #gloss[analisi dei requisiti]. Infatti, la loro stesura avviene in concomitanza con la stesura dei requisiti funzionali del prodotto.

===== Test di regressione <test-regressione>
I *test di regressione* verificano che alcune correzioni o estensioni applicate a specifiche unità non causino _fault_ in
parti del sistema esterne all'oggetto in esame. Infatti, di fronte a un problema del genere è necessario valutare le necessità di modifica del sistema e selezionare la soluzione che offra il miglior rapporto costi/benefici.

Nel concreto, i test di regressione consiste nell'esecuzione ripetuta di un sottoinsieme di #link(<test-unita>)[test di unità], #link(<test-integrazione>)[test d'integrazione] e #link(<test-sistema>)[test di sistema] che hanno causato in passato problemi di regressione.

===== Test di accettazione <test-accettazione>
I *test di accettazione* verificano la conformità del prodotto rispetto ai _requisiti utente_ definiti dal #gloss[committente] nel #gloss[capitolato d'appalto]. Questi test, al contrario, degli altri non possono avvenire in maniera automatizzabile e ripetibile, in quanto vengono eseguiti manualmente in presenza del #gloss[committente] stesso, ma vengono comunque inclusi nella @verifica-analisi-dinamica per completezza.

== Validazione <validazione>
Il processo di *validazione* ha l'obiettivo di determinare se i requisiti rilevati e il software prodotto rispettano le aspettative ed esigenze dell'azienda #gloss[proponente]; ciò si può riassumere nella ricerca della risposta alla domanda _"Did I build the *right* system?"_, ovvero "Ho costruito il *giusto* sistema?".

=== Attività previste
In base allo standard #gloss[ISO/IEC 12207:1995], le attività previste dal processo sono le seguenti:
- *Implementazione del processo*
- *Attività di validazione*

=== Implementazione processo <validazione-implementazione-processo>
_GlitchHub Team_ ha condotto uno studio approfondito delle richieste della #gloss[proponente], riassumendo tutti i requisiti da soddisfare nel documento di #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/AnalisiDeiRequisiti.pdf", gloss[analisi dei requisiti]).

Come già descritto nella @valutazione-configurazione, l'#gloss[Analisi dei Requisiti] presenta una sezione di *tracciamento dei requisiti*, fondamentale al processo di *validazione*. Infatti, questa permette di controllare se una parte del prodotto funziona correttamente ed è conforme ai requisiti: un requisito si può considerare soddisfatto solo se il codice che lo implementa funziona correttamente e siccome i requisiti sono tracciati, è possibile verificare quali requisiti vengono soddisfatti dal codice e quali no.

Per un tracciamento efficace, _GlitchHub Team_ ha deciso di raccogliere tutti i requisiti e i relativi test in relativi file JSON all'interno della cartella `src/tracciamento` della #gloss[repository] di documentazione. I file JSON all'interno della cartella sono i seguenti:
- `RF.json` che tiene traccia di tutti i requisiti funzionali
- `RNF.json` che tiene traccia di tutti i requisiti non funzionali
- `RD.json` che tiene traccia di tutti i requisiti di dominio
- `TS.json` che tiene traccia di tutti i test di sistema
- `TA.json` che tiene traccia di tutti i test di accettazione

In generale, ogni *requisito* tracciato nei file è descritto da:
- una stringa identificativa univoca (campo "`id`")
- una descrizione testuale (campo "`desc`")
- una stringa che descrive l'urgenza del requisito (campo "`urgenza`")
- una lista che contiene tutti i riferimenti agli use case identificati nell'#gloss[Analisi Dei Requisiti] (campo "`ref_uc`")
- una lista che contiene tutti i riferimenti a requisiti del #gloss[capitolato] (campo "`ref_capitolato`")

I *test* tracciati, invece, sono descritti nella struttura JSON da:
- Analoghi campi `"id"` e `"descr"`
- Il riferimento al requisito (rilevato dal gruppo o di capitolato) (campo "`ref-req`")
  - Se il campo si riferisce a un requisito rilevato dal gruppo, allora esso deve contenere l'`id` del requisito considerato
- Lo stato del test, come descritto nella @verifica-analisi-dinamica (campo `"stato"`)

Descrivere i requisiti e i test di sistema con una serie di file strutturati permette di tracciare i requisiti e i test in maniera totalmente automatica, facilitando le misurazioni delle metriche concernenti i requisiti.

=== Attività di validazione
Per applicare il processo di validazione, il gruppo si impegna a continuare l'attività di *tracciamento dei requisiti* e ad effettuare #link(<test-accettazione>)[test di accettazione] per verificare la conformità del prodotto con le attese della #gloss[proponente], ricercando attivamente da essa la maggior quantità di _feedback_ possibile relativamente alla conformità del lavoro svolto.


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
=== Avvio dell'attività e definizione della portata <gestione-processi-avvio>
Innanzitutto, è necessario stabilire i requisiti e le risorse necessarie per completare l'attività. Dopodiché il #gloss[responsabile] del gruppo deve stabilire la fattibilità del processo controllando la disponibilità delle risorse del gruppo, ovvero controllando che l'attività sia fattibile nell'intervallo temporale fissato. Si noti che i requisiti del processo possono essere discussi con i loro assegnatari.

Il #gloss[responsabile] individua le attività che il gruppo deve svolgere e le divide in "_task_" assicurandosi che queste siano *atomiche*, *rapide* ed *eseguibili singolarmente*. A ogni _task_ corrisponde un'_issue_ e un gruppo di _task_ correlate possono essere raggruppate in una _parent issue_ che ha come assegnatari tutte le persone coinvolte, ma che non viene utilizzata per il conteggio delle risorse consumate per il suo svolgimento.

Si noti che le _issue_ in questo stato devono essere associate allo stato di *"backlog"*, il quale indice che l'issue è stata rilevata ma ancora non pianificata.

=== Pianificazione <gestione-processi-pianificazione>
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

=== Esecuzione e controllo <gestione-processi-esecuzione-controllo>
L'esecuzione delle diverse attività è affidata ai diversi ruoli e dev'essere monitorata regolarmente dal #gloss[responsabile] per accertarsi che ogni membro del gruppo rispetti i propri compiti nelle scadenze prefissate.

Una volta che le _issue_ sono state create dal #gloss[responsabile], la loro gestione viene affidata ai relativi assegnatari. Quando un membro del gruppo inizia a lavorare su una task, la relativa _issue_ dev'essere impostata come *"In progress"*.

=== Revisione e valutazione <gestione-processi-revisione-valutazione>
Una volta che l'attività è stata svolta, è fondamentale che questa venga verificata da un altro membro del gruppo che copre il ruolo di #gloss[Verificatore].

// TODO: (post-RTB) aggiungere riferimento a processo di verifica codice
Il flusso di lavoro per le attività di verifica di documentazione è descritto nella @doc-verifica.

Il processo di verifica di un'_issue_ può avvenire in più modi:
- Per _issue_ che apportano modifiche che si riscontrano immediatamente nella #gloss[repository] pubblica (ovvero il sito web), allora è importante aprire una #gloss[Pull Request] (PR) che descrive la modifica apportata e segnare l'issue come *"In review"* sul _project_.

- Altrimenti, se l'attività non apporta modifiche immediate sulla repository pubblica, ad esempio nel caso della modifica di un #gloss[documento incrementale], allora è necessario segnare comunque l'issue come *"In review"*, ma anche creare un'ulteriore _issue_ relativa alla _task_ di verifica e segnarla come *"In progress"*, finché il processo di verifica non finisce.

=== Conclusione <gestione-processi-conclusione>
Per utilizzare una linea di lavoro comune, il gruppo applica una _Definition of Done_, ovvero una definizione di cosa determina se un'attività sia conclusa o meno, ben precisa: _Un attività è conclusa quando è stata approvata definitivamente da un verificatore diverso dall'assegnatario originale_.

Questa definizione garantisce che il gruppo possa determinare in ogni momento quando una task rendicontabile qualunque è conclusa o meno. Questa definizione non è sempre applicabile a tutte le _task_ di "palestra", poiché non sempre essere richiedono una verifica da parte di un terzo, ma ciononostante vengono inserite nel #gloss[backlog] di _task_ del gruppo per motivi di tracciamento.

Quando una _task_ viene conclusa, il suo assegnatario deve modificare la relativa _issue_ impostando i seguenti campi:
- _End Date_: data effettiva di fine della _task_
- _Worked Hours_: le ore effettive di lavoro sulla _task_
  - L'_issue_ relativa alla _task_ e l'eventuale _issue_ relativa alla sua verifica devono essere impostate come *"Done"*

#set heading(outlined: true)
=== Ruoli <divisione-ruoli>
Di seguito, sono riportate le descrizioni dei compiti, delle responsabilità e del valore del lavoro di tutti i ruoli che i membri del gruppo possono assumere durante l'esecuzione del progetto.

Si noti che durante una certa iterazione, chiunque può assumere più ruoli a patto che ciò non causi conflitti d'interesse: ad esempio, un #gloss[programmatore] non può anche essere #gloss[verificatore] del suo stesso codice.

#set heading(outlined: false)
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
- *Valore delle ore produttive*: Ogni ora rendicontabile del responsabile ha il valore di *30€/h*

==== Verificatore
- *Presenza*: La figura del #gloss[verificatore] è presente per l'intera durata del progetto
- *Compiti/responsabilità*:
  - Garantisce che ogni attività di progetto sia eseguita secondo lo stato dell'arte;
  - Esegue test e revisioni del software approfonditi;
  - Verifica la correttezza di ogni versione della documentazione prodotta;
  - Identifica aree di miglioramento in ciò che verifica, codice o documentazione che sia.
- *Valore delle ore produttive*: Ogni ora rendicontabile del verificatore ha il valore di *15 €/h*

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

- *Google Calendar*: È un servizio di calendario online che consente un'integrazione nativa con molti strumenti di pianificazione delle _task_. Il gruppo ha deciso di usarlo per la pianificazione degli incontri interni ed esterni.

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

===== Repository documentazione (#repo("docs")[`GlitchHub-Team/GlitchHub-Team.github.io`]) <infrastruttura-github-repo-documentazione>
La #gloss[repository] di documentazione del gruppo è stata istituita con il nome `GlitchHub-Team.github.io`, poiché ciò consente la creazione di una #gloss[GitHub Page], ovvero una pagina web statica utilizzabile gratuitamente che il gruppo usa per esporre al pubblico le versioni stabili dei prodotti di progetto.

All'interno della repository si trovano il file *README.md* che la descrive dettagliatamente, il file *.gitignore* che permette di impedire il versionamento per certi file specifici e le seguenti cartelle:
- `.github/`, in cui sono contenuti i file relativi ai workflow di #gloss[GitHub Actions] e gli #gloss[issue templates] descritti;
- `script/` in cui sono presenti i sorgenti dei vari script utilizzati dal gruppo per la compilazione dei file Typst e di altre automazioni utilizzate dal gruppo durante la redazione dei documenti;
- `src/` in cui sono presenti i sorgenti dei file di documentazione;
- `website/` in cui è presente il sorgente della #gloss[GitHub Page].

Inoltre, la cartella `src/` contiene al suo interno:
- Le cartelle `Candidatura/` e `RTB/` sono contenuti i sorgenti dei documenti appartenenti rispettivamente alla fase di #gloss[candidatura] e alla fase #gloss[RTB];
- La cartella `Slide/`, che contiene i sorgenti delle presentazioni dei diari di bordo:
- La cartella `Templates/`, che contiene i #link(<infrastruttura-creazione-typst>)[template di Typst utilizzati dal gruppo];
- La cartella `assets/`, che contiene tutti gli asset usati nei documenti, tra cui immagini, diagrammi e font personalizzati;
- La cartella `lib/`, che contiene le librerie usate dai file Typst;
- La cartella `tracciamento/`, che contiene tutti i file JSON di tracciamento dei requisiti descritti nella @validazione-implementazione-processo;
- Il file `glossary.json`, che contiene

===== Repository PoC (#repo("poc")[`GlitchHub-Team/PoC`]) <infrastruttura-github-repo-poc>
La #gloss[repository] che contiene il codice sorgente del #gloss[PoC] contiene al suo interno:
- La cartella `.github/`, come nella @infrastruttura-github-repo-documentazione
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

Inoltre, il _project_ impostato consente di visualizzare anche le _issue_ in diagrammi di #gloss[Gantt] (separati per membro del gruppo o per sotto-attività) e di visualizzare anche una board #gloss[Kanban] per una visualizzazione rapida di quali _task_ sono in #gloss[backlog], quali sono pronte per essere eseguite, su quali _issue_ si sta lavorando al momento e su quali sono in revisione.

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
Il processo di *miglioramento* è definito dallo standard _ISO/IEC 12207:1995_ come l'insieme di attività atte alla creazione, valutazione, misurazione, controllo e miglioramento dei processi di cicli di vita del software.

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
  - Il linguaggio #gloss[Typescript] insieme al framework #gloss[Angular.js] e alla libreria Chart.js
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

==== Angular e Typescript
- #link("https://www.typescriptlang.org/docs/")[Documentazione ufficiale di _Typescript_ ]
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
  )[_Building user authentication and authorization API in Go using Gin and Gorm -- Verdotte Aututu_ (non ufficiale)]

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

= Metriche di qualità <metriche-qualita>

La definizione operativa delle metriche di qualità all'interno delle Norme di Progetto ha lo scopo di normare le attività di misurazione, stabilendo per ogni metrica *cosa* misurare, *come* calcolarne il valore.

Gli *obiettivi metrici* (soglie accettabili e ottime) e i *valori rilevati* per ogni sprint sono documentati nel #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiQualifica.pdf")[#gloss[Piano di Qualifica]], il quale contiene il cruscotto di valutazione con l'andamento storico delle misurazioni.

Ogni metrica è descritta in termini di:
- *Identificativo*: codice univoco della metrica
- *Nome*: denominazione della metrica
- *Descrizione*: definizione operativa dello scopo della metrica
- *Formula*: espressione matematica per il calcolo del valore
- *Unità di misura*: unità in cui il valore è espresso

Le metriche di processo sono identificate dalla sigla *MPC* (#strong[M]etrica di #strong[P]rocesso e #strong[C]ontrollo), mentre le metriche di prodotto dalla sigla *MPD* (#strong[M]etrica di #strong[P]ro#strong[d]otto).

== Metriche di qualità del processo <metriche-processo>

=== Fornitura <metriche-fornitura>

==== MPC-PV: Planned Value <mpc-pv>
- *Descrizione*: Valore economico del lavoro che si era pianificato di completare entro la fine dello sprint. Rappresenta il costo previsto per le attività pianificate.
- *Formula*:
  $ "PV" = sum_(i=1)^(n) ("Ore Previste"_i times "Tariffa Oraria"_i) $
  dove $n$ è il numero di task pianificate nello sprint e la tariffa oraria corrisponde al ruolo assegnato alla task.
- *Unità di misura*: Euro (€)

==== MPC-AC: Actual Cost <mpc-ac>
- *Descrizione*: Costo effettivamente sostenuto per le ore lavorate nello sprint.
- *Formula*:
  $ "AC" = sum_(i=1)^(n) ("Ore Effettive"_i times "Tariffa Oraria"_i) $
  dove $n$ è il numero di task completate nello sprint e la tariffa oraria corrisponde al ruolo assegnato alla task.
- *Unità di misura*: Euro (€)

==== MPC-EV: Earned Value <mpc-ev>
- *Descrizione*: Valore del lavoro effettivamente completato, misurato come la quota di lavoro pianificato che è stata portata a termine.
- *Formula*:
  $ "EV" = "PV" times ("Ore Completate" / "Ore Pianificate") $
- *Unità di misura*: Euro (€)

==== MPC-BAC: Budget At Completion <mpc-bac>
- *Descrizione*: Budget totale preventivato per l'intero progetto. Questo valore è fissato alla stipula del contratto e può solo diminuire nel tempo.
- *Formula*:
  $ "BAC" = 12.825 € $
  Nota:
  Il valore considerato fino allo *sprint 9* è di 12.975 € (vd. #link("https://glitchhub-team.github.io/pdf/RTB/DocumentiEsterni/PianoDiProgetto.pdf")[Piano di Progetto, sezione 4.1])
- *Unità di misura*: Euro (€)

==== MPC-EAC: Estimated At Completion <mpc-eac>
- *Descrizione*: Stima del costo totale finale a completamento del progetto, basata sull'efficienza dei costi misurata dal CPI (Cost Performance Index).
- *Formula*:
  $ "EAC" = "BAC" / "CPI" $
  dove:
  $ "CPI" = "EV" / "AC" $
  Il *CPI* (Cost Performance Index) rappresenta l'efficienza dei costi:
  - $"CPI" > 1$: il progetto sta producendo valore a un costo inferiore al previsto
  - $"CPI" = 1$: il progetto è in linea con il budget
  - $"CPI" < 1$: il progetto sta spendendo più del previsto
- *Interpretazione*:
  - $"EAC" < "BAC"$: il progetto finirà sotto budget
  - $"EAC" = "BAC"$: il progetto finirà in linea con il budget
  - $"EAC" > "BAC"$: il progetto finirà sopra budget
- *Unità di misura*: Euro (€)

==== MPC-ETC: Estimated To Complete <mpc-etc>
- *Descrizione*: Stima del costo rimanente per completare il progetto, ottenuta sottraendo il costo cumulativo effettivo dalla stima a completamento.
- *Formula*:
  $ "ETC" = "EAC" - "AC"_"cumulativo" $
  dove $"AC"_"cumulativo"$ è la somma dei costi effettivi sostenuti dall'inizio del progetto fino allo sprint corrente.
- *Unità di misura*: Euro (€)

==== MPC-CV: Cost Variance <mpc-cv>
- *Descrizione*: Deviazione dal budget nello sprint corrente. Indica se il lavoro completato è costato più o meno di quanto valga.
- *Formula*:
  $ "CV" = "EV" - "AC" $
- *Interpretazione*:
  - $"CV" > 0$: sotto budget (situazione favorevole)
  - $"CV" = 0$: in linea con il budget
  - $"CV" < 0$: sopra budget (situazione sfavorevole)
- *Unità di misura*: Euro (€)

==== MPC-SV: Schedule Variance <mpc-sv>
- *Descrizione*: Deviazione dalla pianificazione nello sprint corrente. Indica se il progetto è in anticipo o in ritardo rispetto al piano.
- *Formula*:
  $ "SV" = "EV" - "PV" $
- *Interpretazione*:
  - $"SV" > 0$: in anticipo rispetto al piano
  - $"SV" = 0$: in linea con il piano
  - $"SV" < 0$: in ritardo rispetto al piano
- *Unità di misura*: Euro (€)


//TODO controllare coerenza con implementazione, se si considera -delayed- o stato Done alla fine dello sprint
//-> Task slippage e TCR
==== MPC-TCR: Task Completion Rate <mpc-tcr>
- *Descrizione*: Percentuale di task completati entro la scadenza dello sprint rispetto al totale dei task chiusi nello sprint (in tempo e in ritardo). Misura la capacità del team di rispettare le scadenze prefissate.
- *Formula*:
  $ "TCR" = ("Task Completati in Tempo" / ("Task Completati in Tempo" + "Task Completati in Ritardo")) times 100 $
  Un task è considerato "completato in tempo" se la sua _End Date_ è precedente o uguale alla _Target Date_ dello sprint.
- *Unità di misura*: percentuale (%)

==== MPC-TS: Task Slippage <mpc-ts>
- *Descrizione*: Percentuale di task pianificati per lo sprint corrente che non sono stati portati a termine entro la sua conclusione e vengono posticipati allo sprint successivo.
- *Formula*:
  $ "TS" = ("Task Posticipati" / "Task Totali dello Sprint") times 100 $
  Un task è considerato "posticipato" se alla chiusura dello sprint il suo stato è diverso da "Done".
- *Unità di misura*: percentuale (%)

=== Sviluppo <metriche-sviluppo>

==== MPC-PRCT: Pull Request Cycle Time <mpc-prct>
- *Descrizione*: Tempo medio che intercorre tra l'apertura di una #gloss[Pull Request]. Monitora l'efficienza del processo di revisione.
- *Formula*:
  $ "PRCT" = (sum_(i=1)^(n) ("Timestamp Merge"_i - "Timestamp Apertura"_i)) / n $
  dove $n$ è il numero di Pull Request integrate nello sprint.

=== Documentazione <metriche-documentazione>

==== MPC-IG: Indice di Gulpease <mpc-ig>
- *Descrizione*: Indice di leggibilità calibrato per la lingua italiana. Valuta la complessità del testo in base alla lunghezza delle parole e delle frasi. Valori più alti indicano maggiore leggibilità.
- *Formula*:
  $ "IG" = 89 + (300 times "Numero Frasi" - 10 times "Numero Lettere") / "Numero Parole" $
- *Unità di misura*: adimensionale (scala 0–100)


==== MPC-CO: Correttezza Ortografica <mpc-co>
- *Descrizione*: Numero di errori grammaticali o di battitura rilevati nei documenti tramite strumenti automatici di controllo ortografico.
- *Formula*:
  $ "CO" = "Numero di Errori Ortografici Rilevati" $
- *Unità di misura*: numero intero (conteggio assoluto)

=== Verifica <metriche-verifica>

==== MPC-CC: Code Coverage <mpc-cc>
- *Descrizione*: Percentuale di righe di codice sorgente effettivamente eseguite durante i test automatici. Misura il grado di copertura complessivo della suite di test.
- *Formula*:
  $ "CC" = ("Linee di Codice Eseguite dai Test" / "Linee di Codice Totali") times 100 $
- *Unità di misura*: percentuale (%)
- *Strumento di rilevazione*: framework di test con supporto a code coverage (da specificare in fase di sviluppo #gloss[MVP])

==== MPC-TSR: Test Success Rate <mpc-tsr>
- *Descrizione*: Percentuale di test passati con successo sul totale dei test eseguiti nello sprint.
- *Formula*:
  $ "TSR" = ("Test Superati" / "Test Eseguiti") times 100 $
- *Unità di misura*: percentuale (%)

==== MPC-DD: Bug Density <mpc-dd>
- *Descrizione*: Densità di bug nel codice sorgente, calcolata come numero di bug rilevati per ogni cento righe di codice (CRG). Valori bassi indicano maggiore qualità del codice prodotto.
- *Formula*:
  $ "DD" = "Numero di Bug Rilevati" / "CRG" $
  dove $"CRG" = "Righe di Codice Totali" / 100$.
- *Unità di misura*: bug per CRG (centinaia di righe di codice)

=== Gestione della qualità <metriche-gestione-qualita>

==== MPC-QMS: Quality Metrics Satisfied <mpc-qms>
- *Descrizione*: Percentuale di metriche di qualità (di processo e di prodotto) che rientrano nel range accettabile definito nel #gloss[Piano di Qualifica]. Rappresenta un indicatore sintetico della salute complessiva del progetto.
- *Formula*:
  $ "QMS" = ("Metriche in Range Accettabile" / "Totale Metriche Monitorate") times 100 $
- *Unità di misura*: percentuale (%)

==== MPC-TE: Time Efficiency <mpc-te>
- *Descrizione*: Rapporto tra le ore dedicate ad attività produttive (rendicontabili) e le ore totali di lavoro (incluse le attività di "palestra" e studio). Indica quanta parte del tempo impiegato dal team si traduce direttamente in prodotti di progetto.
- *Formula*:
  $ "TE" = ("Ore Produttive Rendicontabili" / "Ore Totali Lavorate") times 100 $
- *Unità di misura*: percentuale (%)

==== MPC-WD: Work Distribution <mpc-wd>
- *Descrizione*: Misura l'equilibrio nella distribuzione del carico di lavoro tra i membri del team. Viene calcolata come la deviazione standard delle ore lavorate dai singoli membri rispetto alla media del team nello sprint. Valori bassi indicano una distribuzione omogenea del carico.
- *Formula*:
  $ "WD" = sigma times 100 $
  dove:
  $ sigma = sqrt((sum_(i=1)^(n) (h^%_i - overline(h^%))^2) / n) $
  - $n$: numero di membri del team
    - Si noti che $n = 7$

  - $h^%_i$: "carico di lavoro" del membro $i$ nello sprint, definito come
    $
      h_i / (sum_(j=1)^n h_j) = (text("ore di lavoro del membro") i) / text("ore di lavoro complessive di tutti i membri del gruppo")
    $

  - $overline(h^%)$: media del carico di lavoro di tutti i membri, sempre pari a $1 / 7 approx 14,29%$

- *Unità di misura*: percentuale (%)

== Metriche di qualità del prodotto <metriche-prodotto>

=== Funzionalità <metriche-funzionalita>

==== MPD-CRO: Copertura Requisiti Obbligatori <mpd-cro>
- *Descrizione*: Percentuale di requisiti obbligatori correttamente implementati e verificati rispetto al totale dei requisiti obbligatori rilevati nell'#gloss[Analisi dei Requisiti].
- *Formula*:
  $ "CRO" = ("Requisiti Obbligatori Soddisfatti" / "Requisiti Obbligatori Totali") times 100 $
  Un requisito è considerato "soddisfatto" quando il relativo test di sistema risulta superato.
- *Unità di misura*: percentuale (%)

==== MPD-CRD: Copertura Requisiti Desiderabili <mpd-crd>
- *Descrizione*: Percentuale di requisiti desiderabili correttamente implementati e verificati rispetto al totale dei requisiti desiderabili rilevati.
- *Formula*:
  $ "CRD" = ("Requisiti Desiderabili Soddisfatti" / "Requisiti Desiderabili Totali") times 100 $
- *Unità di misura*: percentuale (%)

==== MPD-CROP: Copertura Requisiti Opzionali <mpd-crop>
- *Descrizione*: Percentuale di requisiti opzionali correttamente implementati e verificati rispetto al totale dei requisiti opzionali rilevati.
- *Formula*:
  $ "CROP" = ("Requisiti Opzionali Soddisfatti" / "Requisiti Opzionali Totali") times 100 $
- *Unità di misura*: percentuale (%)

==== MPD-AD: API Documentation Coverage <mpd-ad>
- *Descrizione*: Percentuale di endpoint API pubblici che dispongono di documentazione completa e aggiornata. Un endpoint è considerato "documentato" quando sono presenti: descrizione funzionale, parametri di input con tipo e vincoli, formato della risposta con codici di stato HTTP e almeno un esempio d'uso.
- *Formula*:
  $ "AD" = ("Endpoint API Documentati" / "Endpoint API Totali") times 100 $
- *Unità di misura*: percentuale (%)

==== MPD-DL: Data Loss Rate <mpd-dl>
- *Descrizione*: Percentuale di messaggi persi durante la trasmissione dati tra gateway e infrastruttura cloud. Misura l'affidabilità della catena di comunicazione.
- *Formula*:
  $ "DL" = (("Messaggi Inviati" - "Messaggi Ricevuti") / "Messaggi Inviati") times 100 $
- *Unità di misura*: percentuale (%)

=== Affidabilità <metriche-affidabilita>

==== MPD-BC: Branch Coverage <mpd-bc>
- *Descrizione*: Percentuale di rami decisionali (ad esempio i rami `true` e `false` di un costrutto `if`) che sono stati eseguiti durante i test. Garantisce che tutte le possibili direzioni del flusso logico siano state verificate.
- *Formula*:
  $ "BC" = ("Rami Decisionali Eseguiti" / "Rami Decisionali Totali") times 100 $
- *Unità di misura*: percentuale (%)
- *Strumento di rilevazione*: framework di test con supporto a branch coverage

==== MPD-SC: Statement Coverage <mpd-sc>
- *Descrizione*: Percentuale di singole istruzioni (statement) percorse durante l'esecuzione dei test. Assicura che non vi siano porzioni di codice mai eseguite dalla suite di test.
- *Formula*:
  $ "SC" = ("Istruzioni Eseguite" / "Istruzioni Totali") times 100 $
- *Unità di misura*: percentuale (%)
- *Strumento di rilevazione*: framework di test con supporto a statement coverage

=== Usabilità <metriche-usabilita>

==== MPD-TT: Time on Task <mpd-tt>
- *Descrizione*: Tempo medio necessario a un utente per completare con successo una funzionalità specifica del sistema per la prima volta, senza assistenza esterna. Misura l'apprendibilità dell'interfaccia utente.
- *Formula*:
  $ "TT" = (sum_(i=1)^(n) "Tempo di Completamento"_i) / n $
  dove $n$ è il numero di utenti coinvolti nella sessione di test di usabilità. Il tempo è misurato dal momento in cui l'utente inizia l'interazione con la funzionalità fino al completamento (o abbandono) della stessa.
- *Unità di misura*: minuti

=== Efficienza <metriche-efficienza>

==== MPD-RT: Response Time <mpd-rt>
- *Descrizione*: Tempo di risposta del sistema a un input dell'utente, misurato come intervallo tra l'invio della richiesta e la ricezione della risposta completa.
- *Formula*:
  $ "RT" = "Timestamp Risposta" - "Timestamp Richiesta" $
  La misurazione avviene tramite test automatici di performance che simulano le richieste HTTP verso gli endpoint del sistema.
- *Unità di misura*: secondi (s)

=== Manutenibilità <metriche-manutenibilita>

==== MPD-CS: Code Smell Density <mpd-cs>
- *Descrizione*: Densità di _code smell_ nel codice sorgente. I _code smell_ sono indicatori di progettazione debole (metodi troppo lunghi, classi troppo grandi, duplicazione di codice) che, pur non essendo errori bloccanti, rendono il sistema fragile e difficile da manutenere.
- *Formula*:
  $ "CS" = "Numero di Code Smell Rilevati" / "CRG" $
  dove $"CRG" = "Righe di Codice Totali" / 100$.
- *Unità di misura*: code smell per CRG (centinaia di righe di codice)
- *Strumento di rilevazione*: analizzatore statico del codice (es. SonarQube, ESLint, golangci-lint)

==== MPD-COC: Coefficient of Coupling <mpd-coc>
- *Descrizione*: Misura il grado di interdipendenza tra i diversi moduli del software. Un accoppiamento elevato implica che una modifica in una parte del codice rischia di propagarsi ad altre sezioni (effetto a catena), riducendo la manutenibilità.
- *Formula*:
  $ "COC" = "Dipendenze Effettive tra Moduli" / (n times (n - 1)) $
  dove $n$ è il numero totale di moduli del sistema e $n times (n - 1)$ rappresenta il numero massimo di dipendenze direzionali possibili. Una "dipendenza" sussiste quando un modulo importa, invoca o referenzia direttamente un altro modulo.
- *Interpretazione*:
  - $"COC" = 0$: nessun accoppiamento (moduli completamente indipendenti)
  - $"COC" = 1$: accoppiamento massimo (ogni modulo dipende da tutti gli altri)
- *Unità di misura*: adimensionale (scala 0–1)
- *Strumento di rilevazione*: analisi delle dipendenze tramite strumenti di analisi statica o ispezione manuale del grafo delle importazioni

==== MPD-CYC: Cyclomatic Complexity <mpd-cyc>
- *Descrizione*: Misura la complessità logica del codice contando il numero di percorsi linearmente indipendenti attraverso il flusso di controllo (costrutti `if`, `switch`, `loop`). Valori elevati indicano codice difficile da testare e comprendere.
- *Formula*:
  $ M = E - N + 2P $
  dove:
  - $E$: numero di archi nel grafo di controllo del flusso
  - $N$: numero di nodi (istruzioni) nel grafo di controllo del flusso
  - $P$: numero di componenti connesse del grafo (solitamente $P = 1$ per una singola funzione)
- *Unità di misura*: numero intero (adimensionale). Il valore riportato nel cruscotto è la media della complessità ciclomatica su tutte le funzioni del sistema.
- *Strumento di rilevazione*: analizzatore statico del codice (es. `gocyclo` per Go, ESLint per TypeScript)

=== Sicurezza <metriche-sicurezza>

==== MPD-DE: Data Encryption Coverage <mpd-de>
- *Descrizione*: Percentuale di flussi dati classificati come sensibili (dati dei tenant, credenziali di autenticazione, dati IoT in transito) che sono protetti da cifratura, sia a riposo (_at rest_) che in transito (_in transit_).
- *Formula*:
  $ "DE" = ("Flussi Dati Sensibili Cifrati" / "Flussi Dati Sensibili Totali") times 100 $
  Un "flusso dati sensibile" è ogni canale di comunicazione o punto di persistenza che tratta dati personali, credenziali o dati soggetti a separazione multi-tenant. La classificazione dei flussi sensibili è stabilita in fase di progettazione architetturale.
- *Unità di misura*: percentuale (%)

=== Metriche di progresso dei test <metriche-progresso-test>

==== MPT-TS: Test di Sistema Specificati <mpt-ts>
- *Descrizione*: Percentuale di test di sistema definiti rispetto al numero totale di requisiti funzionali presenti nell'#gloss[Analisi dei Requisiti]. Misura il grado di completamento nella specifica dei test.
- *Formula*:
  $ "TS" = ("Test di Sistema Specificati" / "Requisiti Funzionali Totali") times 100 $
- *Unità di misura*: percentuale (%)
==== MPT-TE: Test di Sistema Eseguiti <mpt-te>
- *Descrizione*: Percentuale di test di sistema specificati che sono stati effettivamente eseguiti. Misura il progresso nell'esecuzione della campagna di test.
- *Formula*:
  $ "TE" = ("Test di Sistema Eseguiti" / "Test di Sistema Specificati") times 100 $
- *Unità di misura*: percentuale (%)

==== MPT-TP: Test di Sistema Superati <mpt-tp>
- *Descrizione*: Percentuale di test di sistema eseguiti che sono stati superati con successo. Misura la conformità del sistema ai requisiti funzionali verificati.
- *Formula*:
  $ "TP" = ("Test di Sistema Superati" / "Test di Sistema Eseguiti") times 100 $
- *Unità di misura*: percentuale (%)
