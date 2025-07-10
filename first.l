
%{ 
    #include <stdio.h>     
    int lines = 0; 
    int spaces = 0; 
    int tabs = 0; 
    int other_characters = 0; 
%} 
 
%% 
\n { lines++; } 
" " { spaces++; } 
\t { tabs++; } 
. { other_characters++; } 
%% 
int main() { 
    yylex(); 
    printf("Lines: %d\n", lines); 
    printf("Spaces: %d\n", spaces); 
    printf("Tabs: %d\n", tabs); 
    printf("Other characters: %d\n", other_characters); 
    return 0; 
} 
int yywrap()  
{ 
    return 1; 
}