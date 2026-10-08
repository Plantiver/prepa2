#include "parcours.h"
#include <stdlib.h>

int*init_pile(int n) {
	int*r = malloc((n+1)*sizeof(int));
	r[0] = 0;
	return r;
}

void empiler(int*p,int v) {
	p[0]++;
	p[p[0]]=v;
}

int depiler(int*p) {
	p[0]--;
	return p[p[0]+1];
}

bool est_vide(int*p) {
	return !p[0];
}

void empiler_sommets(int*p, int nb) {
	for (int i=0;i<nb;i++) empiler(p,i);
}

int visiter(graphe*g,int s,int*p,int t) {
	g->smts[s].status = EN_EXPLORATION;
	g->smts[s].debut = ++t;
	for (int i=0;i<g->adja[s][0];i++) {
		x=g->adja[s][1+i];
		if (g->smts[x].status==NON_VU) {
			t = visiter(g,x,p,t);
		}
	}
	empiler(p,s);
	g->smts[s].fin = ++t;
	return t;
}

int*parcours(graphe*g,int*p) {
	int*p_ = init_pile(g->nb_sommet);
	for (int i=0;i<g->nb_sommet;i++)
		g->smts[i].status = NON_VU;

	int t=0;
	while (!est_vide(p)) {
		int s = depiler(p);
		if (g->smts[i].status==NON_VU) {
			t=visiter(g,s,p_,t);
		}
	}
	
	return p_;
}


