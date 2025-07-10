
%{ 
#include <stdio.h> 
int integer_num = 0; 
int float_num = 0; 

%} 
%% 
[0-9]+ { printf("integer\n"); } 
[0-9]+\.[0-9]+ { printf("float\n"); } 
%% 
int main() { 
yylex(); 
return 0; 
} 
int yywrap()  
{ 
return 1; 
} 