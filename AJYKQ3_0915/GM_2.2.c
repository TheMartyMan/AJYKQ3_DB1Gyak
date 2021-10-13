#include <stdio.h>
#include <stdlib.h>
#include <string.h>


// Készítette Garamszegi Márton - AJYKQ3

int main()
{
    FILE *fp;
    char ch;
    char nev[50];
    printf("A fajl neve: ");
    scanf("%s", nev);
	
	
    fp = fopen(nev, "w");
    printf("Az uzenet: ");
	
	
	
    while( (ch = getchar()) != '#') {
        putc(ch, fp);
    }
    fclose(fp);
	
	
	
    fp = fopen(nev, "r");
    while ( (ch = getc(fp)) != EOF ) {
        printf("%c", toupper(ch));
    }
    fclose(fp);
	
	
	

    char nev2[50] = "Atmeneti";
    FILE *fpp = fopen(nev2, "w");
    fp = fopen(nev, "r");
    fseek(fp, 0L, SEEK_END);
    int pos = ftell(fp);
    fseek(fp, 0L, SEEK_SET);



    while (pos--)
    {
        ch = fgetc(fp);
        fputc(toupper(ch), fpp);
    }

    fclose(fp);
    fclose(fpp);



    remove(nev);
    rename(nev2, nev);

    return 0;
}

