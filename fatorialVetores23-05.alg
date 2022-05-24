Algoritmo "fatorialcomVetores"
{TESTE 1 DANIEL}
//
//
// Descrição   : Funções e procedimentos para calcular vetorial
// Autor(a)    : Beatriz Alencar Kuriki
// Data atual  : 5/23/2022

Var
num,num2, opcao, op: inteiro
vetorFAT : vetor [0..9] de inteiro
vetorNUM : vetor [0..9] de inteiro

{-----------------------------------------------------------}
{Função}

funcao calc_fatorial (elemento1 : inteiro): inteiro

var
fatorial: inteiro

inicio
fatorial <- 1
enquanto (elemento1 >=1) faca
   fatorial<-fatorial * elemento1
   elemento1 <- elemento1 - 1
fimenquanto
retorne fatorial
fimfuncao
{-----------------------------------------------------------}
{Vetor NUM}

procedimento entrada_dados
var

i, contador, fatorial : inteiro
inicio
para i <- 0 ate 9 faca
   escreval ( "Escreva o número na posição", i)
   leia (num)
   vetorNUM[i] <- num
fimpara
fimprocedimento
{-------------------------------------------------------------}

{vetor_FAT}

procedimento p_vetorFAT
var
fatorial, indice, contador: inteiro

inicio
para indice <- 0 ate 9 faca
   fatorial <- 1
   para contador <- vetorNUM[indice] ate 1 passo (-1) faca
      fatorial  <- fatorial * contador
   fimPara
   vetorFAT[indice] <- fatorial
fimPara
fimprocedimento
{_____________________________________________________________}
{mostra_Vetor}
procedimento mostraVetor (op : inteiro)
var
indice: inteiro

inicio
se (op = 1) entao
   para indice <- 0 ate 9 faca
      escreva ("|", vetorNUM[indice], "|")
   fimpara
senao
   se (op = 2) entao
      para indice <- 0 ate 9 faca
         escreva ("|", vetorFAT[indice], "|")
      fimpara
   fimse
fimse
fimprocedimento
{---------------------------------------------------------------}

inicio

escreval ("Digite o número que deseja saber o fatorial:")
leia (num)


enquanto (opcao <> 5) faca
   escreval ("1- Mostrar fatorial")
   escreval ("2- Entrada de dados no vetor Num")
   escreval ("3- Gerar vetor  FAT")
   escreval ("4- Mostrar vetor")
   escreval ("5- sair")
   leia (opcao)
   escolha (opcao)

   caso 1
      escreval ("O fatorial do número é:",calc_fatorial (num))

   caso 2
      entrada_dados

   caso 3

      p_vetorFAT
   caso 4
      limpatela
      escreval ("Digite 1 para vetor NUM")
      escreval ("Digite 2 para vetor FAT")
      escreval ("Qual sua opção? [1/2]")
      leia (op)
      mostraVetor(op)

   caso 5
      escreval ("Operação finalizada")

   fimescolha
fimenquanto

Fimalgoritmo
