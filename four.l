%{
#include<stdio.h>
int token =0;
%}
%%
int|float|double|char|void|true|false|bool|if|else|while|for|return {printf("%s is a Keyword\n", yytext);token++; }
[a-zA-Z_]+[a-zA-Z0-9_]* {printf("%s is a valid Identifier\n", yytext);token++; }
[0-9]*  {printf("%s is a constant\n", yytext);token++; }
[,:;] {printf("%s is a Separator\n", yytext);token++;}
[+-/%*=] {printf("%s is an operator\n", yytext);token++; }
%%
int main()
{ yylex();
printf("%d",token);
  return 0;

}
int yywrap()
{ return 1;
}