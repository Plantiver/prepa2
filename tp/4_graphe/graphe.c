#include "graphe.h"
#include <stdlib.h>
#include <assert.h>
#include <stdio.h>

#define INDICE(i,j,n) ((i)*(n)+(j))

#define RD (rand())
#define RDB (RD%2)

graphe*init_graphe(int n) {
	graphe*r = malloc(sizeof(graphe));
	r->nb_sommet = n;
	r->smts = malloc(n*sizeof(sommet));
	r->adja = malloc(n*sizeof(int*));
	for (int i=0;i<n;i++) {
		r->adja[i] = malloc(5*sizeof(int));
		r->adja[i][0] = 0; // Initialize with zero neighbours
	}
	return r;
}

void free_graphe(graphe*g) {
	for (int i=0;i<g->nb_sommet;i++) {
		free(g->adja[i]);
	}
	free(g->smts);
	free(g);
}

void ajouter_arc(graphe*g, int s, int t) {
	if (existe_arc(g,s,t)) return;
	assert(g->adja[s][0]!=4);
	g->adja[s][0]++;
	g->adja[s][g->adja[s][0]]=t;
}

bool existe_arc(graphe*g,int s,int t) {
	int n = g->adja[s][0];
	for (int i=0;i<n;i++)
		if (g->adja[s][i+1]==t)
			return true;
	return false;
}

graphe*init_grille(int n) {
	graphe*r = init_graphe(n*n);

	for (int i=0;i<n-1;i++) {
		for (int j=0;j<n-1;j++) {
			if (RDB) {
				ajouter_arc(r,INDICE(i,j,n),INDICE(i,j+1,n));
			} else {
				ajouter_arc(r,INDICE(i,j+1,n),INDICE(i,j,n));
			}
			if (RDB) {
				ajouter_arc(r,INDICE(i,j,n),INDICE(i+1,j,n));
			} else {
				ajouter_arc(r,INDICE(i+1,j,n),INDICE(i,j,n));
			}
		}
	}

	for (int i=0;i<n-1;i++) {
		if (RDB) {
			ajouter_arc(r,INDICE(i,n-1,n),INDICE(i+1,n-1,n));
		} else {
			ajouter_arc(r,INDICE(i+1,n-1,n),INDICE(i,n-1,n));
		}
		if (RDB) {
			ajouter_arc(r,INDICE(n-1,i,n),INDICE(n-1,i+1,n));
		} else {
			ajouter_arc(r,INDICE(n-1,i+1,n),INDICE(n-1,i,n));
		}
	}

	return r;
}

void print_grille(graphe*g) {
	int n=0;
	for (;n<g->nb_sommet && n*n!=g->nb_sommet;n++);
	if (n==g->nb_sommet) {
		printf("Sorry, I can't print that\n");
		return;
	}
	for (int i=0;i<n;i++) {
		for (int j=0;j<n;j++) {
			printf("%d",g->smts[INDICE(i,j,n)].couleur);
			if (j!=n-1) {
				if (existe_arc(g,INDICE(i,j,n),INDICE(i,j+1,n)))
					printf("→");
				else
					printf("←");
			}
		}
		printf("\n");
		for (int j=0;j<n;j++) {
			if (i!=n-1) {
				if (existe_arc(g,INDICE(i,j,n),INDICE(i+1,j,n)))
					printf("↑");
				else
					printf("↓");
			}
			printf(" ");
		}
		printf("\n");
	}
}







