/* Design a LEX code to recognize valid arithmetic expression with operators '+', '-', '*' and '/'. */

%{
    #include<stdio.h>
%}

%%

[0-9]+ { printf("Number: %s\n", yytext);}
[-+*/] { printf("Operator: %s\n", yytext);}
[\t]; /* Ignore white space */
\n;
. { printf("Invalid character: %s\n", yytext);}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}