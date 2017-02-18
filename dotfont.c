#include <stdio.h>
void main()
{
    FILE *inf,*inf1,*rd, *out;
    unsigned char a[72];
    unsigned char;
    unsigned b;
    int i,j,k,l=0;
    unsigned char c[513];
    /* set et3 font path here */
    /* if you use dos, change '/' to '\\' also */
    inf=fopen("C:/Users/Ben/Desktop/spcfont.15","rb");
    inf1=fopen("C:/Users/Ben/Desktop/stdfont.15f","rb");
    out=fopen("out.txt","w");
    if(inf==NULL)
        exit(0);
    printf("請輸入要轉換的文字:");
    scanf("%s",c);
    while(c[l]!='\0')
    {
        b=c[l]*256+c[l+1];
        if (c[l+1]>0xa0)
            b-=34;
        if(b>=0xa440)
        {
            b-=(c[l]-0xa4)*99;
            fseek(inf1,(long)(b-0xa440)*30,SEEK_SET);
            rd=inf1;
        }
        else
        {
            b-=(c[l]-0xa1)*99;
            fseek(inf,(long)(b-0xa140)*30,SEEK_SET);
            rd=inf;
        }
        for(i=0;i<30;i++)
            fscanf(rd,"%c",&a[i]);
        printf("\n%c%c\n15",c[l],c[l+1]);
        for(i=0;i<15;i++)
        {
            printf("\n");
            fprintf(out,"\n");
            for(j=0;j<2;j++)
                for(k=0;k<8;k++)
                {
                    if(a[i*2+j] > 127)
                    {
                        printf("1");
                        fprintf(out, "1");
                    }
                    else
                    {
                        printf("0");
                        fprintf(out, "0");
                    }
                    a[i*2+j]<<=1;
                };
        };
        l+=2;
    };
    printf("\n");
    fclose(inf);
    fclose(inf1);
    fclose(out);
}
