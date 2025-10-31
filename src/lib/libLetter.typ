#let almost-tud-letter(
  from: "",
  to: "",
  date: datetime.today().display(),
  subject: "",
  lang: "it",
  logo: "",
  faculty: (
    name: "Università degli Studi di Padova",
    department: "Dipartimento di Matematica",
    major: "Laurea in Informatica",
    address: (
      (
        what: "Indirizzo",
        value: [Via Trieste, 63\
          35121, Padova],
      ),
    ),
  ),
  body,
) = {
  let body-font = "PT Sans"

  let tags = (
    thedate: "data",
    thecontact: "mittente",
    theemail: "email",
    thesubject: "oggetto",
  )

  set text(
    font: body-font,
    size: 11pt,
  )
  set par(justify: true)

  set page(
    paper: "a4",
    margin: (
      top: 12mm,
      bottom: 2cm,
      left: 3cm,
      right: 3cm,
    ),
    background: {
      // folding mark 1
      place(top + left, dx: 5mm, dy: 105mm, line(
        length: 2.5mm,
        stroke: 0.25pt + black,
      ))
      // folding mark 2
      place(top + left, dx: 5mm, dy: 210mm, line(
        length: 2.5mm,
        stroke: 0.25pt + black,
      ))
    },
    footer: context [
      #set align(right)
      #set text(luma(80), 9pt)
      Page
      #counter(page).display(
        "1 of 1",
        both: true,
      )
    ],
    number-align: center,
  )


  grid(
    columns: (10cm, auto),
    gutter: 8pt,
    align: (top, bottom),
    grid(
      columns: (-3mm, 10cm),
      gutter: 8pt,
      align: (right, left),
      text(size: 9pt, luma(80), raw(tags.thedate)), text(size: 9pt, date),
      text(size: 9pt, luma(80), raw(tags.thecontact)), text(size: 9pt, from.name),
      text(size: 9pt, luma(80), raw(tags.theemail)), text(size: 9pt, link(from.email)),
      text(size: 9pt, luma(80), raw(tags.thesubject)), text(size: 9pt, subject),
    ),
    image(logo, width: 132%),
  )

  v(2cm)

  grid(
    columns: (9.1cm, auto),
    gutter: 20pt,
    to,
    [
      *#faculty.name* \
      #v(0.5mm)
      #faculty.department \
      #v(0.5mm)
      #faculty.major \
      #v(0.5mm)
      \
      #for a in faculty.address {
        [
          #text(size: 9pt, luma(80), a.what) \
          #a.value
        ]
        v(2mm)
      }
    ],
  )

  body
}
