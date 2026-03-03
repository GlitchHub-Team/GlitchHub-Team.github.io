#import "../Templates/templateSlides.typ": *

#show: report.with(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: "04/03/2026",
  htmlId: "Diapositive",
)

#section-slide("Questioni aperte")

#content-slide(title: "Questioni aperte")[
  #icon-list(
    icon: "•",
    "Risoluzione dubbi riguardanti il design del component Gateway",
    "Completamento Code Diagram dei componenti Backend e Frontend",
    "Implementazione delle misure correttive emerse nella correzione della RTB",
    "Configurazione delle repository e delle automazioni per la pipeline di   CI/CD",
  )
]

#section-slide("Difficoltà incontrate")

#content-slide(title: "Difficoltà incontrate")[
  #icon-list(
    icon: "•",
    "Il design del component Gateway si è rivelato più complesso del previsto, infatti è stato programmato un incontro con il professor Cardin",
    "Qualche problema personale ha ritardato l'esecuzione di alcuni compiti",
    "Non è chiaro se nella codifica e nella verifica, della stessa porzione di codice, il compito di programmatore e verificatore debbano essere svolti da persone diverse",
  )
]

