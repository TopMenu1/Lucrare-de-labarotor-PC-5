#include <stdio.h>
#include <string.h>

int main() {
    char text[256];
    char celMaiLung[256] = "";
    char *cuvant;
   
    const char separatori[] = " ,.!?;:\t\n";

    printf("Introdu un sir de caractere: ");
   
    fgets(text, sizeof(text), stdin);

    cuvant = strtok(text, separatori);

    while (cuvant != NULL) {
  
        if (strlen(cuvant) > strlen(celMaiLung)) {
            strcpy(celMaiLung, cuvant);
        }

        cuvant = strtok(NULL, separatori);
    }

    if (strlen(celMaiLung) > 0) {
        printf("Cel mai lung cuvant este: \"%s\" (lungime: %zu caractere)\n", 
               celMaiLung, strlen(celMaiLung));
    } else {
        printf("Nu a fost introdus niciun cuvant valid.\n");
    }

    return 0;
}
