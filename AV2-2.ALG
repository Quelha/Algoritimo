Algoritmo "semnome"

Var
   vet:vetor[1..10] de inteiro //O CORRETO É 50 NUMEROS//
   i,op,total,test:inteiro
procedimento Add
var
   num:inteiro
inicio

   limpatela
   escreval("ADICIONAR NUMERO")
   se (total <=10) entao
      escreva("Digite um numero:")
      leia(test)
      se((test >=1 e test <= 20) ou (test >= 50 e test <= 60) ou (test >=100 e test <= 120)) entao
         vet[total] <- test
      fimse
      total <- total + 1
   senao
      escreval("SISTEMA LOTADO")
   fimse

fimprocedimento
Inicio
   total <- 1 //MUDAR VETOR PARA 0..49 E REMOVER ISSO//
   repita
      limpatela
      escreval("[1] ADICIONAR")
      escreval("[2] BUSCAR")
      escreval("[3] ORDENAR")
      escreval("[4] REMOVER")
      leia(op)
      escolha op
      caso 1
         Add
      caso 2
         Buscar
      caso 3
         Ordenar
      caso 4
         Remover
      fimescolha
   ate (op=0)

Fimalgoritmo