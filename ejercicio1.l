%%
"//".*"\n" ;
"/*"[^(*/)]*"*/" ; 
-?[0-9]+ printf("INT");
-?[0-9]+("."[0-9]+)?((E|e)-?[0-9]+)? printf("FLOAT");
[Bb][Ee][Gg][Ii][Nn] printf("BEGIN");
[Ee][Nn][Dd] printf("END");
[a-zA-Z][a-zA-Z0-9]* printf("ID %d %s", yyleng, yytext);
