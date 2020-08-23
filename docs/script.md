%title: Introduction au scripting shell
%author: theo
%date: 2020-08-18

-> # Sommaire : <-

^
* 1: Sommaire
^
* 2: Variables
^
* 3: Fonctions
^
* 4: Opérateurs logiques
^
* 5: STDOUT et STDERR
^
* 6: IF
^
* 7: Redondance
^
* 8: shellcheck
^
* 9: ripgrep

---

-> # Variables : <-

*Attention aux espaces !*

`foo=bar`
`echo $foo`

Passer une commande en variable :

`foo=$(pwd)`

_\$\__ -> dernier argument
_\$\?_ -> état de la dernière commande (si erreur ou aucune résultat:1)
_\$\0_ -> nom du script appelé
_\$\$_ -> pid
_\$\*_ -> Tous les arguments sous la forme d'un argument
_\$\@_ -> Tous les arguments, un argument par paramètre
_\$\#_ -> Nombre de paramètres
_\$\!_ -> Le pid du dernier processus lancé en arrière plan

---

-> # Fonctions : <-

Fichier _mcd.sh_ :

```
mcd() {
   mkdir -p "$1"
   cd "$1"
}
```

Pour que la fonction soit accessible n'importe ou :

`source mcd.sh`

---

-> # Opérateurs logiques : <-

\&\& : si le premier est juste, lance le second
\|\| : si le premier est faux, lance le second

`false && echo "ne va jamais s'afficher"`
`true && echo "va s'afficher"`
`false || echo "va s'afficher"`
`true || echo "ne va jamais s'afficher"`

Pour exécuter dans les deux cas : `;`

`true ; echo "va s'afficher"`
`false ; echo "va s'afficher"`

---

-> # STDOUT et STDERR : <-

\> {file} -> STDOUT
2\> {file} -> STDERR

---


-> # IF : <-

```
if [[ "$1" -e "0" ]]; then
   echo "le premier argument est égal à 0"
fi
```

```
if [[ "$1" -ne "0" ]]; then
   echo "le premier argument n'est pas égal à 0"
fi
```

-> # Redondance : <-

`mkdir {foo,bar}` <- va créer les dossiers foo et bar
`touch {foo,bar}/{a..j}` <- va créer les fichiers de a à j dans foo et bar 

---

-> # shellcheck : <-

Vérifie les erreurs dans un fichier shell

`apt-get install shellcheck`
`shellcheck test.sh`

---

-> # ripgrep : <-

Effectue un grep plus poussé et esthétique :

`apt-get install ripgrep`
`rg "string" file`

Pour ajouter le contexte autour des lignes (sur 5 lignes) :

`rg "string" -C5 file`
