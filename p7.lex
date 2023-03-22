%{
#include<stdio.h>
int n=0;
%}

DIGIT[0-9]
NUMBER {DIGIT}+
REAL {DIGIT}*"."{DIGIT}+
TEXT [a-zA-Z]+
TEXT_NUMBERS [a-zA-Z0-9]
CONDITIONALS"if"|"else"|"elseif"|"switch"|""case"
KEYWORD"break"|"continue"|"goto"|"printf"|"sprintf"|"sscanf"|"fopen"|"fwrite"|"fread"|"fclose"|"write"|"read"|"open"|"close"|"return"|"int"|"float"|"char"
ITERATORS"for"|"while"|"do"
IDENTIFIER[a-zA-Z]{TEXT_NUMBERS}*|[a-zA-Z]{TEXT_NUBERS}*[[{NUMBERS}+]]
OPERATORS"+"|+"-"|"*"|"/"|"="
UNARY"++"|"--"
BLOCK_BEGINS"{"
BLOCK_ENDS"}"
LOPERATORS"&"|"|"|"&&"|"||"|"~"|">"|"<"|">="|"<+"|"=="
%%
"while"|"if"|"else" {n++;printf("keywords: %s\n",yytext);}
"int"|"float" {n++;printf("keywords: %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("Identifier: %s\n",yytext);}
"<="|"=="|"="|"++"|"-"|"*"|"+"|"("|")"|"||" {n++;printf("Operators: %s\n",yytext);}
"{"|"}"|";"|"," {n++;printf("Seperators: %s\n",yytext);}
-?[0-9]+"."[0-9]+ {n++;printf("Float: %s\n",yytext);}
-?[0-9]+ {n++;printf("Integer: %s\n",yytext);}
[$] return 0;
%%
yywrap(){}
main()
{
yylex();
printf("\n TOTAL number of tokens: %d\n",n);
}
