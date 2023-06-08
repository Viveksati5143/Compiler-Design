/* Write a LEX program to count the number of lines, tabs, spaces and chars */

%{
    #include<stdio.h>
    int n=1, m=0, t=0, c=0;
%}

%%

\n n++;
\t m++;
[ ] { t++; printf("Matched tab: %s\n", yytext); }
. { c++; printf("Matched char: %s\n", yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    printf("Total no. of\nLines = %d\nTabs = %d\nSpaces = %d\nChars = %d\n", n, m, t, c);
    return 0;
}