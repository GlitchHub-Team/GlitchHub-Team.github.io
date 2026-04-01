#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "01/04/2026",
  htmlId: "Diapositive",
)

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
      "Continuare stesura della specifica tecnica",
      "Iniziare stesura del test book richiesto dalla proponente",
      "Integrazione di sistema e conseguente scrittura dei test di sistema",
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Alcune componenti del cloud back-end hanno richiesto più tempo del previsto",
    "Come scrivere i test di sistema in un'architettura a microservizi?",
    "I test di sistema devono essere totalmente automatizzati?"
  )
]

