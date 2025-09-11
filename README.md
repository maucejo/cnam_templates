# Gabarit Cnam pour Typst

[![Generic badge](https://img.shields.io/badge/Version-0.1.0-cornflowerblue.svg)]()
[![MIT License](https://img.shields.io/badge/License-MIT-forestgreen)](https://github.com/maucejo/elsearticle/blob/main/LICENSE)
[![User Manual](https://img.shields.io/badge/doc-.pdf-mediumpurple)](https://github.com/maucejo/cnam_templates/blob/main/docs/manual.pdf)

Ce package rassemble une collection de gabarits Typst utilisant la charte graphique conçue par la direction de la Communication du Conservatoire national des arts et métiers.

## Usage

Pour utiliser l'un des gabarits définis dans le paquet `cnam-templates`, vous devez inclure la ligne suivante au début de votre fichier `typ`:

```typ
#import "@preview/cnam-templates:0.1.0": *
```

### Initialisation des gabarits

Après avoir importé `cnam-templates`, vous devez initialiser le gabarit par une règle `show` avec la commande `#cnam-xxx()`, où `xxx` est le nom du gabarit que vous souhaitez utiliser.

À l'heure actuelle, les gabarits disponibles sont les suivants:

* `lettre` pour la rédaction de lettres
* `convention` pour la rédaction de conventions
* `réunion` pour la rédaction de documents de réunion
* `rapport` pour la rédaction de rapports
* `presentation` pour la réalisation de diaporamas de présentation

Pour connaître les options disponibles pour chaque gabarit, vous pouvez consulter le manuel utilisateur [ici](https://github.com/maucejo/cnam_templates/blob/main/docs/manual.pdf).

## Licence
Licence MIT

Copyright (C) 2025 Mathieu AUCEJO (maucejo)