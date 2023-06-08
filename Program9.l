/* Write a LEX code for implementation of DFA accepting even no. of a and b over input {a,b} with dead state. */

%s A B C F

%%

<INITIAL>\n printf("Accepted\n"); BEGIN INITIAL;
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>\n BEGIN INITIAL; printf("Not accepted\n");
<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>\n BEGIN INITIAL; printf("Not accepted\n");
<C>a BEGIN B;
<C>b BEGIN A;
<C>\n BEGIN INITIAL; printf("Not accepted\n");
<A>[^ab\n] BEGIN F;
<B>[^ab\n] BEGIN F;
<C>[^ab\n] BEGIN F;
<INITIAL>[^ab\n] BEGIN F;
<F>[^\n] BEGIN F;
<F>[\n] BEGIN INITIAL; printf("Invalid Input\n");

%%

int yywrap () {} 
int main () {
	printf ("Enter a string of a and b: "); 
	yylex(); 
} 