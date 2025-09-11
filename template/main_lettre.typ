#import "../src/cnam-templates.typ": *

#show: cnam-lettre.with(
  type: "lettre-officielle",
  // type: "courrier-interne",
  // type: "note-service",
  // type: "note-cadrage",
  destinataire: (
    nom: "Jean Dupont",
    adresse: [1 rue de la Paix \ 75000 Paris],
  ),
  expediteur: (
    nom: "Max Imum",
    adresse: "1 rue de la Paix",
    telephone: "01 02 03 04 05",
    mail: "max.imum@lecnam.net"
  ),
  objet: "Objet de la lettre",
  lieu: "Paris",
  date: "01 janvier 2025",
)

#lorem(150)