#import "../src/cnam-templates.typ": *

#show: cnam-reunion.with(
  // composante: "lmssc",
  type: "pv",
  titre: [Conseil de perfectionnement de la LP CAPPI],
  date: [01 janvier 2025],
  lieu: "Salle des conseils",
  redacteur: "Jean Dupont",
  toc: true
)

= Point 1

== Sous-point 1

#figure(
  image("../src/resources/assets/facade-image-rouge.svg"),
  caption: "Légende de la figure",
)

#lorem(50)

== Sous-point 2

#lorem(50)

= Point 2

#lorem(50)

// #show: cnam-reunion.with(
//   // composante: "lmssc",
//   type: "odj",
//   titre: [Conseil de perfectionnement de la LP CAPPI],
//   date: [01 janvier 2025],
// )

// + #lorem(10)

// + #lorem(10)
