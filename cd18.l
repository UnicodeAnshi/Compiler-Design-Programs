%{ 
    #include "cd18.tab.h" 
%} 
%% 
[0-9]+ { yylval = atoi(yytext); return NUM; } 
[\n]   { return '\n'; } 
[ \t]  {} 
.      { return yytext[0]; } 
%% 
int yywrap(void) { 
    return 1; 
}
