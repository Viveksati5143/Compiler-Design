/* Design a LEX Code to extract all html tags in the given HTML file at run time and store into Text file given at run time. */

%{
    #include<stdio.h>
    #include<stdlib.h>
    FILE*outputFile;
%}

%%

"<"[^>]+">" { fprintf(outputFile,"%s\n", yytext);}
.|\n ; /* Ignore all other characters */

%%

int yywrap()
{
    return 1;
}

int main(int argc,char**argv)
{
    if(argc!=3)
    {
        printf("Usage:./extract_tags<input_html_file>
        <output_text_file>\n");
        return 1;
    }
    FILE*inputFile = fopen(argv[1],"r");
    outputFile = fopen(argv[2],"w");
    yyin = inputFile;
    yylex();
    fclose(inputFile);
    fclose(outputFile);
    printf("HTML tags extracted and stored in '%s' file. \n", argv[2]);
    return 0;
}