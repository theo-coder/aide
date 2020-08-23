%title: Introduction au markdown (mdp)
%author: theo
%date: 2020-08-17

-> # Sommaire : <-

^
* 1: Sommaire
^
* 2: Nouvelle slide
^
* 3: Titres
^
* 4: Coloration de syntaxe
^
* 5: Citations
^
* 6: Coloration
^
* 7: Listes
^
* 8: Ligne par ligne
^
* 9: Centrer
^
* 10: Liens

---

-> # Nouvelle slide : <-

\---
\*\*\*

---

-> # Titres : <-

# Premier niveau

\# Titre
Titre
\===

# Second niveau

\## Titre
Titre
\---

---

-> # Coloration de syntaxe : <-

# Une ligne

\`main()\`
`main()`

# Multi lignes

(4 espaces au début de la ligne)
(Ou 3 "~"/"\`" au début et à la fin)

\~~~
\function main(){
\   console.log("Salut");
\}
\~~~

```
function main(){
    console.log("Salut");
}
```

---

-> # Citations : <-

\> blabla
\>> blabla

> blabla
>> blabla

---

-> # Coloration : <-

\*rose\*
\_souligné\_
\_\*les deux\*\_

*rose*
_souligné_
_*les deux*_

---

-> # Listes : <-

("\*", "\-", "\#")

\* Item1
 \- Sous-item1
\* Item2

* Item1
 - Sous-item1
* Item2

---

-> # Ligne par ligne : <-

Liste
\^ 
\* Item1
\^
 \- Item2

Liste
^
* Item1
^
 - Item2

---

-> # Centrer : <-

\-\> Texte centré \<\-

-> Texte centré <-

---

-> # Liens : <-

\[Google\]\(https://www.google.com/\)

[Google](https://www.google.com/)
