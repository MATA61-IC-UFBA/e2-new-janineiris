/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
    #include "token.h"
%}

DIGIT   [0-9]

%%
\n          { return EOL; }
" "         { return WHITESPACE; }
{DIGIT}+    { return NUMBER; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"*"         { return TIMES; }
"/"         { return DIV; }
.           { return ERROR; }
%%
