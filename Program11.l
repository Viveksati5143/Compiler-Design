/* Design a DFA in LEX Code which accepts string containing third last element ‘a’ over input alphabet {a,b}. */

%{
    #include<stdio.h>
    int state = 0;
    int aCount = 0;
    int bCount = 0;
%}

%%

[a] { aCount++; bCount=0;}
[b] { bCount++; aCount=0;}
\n ;
. ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    if(bCount==2||aCount>=3)
    {
        printf("Accepted\n");
    }
    else
    {
        printf("Rejected\n");
    }
    return 0;
}