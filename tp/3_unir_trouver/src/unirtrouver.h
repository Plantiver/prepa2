#ifndef UNIONFIND_H
#define UNIONFIND_H

struct element
{
  int valeur;
  struct element *parent;
  int rang; // Borne supérieure sur la hauteur du sous-arbre
            // dont l'élément est la racine
} typedef element_t;

typedef element_t *partition;

void init(element_t *element, int valeur);

partition init_partition(unsigned nb_elements);

void free_partition(partition elements);

void lier(element_t *premier, element_t *second);

element_t *trouver(element_t *element);

void unir(element_t *first, element_t *second);

void print_partition(partition partition, unsigned int nb_elements);

#endif // UNIONFIND_H