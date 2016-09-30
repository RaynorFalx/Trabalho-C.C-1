# Trabalho-C.C-1

comandos para a compilação com o antlr:
$ antlr4 calculator1.g4
$ javac calculator1*.java



usando normal:
$ grun calculator1 expression -gui
-> ele esperará algo como por exemplo:
64*34/-35.6+63.43
*número e repetição de operação e número.



usando com os parênteses:
$ grun calculator1 atom -gui
-> esperará algo como por exemplo:
(-346.347+853)/(36*34)
*abre parênteses, expressão, fecha parênteses e uma operação e repetição dos mesmos opcional.
*ela não aceita abrir parênteses dentro de um parênteses já aberto.



digitando apenas um número:
$ grun calculator1 number -gui
-> esperará algo como:
23.532
