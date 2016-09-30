grammar calculator1;

expression
   : number (op number)*
   ;

number
   : MINUS? DIGIT + (POINT DIGIT +)?
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
