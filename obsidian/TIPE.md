---
noteId: 1789748649737
---

Heyyy, Je vais faire plein de trucs, mais ça va juste être un peu compliqué.

Donc, construire un OS...

Donc...
Cet Os fonctionne avec des systèmes, créé à chaque appel, capturant des ressources pour leur durée de vie, et les relachant quand ils disparaissent.
Chaque system prend en paramètre un event et des ressources, et travaille dessus de manière honnète.
Ainsi, j'ai besoin d'encoder de manière unique chaque event et ressources, pour pouvoir vérifier rapidement si un système est executable, et donc l'ordonnancer.

Pour traiter ces system de manière spéciale, il faut qu'ils soient placés à la compilation dans un segment spéciale, que mon os ira lire à l'exécution. Ainsi, quand un fichier est executé, je  parse l'exécutable elf, je récupère les différents system de ce fichier, que je rajoute à ma file d'exécution. Je traite les autres fonctions dedans comme un fichier source.

Il faut que je construise d'avantage les différentes [[architecture]].
Il faut que je trouve un moyen de représenter les [[Event et Component]].


Au niveau des spécifications:
- un Os en x86-64, parce que sinon ça risque d'être un peu compliqué (très peu de doc)



About the [[Kernel]]
[[Présentation TIPE]]


Okay, apparemment c'est un peu trop brouillon et pas assez concret. J'ai besoin de trouver de bonne métrique. Ensuite, je dois faire des [[benchmark]].

Je vais simplifier le tout, et arrêter de parler des ecs à chaque fois, parce que c'est de moins en moins le cœur du sujet. 
Il faut que je commence à implémenter, pour avoir quelque chose de concret sur quoi m'appuyer, une démo qui tourne sur qemu serait pas mal.