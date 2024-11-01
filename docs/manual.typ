#import "@preview/subpar:0.1.1"
#import "./manual-template.typ": *
#import "../src/cnam-templates.typ": *

#show: manual-template.with(
	title: "Collection de gabarits Cnam",
	abstract : [Ce package rassemble une collection de gabarits Typst utilisant la charte graphique conçue par la direction de la Communication du Conservatoire national des arts et métiers.],
	version: "Template 0.1.0",
	typst-version: "Typst 0.12.0"
)

= Qu'est-ce que Typst ?

#typst est un nouveau langage de balise open source é crit en Rust et développé à partir de 2019 par deux étudiants allemands, Laurenz Mädje et Martin Haug, dans le cadre de leur projet de master @Mad22 @Hau22. La version 0.1.0 a été publiée sur GitHub le 04 avril 2023#footnote[Adresse du dépôt GitHub : #link("https://github.com/typst/typst", text("https://github.com/typst/typst", fill: typst-color))].

#typst se présente comme un successeur de #LaTeX plus moderne, rapide et simple d'utilisation. Parmi ses avantages, on peut citer :

- la compilation incrémentale ;
- des messages d'erreur clair et compréhensible ;
- un langage de programmation Turing-complet ;
- une système de style cohérent permettant de configurer aisément tous les aspects de son document (police, pagination, marges, #sym.dots) ;
- une communauté active et sympathique (serveur Discord pour le support, annonce de nouveaux paquets) ;
- un système de paquets simple d'utilisation (pour rechercher ou voir la liste des paquets, n'hésitez pas à visiter #link("https://typst.app/universe", text("Typst: Universe", fill: typst-color))) ;
- des extensions pour VS Code existent, comme `Typst LSP` ou `Tinymist`, pour avoir des fonctionnalités similaires à `LaTeX Workshop`.

#v(0.5em)

Pour finir, la documentation de #typst est suffisamment bien écrite et détaillée pour permettre de créer rapidement ses propres documents. Il faut compter moins d'une heure pour prendre en main la syntaxe (sans mentir #emoji.face.beam). Pour accéder à la documentation, suivez ce #link("https://typst.app/docs", text("lien", fill: typst-color)). Pour faciliter la transition de #LaTeX vers #typst, un guide est disponible #link("https://typst.app/docs/guides/guide-for-latex-users/", text("ici", fill: typst-color)).

#typst peut être utilisé comme #LaTeX de deux manières différentes :

+ En ligne, via l'application web #link("https://typst.app", text("Typst", fill: typst-color)). Il suffit de créer un compte pour commencer à rédiger ses documents. L'application web fonctionne de façon similaire à Overleaf. L'offre gratuite est généreuse et permet de :
   - Créer et éditer des projets ;
	 - Partager et collaborer sur des projets ;
	 - Convertir des fichiers #LaTeX ou Word ;
	 - 200 Mb de stockage et jusqu'à 100 fichiers par projet.

+ En local, en installant le compilateur #typst. Pour cela, il faut suivre les instructions contenues dans le fichier README.md du dépôt #link("https://github.com/typst/typst", text("Github", fill: typst-color)) officiel. Une fois le compilateur installé, il est possible de compiler ses fichiers en utilisant la commande `typst compile` (compilation unitaire) ou `typst watch` (compilation incrémentale) dans le terminal.

  Une solution complémentaire consiste à utiliser un éditeur de texte comme VS Code avec l'extension `Tinymist` pour bénéficier de la coloration syntaxique, de l'autocomplétion et de la prévisualisation (munie d'une fonctionnalité similaire à `synctex` en #LaTeX) et export au format PDF.

= Installation des gabarits

La collection de gabarits Cnam est disponible sur le dépôt #link("https://github.com/maucejo/cnam_templates", text("Github", fill: typst-color)) de l'auteur. Vous pouvez alors soit cloner le dépôt, soit télécharger le fichier zip de la dernière _Release_ contenant les gabarits. Pour utiliser les gabarits, deux possibilités s'offrent à vous :

+ Copier l'ensemble du dossier `cnam_templates` dans le dossier de votre projet #typst. Vous pouvez alors inclure les gabarits dans votre document en utilisant par exemple la commande :
	#codesnippet[
	```typ
	#import "./src/cnam_templates.typ": *
	```
	]

	#ibox[
		#set text(size: 11pt)
		L'adresse du fichier à utiliser dans votre fichier principal `nom_de_mon_document.typ` dépend de l'emplacement du dossier `cnam-templates` dans votre projet.

		Il faut toutefois noter que le dossier contenant les gabarits doit être situé dans le même répertoire que votre fichier principal.
	]

