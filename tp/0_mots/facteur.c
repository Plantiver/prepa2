#include <stdio.h>
#include <stdlib.h>
#include <string.h>





char* substring(char*s, int debut, int longueur) {
	char*r = malloc((longueur+1)*sizeof(char));
	for (int i=0; i<longueur; i++) {
		i[r] = debut[i+s];
	}
	r[longueur] = '\0';
	return r;
}

void lister_facteur(char*s) {
	for (int i =0; i<strlen(s); i++) {
		for (int j=1; j<=strlen(s)-i; j++) {
			char*s_ = substring(s, i, j);
			printf("%s\n", s_);
			free(s_);
		}
	}
}

int est_facteur_de(char*f, char*s) {
	for (int i=0; i<strlen(s)-strlen(f); i++) {
		if (!memcmp(f+i, s, strlen(f))) return 1;
	}
	return 0;
}




int main() {
	lister_facteur("Hello world");
	//printf("%d\n", est_facteur_de("Hell", "Hello, World!"));
	return 0;
}



