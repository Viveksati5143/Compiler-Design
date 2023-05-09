/* Q5. LEX Code to count and print the number of total characters, words, white spaces in given ‘Input.txt’ file. */

%{
int ch=0, bl=0, ln=0, wr=0;  
%} 

%%

[\t] {wr++; bl++;}
[" "] {bl++; wr++;}
[^\n\t] {ch++;}

%%
int yywrap() {return 1;}
int main () { 
extern FILE *yyin; 
yyin = fopen("input.txt", "r");
yylex(); 
printf ("No. of Words= %d \nSpaces= %d \nCharacters= %d\n", wr, bl, ch);
return 0;
} 