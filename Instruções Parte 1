# Trabalho-C.C-1


Gramática de uma calculadora simples.
Operações simples ou com parênteses como:
   número operador número (número podendo ser negativo e decimal)
   (número op número) op ( número ) (quantas repetições for desejado)

Comandos para a compilação usando a ferramenta antlr:
$ antlr4 calculator1.g4
$ javac calculator1*.java


Expressin como parâmetro inicial irá gerar uma árvore de parse com as seguintes características:
$ grun calculator1 expression -gui
-> Ele esperará algo como por exemplo:
número op número (quantas repetições desejar)
EX:5 + 80 * - 30
^D


Atom como parâmetro inicia irá gerar uma árvore de parse com as seguintes características:
$ grun calculator1 atom -gui
-> Esperará algo como por exemplo:
LPAREN número op número RPAREN
EX: (10 + 6.5) * (-5 + 10)
^D
*Abre parênteses, expressão, fecha parênteses e uma operação e repetição dos mesmos opcional.
*Ela não aceita abrir parênteses dentro de um parênteses já aberto.


Number como parâmetro inicial irá gerar uma árvore de parse com as seguintes características:
$ grun calculator1 number -gui
-> Esperará algo como:
number 
EX: -5


RaynorFalx - Juliano
Arcax - Marcos
Raquel - Raquel 
