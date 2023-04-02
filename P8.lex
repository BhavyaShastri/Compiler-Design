//LEX Program to extract all html tags at runtime and store it in a file.

%{
%}
%%
"<"[^>]*">" fprintf(yyout,"%s",yytext);
[$] return 0;
. ;
%%
yywrap(){}

main(int args,char **argv)
{
extern FILE *yyin,*yout;
yyout=fopen("Output.txt","w");
yylex();
}
