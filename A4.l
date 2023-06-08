/* Q1. Given an input sentence, write a Lex Program to count the number of words whose length is greater than 2. */

%{
    #include<stdio.h>
    #include<string.h>
    int l = 0, c = 0;
%}

%%

[a-zA-Z]+ {
            l = strlen(yytext);
            if(l > 2){
                c++;
            }
          }
%%

int yywrap(void){
    return 1;
}

int main(){
    printf("Enter the sentence:\n");
    yylex();
    printf("\nNumber of words whose length is greater than 2: %d\n", c);
    return 0;
}