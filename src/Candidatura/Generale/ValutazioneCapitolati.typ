#import "../../Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Valutazione Capitolati",
  stato: "Verificato",
  versione: "1.0.0",
  registro-modifiche: (
    ("1.0.0", "29/10/2025", "Alessandro Dinato", "Hossam Ezzemouri", "Lievi correzioni della bozza per versione stabile"),
    (
      "0.4.0",
      "29/10/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Stesura sezioni C7 e C8; correzioni di formattazione varie",
    ),
    (
      "0.3.0",
      "29/10/2025",
      "Elia Ernesto Stellin",
      "Alessandro Dinato",
      "Correzioni di stile e modifiche a sezioni C3, C4, C5, C9 e Conclusione",
    ),
    ("0.2.1", "29/10/2025", "Siria Salvalaio", "Elia Ernesto Stellin", "Piccole correzioni"),
    ("0.2.0", "28/10/2025", "Siria Salvalaio", "Elia Ernesto Stellin", "Stesura C3, C4, C5, C9 e Conclusione"),
    ("0.1.1", "28/10/2025", "Alessandro Dinato", "Siria Salvalaio", "Correzioni di forma o riguardanti piccoli errori"),
    ("0.1.0", "28/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Stesura Introduzione, C1, C2, C6"),
    ("0.0.1", "27/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Bozza valutazione capitolati"),
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  htmlId: "Candidatura-Generale",
  verificatore-interno: "",
  left-signature: "../assets/firme/firma_Hossam_Ezzemouri.png",
  tipo-documento: "Valutazione dei Capitolati",
)

= Introduzione
Il presente documento ha lo scopo di mostrare la valutazione, da parte del gruppo _GlitchHub Team_, di ciascun capitolato presentato nella *Presentazione dei Capitolati di Appalto* in data *14 ottobre 2025*. \
Tale valutazione ha permesso di motivare la scelta del gruppo di presentare la candidatura per il capitolato *C7: Sistema di acquisizione dati da sensori*, proposto da _M31 S.r.l._.

= Valutazione dei capitolati
Di seguito, per ciascun capitolato verranno riportati: una breve descrizione, la valutazione del gruppo in merito e le motivazioni per cui il gruppo ha scelto di procedere o meno con la candidatura per tale capitolato.

Come verrà descritto anche successivamente, il gruppo ha scelto di candidarsi al capitolato *C7*.
Tale scelta è avvenuta tramite un sistema di votazione in cui ogni membro ha espresso le proprie preferenze in merito ai capitolati proposti.

Sebbene questo capitolato non sia stato scelto all'unanimità, la maggior parte del gruppo ha espresso interesse nello sviluppare il progetto da esso proposto, considerando al contempo altri capitolati come "seconde scelte", in caso di rifiuto della candidatura al *C7*.

== C1: Automated EN18031 Compliance Verification (Bluewind S.r.l.)
Lo standard della Gazzetta Ufficiale dell'Unione Europea EN 18031 è una norma armonizzata per la Direttiva europea sulle apparecchiature radio, in breve RED. \
Quest'ultima copre tutti i device immessi nel mercato europeo che scambiano dati tramite onde radio, tra cui prodotti collegati alla rete tramite Wi-Fi e Bluetooth, dispositivi wireless di IoT e altri, richiedendo che questi rispettino dei requisiti di sicurezza informatica.

Questo standard è definito da una serie di requisiti obbligatori dal *1 agosto 2025*, che sono complicati e gerarchicamente legati tra di loro, il cui soddisfacimento da parte di un'attrezzatura è verificabile tramite l'utilizzo di Decision Trees, ovvero da complesse sequenze di domande a risposta binaria (Sì/No) interconnesse tra loro, che determinano se tale attrezzatura è conforme alle direttive o meno.

