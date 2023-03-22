%{

%}

%s A B C F
%%
<INITIAL>\n {printf(" Aceepetd\n");} BEGIN INITIAL;
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>\n BEGIN INITIAL; {printf("not accepted\n");}
<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>\n BEGIN INITIAL; {printf("not accepted\n");}
<C>a BEGIN B;
<C>b BEGIN A;
<C>\n BEGIN INITIAL; {printf("not accepted\n");}
<A>[^ab\n] BEGIN F;
<B>[^ab\n] BEGIN F;
<C>[^ab\n] BEGIN F;
<INITIAL>[^ab\n] BEGIN F;
<F>[^\n] BEGIN F;
<F>[\n] BEGIN INITIAL; {printf("INVALID ARGUMENT\n");}
. ;
%%
yywrap(){}
main()
{
printf("Enter the string of a and b only\n");
yylex();
return 0;
}
