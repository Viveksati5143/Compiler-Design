/* Write a Lex program to search a word in a file. */

%{
    #include<string.h>
    void check(char *);
%}

%%

[a-zA-Z]+ check(yytext);

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}

void check(char *str)
{
    FILE *fp;
    char temp[30];

    fp = fopen("input.txt", "r");   /* r is read only */ 
    while((fscanf(fp, "%s", temp)) != EOF)
    {
        if(!(strcmp(temp, str)))
        {
            printf("Found\n");
            return;
        }
    }
    printf("Not found\n");
    return;
}