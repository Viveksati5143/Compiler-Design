%{
    #include<stdio.h>
    int n=1, m=0, t=0, c=0;
%}

%%
\n n++;
\t m++;
[\t] { t++; printf("Matched tab: %s\n", yytext); }
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


/* lex count.l          (1.Run using)   */   
/* gcc lex.yy.c -lfl    (2.Then)    */
/* ./a.out              (3.and) */
/* Enter Input          (4.Finally) */
/* Ctrl+D               (5.To stop taking inputs press) */