%{
    #include<stdio.h>
%}

%%
"\"".*"\"" {printf("string\n");}
if|else|for|return|int|float|char|double {printf("keyword\n");}
[0-9]+ {printf("constants\n");}
[a-zA-Z_]+[a-zA-Z0-9]* {printf("IDENTIFIERS\n");}
.* {printf("invalid");}
%%
int main() { 
yylex(); 
return 0; "jnkjlk"
} 
int yywrap() { 
return 1; 
} 