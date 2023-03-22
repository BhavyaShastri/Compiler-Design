%{
    #include<stdio.h>
    int ch=0,bl=0,ln=0,wr=0;
%}

%%
[\n] {ln++;wr++;}
[\t] {bl++;wr++;}
[" "] {bl++;wr++;}
[^\n\t] {ch++;}
END {return 0;}
%%
yywrap(){}
int main(int argc,int **argv)
{
    yylex();
    printf("Total charcters: %d\n Blanks: %d\n Words: %d\n Lines:%d\n",ch,bl,wr,ln);
    return 0;
}
