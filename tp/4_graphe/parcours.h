#ifndef PARCOURS_H
#define PARCOURS_H

#include "graphe.h"

int*init_pile(int);
void empiler(int*,int);
int depiler(int*);
bool est_vide(int*);

void empiler_sommets(int*,int);

int visiter(graphe*,int,int*,int);
int*parcours(graphe*,int*);

#endif