La verifica manuale di questi Decision Trees è un'operazione delicata, tediosa e soggetta all'errore umano. Per cui, il progetto prevede lo sviluppo di una piattaforma interattiva che sia in grado di importare file strutturati relativi alle informazioni di un'attrezzatura specifica e del suo rispetto dei Decision Trees sopra descritti, di eseguirli automaticamente e di fornire all'utente una dashboard per visualizzare in maniera dettagliata l'adempimento dell'attrezzatura a ogni requisito.

Sebbene il gruppo abbia uno spiccato interesse per il mondo dell'IoT,
non ritiene che questo progetto sia abbastanza stimolante dal punto di vista del dominio, in quanto non è previsto di comunicare propriamente con i dispositivi da verificare, ma di controllare l'adempimento di dati già strutturati e normalizzati a una serie di requisiti condizionali.

Inoltre, il gruppo trova troppo vaghe le specifiche tecnologiche richieste dal progetto, il quale non pone alcun vincolo né sul tipo di applicazione sviluppata (applicazione desktop o web), né sulla struttura dell'applicazione stessa, non richiedendo necessariamente di sviluppare una parte di back-end.

Per le motivazioni sopra descritte, il gruppo ha deciso di non candidarsi al capitolato C1, non considerandolo nemmeno come possibile alternativa.

== C2: Code Guardian (VarGroup S.p.A.)
Il progetto proposto da _VarGroup S.p.A._ nel capitolato *C2* prevede lo sviluppo di una piattaforma in cloud basata su un sistema ad agenti orchestrato in grado di automatizzare processi di miglioramento del codice e di audit di sicurezza del codice. \
La piattaforma dev'essere capace di analizzare repository GitHub per valutarne qualità, sicurezza e manutenzione, fornendo reportistica automatica e sfruttando gli agenti per fornire rimedi in caso di lacune, che siano vulnerabilità di sicurezza, mancanze di best practices o test mancanti.

Nonostante il gruppo trovi d'interesse le tecnologie richieste e l'idea proposta, si è deciso di non procedere con la candidatura per questo capitolato, per i seguenti motivi.

Innanzitutto, all'interno del gruppo non vi è interesse nello sviluppo di sistemi ad agenti AI, e sono emersi dubbi significativi riguardo alla validità degli LLM come strumenti adatti a questo caso d'uso.

Più nello specifico, sono sorti dubbi in merito alla capacità di un LLM di scorgere vulnerabilità di sicurezza all'interno di una codebase estesa, la quale potrebbe essere potenzialmente composta da numerose parti interconnesse, che possono nascondere vulnerabilità, difficili da rilevare anche a un essere umano. \
Essendo gli LLM degli strumenti fondamentalmente probabilistici e non algoritmici, la probabilità che alcune rilevazioni di vulnerabilità siano falsi positivi o falsi negativi è considerevole.\
In questo contesto, il rischio di un falso positivo è altamente pericoloso.

Al momento della scrittura di questo documento, il gruppo non ha ricevuto risposta a questi dubbi, in quanto _VarGroup S.p.A._ non ha risposto alle richieste di incontro, facendo dubitare i componenti del gruppo del supporto che l'azienda potrebbe fornire durante lo sviluppo del loro progetto.

Nonostante ciò, seguendo la votazione interna al gruppo, si è deciso di mantenere questo capitolato come "seconda scelta" in caso di rifiuto della candidatura al *C7*.

== C3: DIPReader (Sanmarco Informatica S.p.A)
Il capitolato *C3*, proposto da Sanmarco Informatica S.p.A., prevede lo sviluppo di una piattaforma che consenta di ricercare e consultare documenti conservati all'interno di un sistema di archiviazione digitale centralizzato, denominato _Distribution Information Package_ (DIP).

