%{
    int ln=0,wr=0,sp=0,tot=0;
%}

%%
\n {ln++; wr++;tot++;}
[\t ' '] {tot++;wr++;}
[" "] {sp++;wr++;}
EOF {return 0;}
%%
yywrap(){}
int main(int argc,char *argv[])
{
extern FILE *yyin;
yyin=fopen("Input.txt","r");
yylex();
printf("Total charcters: %d\n Spaces: %d\n Words: %d\n Lines:%d\n",tot,sp,wr,ln);
return 0;
}
