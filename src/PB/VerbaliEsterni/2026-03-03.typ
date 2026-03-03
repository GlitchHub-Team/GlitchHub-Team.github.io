#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 03/03/2026 (M31)",
  stato: "da verificare",
  registro-modifiche: (
    (
      "0.1.0",
      "03/03/2026",
      "Michele Dioli",
      "-",
      "Stesura verbale esterno del 03/03/2026",
    ),
  ),
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Presentazione e dubbi su design],
    [Discussione su dev container],
  ),
  htmlId: "RTB-VerbaliEsterni",
  verificatore-interno: "-",
  left-signature: "../assets/firme/firma_Jaume_Bernardi.png",
  verificatore-esterno: "-",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 3 marzo 2026 dalle 14:30 alle 15:20, si è svolto l'incontro con la proponente *M31 SRL*, in modalità remota.

Durante l'incontro il gruppo ha presentato alla proponente lo stato di avanzamento del design logico del progetto, sviluppato secondo il modello C4, e ha esposto i diversi dubbi emersi durante la progettazione.

= Resoconto

== Presentazione e dubbi su design
Il gruppo ha illustrato alla proponente il design logico in fase di sviluppo, basato sul modello C4:

- i diagrammi di System e Container sono stati ritenuti soddisfacenti dalla proponente;
- rimangono alcuni dubbi aperti sui diagrammi di Component e Code, discussi nei punti successivi.

=== Design del Gateway
Sono emersi dubbi bloccantanti relativi al componente _gateway_, la cui gestione prevede un elevato grado di multithreading tramite l'uso di goroutine.

=== Component Diagram 
Il gruppo ha esposto il dubbio riguardante la tecnologia da adottare per il _buffer_ del _gateway_, che necessita di supporto alla persistenza dei dati.
La proponente ha confermato la scelta di utilizzare SQLite con una colonna di tipo JSON, in modo da poter salvare dati eterogenei senza la necessità di modellare esplicitamente lo schema del database.

=== Code Diagram 
Il gruppo ha illustrato la scelta di applicare l'architettura esagonale al _design_ del _gateway_ ed ha esposto il seguente dubbio: il componente NatsGatewayCommandRepository riceve comandi da NATS e crea delle classi di comando, le quali vengono successivamente passate alla goroutine GatewayCommandDispatcher. Quest'ultimo riceve una classe che implementa un'interfaccia comune; il gruppo desidera adottare una soluzione polimorfica senza fare ricorso a RTTI e ha chiesto indicazioni su dove debba avvenire la creazione del comando poi eseguito da GatewayCommandDispatcher.
La proponente ha dichiarato che la soluzione va determinata con uno studio più approfondito ed ha consigliato di esporre questo dubbio attraverso una mail in maniera da poter fornire una risposta più completa.

=== Osservazioni della proponente sul design del Gateway
La proponente ha fatto notare che sono state impiegate numerose risorse sul _design_ del simulatore del _gateway_ tramite architettura esagonale. Questo impegno andrebbe dedicato anche al _backend_ della dashboard, ritenuto dalla proponente la parte più rilevante del progetto. Il lavoro svolto è stato comunque riconosciuto come approfondito e dettagliato. Tuttavia la proponente ha consigliato di volgere maggiore attenzione al design del sistema _cloud_.

=== Design del Data Consumer
Il gruppo ha presentato alla proponente il design sviluppato fino a questo momento per il Data Consumer, illustrando i _services_ e i _components_ di Angular elaborati. Non sono emersi dubbi particolari in merito al _frontend_.

== Discussione su dev container

La proponente ha suggerito caldamente di adottare i Dev Container al fine di garantire una linea di sviluppo comune, basata su ambienti di sviluppo virtualizzati e indipendenti dal sistema operativo. Come alternativa ai Dev Container, è stato consigliato lo strumento ASDF per la gestione degli strumenti di lavoro.

