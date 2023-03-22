%{
%}
%%
"//"[^\n]* ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%
yywrap(){}
main()
{
extern FILE *yyin,*yyout;
yyin=fopen("In.c","r");
yyout=fopen("Out.c","w");
yylex();
return 0;
}
