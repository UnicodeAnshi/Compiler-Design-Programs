%{
    #include<stdio.h>
%}
%%

"<".*">" { fprintf(yyout, "%s", yytext); }  // Print matched tags
. {}  // Ignore everything else

%%
int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}
int yywrap(){
    return 1;
}