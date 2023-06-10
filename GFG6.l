/* DFA in LEX code which accepts even number of zeros and even number of ones. */

%{
%}

%s A B

%%

<INITIAL>1 BEGIN INITIAL;
<INITIAL>0 BEGIN A;
<INITIAL>[^0|\n] BEGIN B;
<INITIAL>\n BEGIN INITIAL; printf("Accepted\n");

<A>1 BEGIN A;
<A>0 BEGIN INITIAL;
<A>[^0|\n] BEGIN B;
<A>\n BEGIN INITIAL; printf("Not Accepted\n");

<B>1 BEGIN B;
<B>0 BEGIN B;
<B>[^0|\n] BEGIN B;
<B>\n printf("Invalid\n");

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the string:\n");
    yylex();
    return 0;
}