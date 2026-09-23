---
noteId: 1789748647479
---

## Définition
Une architecture, c'est un ensemble de composant, avec les opérations suivantes de possible (et en notant A une architecture, A' une autre, c un composant, $(c)_i$ des composants):
- Savoir si $A\subset A'$
- Obtenir $A+c$ et $A-c$
- Obtenir l'architecture de $(c)_{i}$.

Cela afin de regrouper des ressources par architecture, de chercher les composants qui match une certaine architecture, rajouter ou enlever un composant à une architecture, construire une architecture à partir d'une liste de composant.
Je n'ai pas, normalement, le besoin de retrouver les composants qui compose une architecture, mais on verra bien.
J'ai besoin que l'opération d'inclusion soit rapide, celle d'ajout/retrait aussi, mais pas forcément autant, et celle de construction peut être assez lente.

## Implémentation.
- Une liste triée. -> Pas mal en vrai...
- Un set.

