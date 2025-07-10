%{
#include <stdio.h>
%}
%%
"//".*\n {} 
\/\*(.*\n)*.*\*\/ {};
.*|\n {fprintf(yyout,"%s",yytext);}
%%
int main() {
    yyin = fopen("input.txt", "r"); // Replace with your input file
    yyout = fopen("output.txt", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}
int yywrap() {
    return 1;
}
