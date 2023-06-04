/* Q3. Write a LEX program to convert an octal number to decimal number. */

%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <math.h>
    int o = 0, d = 0, b = 0;
%}

%%

^[0-7]+ {b = 1; o = atoi(yytext);}
[\n] {;}
. {b = 0;}

%%

int yywrap()
{
    if(b)
    {
        d = dec(o);
        printf("Decimal is %d\n", d);
    }
    else
    {
        printf("Invalid Octal No.");
    }
}

int dec(int oct)
{
    int d = 0, c = 0;
    while(oct)
    {
        int a = oct % 10;
        d += a * pow(8, c);
        c++;
        oct /= 10;
    }
    return d;
}

int main()
{
    printf("Enter the octal no.:\n ");
    yylex();
    return 0;
}