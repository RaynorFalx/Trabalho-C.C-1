grammar calculator1;

expr
   : LPAREN (expr op)* atom (op expr)* RPAREN
     (op LPAREN (expr op)* atom (op expr)* RPAREN)*
   ;
   
atom
   : term (subsum atom)*
   ;

term
   : number (multidiv term*)
   ;

number
   : MINUS? DIGIT + (POINT DIGIT +)?
   ;
   
   
op
   : PLUS
   | MINUS
   | TIMES
   | DIV
   ;
   
   
LPAREN
   : '('
   ;


RPAREN
   : ')'
   ;


PLUS
   : '+'
   ;


MINUS
   : '-'
   ;


TIMES
   : '*'
   ;


DIV
   : '/'
   ;


POINT
   : '.'
   ;


DIGIT
   : ('0' .. '9')
   ;


WS
   : [ \r\n\t] + -> channel (HIDDEN)
;
