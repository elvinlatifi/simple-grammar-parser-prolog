# simple-grammar-parser-prolog
This repo contains some code defining a parser in prolog for the following grammar:

assign = id , ’=’ , expr , ’;’  
expr = term , [ ( ’+’ | ’-’ ) , expr ]  
term = factor , [ ( ’*’ | ’/’) , term]  
factor = int | ’(’ , expr , ’)’  
 
