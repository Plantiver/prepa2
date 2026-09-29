Bien, ici, je vais développer sur les process, ces ensembles de systèmes qui fonctionnent de manière synchronisée.

En soit, tout système quand il demande une ressource, pourrait la demander au système tout entier, mais cela risquerait d'être assez lourd de chercher toutes ces ressources pour qu'assez souvent, il n'y en ait qu'une petite partie qui ne soit vraiment utilisée. Ainsi, on permet au système de se restreindre à une certaine échelle, locale, pour n'accéder qu'aux ressources créé par les autres systèmes de son process.
Un système partagera la majorité de ses permissions avec son process.






















