%{

%}

DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf(" is a Integer Number\n");}   
{DIGIT}*?\.{DIGIT}* {ECHO;printf(" is a Float Number\n");} 
%%

yywrap(){}
int main(int argc, char const *argv[])
{
    yylex();
    return 0;
}
