#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 24/02/2026 (M31)",
  stato: "Da verificare",
  registro-modifiche: (
    (
      "0.1.0",
      "24/02/2026",
      "Michele Dioli",
      "-",
      "Prima stesura verbale esterno del 24/02/2026",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Silvia Salvalaio"
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Resoconto incontri con i professori Cardin e Vardanega],
    [Pianificazione per i prossimi sprint],
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "-",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  verificatore-esterno: "-",
  right-signature: "../assets/firme/m31/firma_cristian_pirlog.png",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 24 febbraio 2026 dalle 14:30 alle 15:20, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

Durante l'incontro il gruppo ha riportato l'esito degli incontri RTB con i professori, succesivamente sono stati dati consigli pratici dalla proponente su come avanzare.

= Resoconto

== Resoconto incontri con i professori Cardin e Vardanega
Il gruppo ha riportato l'esito positivo (semaforo verde) dell'incontro con il professor Cardin, e ha riportato i dubbi espressi dal professor Vardanega riguardanti soprattutto la mancanza di ore di orologio per poter garantire la data di consegna del MVP prevista per il 27 marzo 2026.\
Ci è stato chiesto se la data di consegna fosse ufficiale sia per i professori sia per l'azienda, ed è stato ragionevole pensare di stabilire che la consegna per la proponente sia alcuni giorni in anticipo.

== Pianificazione per i prossimi sprint

=== Progettazione
Partire dalla logica ad alto livello (modelli C4, diagrammi delle classi), basandosi sul PoC e sui suggerimenti di M31, per poi scendere nel dettaglio dei singoli componenti.
È importante organizzarsi in modo efficace, dato che il gruppo è numeroso.Le task devono essere assegnate in maniera ordinata e ciascun membro deve avere un ruolo ben definito. 
L'approccio consiste nel passare dall'architettura ad alto livello alla definizione dei singoli componenti, per poi ampliarli progressivamente.
La fase di progettazione è bloccante e svolgerla in sette persone può risultare caotico. Per parallelizzare il lavoro, non tutti si dedicheranno alla progettazione: alcuni potranno occuparsi del setup e dello studio degli strumenti mancanti. È utile anche portarsi avanti con la documentazione, sia aggiornando i documenti esistenti sia producendo quelli nuovi (specifica tecnica, manuale utente).

=== Dev containers
C'è stato consiglaito di sviluppare un ambiente di sviluppo in container con _hot reload_ dalla cartella locale tramite _docker_ _compose_. Utile per sincronizzare versioni e ambienti, da svolgere in parallelo alla progettazione.

=== Gestione dei secrets
Per l'MVP, utilizzare _docker_ secrets iniettati tramite _compose_. 
I secrets non vanno pubblicati su GitHub. Si è pensato ad una possibile condivisione interna tramite Bitwarden, con file .env locali e script di setup automatico delle credenziali.

=== Gestione repository
Adottare un approccio _multi-repository_ con _Dockerfile_ separati per servizio, evitando un'unica immagine troppo pesante. _Repository parent_ con _git submodule_ per orchestrare il tutto. Piccoli _compose_ separati per consentire lo sviluppo indipendente dei singoli servizi.
Inoltre, è stato consigliato di modificare la gestione delle _repository_, anziché utilizzare un'unica repository per tutti i microservizi, creare una repository per ciascun microservizio. 
Il consiglio nasce dall'esperienza della proponente, che ha trovato il lavoro in _multi-repository_ più comodo per il singolo sviluppatore.

=== Priorità
Concentrarsi prima sui requisiti obbligatori, aggiungendo quelli desiderabili/opzionali in modo incrementale. Focus sulla parte core (comunicazione e scambio dati). 
Per la dashboard usare strumenti predefiniti (es. Angular Material).

= Attività conseguenti
#table(
  columns: (3fr, 2fr, 1fr),
  align: center + horizon,
  [*Task*], [*Assegnatari*], [*Issue*],

  [Riflettere modifiche a workflow issue, branch e PR], [Riccardo Graziani], [#issue(328)],

  [Dividere servizio data consumer per funzionalità], [Alessandro Dinato], [#issue(329)],

  [Dividere servizio gateway per funzionalità], [Elia Ernesto Stellin], [#issue(330)],

  [Dividere servizio dashboard frontend per funzionalità], [Jaume Bernardi], [#issue(331)],

  [Dividere servizio dashboard backend per funzionalità], [Michele Dioli], [#issue(332)],
)
