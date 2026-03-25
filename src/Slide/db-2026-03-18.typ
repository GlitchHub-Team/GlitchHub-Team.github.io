#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "18/03/2026",
  htmlId: "Diapositive",
)

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
      "Posticipare data dell'MVP",
      "Completare codifica generale",
      "Completare test di integrazione",
      "Documentazione dell'API Dog"
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Abbiamo sottovalutato la complessità dei test unitari: la loro scrittura ha richiesto più tempo del previsto."
  )
]

