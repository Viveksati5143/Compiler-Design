/* Write a Lex program to check perfect numbers. */

%{
    #include<string.h>
    void check( char*);
%}

%%

[0 - 9]+ check(yytext);

%%

int yywrap()
{
    return 1;
}

int main()
{
    extern FILE* yyin;
    yyin = fopen("num", "r");
    yylex();
    return 0;
}

void check(char* a)
{
    int l = strlen(a), i, n = 0;
    for(int i=0;i<l;i++)
    {
        n *= 10 + (a[i] - '0');
    }
    int x=0, temp=n;
    for(int i=1;i<n;i++)
    {
        if(n%i==0)
        {
            x+=1;
        }
    }
    if(x == temp) printf("%d is a perfect number \n", n);
    else printf("%d is not a perfect number \n", n);
}