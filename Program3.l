/* Design a LEX Code to identify and print integer and float value in given input pattern. */

%{
    #include<stdio.h>
%}

%%

[-]?[0-9]+"."[0-9]+ {printf("\nFLOAT\n");}
[-]?[0-9]+ {printf("\nINTEGER\n");}

%%

int yywrap()
{
    return 1;
}

int main()
{
	printf("Enter the number : ");
	yylex();
	return 0;
}