L'obiettivo del progetto è fornire agli utenti la possibilità di accedere e ricercare tali documenti anche in assenza di connettività, tramite un'interfaccia accessibile via browser o applicazione multipiattaforma. \
Tra le funzionalità principali figurano la visualizzazione semplificata dei dati tecnici contenuti nei pacchetti, la ricerca tramite metadati, la visualizzazione in anteprima dei formati più comuni e la possibilità di esportare selezioni di documenti.\
Tra le funzionalità opzionali sono inoltre previste la ricerca semantica, la verifica delle firme digitali e l'accesso a pacchetti disponibili in cloud.

Le tecnologie suggerite comprendono l'utilizzo di SQLite per la gestione locale dei dati e FAISS (Facebook AI Similarity Search) per la ricerca basata su similarità, mentre per il front-end vengono proposti framework moderni come React o Angular sviluppati in TypeScript o JavaScript.

// NOTA [Elia]: Ho corretto leggermente la frase secondo quello che avevamo detto in riunione (Vedi Appunti Riunione Interna 2025-10-27)
Il gruppo ritiene che sia interessante la sfida di rendere efficiente il sistema di archiviazione, ma la maggior parte del gruppo non prova particolare interesse verso il dominio dell'archiviazione di documentazione.

Tuttavia, sono emerse alcune incertezze riguardo all'architettura del sistema e al livello di complessità nella gestione dei pacchetti di conservazione, che potrebbero richiedere una notevole fase di analisi preliminare. \
Inoltre, diverse parti non risultano sufficientemente dettagliate e lasciano spazio a dubbi sull'effettiva implementazione.

Per tali motivi, il gruppo ha deciso di non candidarsi per il capitolato *C3*, pur riconoscendo il potenziale applicativo.

== C4: L'app che Protegge e Trasforma (Miriade S.r.l.)
Il capitolato *C4*, proposto da _Miriade S.r.l._, prevede lo sviluppo di un'applicazione mobile dedicata alla prevenzione e al supporto delle vittime di violenza di genere. L'applicazione, destinata ai sistemi iOS e Android, mira a offrire un supporto concreto e personalizzato attraverso funzionalità intelligenti e sicure, come il rilevamento di situazioni di rischio, l'invio di allarmi discreti, l'accesso a servizi di assistenza, la formazione e la sensibilizzazione sul tema della violenza di genere.

Il progetto presenta un'architettura moderna, basata su microservizi e orientata al cloud, con un'infrastruttura preferibilmente serverless su AWS. \
Tra le tecnologie suggerite figurano _Flutter_ per lo sviluppo multi-piattaforma e servizi cloud come AWS Lambda, DynamoDB, RDS e SageMaker per l'implementazione di componenti basate su Machine Learning. \
Particolare attenzione è posta alla sicurezza e alla protezione dei dati, con un approccio _security by design_ conforme al GDPR.

// NOTA [Elia]:
//  - ho modificato le considerazioni positive (vd. sempre Appunti Riunione 2025-10-27)
// - non direi che ha offerto "supporto tecnico", ma che hanno risposto a dubbi di svariato tipo
Il gruppo ha valutato positivamente il capitolato per l'impatto sociale del progetto, soprattutto visto la rinnovata sensibilità verso i temi di violenza di genere nell'immaginario collettivo degli ultimi anni.\
Durante l'incontro con i referenti aziendali, Miriade si è dimostrata estremamente disponibile e collaborativa, rispondendo a dubbi di carattere tecnico, specialistico e legale. \
In particolare, l'azienda ha risposto a perplessità del gruppo relative principalmente all'utilizzo degli LLM per il trattamento dei dati sensibili degli utenti.

// NOTA [Elia]: aggiunti dubbi e considerazioni negative (dire più cose è meglio)
Nonostante ciò, gran parte del gruppo non prova interesse verso lo sviluppo del front-end mobile e l'utilizzo delle tecnologie dell'AI generativa con Amazon SageMaker e Amazon Bedrock.\
Inoltre, è fortemente in disaccordo nell'utilizzo di un LLM come supporto per persone in situazioni delicate, il rischio che i componenti del gruppo temono è che una possibile allucinazione del modello, in situazioni così critiche, potrebbe portare a conseguenze tremende.

