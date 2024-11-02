#import "../common/_colors.typ": *
#import "../common/_utils.typ": *

#let cnam-reunion(
  composante: "cnam",
  type: "cr",
  titre: none,
  redacteur: none,
  lieu: none,
  date: none,
  toc: false,
  body
) = {
  let logo-height = 4.08cm
  let decx = -0.073cm
  let decy = 0.085cm
  if composante != "cnam" {
    logo-height = 10cm
    decx = 0cm
    decy = 0cm
  }

  set heading(numbering: "1.1.")
  show heading.where(level: 1): it => {
    set text(size: 14pt, fill: primary.dark-blue)

    it
    v(0.5em)
  }

  set text(font: "Crimson Pro", size: 12pt, lang: "fr", ligatures: false)

  set par(justify: true)

  let footer = {
    grid(
      columns: (1fr, 1fr),
      align: left,
      [#context counter(page).at(here()).first()], [#place(right + horizon, dx: -1.25cm, over-title(title: ("Conservatoire national", "des arts et métiers"), size: 12pt, color: primary.dark-blue))]
    )
  }
  set page(
    footer: footer,
    margin: (top: 2cm, bottom: 2cm, left: 1.5cm, right: 1.5cm)
  )

  let surtitre = ("Compte-rendu", "de réunion")
  if type == "pv" {
    surtitre = ("Procès", "verbal")
  } else if type == "odj" {
    surtitre = ("Ordre", "du jour")
  }

  let en-tete = {
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [#over-title(title: surtitre, size: 20pt, color: primary.dark-blue)], [#place(right, dx: decx, dy: decy, image("../resources/logo/" + composante + ".png", width: logo-height))]
    )
  }

  place(top, dy: -1.5cm, en-tete)

  v(2cm)

  if titre != none {
    set align(center)
    set text(size: 18pt, fill: primary.dark-blue)

    strong(titre)
  }

  if date != none {
    set align(center)

    emph(date)
  }

  if lieu != none {
    set align(center)

    strong(lieu)
  }

  {
    set align(center)

    v(0.5em)
    line(length: 50%, stroke: 0.5pt + primary.dark-blue)
    v(0.5em)
  }

  if toc {
    set align(center)
    set par(leading: 1em)
    outline(title: "Ordre du jour", depth: 2, indent: true)
    pagebreak()
  }

  if type == "odj" {
    set enum(spacing: 1.25em)
    let content = box(width: 85%)[
      #body
    ]

    move(dx: 7.5%, content)
  } else {
    body
  }

  if redacteur != none {
    set align(right)
    v(2em)
    if type == "pv" {
      [_Procès-verbal rédigé par :_]
    } else {
      [_Compte-rendu rédigé par :_]
    }
    linebreak()
    redacteur
  }
}