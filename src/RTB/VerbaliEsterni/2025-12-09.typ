#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 09/12/2025 (M31)",
  stato: "Da verificare",
  versione: "0.1.0",
  registro-modifiche: (
    ("0.1.0", "09/12/2025", "Alessandro Dinato", "-", "Prima stesura verbale esterno del 09/12/2025"),
    ("0.0.1", "09/12/2025", "Riccardo Graziani", "-", "Appunti incontro con il proponente"),
  ),
  partecipanti: (
    "Jaume Bernardi",
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Siria Salvalaio",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    "Discussione dubbi precedentemente inviati al proponente via email",
    "Organizzazione prossimi incontri",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *9 dicembre 2025* si è svolto l'incontro con il #gloss[proponente] *M31 SRL*, in modalità remota tramite _Microsoft Teams_, dalle ore 14:30 alle 15:10.
Hanno partecipato:
- *da remoto*: Jaume Bernardi, Alessandro Dinato, Riccardo Graziani, Siria Salvalaio.

L'incontro aveva l'obiettivo di discutere le risposte fornite dal #gloss[proponente] ai dubbi precedentemente inviati via email dal gruppo.\

= Resoconto
== Discussione sui dubbi inviati al proponente

=== Anonimizzazione dei dati durante l'impersonificazione
Il #gloss[proponente] ha chiarito che quando un super-admin impersona un #gloss[tenant]-admin, l'accesso ai dati può essere regolato a livello di contratto: se il contratto prevede il permesso di impersonificazione allora il super-admin può visualizzare tutti i dati del #gloss[tenant], altrimenti il #gloss[tenant]-admin è l'unico responsabile.

L'anonimizzazione si applica principalmente:
- ai *log di audit*, che devono tracciare l'impersonificazione senza esporre dati sensibili;
- agli eventuali *export dei log*, dove i dati devono essere riconducibili a un utente generico ma non a una persona fisica.

È stato inoltre chiarito che nel progetto non è necessario gestire dati altamente sensibili (ad esempio dati medici).\
Eventuali scenari di offuscazione dei dati rientrano in accordi contrattuali specifici fra cliente e M31, e non sono parte del progetto didattico.

=== Accesso ai dati e dashboard
- Il *#gloss[tenant]-admin* visualizza una dashboard con i propri dati.
- Il *super-admin* visualizza una dashboard con dati aggregati e anonimizzati per ogni #gloss[tenant], a meno che non abbia i permessi contrattuali per visualizzare i dati specifici di un #gloss[tenant].

Il super-admin può vedere gli utenti creati dai #gloss[tenant], ma eventuali limitazioni dipendono dai permessi contrattuali concessi per l'impersonificazione.

=== Configurazione del gateway
Il super-admin deve poter:
- resettare la configurazione del gateway allo stato iniziale;
- modificare parametri operativi come la frequenza di invio dei dati;
- creare, rimuovere o modificare un'associazione di un gateway a un #gloss[tenant].

La configurazione dovrebbe essere:
- *estensibile*, per supportare futuri sensori o comportamenti personalizzati;
- espressa eventualmente tramite un *JSON* interpretato dal gateway, che definisce il comportamento desiderato (es. frequenza di invio dati).

=== Provisioning e sicurezza
Per quanto riguarda il provisioning sicuro, il #gloss[proponente] ha indicato che:
- si può assumere che un gateway reale generi una coppia di chiavi pubblica/privata al primo avvio;
- il gateway stabilisce una comunicazione sicura con il #gloss[cloud] per scambiare tali chiavi;
- i certificati di autenticità sono installati da M31 nel #gloss[cloud] così da riconoscere i gateway autentici.

Il super-admin deve poter effettuare il *provisioning iniziale* e anche la *rimozione dell'associazione* di un gateway.

== Organizzazione dei prossimi incontri
Come prestabilito, è stato fissato il prossimo incontro per il *16 dicembre 2025* alle ore 14:30, per discutere i seguenti punti:
- Discussione ulteriori dubbi;
- Presentazione use cases redatti dal gruppo.

= Attività conseguenti
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],

  [-], [-], [#link("#gloss[https]://#gloss[github].com/GlitchHub-Team/GlitchHub-Team.#gloss[github].io/issues/77")[*\#77*]],
)

