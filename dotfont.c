#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i, j, k;
    int idx = 0;
    unsigned char a[72];
    unsigned char b;
    unsigned char c[513];
    FILE *fpr = NULL;
    FILE *fpr2 = NULL;
    FILE *fpw = NULL;
    FILE *fp;
    
    fpr = fopen("spcfont.15", "rb");
    if (!fpr)
        exit(1);
    fpr2 = fopen("stdfont.15f", "rb");
    if (!fpr2)
        exit(1);
    fpw = fopen("out.txt", "w");
    if (!fpw)
        exit(1);
    
    printf("input:");
    scanf("%s", c);
    while (c[idx] != '\0') {
        b = (c[idx] << 8) + c[idx + 1];
        if (c[idx + 1] > 0xa0)
            b -= 34;
        if (b >= 0xa440) {
            b -= (c[idx] - 0xa4) * 99;
            fseek(fpr2, (long)(b - 0xa440) * 30, SEEK_SET);
            fp = fpr2;
        } else {
            b -= (c[idx] - 0xa1) * 99;
            fseek(fpr, (long)(b - 0xa140) * 30, SEEK_SET);
            fp = fpr;
        }
        for (i = 0; i < 30; i++)
            fscanf(fp, "%c", &a[i]);
        printf("\n%c%c\n15", c[idx], c[idx + 1]);
        for (i = 0; i < 15; i++) {
            printf("\n");
            fprintf(fpw, "\n");
            for (j = 0; j < 2; j++) {
                for (k = 0; k < 8; k++) {
                    if (a[i * 2 + j] > 127) {
                        printf("1");
                        fprintf(fpw, "1");
                    } else {
                        printf("0");
                        fprintf(fpw, "0");
                    }
                    a[i * 2 + j] <<= 1;
                }
            }
        }
        idx += 2;
    }
    printf("\n");
    
    fclose(fpr);
    fclose(fpr2);
    fclose(fpw);
    return 0;
}
