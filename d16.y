%{ 
#include <stdio.h> 
#include <stdlib.h> 
void yyerror(const char *s); 
int yylex(); 
%} 
%token NUMB 
%left '+' '-' 
%left '*' '/' 
%% 
program: 
program expr '\n' { printf("= %d\n", $2); } 
| 
; 
expr: 
    expr '+' expr   { $$ = $1 + $3; } 
  | expr '-' expr   { $$ = $1 - $3; } 
  | expr '*' expr   { $$ = $1 * $3; } 
  | expr '/' expr   { 
                      if ($3 == 0) { 
                          yyerror("Division by zero"); 
                          exit(1); 
                      } 
                      $$ = $1 / $3; 
                    } 
  | '(' expr ')'    { $$ = $2; } 
  | NUMB            { $$ = $1; } 
; 
%% 
void yyerror(const char *s)  
{ fprintf(stderr, "Error: %s\n", s); 
} 
int main()  
{   printf("Desk Calculator\nEnter expression (Ctrl+D to exit):\n"); 
    yyparse(); 
    return 0; 
} 