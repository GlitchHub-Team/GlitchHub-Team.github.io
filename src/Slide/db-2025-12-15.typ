#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "15/12/2025",
  htmlId: "Diapositive",
)

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Trovare delle metriche adeguate per misurare la qualità di processo e di prodotto",
    "Trovare una definizione comune coerente di \"attore\" e \"sistema\" nella redazione degli use cases",
    "Dubbio relativo alla specificità con cui scrivere gli use cases",
    "Difficoltà nell'organizzazione interna per sessioni di brainstorming di gruppo"
  )
]

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
      "Incontro con l'azienda per discutere e correggere gli use case prodotti finora",
      "Produzione di ulteriori use cases (se necessario)",
      "Definire le metriche di qualità di processo",
  )
]
