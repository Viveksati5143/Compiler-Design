/* Design a DFA in LEX Code which accepts string containing even number of ‘a’ and even number of ‘b’ over input alphabet {a,b}. */

%{
    #include<stdio.h>
    int aCount=0;
    int bCount=0;
    int state=0;
%}

%%

[a] { aCount++; state = (state+1)%2;}
[b] { bCount++; state = (state+1)%2;}
\n;
.;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    if(state==0&&aCount%2==0&&bCount%2==0)
    {
        printf("Accepted\n");
    }
    else
    {
        printf("Rejected\n");
    }
    return0;
}