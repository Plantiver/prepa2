
I need to have it be compiled in a very specific way.
I want a first part, that, on boot, would check if it had been compiled for this exact version, and if it hasn't, then recompile itself into the right version and reboot. (This is really hard, cause how do I compile rust and c code when I don't even have a working kernel).

Then, once it performed its check, it just launch the optimized kernel, which would perform everything necessary.

This kernel has to:
- Manage memory
- Load other cpu
- ~~Provide a Global Allocator~~
- Mapping devices to memory
- Managing Ecs architectures
- Managing systems - [[Tipe - Ordonnanceur]]
- Managing Events - Distribute them over systems that react to them.
- Creates its first components for interacting with software


In a second time, here's a list of things that would be really helpful to do:
- Write a screen driver, and be able to print logs
- Read another disk, and write on it
- Parsing elf files, to be able to create my own systems, easily
- 
- GUI

Pour l'instant, pour ma démo rapide, je vais faire les choses suivantes:
- Un repo github pour héberger le projet
- copier un tuto Limine avec une ui
- réécrire l'ordonnanceur (partie dure)
- implémenter ce dont j'ai besoin dans le compilateur
- faire un test de simulation physique
- faire une gui

Plus de détails sur réécrire l'ordonnanceur:
- Il me faut créer une librairie qui définissent ces différentes choses
- Il me faut une place en mémoire pour toutes les structures
- Ensuite, j'ai juste à m'assurer que tout les cœurs n'y accèdent pas en même temps
- Et pouf, y'a plus qu'à implémenter... (pas facile quand même)
Objectif: Faire un truc fonctionnel, pas efficace.