grammar calculator3;

atom
  : term (subsum atom)*
  ;

term 
  :number (multdiv term)*
  ;

number
  :MINUS? DIGIT + (POINT DIGIT +)?
  ;

op
  :multidiv
  |subsum
  ;

multidv
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
  :'+'
  ;

DIGIT
  : ('0' .. '9')
  ;

WS
  :[ \r\n\t] + -> channel (HIDDEN)
  ;
