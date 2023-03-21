%{
    #include<stdio.h>
    int n = 0;
%}

%%

[+ - / % *] {n++;}
[& || !] {n++;}
[< > == != <= >=] {n++;}

%%
int yywrap() {return 1;}

int main(){
    printf("Enter string :\n");
    yylex();
    printf("Total: %d\n",n);
    return 0;
}