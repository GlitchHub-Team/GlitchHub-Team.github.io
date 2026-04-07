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
    "Completamento della scrittura dei test di sistema",
    "Redazione del test book per l'incontro con l'azienda proponente",
    "Integrazione e orchestrazione dei microservizi per la verifica end‑to‑end del funzionamento del sistema",
    "Incontro con l'azienda per la validazione dell'MVP previsto per il 13 aprile"
  )
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Lo sviluppo dei test di integrazione ha causato ritardi contenuti e ha permesso l'emersione di bug da correggere",
    "Quali documenti sono necessari per la candidatura con il Prof. Cardin? È richiesta la presentazione di tutti i documenti o solo di una selezione?"
  )
]


Difficoltà incontrate:
- Lo sviluppo dei test di integrazione ha portato a qualche ritardo(non grave), facendo emergere bug
- ⁠(Dubbio) quali sono i documenti necessari per candidarsi con il prof cardin? O servono tutti

Questioni aperte:
- Scrittura test di sistema
- Scrittura test book per incontro con azienda
- ⁠Messa insieme dei microservizi per vedere se funziona tutto(scrivila meglio)
- ⁠Incontro azienda per validazione MVP 13 aprile