Pur non essendo stato scelto come progetto principale, il gruppo ha deciso di mantenerlo tra le possibili alternative in caso di rifiuto della candidatura al *C7*, riconoscendone la solidità tecnica e il valore umano e morale.

== C5: NEXUM (Eggon S.r.l.)
Il capitolato C5, proposto da Eggon S.r.l., prevede lo sviluppo di nuove funzionalità intelligenti e interoperabili per NEXUM, la piattaforma proprietaria di Eggon per la gestione HR, il cui scopo è di semplificare la comunicazione tra aziende, dipendenti e studi dei Consulenti del Lavoro.

L'obiettivo del progetto è di integrare moduli basati su Intelligenza Artificiale e Data Analytics per migliorare l'automazione dei processi e la gestione documentale, introducendo componenti quali un AI Assistant Generativo per la creazione di contenuti e un AI Co-Pilot per l'analisi, classificazione e distribuzione automatica di documenti.

Le tecnologie indicate comprendono Ruby on Rails per il backend, Angular e Next.js per le interfacce, e un'infrastruttura cloud su AWS, basata su servizi come S3 e Amazon RDS for PostgreSQL. Il progetto segue metodologie Agile/SCRUM, offrendo un ambiente di sviluppo professionale, con strumenti di versionamento, test e deployment integrato.

// NOTA [Elia]: aggiunto qualche contro, sempre riferendomi alla riunione del 27/10
Il gruppo ha valutato positivamente il capitolato data la solidità dell'azienda proponente. \
D'altro canto, il gruppo ha opinioni discordanti riguardo a lavorare su una piattaforma reale già in produzione, poiché, sebbene sia un'opportunità per fare esperienza in una realtà vicina a quella aziendale, parte del gruppo ha mostrato una preferenza maggiore verso la creazione di un progetto dall'inizio alla fine, dato il valore didattico che ciò può offrire.

Inoltre, sono state rilevate alcune criticità legate alla complessità dell'architettura e all'ampia varietà di tecnologie coinvolte, che richiederebbero un significativo sforzo iniziale di apprendimento e coordinamento.

// NOTA [Elia]: in realtà il dominio del C5 è chiaro, è che preferiamo lavorare in un progetto da zero
Per queste ragioni, pur riconoscendone il valore tecnico e l'esperienza che questo progetto può offrire, il gruppo ha deciso di non candidarsi al capitolato C5, per le motivazioni sopra descritte.

== C6: Second Brain (Zucchetti S.p.A.)
Il progetto proposto da _Zucchetti S.p.A._ nel capitolato *C6* prevede lo sviluppo di un editor di testo in formato _Markdown_, con l'integrazione di un LLM volto a migliorare o correggere il testo dell'utente. \
Tra i casi d'uso proposti per l'LLM vi sono la riscrittura del testo in registri di formalità differenti, la generazione di riassunti e la fornitura di critiche costruttive e suggerimenti di miglioramento da più punti di vista.\
Opzionalmente, l'applicazione potrebbe anche scrivere interamente il testo seguendo un prompt specifico e salvare i testi creati.

Il gruppo non è interessato nel procedere con la candidatura a questo capitolato, poiché non prova un forte interesse né verso l'utilizzo degli LLM e dei sistemi AI, né verso le tecnologie richieste dal progetto, quali Java/Python per un eventuale back-end.

Inoltre, il gruppo non trova il progetto abbastanza stimolante e interessante didatticamente, in quanto le specifiche richieste dal capitolato non sembrano fornire il livello di esperienza didattica che gli altri capitolati proposti offrono, data la loro maggiore complessità. \
Poiché il progetto didattico viene svolto in vista di un apprendimento utile all'inserimento nel mondo del lavoro, non si ritiene che _Second Brain_ possa soddisfare l'aspettativa di apprendimento e di crescita nell'ambito del Software Engineering.


