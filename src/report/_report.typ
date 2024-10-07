#import "../common/_colors.typ": *
#import "../common/_utils.typ": *
#import "_report-utils.typ": *

#let cnam-rapport(
  composante: "cnam",
  type: "cr",
  titre: none,
  surtitre: none,
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

  title-page(titre)

  body
}