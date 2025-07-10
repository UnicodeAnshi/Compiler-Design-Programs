%{
    #include<stdio.h>
%}
%%
[ \t]+ {fprintf(yyout,"%s"," ");}
.|\n {fprintf(yyout,"%c",yytext[0]);}

%%
int main(){
    extern FILE *yyin,*yyout;
    yyin =fopen("input.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    return 0;
}
int yywrap()  
{ 
    return 1; 
}