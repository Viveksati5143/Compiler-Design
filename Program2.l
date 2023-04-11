/* Design a LEX Code to identify and print valid identifier of C/C++ in given input pattern.*/

%{
    int c=0;
%}

%%

[a-zA-Z_][a-zA-Z0-9_]* {c++; printf("\tvalid Identifier = %s", yytext);}
. ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    printf("\nTotal number of valid Identifiers = %d \n",c);
    return 0;
}