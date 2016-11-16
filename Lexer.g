header {package decaf;}

options 
{
	mangleLiteralPrefix = "TK_";
	language="Java";
}

class DecafScanner extends Lexer;
options 
{
	k=2;
}

DIGIT options { paraphrase = "a number"; } : ('0'..'9') ;
TIMES options { paraphrase = "*"; } : '*' ;
DIV options { paraphrase = "/"; } : '/' ;
ADD options { paraphrase = "+"; } : '+' ;
MINUS options { paraphrase = "-"; } : '-' ;
POINT options {paraphrase = "."; }: '.';


WS_ : (' ' | '\n' | '\t' {newline();}) {_ttype = Token.SKIP; };

SL_COMMENT : "//" (~'\n')* '\n' {_ttype = Token.SKIP; newline (); };

protected
ESC :  '\\' ('n'|'"');
