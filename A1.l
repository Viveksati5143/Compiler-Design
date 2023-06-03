/* Q1. Write a LEX program to count the number of vowels and consonants in a given string. */

%{
    #include<stdio.h>
    int vowel=0,consonent =0;
%}
  
%%

[aeiouAEIOU] { printf("vowel\t");vowel++;}
[a-zA-Z] {printf("consonent\t");consonent++;}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the string comprising English alphabets\n");
    yylex();
    printf("Number of vowels are: %d\n", vowel);
    printf("Number of consonents are: %d\n", consonent);
    return 0;
} 