== C7: Sistema di acquisizione dati da sensori (M31 S.r.l.)
Il progetto proposto dal capitolato *C7* è inerente alla gestione e acquisizione di dati provenienti da sensori distribuiti a basso consumo energetico, i quali permettono di raccogliere dati in modo dettagliato.

Nello specifico, lo sviluppo richiesto dal progetto si colloca in un sistema distribuito di acquisizione e smistamento dati da sensori Bluetooth Low Energy (BLE) diviso in 3 strati principali:

// TODO: non so se vada bene l'elenco numerato
1. Lo strato di raccolta dati di campo tramite sensori,
2. Lo strato di gateway tra i sensori e il cloud tramite Wi-Fi,
3. Lo strato di cloud, oggetto del capitolato di progetto, che si connette in modo sicuro al gateway preso in considerazione per rendere disponibili i dati raccolti tramite API.

Più nello specifico, l'obiettivo del progetto è di progettare un'infrastruttura scalabile che comunichi in modo sicuro con i sensori non conformati e che ne gestisca i dati raccolti, in modo tale da fornire strumenti di monitoraggio e visualizzazione dei dati raccolti agli amministratori e agli utenti finali, garantendo al contempo la totale separazione dei dati tra i diversi tenant.

Il gruppo ha dimostrato un interesse unanime verso l'architettura richiesta dal progetto e le tecnologie di riferimento, nello specifico l'utilizzo di *Google Cloud* per la gestione del servizio, *Go* per il back-end di componenti ad alte prestazione e *NATS* per la comunicazione tra microservizi. Inoltre, il gruppo, oltre ad aver dimostrato un forte interesse verso il dominio dell'IoT, ritiene che il progetto proposto dal capitolato abbia una complessità tale da essere un progetto didattico in grado di fornire un valore di apprendimento notevole.

Infine, l'azienda è stata disponibile sin da subito per rispondere ai dubbi e alle domande di approfondimento del gruppo, dimostrando professionalità e alta competenza nell'incontro avvenuto il *23 ottobre 2025*.

Perciò, in seguito a queste motivazioni, il gruppo ha deciso di procedere con la candidatura al capitolato *C7*.

== C8: Smart Order (Ergon Informatica S.r.l.)
Il progetto proposto nel capitolato *C8* da _Ergon Informatica S.r.l._ si colloca nell'ambito della gestione e ricezione degli ordini di acquisto da parte dei clienti di un'azienda, i quali sono _multimodali_, ovvero ricevuti in formati diversi e non strutturati: per esempio, alcuni ordini vengono recapitati dai clienti sotto forma di testo tramite email o messaggi istantanei, altri sotto forma di audio, tramite chiamate o messaggi vocali, oppure sotto forma di immagini.

La gestione di tali ordini di acquisto è tediosa, poiché richiede un grande sforzo umano per categorizzare e interpretare questi ordini. Per cui, il progetto prevede lo sviluppo di una piattaforma in grado di automatizzare questi processi, sfruttando tecnologie di Machine Learning per analizzare i diversi ordini di acquisto multimodali, elaborarli ed interpretarli in maniera più efficiente, trasformandoli in dati strutturati.

Il capitolato richiede che la piattaforma sia sviluppata a strati, suddividendo gli strati di raccolta input, pre-processing ed elaborazione dei dati, dagli strati di interfaccia utente e di gestione degli ordini strutturati, utilizzando tecnologie innovative, quali i sistemi di database vettoriali e di Computer Vision, verso le quali parte del gruppo ha mostrato interesse.

Il gruppo ha anche trovato particolarmente stimolante il dominio del progetto, ritenendo che il Machine Learning sia uno strumento totalmente appropriato al caso d'uso dell'elaborazione e interpretazione di dati non strutturati. \
Infatti, il progetto di _SmartOrder_ richiede l'uso di diverse tecnologie di Intelligenza Artificiale per i diversi formati analizzabili: Transformer come GPT e BERT per il testo, reti neurali convoluzionali (CNN) per l'analisi delle immagini, sistemi di speech-to-text per l'audio, e molti altri.

