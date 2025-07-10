
%{ 
    #include <stdio.h> 
    int invalid_identifier = 0; 
%} 
 
%% 

[a-zA-Z_]+[a-zA-Z0-9_]* {printf("valid \n");}
.* {printf("invalid identifiers encountered.\n");}
%% 
 
int main() { 
    yylex(); 
    
    return 0; 
    
} 
 
int yywrap() { 
    return 1; 
} 
 
 
