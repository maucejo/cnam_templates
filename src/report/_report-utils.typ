#import "../common/_colors.typ": *

#let title-page(title, surtitre: none) = {

  let tbox = box(fill: primary.light-blue.lighten(60%), width: 125%, height: 115%)[
    #set text(size: 18pt, fill: primary.dark-blue)

    #title
  ]

  place(dx: -0.5cm, tbox)
}