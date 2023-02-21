%{
    #include<stdio.h>
    int c=0;
%}

%%
[a-zA-z_] [a-zA-z0-9_]* {c++;printf("\tvalid identifier =%s",yytext);}
. ;

%%
int main()
{
    yylex();
    printf("\n total number of valid identifier = %d",c);
    return 0;
}