//yyin is a global file pointer for input
//by default yylex reads input from standard input however if we want lex to read the input from the file we need assign yyin to the open file.
//extern tells the compiler that yyin is declared somewhere else (inside the lex generated c file)
//FILE* yyin; is already defined in lex library so by declaring it as extern we gain access to it inside main.
//when yylex runs it reads from the file assigned to yyin
%{
    #include<stdio.h>
%}
%%
[a-zA-Z0-9_.]+@[a-zA-Z0-9]+\.(com|org|net)  { printf("Matched email: %s\n", yytext); }
