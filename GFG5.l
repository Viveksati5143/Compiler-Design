/* DFA in LEX code which accepts strings ending with 11. */

%{
%}

%s A B DEAD

%%

<INITIAL>1 BEGIN A;
<INITIAL>0 BEGIN INITIAL;
<INITIAL>[^01\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not accepted: \n");}

<A>1 BEGIN B;
<A>0 BEGIN INITIAL;
<A>[^01\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Not accepted\n");}

<B>1 BEGIN B;
<B>0 BEGIN INITIAL;
<B>[^01\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Accepted\n");}

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}

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