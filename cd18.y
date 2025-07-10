%{ 
    #include <stdio.h> 
    #include <stdlib.h> 
    int yylex(void); 
    void yyerror(const char *s); 
%} 

%token NUM 
%left '+' '-' 
%left '*' '/' 
%right UMINUS 

%% 
input: 
      expr '\n'     { printf("\n"); }   
    ; 
expr: 
      expr '+' expr     { printf("+ "); } 
    | expr '-' expr     { printf("- "); } 
    | expr '*' expr     { printf("* "); } 
    | expr '/' expr     { printf("/ "); } 
    | '-' expr %prec UMINUS { printf("~ "); }  
    | '(' expr ')'       {} 
    | NUM                { printf("%d ", $1); } 
    ; 
%% 

void yyerror(const char *s) { 
    fprintf(stderr, "Error: %s\n", s); 
} 

int main(void) { 
    printf("Enter an expression:\n"); 
    yyparse(); 
    return 0; 
}
