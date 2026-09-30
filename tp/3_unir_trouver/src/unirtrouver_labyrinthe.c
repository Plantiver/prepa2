#include "unirtrouver.h"

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdbool.h>
#include <time.h>

const int AUCUN_MUR = 0;
const int MUR_EST = 1;
const int MUR_SUD = 1 << 1;              // En binaire: 10
const int DEUX_MURS = MUR_EST | MUR_SUD; // En binaire: 11

int *init_labyrinthe(unsigned int taille);

void afficher_labyrinthe(int *labyrinthe, unsigned int taille);

struct mur
{
} typedef mur_t;

mur_t *liste_murs(unsigned int taille);

void permuter_murs(mur_t *liste_murs, int premier, int second);

void melanger(mur_t *liste_murs, unsigned int taille);

void construire(int *labyrinthe, unsigned int taille);

int main(int argc, char **argv)
{
  // Initialisation du générateur de nombre aléatoire
  srand(time(NULL));

  // Vérification des arguments
  if (argc < 2)
  {
    printf("Usage: ./unionfind_maze taille_labyrinthe\n");
    exit(1);
  }

  // Récupération de l'argument donné au programme
  const unsigned int taille = atoi(argv[1]);

  // Début de la construction
  printf("Construction d'un labyrinthe de taille %d x %d ...\n", taille, taille);

  // int *labyrinthe = init_labyrinthe(taille);
  // construire(labyrinthe, taille);
  // afficher_labyrinthe(labyrinthe, taille);
  // free(labyrinthe);
  return 0;
}