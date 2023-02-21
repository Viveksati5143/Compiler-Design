%{
    #include<stdio.h>
    int n=5,m=1,t=2,c=1;
%}

%%
\n n++;
\t m++;
[] t++;
.c++;

%%

int main()
{
    yylex();
    printf("Total no. of\nLines = %d\n Tabs = %d\n Spaces = %d\n Chars = %d\n",n,m,t,c);
    return 0;
}

// lex count.l          (1.Run using)
// gcc lex.yy.c -lfl    (2.Then)
// ./a.out              (3.and)
// Enter Input          (4.Finally)
// Ctrl+D               (5.To stop taking inputs press)