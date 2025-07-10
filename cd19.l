%{
#include "cd19.tab.h"
%}
%%
[0-9]+          { yylval = atoi(yytext); return NUMB; }
[+\-*/\n()=]    { return *yytext; }
[ \t]           ;    
.               { printf("Invalid character: %s\n", yytext); }
%%
int yywrap() { 
    return 1;
}
