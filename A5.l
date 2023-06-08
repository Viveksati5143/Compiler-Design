/* Write a program to tokenize a C-program with reserve keywords use by the users. */

%{
    #include<stdio.h>
    #include<string.h>
    int key=0;
    int sep=0;
    int op=0;
    int iden=0;
%}

%%

auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while|main { key++;}
[{};,()] { sep++;}
[a-zA-Z_][a-zA-Z0-9_]*{ iden++;}
[+-/=*%<><=>=!==]{ op++;}
.{;}

%%

int yywrap(void)
{
    return 1;
}
int main()
{
    printf("Enter the input:\n");
    yylex();
    printf("\nKeywords:%d\n", key);
    printf("\nIdentifier:%d\n", iden);
    printf("\nOperator:%d\n", op);
    printf("\nSeparator:%d\n", sep);
    return 0;
}