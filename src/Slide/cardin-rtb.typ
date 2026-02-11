#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Presentazione tecnologie RTB",
  date: "12/02/2026",
  htmlId: "Diapositive",
)



#content-slide(title: [Capitolato C7 -- Sistema di acquisizione dati da sensori])[
  #set text(size: 30pt)
  - Sistema per *acquisire* dati da sensori IoT e *visualizzarli* su dashboard
  - *Acquisizione* dati da sensori collegati a Gateway WiFi: generazione ed esposizione dei dati *simulate*
  - *Visualizzazione* di dati ottenuti su dashboard online
  - *Separazione* dei dati tra diversi *tenant*
  - 

  // #icon-list(
  //   icon: "•",
  //   ". Completare l'analisi dei rischi, il preventivo e la pianificazione delle scadenze",
  //   "Preparare la documentazione necessaria per la candidatura al progetto",
  // )
]


#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Scegliere quante risorse allocare nelle singole task",
    "Una volta scelti i compiti da eseguire, è complesso scegliere delle scadenze equilibrate",
    "La comunicazione tra componenti del gruppo assegnati alla stessa task non è sempre efficiente",
  )
]
