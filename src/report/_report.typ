#import "../common/_colors.typ": *
#import "../common/_utils.typ": *
#import "_report-utils.typ": *

#let default-config = (
  titre: none,
  surtitre: ("En-tête", "personnalisable"),
  composante: "cnam",
  alignement: "irreg"
)

#let cnam-rapport(
  config-titre: default-config,
  body
) = {
  set heading(numbering: "1.1.")
  show heading.where(level: 1): it => {
    set text(size: 14pt, fill: primary.dark-blue)

    it
    v(0.5em)
  }

  set text(font: "Crimson Pro", size: 12pt, lang: "fr", ligatures: false)

  set par(justify: true)

  title-page(config-titre)

  body
}