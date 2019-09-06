package br.com.analisadorlexico;

%%
%class AnalisadorLexico
%unicode
%type Token
%line
%column

%class ContadorColuna
%int

%{

  int quantidadedeColunas = 1;

%}

%eof{

  System.out.printl("\n  Numero de colunas:" + quantidadeColunas);

%eof}

NEWLINE = \n | \t\n | \r\n

%%

{NEWLINE} { quantidadeColunas++; }

. {}
