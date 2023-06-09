/* Write a lex program for Dfa start with ab contains aa and end with ba. */

%{
int foundMatch = 0; // Flag to indicate if a match is found
%}

%%
^ab.*aa.*ba$ { // Regular expression to match the desired pattern
    foundMatch = 1;
    printf("Valid string: %s\n", yytext);
}

.|\n {} // Ignore any other characters

%%

int main() {
    yylex();
    if (!foundMatch) {
        printf("No match found.\n");
    }
    return 0;
}