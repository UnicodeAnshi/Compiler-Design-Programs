%{
    #include<stdio.h>
%}
%%
[0-9]*[24680$] {printf("even\n");}
[0-9]*[13597$] {printf("odd\n");}
.*  {printf("invalid");}

%%
int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}