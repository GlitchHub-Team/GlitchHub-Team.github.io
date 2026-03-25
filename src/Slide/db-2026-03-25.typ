#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "25/03/2026",
  htmlId: "Diapositive",
)

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
      "Continuare la stesura della specifica tecnica",
      "Iniziare stesura del test book richiesto dalla proponente",
      "Continuo sviluppo del back-end e affinamento del front-end",
      "Selezione metriche rilevanti per observability"
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "I test di unità richiedono molto tempo per essere esaustivi",
    "Ci siamo resi conto che i requisiti che erano stati fissati erano troppo ambiziosi per il tempo a disposizione, e abbiamo dovuto rinegoziarne qualcuno con la proponente",
    
  )
]

