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
    // facade: "photo",
  ),
)

#title-slide

#content-slide()

= Titre \ de la section

== Sous-titre de la section

#lorem(20)


#focus-slide[
  Merci de votre attention \

  #text(size: 0.8em, weight: "regular")[Remerciements]
]