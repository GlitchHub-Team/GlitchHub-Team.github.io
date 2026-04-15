#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "15/04/2026",
  htmlId: "Diapositive",
)

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
    "Conclusione scrittura Specifica Tecnica",
    "Conclusione scrittura Manuale Utente",
    "Conclusione scrittura Piano di Qualifica",
    "Preparazione incontro con il prof. Cardin per la validazione dell'MVP",
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "La stesura dei test di sistema ha richiesto più tempo del previsto, vista la nostra architettura a microservizi.",
    "È lecito mappare un test di sistema a un test di integrazione?",
  )
]
