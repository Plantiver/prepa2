
## Définition
Ce sont des éléments qui on différentes particularité:
- Identifiées de manière unique (voir détail)
- Peuvent ou non, contenir un structure
- Sont de petite taille, non variable

Le plus important, c'est quand je parle d'unicité. Je voudrais pouvoir désigner de manière certaine un elt, m'assurant que toutes les machines qui compileront ce code, le considèrerons de la même manière. Il ne faut pas qu'il puisse exister deux elt avec le même code et des représentation mémoire différente, sinon, l'Os ne saurait comment les gérer. Mais il faut que n'importe qui puissent en déclarer de nouveau, pour son usage personnel, juste que l'on ne puisse pas en créer 2 avec la même signature mais des structures différentes, et que l'on puisse facilement signaler que deux structures sont les mêmes pour les utiliser facilement.
## Implémentation
Il faut que l'os garde trace de chacun des éléments, et fasse fail toute tentative de rajouter un elt qui existe déjà.
Par contre, la représentation en mémoire de ces component...
Il me faut forcément un système de hashage basé sur les champs de la structure si elle existe, et de quelque chose utilisé par l'humain pour reconnaitre ce component.
Il faut juste que je balance bien la longueur du hash obtenu au final, pour qu'elle soit ni trop longue (lourd en mémoire) ni trop courte.
Je pense que je vais représenter le tout sur 8 bytes, ça m'a l'air pas mal comme nombre, il faut juste que je trouve un moyen de représenter le tout.