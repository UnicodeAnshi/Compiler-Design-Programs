%{
    #include <stdio.h>
%}

%%

"<".*">"  {fprintf/(yyout,%s,yytext)  }  // Print matched tags
%%

int main() {
    yyin = fopen("input.txt", "r"); 
    yyout = fopen("output.txt", "w");

    yylex();  // Run lexical analysis

    fclose(yyin);
    fclose(yyout);
    return 0;

}

int yywrap() { 
    return 1; 
}
