%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|inline|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while    { printf("\"%s\" is a C keyword.\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("It is not a keyword.\n"); }
.|\n    { /* ignore other characters */ }
%%

int main() {
    printf("Enter a word: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
