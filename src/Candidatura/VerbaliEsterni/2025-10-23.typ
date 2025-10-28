#import "../../Templates/templateVerbali.typ": report

#show: report.with(
  titolo: "Verbale esterno 23/10/2025 (M31)",
  stato: "Verificato",
  versione: "1.1.1",
  registro-modifiche: (
    ("1.1.1", "28/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Correzione refusi"),
    ("1.1.0", "27/10/2025", "Alessandro Dinato", "Siria Salvalaio", "Aggiunta domande M31"),
    ("1.0.0", "26/10/2025", "Alessandro Dinato", "Siria Salvalaio", "Versione finale"),
    ("0.0.1", "23/10/2025", "Alessandro Dinato", "Siria Salvalaio", "Verbale incontro con M31"),
  ),
  partecipanti: ("Alessandro Dinato", "Siria Salvalaio"),
  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo", "M31 SRL"),
  odg: (
    "Presentazione gruppo GlitchHub Team",
    "Discussione domande inviate preventivamente via email",
    "Varie ed eventuali",
  ),
  htmlId: "Candidatura-VerbaliEsterni",
  verificatore-interno: "Siria Salvalaio",
  left-signature: "../assets/firme/firma_Siria_Salvalaio.png",
  verificatore-esterno: "Cristian Pirlog",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il seguente verbale attesta che in data *23 Ottobre 2025* è avvenuto l'incontro con il proponente *M31 SRL*, in videoconferenza, dalle ore 10 alle ore 10:40. \
La riunione è stata organizzata con lo scopo di discutere alcune domande e dubbi sorti tra i componenti del gruppo riguardo il capitolato C7:  _ Sistema di acquisizione dati da sensori_. \
L'incontro è stato presenziato dai rappresentanti *Alessandro Dinato* e *Siria Salvalaio* in videoconferenza tramite la piattaforma _Microsoft Teams_.
= Preparazione all'incontro
Il gruppo GlitchHub Team, in data *21/10/2025*, si è riunito con lo scopo di far emergere i dubbi dei singoli componenti. \
I partecipanti si sono accordati di compilare un documento sulla piattaforma _ClickUp_ che raccogliesse tutte le domande da rivolgere al proponente *M31 SRL*. \
Quest'ultimo ha richiesto di ricevere preventivamente le domande così da potersi preparare e svolgere una riunione più fluida.
La richiesta è stata soddisfatta in data *20/10/2025* con l'invio delle domande via mail.

I quesiti inviati:
#enum(
  "Nel punto 3.2 del capitolato è presente questa frase 'Devono(i gateway) essere provisionati in modo sicuro, associandosi a un tenant specifico e caricando certificati di autenticazione'. Quindi ogni gateway sarà associato solo ad un singolo tenant?",
  "Perchè i dati dei tenant devono essere separati anche a livello fisico? Cosa si intende un database diverso per ogni tenant?",
  "Quali saranno i servizi di Google Cloud disponibili?",
  "Perchè dalla UI c’è la necessità di registrare e configurare nuovi sensori o gateway simulati? Quindi la UI oltre ad essere una grande dashboard di dati real-time e on-demand, è anche una piattaforma di setup?",
  "Che tipologia di autenticazione a due fattori verrà richiesta?",
  "Quale/i tra i requisiti opzionali apporterebbe/ro il maggior valore aggiunto al progetto?",
  "Quale funzionalità del gateway simulato ritenete sia la più critica per il PoC e l'MPV, e quale ritenete sia la più complessa?",
  "Che tipo di supporto puó offrire M31 al nostro gruppo nei periodi verso la RTB e la PB? ",
  "Una volta completato il verbale del meeting possiamo inviarvelo e riceverlo firmato (sarebbe ottimale avere una piccola foto del vostro timbro e/o firma)?",
)
= Resoconto
I due rappresentanti si sono collegati puntualmente alle ore 10 per l'incontro con il proponente *M31 SRL*. \
Avendo già a disposizione le domande i rappresentanti dell'azienda M31 hanno immediatamente cominciato con le delucidazioni.
== Informazioni sul supporto offerto dall'azienda
La domanda è stata posta dal gruppo con lo scopo di avere la massima conoscenza degli strumenti a disposizione durante lo svolgimento del capitolato. \
M31 ha risposto che non offre supporto attivo, come corsi o lezioni dirette, perchè ritiene che l'apprendimento sia parte integrante del progetto didattico e che il loro ruolo sia di indirizzare, non di insegnare. \
Il rappresentante Alessandro Dinato è intervenuto chiedendo se ci fosse la possibilità di accedere a piattaforme di apprendimento con cui l'azienda avesse accordi. \
La risposta è stata positiva, M31 è in grado di fornire l'accesso a determinati corsi sulla piattaforma *Udemy*, consiglia inoltre di utilizzare strumenti moderni, come LLM, per l’apprendimento.
== Importanza requisiti opzionali
Il gruppo aveva la necessità di conoscere l'importanza che il proponente dà ai vari requisiti opzionali con lo scopo di calcolare correttamente l'impegno da attuare. \
L'azienda ha risposto menzionando i requisiti *6* e *12* come i più importanti tra quelli opzionali. \
I requisiti menzionati si possono trovare nel #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[documento del capitolato C7]. \
== Gestione multi-tenant
Il gruppo ha posto diverse domande sulla gestione multi-tenant per avere una visione chiara dell'architettura che si aspetta il proponente. \
=== Rapporto 1 a 1 tra tenant e gateway
Il gruppo desiderava chiarire se un gateway è associato ad un solo tenant o se un gateway potesse produrre dati per più tenant. \
M31 ha chiarito che un gateway può avere un solo tenant associato. \
=== Separazione a livello fisico dei dati di diversi tenant
Il gruppo non aveva compreso cosa si intendesse per "separazione fisica dei dati di diversi tenant". \
L'azienda ha spiegato che la loro richiesta è che i dati di diversi tenant vengano inseriti in tabelle diverse per evitare che il volume di un'ipotetica tabella generica diventi troppo grande.
== Dashboard con funzioni di setup
Il gruppo aveva dei dubbi riguardo al requisito di "registrazione di nuovi sensori e gateway via dashboard". \
M31 ha precisato che la registrazione di nuovi sensori dalla dashboard ha lo scopo di creare un'entry con cui associare i dati provenienti dal sensore fisico, non c'è nessun requisito di setup da parte della dashboard.
== Servizi cloud e tecnologie consigliate
Il gruppo si chiedeva quali servizi cloud M31 sarebbe stata in grado di offrire e quali tecnologie consigliava tra le tante menzionate nel #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C7.pdf")[documento del capitolato C7]. \
L'azienda ha chiarito che alcune tecnologie tra quelle menzionate nel documento non ha senso che vengano utilizzate nell'MVP per la ripida curva di apprendimento.\
M31 ha, inoltre, sconsigliato di utilizzare _Apache Kafka_ e _Kubernetes_ per il motivo citato in precedenza.\
Invece, ha consigliato _NATS_ e _RabbitMQ_ come tecnologie adatte allo scopo del nostro progetto.\

= Conclusioni
L'incontro è stato estremamente utile per conoscere i rappresentanti dell'azienda M31 e il loro modo di agire.\
Inoltre, è stato fondamentale per chiarire ogni dubbio sorto tra i componenti del gruppo.\
I componenti del gruppo _GlitchHub Team_ ringraziano *M31 SRL* per la disponibilità, la chiarezza e la professionalità dimostrata.



