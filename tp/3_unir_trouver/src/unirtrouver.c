#include "unirtrouver.h"

#include <stdio.h>
#include <stdlib.h>

void init(element_t *element, int valeur)
{
  element->valeur = valeur;
  element->parent = element;
  element->rang = 0;
}

partition init_partition(unsigned int nb_elements)
{
  partition elements = malloc(nb_elements * sizeof(element_t));
  if (!elements)
  {
    // Termine le programme immédiatement avec un message d'erreur
    perror("init_partition");
    exit(1);
  }
  for (unsigned int i = 0; i < nb_elements; i++)
  {
    init(&(elements[i]), i);
  }
  return elements;
}

void free_partition(partition elements)
{
  free(elements);
}

void lier(element_t *premier, element_t *second)
{
  // Si le second est moins haut
  if (premier->rang > second->rang)
  {
    second->parent = premier;
  }
  else
  {
    premier->parent = second;
    if (premier->rang == second->rang)
    {
      second->rang += 1;
    }
  }
}

element_t *trouver(element_t *element)
{
  if (element->parent != element)
  {
    element->parent = trouver(element->parent);
  }
  return element->parent;
}

element_t*trouver_bis(element_t*elt) {
	for (;elt->parent!=elt;elt=elt->parent) {};
	return elt;
}

void unir(element_t *premier, element_t *second)
{
  lier(trouver(premier), trouver(second));
}

void print_partition(partition partition, unsigned int nb_elements)
{
  for (unsigned int i = 0; i < nb_elements; i++)
  {
    printf("%d [%d] -> %d, ", partition[i].valeur, partition[i].rang, partition[i].parent->valeur);
  }
  printf("\n");
}
