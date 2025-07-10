%{
#include <stdio.h>
%}
%%
[0-9]+ {
    int num = atoi(yytext);
    if (num % 2 == 0) printf("%s is even\n", yytext);
    else printf("%s is odd\n", yytext);
}
. ;
%%
int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}
