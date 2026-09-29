
Heyyy, Je vais faire plein de trucs, mais ça va juste être un peu compliqué.

Donc, construire un OS...

Donc...
Cet Os fonctionne avec des systèmes, créé à chaque appel, capturant des ressources pour leur durée de vie, et les relachant quand ils disparaissent.
Chaque system prend en paramètre un event et des ressources, et travaille dessus de manière honnète.
Ainsi, j'ai besoin d'encoder de manière unique chaque event et ressources, pour pouvoir vérifier rapidement si un système est executable, et donc l'ordonnancer.

Pour traiter ces system de manière spéciale, il faut qu'ils soient placés à la compilation dans un segment spéciale, que mon os ira lire à l'exécution. Ainsi, quand un fichier est executé, je  parse l'exécutable elf, je récupère les différents system de ce fichier, que je rajoute à ma file d'exécution. Je traite les autres fonctions dedans comme un fichier source.

Il faut que je construise d'avantage les différentes [[Tipe - Architecture]].
Il faut que je trouve un moyen de représenter les [[Tipe - Event et Component]].


Au niveau des spécifications:
- un Os en x86-64, parce que sinon ça risque d'être un peu compliqué (très peu de doc)



About the [[Tipe - Kernel]]
[[Tipe - Présentation]]


Okay, apparemment c'est un peu trop brouillon et pas assez concret. J'ai besoin de trouver de bonne métrique. Ensuite, je dois faire des [[Tipe - Benchmark]].

Je vais simplifier le tout, et arrêter de parler des ecs à chaque fois, parce que c'est de moins en moins le cœur du sujet. 
Il faut que je commence à implémenter, pour avoir quelque chose de concret sur quoi m'appuyer, une démo qui tourne sur qemu serait pas mal.

Nouvelle séance, celle du 29/09.
J'ai pu un peu plus parler de mon Tipe avec Mme Mirliaz, et il semble que ce soit jouable, mais il faut que je trouve de bon exemple sur lesquelles faire fonctionner mes test. J'aurais besoin de trouver un logiciel comparatif entre une machine "classique", et la mienne. Pour cela, je pense notamment à un programme echo, un programme donut, et l'idéal serait un compilateur, mais cela signifie le porter, ce qui est, ici, plutôt compliqué. Le fait que je sois obligée de tout recoder moi même, sans pouvoir me baser sur du code déjà fait, est assez embêtant, mais j'imagine que c'est le prix à payer quand on crée un architecture de zéro. Si j'arrive à faire une ui, cela pourra être vraiment génial, mais c'est beaucoup de boulot. De toute façons, j'ai encore beaucoup à définir pour les protocoles de communication entre système/process.

Parmi les trucs ambitieux, mais qui feront grandement avancer le projet, il y a:
- Finir la lib pour les composants et les events
- Les lires et les registers sur le kernel
- lancer un système sur le kernel
- déchiffrer un système depuis un fichier elf
- faire un terminal
- faire une fenêtre qui tourne
- faire une ui

[[Tipe - Process]]
