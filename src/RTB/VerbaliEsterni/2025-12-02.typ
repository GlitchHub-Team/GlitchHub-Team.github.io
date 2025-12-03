#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 02/12/2025 (M31)",
  stato: "Bozza",
  versione: "0.1.0",
  registro-modifiche: (
    ("0.1.0", "02/12/2025", "Alessandro Dinato", "-", "Bozza terzo incontro con il proponente"),
  ),
  partecipanti: (
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Riccardo Graziani",
    "Siria Salvalaio",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    "Discussione sull'esempio implementativo proposto dall'azienda",
    "Discussione dubbi sui privilegi e le funzionalità dell'utente super-admin",
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "",
  left-signature: "",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data *2 dicembre 2025* si è svolto l'incontro con il proponente *M31 SRL*, in modalità remota tramite _Microsoft Teams_, dalle ore 14:30 alle 15:20.
Hanno partecipato:
- *da remoto*: Elia Ernesto Stellin, Jaume Bernardi, Michele Dioli, Riccardo Graziani, Siria Salvalaio.

L'incontro aveva l'obiettivo di approfondire il ruolo e le funzionalità del super-admin all'interno del sistema.\
All'inizio della settimana il proponente ha inviato esempio di utilizzo del sistema con lo scopo di chiarire i dubbi emersi e favorire lo sviluppo dei casi d'uso.\
L'esempio era particolarmente incentrato sulle funzionalità e i privilegi dell'utente super-admin.

= Resoconto

== Ruolo e privilegi del Super Admin
Il super admin può operare come tenant admin all'interno di qualsiasi tenant.\
Ciò gli permette di accedere nel tenant al fine di verificare le configurazioni e il corretto funzionamento del sistema.
Inoltre sarà in grado di visualizzare i dati in forma anonima.

== Operazioni sui Gateway
Il tenant admin può unicamente riavviare un gateway.\
Il super admin, oltre a quanto sopra, può eseguire riconfigurazioni, reset totali e operazioni di _decommissioning_.\
Le operazioni possibili sono:
- *Riavvio*: spegnimento e riaccensione del gateway;
- *Reset*: ritorno alla configurazione di fabbrica, con eliminazione della configurazione lato cloud;
- *Riconfigurazione*: applicazione di una configurazione personalizzata da parte del super admin;
- *Decommissioning*: dissociazione dal tenant, con reset totale ed eliminazione dei dati prodotti. È possibile mantenere uno storico di quali tenant hanno associato i sensori.

Il super admin può inoltre gestire le richieste di aggiunta di gateway fatte dai tenant, accettandole o rifiutandole, e può anche aggiungere manualmente nuovi gateway ai tenant.\
L'accettazione della richiesta viene fatta solo quando l'installazione del gateway è fisicamente avvenuta.

== Consumi e Costi
I costi sono pensati come “a consumo”, su modello simile alle API (ad esempio OpenAI). Il consumo è legato ai dati generati dai sensori e inviati dai gateway.\
Il tenant admin può configurare i consumi modificando la frequenza o la modalità di invio dei dati (es. rolling average).
Ogni tenant può visualizzare il proprio consumo complessivo e il dettaglio per singolo gateway.\
Il super admin può visualizzare l'andamento dei costi dei tenant.

== Comunicazione e Flusso dei Dati
I sensori comunicano con un unico gateway (modello many-to-one). Il gateway invia i dati al server M31, che si occupa della normalizzazione.\
La dashboard cloud visualizza i dati interrogando il server.\
La piattaforma non fornisce persistenza massiva: funge da tunnel di dati, mentre sistemi di storage o dashboard avanzate vengono costruiti dal cliente sulla base delle API offerte.

== Provisioning e Certificati
Il processo previsto è avviato dal super admin, quando un nuovo gateway deve essere aggiunto al sistema il super admin lo associa ad un tenant e ne avvia il provisioning.\

== Permessi degli Utenti
Gli utenti normali possono esclusivamente visualizzare i dati.
Per l'MVP non si implementa un sistema avanzato di autorizzazioni granulari: gli utenti di un tenant possono visualizzare tutti i dati del tenant.
Eventuali dashboard o filtraggi complessi vengono costruiti dai clienti tramite le API.

== Altre Chiarificazioni
- Il super admin non interviene nel flusso dei dati salvo casi anomali.
- La richiesta di aggiunta di gateway avviene quando un tenant necessita maggiore scalabilità.
- Il giorno e l'orario degli incontri è fissato a martedì alle 14:30, tuttavia può essere spostato a venerdì mattina in caso di indisponibilità del proponente.

= Decisioni prese
#table(
  columns: (4fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Responsabile*], [*Issue*],

  [Avanzamento casi d'uso relativi al super-admin],
  [Tutti i membri],
  [#link("https://github.com/GlitchHub-Team/GlitchHub-Team.github.io/issues/39")[*\#39*]],
)

