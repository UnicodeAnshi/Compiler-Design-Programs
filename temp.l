%{
#include "temp.tab.h"
#include <stdlib.h>
#include <stdio.h>
%}

%%

[0-9]+          { yylval = atoi(yytext); return NUMB; }
[+\-*/\n()=]    { return *yytext; }
[ \t]           ;   // skip whitespace
.               { printf("Invalid character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
