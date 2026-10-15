#ifndef GRAPHE_H
#define GRAPHE_H

#define VU 0
#define EN_EXPLORATION 1
#define NON_VU 2

typedef struct sommet {
	int debut;
	int fin;
	int parent;
	int status;
	int couleur;
} sommet;

typedef struct graphe {
	int nb_sommet;
	sommet*smts;
	int**adja;
} graphe;

graphe*init_graphe(int);
void free_graphe(graphe*);
void ajouter_arc(graphe*,int,int);
bool existe_arc(graphe*,int,int);

graphe*init_grille(int);

void print_grille(graphe*);

graphe*transpose(graphe*);

int repr(graphe*,int);

int coloriage(graphe*);

#endif
