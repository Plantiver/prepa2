#include <stdio.h>
#include "graphe.h"
#include <time.h>
#include <stdlib.h>

int main(void) {
//	srand(time(NULL));
	printf("hey\n");
	
	graphe*g = init_grille(10);
	print_grille(g);


	free_graphe(g);
	
	printf("Hello World\n");
	return 0;
}
