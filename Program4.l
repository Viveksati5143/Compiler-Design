/* Design a LEX Code for Tokenizing (identify and print OPERATORS, SEPERATORS, KEYWORDS, IDENTIFIERS) the following C- fragment. */
%{
    int n=0;
%}

KEYWORDS "while"|"if"|"else"|"int"|"float" 
DIGIT [0-9]+
IDENTIFIER [a-zA-Z_][a-zA-Z0-9_]*
OPERATORS "<="|"=="|"="|"++"|"-"|"*"|"+""("|")"|","
SEPARATORS "{"|"}"|";"

%%

{KEYWORDS} {n++; printf("\t keywords: %s",yytext);}
{IDENTIFIER} {n++; printf("\t Identifier: %s",yytext);}
{OPERATORS}	{n++; printf("\t Operators: %s",yytext);}
{SEPARATORS} {n++; printf("\t Seperators: %s",yytext);}
-?{DIGIT}"."{DIGIT}	{n++; printf("\t Float: %s",yytext);}
-?{DIGIT} {n++; printf("\t Intergers: %s",yytext);}
.  ;

%%

int yywrap()
{
    return 1;
}

int main()
{ 
    yylex();
    printf("\nTotal number of token = %d \n",n); 
    return 0;
}