// TODO: non sono sicuro di essere stato chiaro, mi sembra di essere discordante con quello che ho detto prima
Per tale motivo, questo capitolato si distingue dagli altri che impiegano l'utilizzo dell'AI, tuttavia il gruppo, a seguito di discussioni e considerazioni interne, ha deciso di non candidarsi al capitolato *C8* data la mancanza di familiarità e interesse della maggior parte del gruppo verso questo tipo di tecnologie innovative.


== C9: View4Life (Vimar S.p.A.)
Il capitolato *C9*, proposto da _Vimar S.p.A_., prevede la realizzazione di _View4Life_, una piattaforma per la gestione completa degli impianti smart nelle residenze protette. \
Il progetto si colloca nell'ambito della domotica avanzata e mira a creare un sistema integrato per il monitoraggio e il controllo di dispositivi IoT, come sensori di presenza, attuatori, termostati e sistemi di illuminazione, con l'obiettivo di migliorare sicurezza, comfort e sostenibilità energetica nelle strutture dedicate agli anziani non autosufficienti.

Il progetto richiede lo sviluppo di due componenti principali: un'infrastruttura Cloud, realizzata secondo il principio di Infrastructure as Code tramite Docker e un applicativo web responsive per il personale sanitario, in grado di gestire allarmi, analisi e consumi energetici attraverso l'interfaccia IoT fornita da Vimar. \
Le tecnologie suggerite includono framework moderni come React, Angular o Flask per il front-end, e Node.js, Java con Spring e/o Python per il back-end, con la possibilità di integrazione su AWS.

Il gruppo ha valutato molto positivamente il progetto, ritenendolo concreto, tecnicamente stimolante e ben strutturato. \
La possibilità di interagire con un kit fisico fornito dall'azienda rappresenta un forte valore aggiunto, così come la solidità e la disponibilità di Vimar nel fornire supporto tecnico e organizzativo durante lo sviluppo.

Nonostante ciò, dopo un'attenta votazione interna, il gruppo ha deciso di candidarsi per il capitolato C7, preferendolo per un margine molto ridotto rispetto a View4Life. Quest'ultimo rimane comunque considerato un ottimo progetto, apprezzato sia per la chiarezza della proposta sia per il valore formativo che può offrire.

= Conclusione
Al termine dell'analisi e delle valutazioni effettuate, il gruppo _GlitchHub Team_ ha esaminato con attenzione tutti i capitolati proposti, confrontandone obiettivi, tecnologie e ambiti applicativi.\
Il processo di selezione si è basato su criteri condivisi da tutti i membri, tra cui l'interesse tecnico, la chiarezza della proposta, la disponibilità dell'azienda proponente e il potenziale formativo del progetto. \

Tra i capitolati analizzati, diversi sono risultati di particolare interesse, in particolare *C2: Code Guardian*,  *C4: L'app che Protegge e Trasforma* e *C9: View4Life*, ritenuti progetti solidi, concreti e con un notevole valore applicativo. \
Tuttavia, dopo un confronto approfondito e una votazione interna, il gruppo ha deciso di presentare la propria candidatura per il capitolato *C7: Sistema di acquisizione dati da sensori*, proposto da _M31 S.r.l._, che è risultato il più in linea con le competenze, gli interessi e gli obiettivi formativi del team. \

La scelta è stata presa con un margine rispetto ad altri capitolati di elevata qualità, segno della varietà e dell'elevato livello delle proposte di quest'anno. \
Il gruppo ritiene che il percorso di analisi e confronto svolto sia stato estremamente utile per definire con maggiore consapevolezza la direzione progettuale e le priorità comuni, ponendo le basi per un lavoro motivato e coerente con le proprie aspirazioni tecniche e professionali.
