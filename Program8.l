/* .Design a LEX Code to remove the comments from any C-Program given at run-time and store into ‘out.c’ file. */

%{

%}

%%

\/\/.*;
\/\*(.*\n)*.*\*\/;

%%

yywrap()
{
    return 1;
}
int main(int argc,char*argv[])
{
    externFILE*yyin;
    yyin = fopen(argv[1], "r");
    yylex();
    return 0;
}