#import "@preview/touying:0.5.2": *
#import "_slides.typ": *

#let cnam-theme(
  color-set: "red",
  ..args,
  body
) = {
  show: touying-slides.with(
    config-info(
      title: none,
      subtitle: none,
      author: none,
      over-title: none,
      logo: image("resources/assets/lecnam.png"),
      title-logo-height: 32pt,
      facade: "image"
    ),

    config-page(
      paper: "presentation-16-9",
      header-ascent: 30%,
      footer-descent: 30%,
      margin: (top: 3em, bottom: 1.5em, x: 2em),
    ),

    config-common(
      slide-fn: slide,
      new-section-slide-fn: new-section-slide,
    ),

    config-methods(
      init: (self: none, body) => {
        let colors = color-theme.at(color-set)
        set text(fill: colors.blue, font: "Raleway", size: 20pt, lang: "fr", ligatures: false)
        set par(justify: true)

        body
      }
    ),

    config-store(
      align: align,
      colors: color-theme.at(color-set),
      color-theme-name: color-set,
    ),
    ..args,
  )

  body
}