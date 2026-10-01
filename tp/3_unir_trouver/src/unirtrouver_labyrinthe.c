#include "unirtrouver.h"

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdbool.h>
#include <time.h>

#define ID(n,i,j) (n)*(i)+(j)
// Renvoi un enier aléatoire entre dans [0,n)
#define rd(n) (rand()%(n))

#define AUCUN_MUR 0
#define MUR_EST 1
#define MUR_SUD 2
#define DEUX_MURS 3

int *init_labyrinthe(unsigned int n) {
	int*r = malloc(n*n*sizeof(int));
	for(unsigned int i=0;i<n*n;i++) r[i]=DEUX_MURS;
	return r;
};

void afficher_labyrinthe(int *laby, unsigned int n) {
	printf(" ");
	for (unsigned int i=0;i<n;i++) printf("__");
	printf("\n");
	for (unsigned int i=0;i<n;i++) {
		printf("|");
		for (unsigned int j=0;j<n;j++) {
			switch (laby[ID(n,i,j)]) {
				case AUCUN_MUR:
				case MUR_SUD:
					printf("  ");
					break;
				case MUR_EST:
				case DEUX_MURS:
					printf(" |");
					break;
			}
		}
		printf("\n");
		printf("|");
		for (unsigned int j=0;j<n;j++) {
			switch (laby[ID(n,i,j)]) {
				case AUCUN_MUR:
					printf("  ");
					break;
				case MUR_EST:
					printf(" |");
					break;
				case MUR_SUD:
					printf("_ ");
					break;
				case DEUX_MURS:
					printf("_|");
					break;
			}
		}
		printf("\n");
	}
};

typedef struct mur
{
	int id1;
	int id2;
} mur_t;

mur_t *liste_murs(unsigned int n) {
	mur_t*r = malloc(2*n*(n-1)*sizeof(mur_t));
	int k = 0;
	for (int i=0;i<n-1;i++) {
		for (int j=0;j<n-1;j++) {
			r[k++] = (mur_t) {ID(n,i,j), ID(n,i,j+1)};
			r[k++] = (mur_t) {ID(n,i,j), ID(n,i,j+n)};
		}
	}
	for (int i=0;i<n-1;i++) {
			r[k++]=(mur_t) {n*(i+1)-1,n*(i+2)-1};
			r[k++]=(mur_t) {n*n-2-i,n*n-1-i};
	}
	return r;
};

void permuter_murs(mur_t *liste_murs, int premier, int second) {
	mur_t temp = liste_murs[premier];
	liste_murs[premier] = liste_murs[second];
	liste_murs[second] = temp;
};

void melanger(mur_t *liste_murs, unsigned int n) {
	for (int i=0;i<n;i++) {
		permuter_murs(liste_murs,i,rd(i+1));
	}
};

void construire(int *laby, unsigned int n) {
	mur_t*lmur = liste_murs(n);
	melanger(lmur,n*(n-1)*2);
	partition uf = init_partition(n*n);
	for (int i=0;i<2*n*(n-1);i++) {
		int id1 = lmur[i].id1;
		int id2 = lmur[i].id2;
		if (trouver(uf+id1)->valeur!=trouver(uf+id2)->valeur) {
			if (id2-id1==1||id1-id2==1) {
				laby[id1] &= ~MUR_EST;
			} else {
				laby[id1] &= ~MUR_SUD;
			}
			unir(uf+id1, uf+id2);
		}
	}
};

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
  int *labyrinthe = init_labyrinthe(taille);
  construire(labyrinthe, taille);
  afficher_labyrinthe(labyrinthe, taille);
  free(labyrinthe);
  printf("All done\n");
  return 0;
}
