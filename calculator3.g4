grammar calculator3;

atom
  : term (subsum atom)*
  ;

term 
  :number (multdiv term)*
  ;

number
  :MINUS? DIGIT + (POINT (DIGIT)+)?
  ;

op
  :multdiv
  |subsum
  ;

multdiv
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
  
POINT
  : '.'
  ;

DIGIT
  : ('0' .. '9')
  ;

WS
  :[ \r\n\t] + -> channel (HIDDEN)
  ;
