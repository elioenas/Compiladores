package br.com.analisadorlexico;

%%
%class AnalisadorLexico
%unicode
%type Token
%line
%column

%class Matriz
%int

%{

int quantidadedeLinhas = 1;
int quantidadedeColunas = 1;

%}

%eof{

System.out.printl("\n  Numero de linhas:" + quantidadedeLinhas);
System.out.printl("\n  Numero de colunas:" + quantidadeColunas);

%eof}

NEWLINE = \n | \t\n | \r\n

%%

{NEWLINE} { quantidadedeLinhas++ , quantidadeColunas++; }

. {}
