grammar calculator2;

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
   : multdiv
   | subsum
   ;
   
multidiv
   :TIMES
   |DIV
   ;
   
subsum
   :MINUS
   |PLUS
   ;

TIMES
   : '*'
   ;

DIV
   : '/'
   ;
   
MINUS
   : '-'
   ;
   
PLUS
   : '+'
   ;
   
LPAREN
   : '('
   ;


RPAREN
   : ')'
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
