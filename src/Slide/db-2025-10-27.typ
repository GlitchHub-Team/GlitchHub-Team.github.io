#import "../Templates/TemplateSlide/template.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "2025-10-27",
)

#section-slide("Attività completate")

#content-slide(title: "Attività completate")[
  #icon-list(
    icon: "✓",
    "Definizione del nome del gruppo",
    "Creazione della mail e del logo del gruppo",
    "Creazione della repository GitHub per la documentazione del progetto",
    "Conduzione di colloqui con alcune aziende proponenti",
    "Creazione GitHub Action e GitHub Pages per pubblicazione automatica della documentazione",
    "Introduzione di ClickUp come sistema di ticketing e gestione dei task del team"
  )
]

#section-slide("Attività pianificate")

#content-slide(title: "Attività pianificate")[
  #icon-list(
    icon: "•",
    "Completare l'analisi dei rischi, il preventivo e la pianificazione delle scadenze",
    "Preparare la documentazione necessaria per la candidatura al progetto"
  )
]

#section-slide("Difficoltà riscontrate e questioni aperte")

#content-slide(title: "Difficoltà riscontrate e questioni aperte")[
  #icon-list(
    icon: "•",
    "Completare l'analisi dei rischi, il preventivo e la pianificazione delle scadenze",
    "Preparare la documentazione necessaria per la candidatura al progetto"
  )
]