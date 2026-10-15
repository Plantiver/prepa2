#include <stdio.h>
#include "graphe.h"
#include "parcours.h"
#include <time.h>
#include <stdlib.h>
#include <string.h>

#define MAX_EPOCH 100000

void cfc(graphe*g) {
	int n = g->nb_sommet;
	int*p = init_pile(n);
	empiler_sommets(p,n);
	int*p_ = parcours(g,p);
	graphe*g_ = transpose(g);
	free(parcours(g_,p_));

	memcpy(g->smts, g_->smts, n*sizeof(sommet));

	free(g_);
	free(p);
	free(p_);
}

int main(void) {
//	srand(time(NULL));
	printf("hey\n");

	for (int i=3;i<25;i++) {
	printf("Hey:%d\n",i);		
	float res = 0.0;
	for (int j=0; j<MAX_EPOCH;j++) {
	graphe*g = init_grille(i);
	cfc(g);
	res += (float)coloriage(g)/((float)MAX_EPOCH);
	free_graphe(g);
	}
	printf("res %d:%f\n",i,res);
	fflush(stdout);
	}
	
	printf("Hello World\n");
	return 0;
}
