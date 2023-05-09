/* Q7. LEX Code to remove the comments from any C-Program given at run-time and store into ‘out.c’ file */

%{
%}

%%

"//"[^\n]* ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;

%%

int yywrap() {return 1;} 

int main () 
{
extern FILE *yyin, *yyout; 
yyin = fopen("in.c", "r");
yyout = fopen("out.c", "w"); 
yylex();
}