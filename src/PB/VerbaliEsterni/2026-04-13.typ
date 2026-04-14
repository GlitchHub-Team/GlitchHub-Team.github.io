#import "../../Templates/templateVerbali.typ": *

#show: report.with(
  titolo: "Verbale esterno 13/04/2026 (M31)",
  stato: "Verificato",
  versione: "1.0.0",
  partecipanti: (
    "Alessandro Dinato",
    "Riccardo Graziani",
    "Elia Ernesto Stellin",
    "Jaume Bernardi",
    "Michele Dioli",
    "Siria Salvalaio",
    "Hossam Ezzemouri",
  ),
  distribuzione: ("GlitchHub Team", "M31 SRL", "Prof. Cardin Riccardo", "Prof. Vardanega Tullio"),
  odg: (
    [Presentazione MVP],
  ),
  htmlId: "PB-VerbaliEsterni",
  verificatore-interno: "Alessandro Dinato",
  left-signature: "../assets/firme/firma_Alessandro_Dinato.png",
  verificatore-esterno: "",
  right-signature: "",
  tipo-verbale: "Esterno",
)

= Introduzione
Il presente verbale attesta che in data 13 aprile 2026 dalle 14:30 alle 15:50, si è svolto l’incontro con la proponente *M31 SRL*, in presenza.

L’obiettivo dell’incontro è stata l'esposizione dello stato di avanzamento del progetto tramite presentazione dedicata e l’esecuzione del *test book* richiesto sul sistema.

= Resoconto
== Presentazione e validazione live
Il gruppo ha aperto la riunione illustrando l'avanzamento dei lavori attraverso slide di presentazione che riassumono gli obiettivi, le scelte architetturali e le funzionalità del progetto. 

A seguire, è stata effettuata una sessione di test live seguendo puntualmente le procedure definite nel test book. 

Successivamente è stato mostrato il modello C4, fornendo una visione approfondita della struttura del sistema.

La proponente M31 ha espresso una complessiva soddisfazione per i risultati raggiunti dal gruppo, definendo quanto mostrato un "ottimo lavoro" e confermando la solidità del percorso intrapreso.

== Discussione su alcuni strumenti scelti
Il gruppo ha evidenziato criticità nell'utilizzo di draw.io, segnalando comportamenti anomali del software che tende a presentare regressioni casuali nei diagrammi. È stato discusso con la proponente possibili alternative, precedentemente scartate per vari motivi, quali la l'apparente complessità della UI.

M31 ha fornito un feedback tecnico riguardante una preoccupazione del gruppo: TimescaleDB non rappresenta un *bottleneck* in quanto prima di riscontrare reali problemi di performance, è necessaria una mole di informazioni estremamente elevata, i quali sono difficili da raggiungere dato che TimescaleDB applica policy di *shink* dei dati più vecchi; il sistema rimane dunque scalabile ed efficiente finché non si applicano operazioni di join senza *sharding*, rendendo la scelta di questa tecnologia più che valida.

== Discussione e Considerazioni Finali
In chiusura di seduta, le parti si sono confrontate sulla complessità intrinseca del progetto in relazione al contesto tecnologico attuale, considerando l'impatto dell'Intelligenza Artificiale come supporto allo sviluppo, soprattutto per la fase di test. Per finire, si è parlato dell'attrattiva del capitolato e dell'equilibrio tra la produzione di documentazione tecnica e il lavoro pratico di implementazione richiesti.