+ Installer localement le dossier `cnam-templates` dans un dossier accessible par le compilateur #typst. Pour cela, il suffit de suivre les instructions de la documentation officielle #link("https://github.com/typst/packages", text("ici", fill: typst-color)). Pour cela, il faut cependant que le nom du dossier corresponde au numéro de version du paquet et que celui-ci soit contenu dans le dossier `cnam-templates` (actuellement `cnam-templates/0.1.0`).

	#codesnippet[
		```typ
		// Si installation dans le dossier `/typst/packages/local`
		#import "@local/cnam_templates:0.1.0": *

		// Si installation dans le dossier /typst/packages/preview`
		#import "@preview/cnam_templates:0.1.0": *
		```
	]

	Ce process peut être automatisé en utilisant le script `just` contenu dans le fichier `justfile`. Pour cela, il suffit de lancer dans un terminal ouvert dans le dossier `cnam-templates` contenant les gabarits. . Une fois `just` installé, il suffit de lancer la commande :

	#codesnippet[
		```bash
		# Pour installer les gabarits dans le dossier `/typst/packages/local`
		just install

		# Pour installer les gabarits dans le dossier `/typst/packages/preview`
		just install-preview
		```
	]

	#ibox[Pour installer `just`, il faut suivre les instructions figurant dans le fichier README.md du dépôt #link("https://github.com/casey/just", text("Github", fill: typst-color)) officiel.]

= Utilisation des gabarits

Le dossier `cnam_templates` contient actuellement plusieurs gabarits différents, pour rédiger :

- des lettres ;
- des conventions ;
- des comptes-rendus de réunion ;
- des rapports ;
- des diaporamas.

== Lettres <s:lettres>

Après avoir importé le modèle, celui doit être initialisé en appliquant une règle d'affichage (`show` rule) avec la commande #cmd("cnam-lettre") en passant les options nécessaires avec l'instruction `with` dans votre fichier principal `typ` :

#codesnippet(
	```typ
	#show cnam-lettre.with(
	  ...
	)
	```
)

Le modèle #cmd("cnam-lettre") possède un certain nombre de paramètres permettant de personnaliser le document. Voici la liste des paramètres disponibles :

#pagebreak()
#command("cnam-lettre", ..args(
composante: "cnam",
  type: none,
  surtitre: none,
  destinataire: none,
  expediteur: none,
  objet: none,
  lieu: none,
  date: none,
  signature: none,
[body]))[
	#argument("composante", default: "cnam", types: "string")[Nom de la composante Cnam émettrice de la lettre. Ce paramètre permet de définir le logo qui sera affiché dans l'en-tête de la lettre.

	Pour connaître l'ensemble des valeurs possibles, se réferrer à la section @s:common-param.
	]
]

#v(1em)
== Conventions

== Comptes-rendus

== Rapports

== Diaporamas

== Paramètres communs aux gabarits <s:common-param>

Cette section présente les paramètres communs à l'ensemble des gabarits de la collection. Ces paramètres permettent de personnaliser les gabarits en fonction des besoins de l'utilisateur.

=== Paramètre `composante`

La liste des valeurs possibles du paramètre `composante` sont :

*Composantes globales*

	- `"cnam"` : Établissement public
	- `"eicnam"` : École d'ingénieurs du Cnam

#v(1em)
*Centres Cnam Régionaux*

	- `"ccr-aura"` : Auvergne-Rhône-Alpes
	- `"ccr-bfc"` : Bourgogne-Franche-Comté
	- `"ccr-bretagne"` : Bretagne
	- `"ccr-cvl"` : Centre-Val de Loire
	- `"ccr-ge"` : Grand-Est
	- `"ccr-guadeloupe"` : Guadeloupe
	- `"ccr-hdf"` : Hauts-de-France
	- `"ccr-idf"` : Île-de-France
	- `"ccr-martinique"` : Martinique
	- `"ccr-na"` : Nouvelle-Aquitaine
	- `"ccr-normandie"` : Normandie
	- `"ccr-occitanie"` : Occitanie
	- `"ccr-paca"` : Provence-Alpes-Côte d'Azur
	- `"ccr-pdl"` : Pays de la Loire
	- `"ccr-polynesie"` : Polynésie
	- `"ccr-reunion"` : Réunion
	- `"cep"` : Centre Cnam Paris

#v(1em)
*Centre Cnam à l'étranger*

	- `"chine"`
	- `"liban"`
	- `"madagascar"`
	- `"maroc"`

#v(1em)
*Laboratoires et instituts de recherche*

	- `"cedric"`
	- `"ceet"`
	- `"crtd"`
	- `"dicen"`
	- `"dynfluid"`
	- `"eren"`
	- `"esdr3c"`
	- `"esycom"`
	- `"foap"`
	- `"gbcm"`
	- `"gef"`
	- `"ht2s"`
	- `"iat"`
	- `"lafset"`
	- `"lcm"`
	- `"lifse"`
	- `"lirsa"`
	- `"lise"`
	- `"lmssc"`
	- `"lussac"`
	- `"m2n"`
	- `"metabiot"`
	- `"pimm"`
	- `"satie"`
	- `"sayfood"`

=== Couleurs

Les couleurs principales et secondaires de la charte graphique sont accessibles via les différents gabarits.

*Couleurs principales*

Les couleurs principales sont accessibles via la commande `primary.id_couleur`. De même, les différentes nuanances définies dans la charte graphique peuvent être utilisées via la commande `primary.id_couleur.lighten(value)` Les différentes valeurs des paramètres `id_couleur` et `value` sont :

#let pcolor(color, alpha: 0%, name: none) = grid.cell(fill: color.lighten(alpha))[#text(size: 10pt, fill: white)[*#name*]]

#align(center)[
	#grid(
		columns: 7,
		align: center + horizon,
		inset: 0.5em,
		column-gutter: 0.75em,
		[], [Rouge Cnam], [Gris Cnam], [Bleu foncé], [Bleu médium], [Bleu clair], [Lime],
		[], pcolor(primary.red, name: "red"), pcolor(primary.gray, name: "gray"), pcolor(primary.dark-blue, name: "dark-blue"), pcolor(primary.medium-blue, name: "medium-blue"), pcolor(primary.light-blue, name: "light-blue"), pcolor(primary.lime, name: "lime"),
		[20%], pcolor(primary.red, alpha: 20%), pcolor(primary.gray, alpha: 20%), pcolor(primary.dark-blue, alpha: 20%), pcolor(primary.medium-blue, alpha: 20%), pcolor(primary.light-blue, alpha: 20%), pcolor(primary.lime, alpha: 20%),
		[40%], pcolor(primary.red, alpha: 40%), pcolor(primary.gray, alpha: 40%), pcolor(primary.dark-blue, alpha: 40%), pcolor(primary.medium-blue, alpha: 40%), pcolor(primary.light-blue, alpha: 40%), pcolor(primary.lime, alpha: 40%),
		[60%], pcolor(primary.red, alpha: 60%), pcolor(primary.gray, alpha: 60%), pcolor(primary.dark-blue, alpha: 60%), pcolor(primary.medium-blue, alpha: 60%), pcolor(primary.light-blue, alpha: 60%), pcolor(primary.lime, alpha: 60%),
		[80%], pcolor(primary.red, alpha: 80%), pcolor(primary.gray, alpha: 80%), pcolor(primary.dark-blue, alpha: 80%), pcolor(primary.medium-blue, alpha: 80%), pcolor(primary.light-blue, alpha: 80%), pcolor(primary.lime, alpha: 80%)
	)
]

*Couleurs secondaires*

Les couleurs principales sont accessibles via la commande `secondary.id_couleur`. Les différentes valeurs des paramètres `id_couleur` disponibles sont :

#let scolor(color, name, body) = {
	grid(
		columns : (2.1cm, auto),
		inset: 0.75em,
		align: (center + horizon, left),
		grid.cell(fill: color)[#text(size: 10pt, fill: white)[*#name*]], [#body]
	)
}

#let blank = text(fill:white)[blank]

#align(center)[
	#grid(
		columns: 2,
		align: left + horizon,
		inset: 0.5em,
		scolor(secondary.btp, "btp", [Bâtiment \ Travaux publics \ #blank]), scolor(secondary.bioagro, "bioagro", [Biotechnologies \ Bioinformatique \ Agroalimentaire]),
		scolor(secondary.eea, "eea", [Électronique \ Électrotechnique \ Automatique]),
		scolor(secondary.energie, "energie", [Énergie \ Environnement \ Développement durable]),
		scolor(secondary.hygiene, "hygiene", [Hygiène & Sécurité \ Gestion des risques \ #blank]), scolor(secondary.chimie, "chimie", [Industrie & Analyse chimique \ Cosmétique & Pharma \ #blank]),
		scolor(secondary.info, "info", [Informatique,  Télécoms \ Médias numériques \ Cybersécurité]), scolor(secondary.mater, "mater", [Matériaux \ #blank \ #blank]),
		scolor(secondary.meca, "meca", [Mécanique \ Acoustique \ Aérodynamique]), scolor(secondary.metro, "metro", [Mesure \ Analyse \ Contrôle qualité]),
		scolor(secondary.maths, "maths", [Modélisation \ Ingénierie mathématiques \ Statistiques]), scolor(secondary.ergo, "ergo", [Accompagnement pro \ Intervention sociale \ Ergonomie]),
		scolor(secondary.abf, "abf", [Assurance, Banque \ Finance \ #blank]), scolor(secondary.cmv, "cmv", [Commerce, Marketing \ Vente \ #blank]),
		scolor(secondary.cdcm, "cdcm", [Communication \ Documentation \ Culture, Médiation]), scolor(secondary.cca, "cca", [Comptabilité\ Contrôle \  Audit]),
		scolor(secondary.dcd, "dcd", [Droit \ Criminologie \ Défense]), scolor(secondary.epidemio, "epidemio", [Épidémiologie \ Addictologie \ Santé publique]),
		scolor(secondary.fco, "fco", [Formation continue \ Orientation \ Insertion professionnelle]), scolor(secondary.gpc, "gpc", [Gestion publique \ et des collectivités \ #blank]),
		scolor(secondary.immo, "immo", [Immobilier \ #blank \ #blank]), scolor(secondary.innov, "innov", [Innovation \ Développement \ Prospective, Entrepreneuriat]),
		scolor(secondary.strategie, "strategie", [Management, Stratégie \ Organisation d'entreprises, Gestion de projet]), scolor(secondary.mg4s, "mg4s", [Management et Gestion \ des secteurs de santé, \ sanitaires et sociaux]),
		scolor(secondary.psycho, "psycho", [Psychologie du travail \ Psychanalyse \ #blank]), scolor(secondary.socio, "socio", [Sociologie du travail \ #blank \ #blank]),
		scolor(secondary.tourisme, "tourisme", [Tourisme \ #blank \ #blank]), scolor(secondary.trans, "trans", [Transport & Logistique \ #blank \ #blank]),
		scolor(secondary.ril, "ril", [Relations internationales \ UE & Langues \ #blank])
	)
]

= Comment contribuer ?

Si vous souhaitez contribuer à l'amélioration des gabarits ou solliciter la création de nouveaux gabarits, vous pouvez soit :

- ouvrir une _issue_ sur le dépôt #link("https://github.com/maucejo/cnam_templates", text("Github", fill: typst-color)) du projet ;

- proposer une _pull request_ sur le dépôt, si vous souhaitez ajouter des fonctionnalités, corriger des erreurs ou proposer de nouveaux gabarits ;

- contacter l'auteur par mail à l'adresse suivante : #link("mailto:mathieu.aucejo@lecnam.net", text("mathieu.aucejo@lecnam.net", fill: typst-color)).

#bibliography("manual-biblio.yml", style: "american-institute-of-aeronautics-and-astronautics")

