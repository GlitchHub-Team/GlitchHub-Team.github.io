#import "@preview/polylux:0.4.0": *

#let primary = rgb("#630691")

#let watermark = {
  place(right + bottom, image("../assets/loghi/GlitchHub-Team_LogoWM.png", width: 17cm))
}

#let slide-title-internal(body) = {
  set page(
    paper: "presentation-16-9",
    footer: context {
      if counter(page).get().first() > 1 {
        let current = counter(page).get().first()
        let total = counter(page).final().first()
        let progress = (current - 1) / (total - 1) * 100%

        set text(size: 12pt, fill: gray)

        v(-2em)

        place(
          rect(
            width: 100%,
            height: 4pt,
            fill: gray.lighten(80%),
            radius: 2pt,
          ),
        )

        place(
          rect(
            width: progress,
            height: 4pt,
            fill: primary,
            radius: 2pt,
          ),
        )

        v(1.8em)

        grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [GlitchHub Team - diario di bordo], [#current / #total],
        )
      }
    },
  )

  set text(font: "Lato", size: 20pt)
  body
}

#let my-slide-internal(title: none, body) = {
  set page(
    paper: "presentation-16-9",
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 2pt)
        grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [
            #image("../assets/loghi/GlitchHub-Team_LogoP.png", height: 1cm)
          ],
          [
            #image("../assets/loghi/Logo_Università_Padova.svg-300x300.png", height: 1cm)
          ],
        )
        line(length: 100%, stroke: 0.5pt + primary)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        let current = counter(page).get().first()
        let total = counter(page).final().first()

        set text(size: 12pt, fill: gray)

        v(-0.5em)
        rect(
          width: 100%,
          height: 3pt,
          fill: gradient.linear(
            primary.lighten(70%),
            primary.lighten(70%),
            primary,
            primary,
            angle: 0deg,
          ),
        )

        v(0.3em)
        grid(
          columns: (1fr, 1fr, 1fr),
          align: (left, center, right),
          [GitHub Team - diario di bordo], [#title], [#current / #total],
        )
      }
    },
  )

  set text(font: "Lato", size: 20pt)
  body
}

#let cover-slide(
  team-name: "GlitchHub Team",
  subtitle: "Diario di bordo",
  date: none,
  logo-left: "../assets/loghi/GlitchHub-Team_LogoP.png",
  logo-right: "../assets/loghi/Logo_Università_Padova.svg-300x300.png",
) = {
  set page(paper: "presentation-16-9")
  set text(
    font: "Lato",
    size: 20pt,
  )

  place(top + left)[
    #image(logo-left, height: 3cm)
  ]
  place(top + right)[
    #image(logo-right, height: 3cm)
  ]

  align(center + horizon)[
    #rect(width: 50%, height: 0.15em, fill: gradient.linear(
      primary.lighten(70%),
      primary.lighten(70%),
      primary,
      primary,
      angle: 0deg,
    ))
    #text(size: 2.5em, weight: "bold")[#team-name]

    #text(size: 1.5em, weight: 40)[#subtitle]
    #rect(width: 50%, height: 0.15em, fill: gradient.linear(
      primary.lighten(70%),
      primary.lighten(70%),
      primary,
      primary,
      angle: 0deg,
    ))
    #if date != none [
      #text(weight: "medium")[#date]
    ]
  ]
}

#let section-slide(title, with-watermark: true) = {
  slide-title-internal[
    #if with-watermark { watermark }
    #align(center + horizon)[
      #text(size: 2.8em, weight: "bold", fill: primary)[#title]
    ]
  ]
}

#let content-slide(title: none, body) = {
  my-slide-internal(title: title)[
    #align(horizon)[#body]
  ]
}

#let icon-list(icon: "✓", icon-color: primary, ..items) = {
  let item-list = items.pos()
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 1.5em,
    ..item-list
      .map(item => (
        text(fill: icon-color, size: 1.3em)[#icon],
        text(size: 1.1em)[#item],
      ))
      .flatten()
  )
}

#let report(
  title: "GlitchHub Team",
  subtitle: "Diario di bordo",
  htmlId: "Diapositive",
  date: datetime.today().display("[year]-[month]-[day]"),
  authors: (),
  body,
) = {
  set page(paper: "presentation-16-9")
  set text(font: "Lato", size: 20pt)

  cover-slide(
    team-name: title,
    subtitle: subtitle,
    date: date,
  )

  set document(
    title: "Diario di bordo " + date,
    author: "GlitchHub Team",
    keywords: (htmlId, "1.0.0"), //versione di default per script Go
  )
  pagebreak()


  body
}

#let slide-title = slide-title-internal
#let my-slide = my-slide-internal
