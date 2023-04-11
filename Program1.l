/* Design a LEX Code to count the number of lines, space, Tab-meta character and rest of characters in a given input pattern. */

%{
    #include<stdio.h>
    int l=0, s=0, t=0, c=0, w=0;
%}

%%

[\n] {l++;w++;}
[" "] {s++;w++;}
[\t] {t++;w++;}
[^\n\t] {c++;}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    printf("Total no. of\nLines = %d\nSpaces = %d\nTabs = %d\nChars = %d\nWords Count = %d\n", l, s, t, c, w);
    return 0;
}