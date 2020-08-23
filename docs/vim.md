%title: Introduction à VIM
%author: theo
%date: 2020-08-18

-> # Sommaire : <-

^
* 1: Sommaire
^
* 2: Ligne de commandes
^
* 3: Insert mode
^
* 4: Normal mode
^
* 5: Visual mode
^
* 6: Copier Coller

---

-> # Ligne de commandes : <-

Pour entrer dans le mode ligne de commandes :

`:`

`:q` -> Fermer la Fenêtre
`:qa` -> FErmer toute les fenêtres
`:w` -> Enregistrer
`:help {cmd}` -> Avoir de l'aide sur une commande

---

-> # Insert mode : <-

Pour rentrer en mode insertion :

`i`

Pour créer une ligne et entrer en mode insertion :

`o`

Pour en sortir :

`Esc`

---

-> # Normal mode : <-

Depuis n'importe quel autre mode :

`Esc` -> Quiiter

Possibilité de répéter avec un nombre devant

`x` -> Supprimer un caractère
`u` -> Undo
`^r` -> Redo
`i` -> Passer en Insert mode / Si précédé de `c` ou `d`, signifie inside (ci( signifie change dans les parenthèses)
`o` -> Créer une ligne et passer en Insert mode
`O` -> Créer une ligne au dessus en passer en Insert mode
`h,j,k,l` -> (h) A gauche (j) En bas (k) En haut (l) A droite
`/{mot}` -> Rechercher un {mot}
`w` -> Mot suivant
`.` -> Répète le précédent changement
`b` -> Mot précédent
`e` -> Fin du mot
`0` -> Début de la ligne
`$` -> Fin de la ligne
`gg` -> Tout en haut
`G` -> Tout en bas
`l` -> En bas de l'écran
`m` -> Au millieu de l'écran
`h` -> En haut de l'écran
`r{lettre}` -> Remplacer par une {lettre}
`^` -> Va sur le premier caractère non vide de la ligne
`^d` -> Descend d'une page
`^u` -> Monte d'une page
`d{déplacement}` -> Supprimer
`dd` -> Supprimer la ligne
`f{lettre}` -> Va à la \{lettre\} suivante
`F{lettre}` -> Va à la \{lettre\} précédente

---

-> # Visual mode : <-

Pour rentrer en mode visuel :

`v`

Pour rentrer en mode visuel par ligne :

`V`

Pour rentre en mode visuel par bloc :

`^v`

---

-> # Copier Coller : <-

`yw` -> Copier le mot
`yy` -> Copier la ligne
`p` -> Coller
