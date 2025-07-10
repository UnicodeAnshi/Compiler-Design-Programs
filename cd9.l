%{
#include <stdio.h>
%}
%%
"int"|"float"|"char" printf("Keyword: %s\n", yytext);
[a-zA-Z_][a-zA-Z0-9_]* printf("Identifier: %s\n", yytext);
[0-9]+ printf("Integer Constant: %s\n", yytext);
[0-9]+\.[0-9]+ printf("Float Constant: %s\n", yytext);
\"[^\"]*\" printf("String Literal: %s\n", yytext);
. ;
%%
int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}
