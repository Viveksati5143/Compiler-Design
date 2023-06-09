/* Write a Lex program to find the length of the longest word */

%{
    int c = 0;
%}

%%

[a-zA-Z]+ {
            if(yyleng > c)
            {
                c = yyleng;
            }
          }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the sentence:\n");
    yylex();
    printf("Largest: %d\n", c);
    return 0;
}