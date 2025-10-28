#import "../Templates/templateDocumentiGenerici.typ": report

#show link: underline
#show: report.with(
  titolo: "Valutazione Capitolati",
  stato: "In attesa di verifica",
  versione: "0.1.0",
  registro-modifiche: (
    ("0.1.0", "28/10/2025", "Elia Ernesto Stellin", "", "Stesura Introduzione, C1, C2, C6"),
    ("0.0.1", "27/10/2025", "Elia Ernesto Stellin", "", "Bozza valutazione capitolati"),
  ),
  distribuzione: (
    "GlitchHub Team",
    "Prof. Cardin Riccardo",
    "Prof. Vardanega Tullio",
  ),
  htmlId: "Candidatura",
  verificatore-interno: "",
  left-signature: "",
  tipo-documento: "Valutazione dei Capitolati",
)

= Introduzione
// TODO: non mi piace "presentato nel Progetto Didattico"
Il presente documento ha lo scopo di indicare la valutazione di ciascun capitolato, presentato nel Progetto Didattico, da parte del gruppo *GlitchHub Team*, in modo tale da motivare la scelta di quest'ultimo di presentare la candidatura per il capitolato *C7: Sistema di acquisizione dati da sensori* proposto da *M31 S.r.l.*

= Valutazione dei capitolati
// TODO: non mi piace "candidatura PER questo capitolato"
Di seguito, verranno riportate, per ognuno dei capitolati, una breve descrizione di quest'ultimo, la valutazione del gruppo in merito a esso, e le motivazioni per cui il gruppo ha scelto di procedere o meno con la candidatura per tale capitolato.

Come verrà descritto anche successivamente, il gruppo ha scelto di candidarsi al capitolato *C7*: tale scelta è avvenuta tramite un sistema di votazione in cui ogni membro ha espresso le proprie preferenze in merito ai capitolati proposti.

Sebbene questo capitolato non sia stato scelto all'unaminità, la maggior parte del gruppo ha espresso interesse nello sviluppare il progetto da esso proposto, considerando al contempo altri capitolati come "seconde scelte", in caso di rifiuto della candidatura al *C7*.

== C1: Automated EN18031 Compliance Verification (Bluewind)
Lo standard della Gazzetta Ufficiale dell'Unione Europea EN 18031 è una norma armonizzata per la Direttiva europea sulle apparecchiature radio, in breve RED. Quest'ultima copre tutti i device immessi nel mercato europeo che scambiano dati tramite onde radio, tra cui prodotti collegati alla rete tramite Wi-Fi e Bluetooth, dispositivi wireless di IoT e altri, richiedendo che questi rispettino dei requisiti di sicurezza informatica.

Questo standard è definito da una serie di requisiti obbligatori dal *1 agosto 2025*, che sono complicati e gerarchicamente legati tra loto, il cui soddisfacimento da parte di un'attrezzattura è verificabile tramite l'utilizzo di Decision Trees, ovvero da complesse sequenze di domande a risposta binaria (Sì/No) interconnesse tra loro, che determinano se tale attrezzattura è conforme alle direttive o meno.

La verifica manuale di questi Decision Trees è un'operazione delicata, tediosa e soggetta all'errore umano. Per cui, il progetto prevede lo sviluppo di una piattaforma interattiva che sia in grado di importare file strutturati relativi alle informazioni di un'attrezzattura specifica e del suo rispetto dei Decision Trees sopra descritti, di eseguirli automaticamente e di fornire all'utente una dashboard per visualizzare in maniera dettagliata l'adempimento dell'attrezzatura a ogni requisito.

Sebbene il gruppo abbia uno spiccato interesse per il mondo dell'IoT,
non ritiene che questo progetto sia abbastanza stimolante dal punto di vista del dominio, in quanto non è richiesto di comunicare propriamente con i dispositivi da verificare, ma di controllare l'adempimento di dati già strutturati e normalizzati a una serie di requisiti condizionali.

