#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "11/03/2026",
  htmlId: "Diapositive",
)

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
      "Aggiornare l'AdR con i requisiti ritrattati",
      "Apportare modifiche alla progettazione in seguito al riscontro con la proponente"
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Il design del componente backend si è rivelato più complesso del previsto, ma è stato concluso entro i termini temporali stabiliti",
    "Il grado di desiderabilità dei requisiti è stato rivisto per via delle difficoltà riscontrate durante la progettazione del backend",
  )
]

