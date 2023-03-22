%{
%}
%%
[ \n\t]+ fprintf(yyout," ");
. fprintf(yyout,"%s",yytext);
%%
yywrap(){}
main()
{
extern FILE *yyin,*yyout;
yyin=fopen("Input.txt","r");
yyout=fopen("Output.txt","w");
yylex();
return 0;
}

