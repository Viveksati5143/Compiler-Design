%{
    #include<stdio.h>
%}

%%

double|int|break|if|else|while|int|void|switch|for|char|float {printf("\nkeywords\n");}
([a-zA-Z][0-9])+[a-zA-Z]* {printf("\tIdentifier\t");}
[+-/*%] {printf("Operators");}

%%
int yywrap()
{
    return 1;
}

int main(void)
{
    yylex();
    return 0;
}