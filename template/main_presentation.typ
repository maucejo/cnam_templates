#import "../src/cnam-templates.typ": *

#show: cnam-presentation.with(
  composante: "lmssc",
  // composante: "cnam",
  // color-set: "medium-blue",
  // color-set: "light-blue",
  config-info(
    title: [Titre de la présentation],
    subtitle: [Sous-titre de la présentation],
    over-title: ("Diaporama","de présentation"),
    // facade: "image",
    facade: "photo",
  ),
)

#title-slide

= Titre de la section

== Sous-titre de la section

#lorem(20)


#focus-slide[
  #text(size: 2em, weight: "semibold")[Merci de votre attention]
  #linebreak()

  Remerciements
]