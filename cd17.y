%{ 
#include <stdio.h> 
#include <stdlib.h> 
void yyerror(const char *s); 
int yylex(); 
%} 
%token NUMBER 
%left '+' '-' 
%left '*' '/' 
%% 
stmt: 
expr '\n' {printf("Result = %d\n", $1);} 
expr: 
expr '+' expr {$$ = $1 + $3;} 
| expr '-' expr {$$ = $1 - $3;} 
| expr '*' expr {$$ = $1 * $3;} 
| expr '/' expr {if ($3 == 0){yyerror("Division by zero!!"); exit(1);} else {$$ = $1/$3;}} 
| NUMBER {$$ = $1;} 
%% 
void yyerror(const char *s){ 
fprintf(stderr, "Error is %s", s); 
} 
int main(){ 
printf("Enter arithmetic expression:\n"); 
yyparse(); 
return 0; 
}