Inoltre, il gruppo trova troppo vaghe le specifiche tecnologiche richieste dal progetto, che non pone alcun vincolo né sul tipo di applicazione sviluppata (applicazione desktop o web), né sulla struttura dell'applicazione stessa, non richiedendo necessariamente di sviluppare una parte di front-end o back-end.

Per le motivazioni sopra descritte, il gruppo ha deciso di non candidarsi al capitolato C1, non considerandolo nemmeno come possibile alternativa.

== C2: Code Guardian (VarGroup S.p.A.)
Il progetto proposto da VarGroup S.p.A. nel capitolato *C2* prevede lo sviluppo di una piattaforma in cloud basata su un sistema ad agenti orchestrato in grado di automatizzare processi di miglioramento del codice e di audit di sicurezza del codice. La piattaforma dev'essere capace di analizzare repository GitHub per valutarne qualità, sicurezza e manutenzione, fornendo reportistica automatica e sfruttando gli agenti per fornire rimedi in caso di lacune, che siano vulnerabilità di sicurezza, mancanze di best practices o test mancanti.

Nonostante il gruppo trovi d'interesse le tecnologie richieste e l'idea proposta, si è deciso di non procedere con la candidatura per questo capitolato, per i seguenti motivi.

Innanzitutto, all'interno del gruppo non vi è interesse nello sviluppo di sistemi ad agenti AI, e sono sorti grandi dubbi riguardo alla validità degli LLM come strumenti adatti a questo caso d'uso.

Più nello specifico, sono sorti dubbi in merito alla capacità di un LLM di scorgere vulnerabilità di sicurezza all'interno di una codebase estesa, la cui potrebbe essere potenzialmente composta da numerose parti interconnesse, che possono nascondere vulnerabilità, difficili da rilevare anche a un essere umano. Essendo gli LLM degli strumenti fondamentalmente probabilistici e non algoritmici, la probabilità che alcune rilevazioni di vulnerabilità siano falsi positivi o falsi negativi è considerevole e, in questo contesto, altamente pericolosa.

// TODO: non so se vadano bene "nostro", "LORO progetto"...
Al momento della scrittura di questo documento, il gruppo non ha ricevuto risposta a questi dubbi, in quanto VarGroup S.r.l. non ha risposto alle nostre richieste di incontro, facendoci dubitare del supporto che l'azienda potrebbe fornirci durante lo sviluppo del loro progetto.

Nonostante ciò, seguendo la votazione interna al gruppo, si è deciso di mantenere questo capitolato come "seconda scelta" in caso di rifiuto della candidatura al *C7*.

== C3: DIPReader

== C4: L'app che Protegge e Trasforma

== C5: NEXUM

== C6: Second Brain (Zucchetti S.p.A.)
Il progetto proposto da Zucchetti S.p.A. nel capitolato *C6* prevede lo sviluppo di un editor di testo in formato Markdown, con l'integrazione di un LLM atto a migliorare o correggere il testo dell'utente. Tra i casi d'utilizzo propsti del LLM vi sono la riscrittura del testo in diversi registri di formalità, la creazione di riassunto e la critica del testo scritto dall'utente da più punti di vista differenti. Opzionalmente, l'applicazione potrebbe anche scrivere interamente il testo seguendo un prompt specifico e salvare i testi creati.

Il gruppo non è interessato nel procedere con la candidatura a questo capitolato, poiché non proviamo un forte interesse né verso l'utilizzo degli LLM e i sistemi di AI né verso le tecnologie richieste dal progetto, quali Java/Python per un eventuale back end.

Inoltre, il gruppo non trova il progetto abbastanza stimolante e interessante didatticamente, in quanto le specifiche richieste dal capitolato non sembrano fornire il livello di esperienza didattica che gli altri capitolati proposti offrono, data la loro maggiore complessità. Poiché il progetto didattico viene svolto in vista di un apprendimento utile al nostro inserimento nel mondo di lavoro, non riteniamo che _Second Brain_ possa soddisfare la nostra aspettativa di apprendimento e di crescita nell'ambito del Software Engineering.


== C7: Sistema di acquisizione dati da sensori

== C8: Smart Order

== C9: View4Life


= Conclusione

