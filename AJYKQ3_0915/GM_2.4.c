#include <stdlib.h>
#include <string.h>
#include <stdio.h>


// Készítette Garamszegi Márton - AJYKQ3




int ossz=0;

struct gepjarmu{
    char rendszam[7];
    char szin[20];
    int ar;
}Auto[100];


int main(){

    int szam=0;

    printf("Hany adatot szeretne felvinni?\n");
    scanf("%d", &szam);

    FILE *fp;
    fp = fopen("autok.bin", "rb");

    int i=ossz;

    while(i<szam+ossz){

        printf("Add meg az auto rendszamat: ");
        scanf("%s", &Auto[i].rendszam);

        printf("Add meg az auto szinet: ");
        scanf("%s", &Auto[i].szin);

        printf("Add meg az auto arat: ");
        scanf("%d", &Auto[i].ar);

        fwrite(&(Auto[i].rendszam), sizeof(Auto[i].rendszam), 1, fp);
        fwrite(&(Auto[i].szin), sizeof(Auto[i].szin), 1, fp);
        fwrite(&(Auto[i].ar), sizeof(int), 1, fp);
        fwrite("\n", 1, 1, fp);

        i++;
    }

    ossz = ossz+szam;

    fclose(fp);

    olvas();

    ir();

    return 0;

}


void olvas(){

    FILE *fp;
    fp = fopen("autok.bin", "rb");
    int szam=0;

    if(fp == NULL){
        printf("Hiba a fajl megnyitasa soran!\n");
    }
    else{
        printf("Hanyadik rekordot szeretne visszaolvasni? Eddig %d adat van az adatbazisban\n", ossz);
        scanf("%d", &szam);
        fseek(fp, (szam-1)*sizeof(struct gepjarmu),0);

        fread(&(Auto[szam]), sizeof(struct gepjarmu), 1,fp);
            printf("Rendszam: %s\n", Auto[szam-1].rendszam);
            printf("Szin: %s\n", Auto[szam-1].szin);
            printf("Ar: %d\n", Auto[szam-1].ar);
    }

    fclose(fp);

}

void ir(){

    FILE *fp = fopen("autok.bin", "wb");

    for(int i=0; i<ossz; i++){
        fwrite(&(Auto[i].rendszam), sizeof(Auto[i].rendszam), 1, fp);
        fwrite(&(Auto[i].szin), sizeof(Auto[i].szin), 1, fp);
        fwrite(&(Auto[i].ar), sizeof(Auto[i].ar), 1, fp);
        fwrite("\n", 1, 1, fp);
    }

}

