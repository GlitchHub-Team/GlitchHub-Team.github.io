#import "../../Templates/templateVerbali.typ": report

#show: report.with(
  titolo: "Verbale esterno 22/10/2025 (Miriade)",
  stato: "Verificato",
  versione: "1.0.1",
  registro-modifiche: (
    ("1.0.1", "28/10/2025", "Elia Ernesto Stellin", "Alessandro Dinato", "Correzione refusi"),
    ("1.0.0", "27/10/2025", "Siria Salvalaio", "Alessandro Dinato", "Versione finale firmata"),
    ("0.0.1", "23/10/2025", "Siria Salvalaio", "Alessandro Dinato", "Verbale riunione con Miriade"),
  ),
  partecipanti: ("Alessandro Dinato", "Siria Salvalaio"),
  distribuzione: ("GlitchHub Team", "Prof. Vardanega Tullio", "Prof. Cardin Riccardo", "Miriade SRL"),
  odg: (
    "Presentazione gruppo GlitchHub Team",
    "Discussione domande e dubbi sorti nel gruppo GlitchHub Team",
    "Varie ed eventuali",
  ),
  htmlId: "Candidatura-VerbaliEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  verificatore-esterno: "Arianna Bellino",
  right-signature: "../assets/firme/miriade/firma_arianna_bellino.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il seguente verbale attesta che in data *22 Ottobre 2025* è avvenuto l'incontro con il proponente *Miriade SRL*, in videoconferenza, dalle ore 15:30 alle ore 16. \
La riunione è stata organizzata con lo scopo di discutere domande e dubbi sorti ai componenti del gruppo riguardo il capitolato C4:  _L'app che Protegge e Trasforma_. \
L'incontro è stato presenziato dai rappresentanti *Alessandro Dinato* e *Siria Salvalaio*, in videoconferenza, attraverso la piattaforma _Google Meet_.

= Preparazione all'incontro
Il gruppo *GlitchHub Team*, in data *21/10/2025*, si è riunito con l’obiettivo di raccogliere i dubbi emersi durante l’analisi del capitolato C4. \
I partecipanti si sono accordati di compilare un documento sulla piattaforma _ClickUp_ che raccogliesse tutte le domande da rivolgere al proponente *Miriade SRL*. \
Durante la preparazione, il gruppo ha concordato di concentrarsi sugli aspetti tecnologici e di progetto, con particolare attenzione ai temi di *AWS*, *Flutter*, *intelligenza artificiale* e *privacy*.


= Resoconto
I rappresentanti del gruppo si sono collegati puntualmente alle ore 15:30 per l’incontro con i referenti di *Miriade SRL*. \
Dopo una breve presentazione del gruppo e dell’azienda, si è passati alla discussione delle domande sorte precedentemente.

== Supporto offerto da Miriade
Il gruppo ha chiesto che tipo di supporto l’azienda potesse offrire riguardo un’introduzione alle tecnologie *AWS* e *Flutter*. \
Miriade ha chiarito che, pur non prevedendo supporto diretto, è in grado di mettere a disposizione dei corsi specifici e supporto tecnico in caso di necessità. \
Ha inoltre consigliato di utilizzare *Flutter*, come indicato nel capitolato, sottolineando che il framework consente di compilare in modo nativo ed è preferibile rispetto ai linguaggi nativi, salvo esperienze pregresse.

== Importanza dell’aspetto UX
Il gruppo ha chiesto quanto fosse importante l’aspetto di *User Experience* rispetto agli altri requisiti. \
Miriade ha risposto che, sebbene le funzionalità siano centrali, l’applicazione deve essere *intuitiva* per l’utente finale affinché non appesantisca ulteriormente la posizione dell'utente. \
L’attenzione deve quindi essere posta sia sull'efficacia delle funzionalità che sulla semplicità di utilizzo.

== Accuratezza delle analisi AI
Il gruppo ha chiesto quale grado di accuratezza fosse richiesto per le analisi di intelligenza artificiale e se fosse necessario addestrare modelli di *Machine Learning*. \
Miriade ha specificato che l’obiettivo è ottenere risultati il più possibile accurati, ma che è preferibile utilizzare *API o modelli già disponibili*, soprattutto per la parte di conversazione. \
Inoltre, è stato specificato che, qualora la risposta generata non fosse sufficientemente accurata, il sistema deve evitare di rispondere.

== Gestione della privacy e dei dati utente
In merito al trattamento dei dati, in particolare per quanto riguarda il contatto tra utenti e *LLM*, \
Miriade ha spiegato che l’applicativo opererà in modalità *anonima*, senza necessità di login. \
Le informazioni potranno essere associate alla posizione geografica o ad altri dati che non consentano l’identificazione diretta dell’utente. \
L’azienda ha inoltre precisato di disporre di *legal specialists* che si occupano della conformità alle normative sulla privacy (_GDPR_).

== Architettura e supporto AWS
Il gruppo ha richiesto chiarimenti sull'architettura *serverless* proposta nel capitolato di appalto e sul livello di supporto previsto per la configurazione dei servizi *AWS*. \
Miriade ha confermato la disponibilità a fornire assistenza e indicazioni operative, naturalmente non con un affiancamento passo-passo, con lo scopo di incoraggiare l’autonomia dei membri del gruppo nello studio della piattaforma.

== Libertà di sviluppo su piattaforme mobili
È stato chiesto se fosse possibile sviluppare l’MVP interamente per *iOS* o *Android*, al fine di integrare funzionalità native. \
Miriade ha risposto che il gruppo ha *totale libertà* nella scelta della piattaforma di sviluppo, purché vengano rispettati i requisiti del capitolato. \
È stata inoltre confermata la possibilità di inviare digitalmente il verbale per la firma da parte dell’azienda proponente.

= Conclusioni
L’incontro con *Miriade SRL* è stato molto utile per comprendere le aspettative dell’azienda e ricevere indicazioni pratiche sulla direzione da intraprendere per il possibile capitolato. \
Il gruppo *GlitchHub Team* ringrazia *Miriade SRL* per la disponibilità e la professionalità dimostrata durante la riunione.
