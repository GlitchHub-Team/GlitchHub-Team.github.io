#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "01/12/2025",
  htmlId: "Diapositive",
)

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Trovare delle metriche adeguate per misurare la qualità di processo",
    "Definire i casi d'uso è un processo più complesso del previsto",
  )
]

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
    "Incontro con l'azienda per discutere ciò che è stato redatto finora",
    "Continuare la redazione dei casi d'uso",
    "Definire le metriche di qualità di processo",
  )
]
