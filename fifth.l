%{ 
#include<stdio.h> 
int sc=0, wc=0, lc=0, cc=0; 
%} 
%% 
\n       { lc++; cc += yyleng; } 
[ \t]+    { sc++; cc += yyleng; } 
[^\t\n ]+ { wc++; cc += yyleng; } 
%% 
int yywrap()  
{  
return 1;  
}  
int main() 
{ 
extern FILE* yyin ; 
yyin = fopen("input.txt", "r"); 
if (!yyin) { 
printf("Error: Unable to open input.txt\n"); 
return 1; 
} 
yylex(); 
printf("The number of lines = %d\n", lc); 
printf("The number of spaces = %d\n", sc); 
printf("The number of words = %d\n", wc); 
printf("The number of characters = %d\n", cc); 
fclose(yyin); 
return 0; 
} 