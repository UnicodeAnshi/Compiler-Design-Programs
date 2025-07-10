%{
#include <stdio.h>
%}
%%
[a-zA-Z0-9_.]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,} printf("Valid Email: %s\n", yytext);
. ;
%%
int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}
