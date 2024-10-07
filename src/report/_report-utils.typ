#import "../common/_colors.typ": *
#import "../common/_utils.typ": *

#let title-page(config-titre) = {

  let logo-height = 4.08cm
  let decx = 1.5cm
  let decy = -1.45cm
  if config-titre.composante != "cnam" {
    logo-height = 10cm
    decx = 1.5cm
    decy = -2cm
  }

  let box-width = 125%
  let box-height = 115%
  if config-titre.alignement == "center" {
    box-width = 107%
    box-height = 95%
    decx = 0.8cm
  }

  let tbox = box(fill: primary.light-blue.lighten(60%), width: box-width, height: box-height)[
    #set text(fill: primary.dark-blue)

    #config-titre.titre
  ]

  place(dx: -0.5cm, tbox)

  grid(
    columns: (1fr, 1fr),
    align: (left, right),
    [#place(top+left, dx: -0.85cm, dy: -1.45cm, over-title(title: config-titre.surtitre, size: 20pt, color: primary.dark-blue))], [#place(right, dx: decx, dy: decy, image("../resources/logo/" + config-titre.composante + ".png", width: logo-height))]
  )
}