Algoritmo "AV2 - 1"

Var
   CPF:vetor[1..4] de inteiro
   i,x,op,total: inteiro

//A TITULO DE TESTE FOI COLOCADO O LOOP DE  APENAS PARA 4 REPETI��ES
procedimento EXIBIR
var
posi: inteiro
inicio
    posi<- 1
   escreval("CADASTRO DE CPFs")
   para i de 1 at� 4 fa�a
      escreval("Usu�rio",i,"Posi��o:", posi," Valor:", CPF[i])
      posi<-posi+1
   fimpara
   leia(x)
fimprocedimento

procedimento ADD
inicio
   limpatela
   para i de 1 ate 4 fa�a
      i<-total
      se(total<=4)entao
         escreval("ADICIONAR USUARIO",i)
         escreva
         escreva("DIGITE SEU CPF (apenas numeros): ")
         escreva
         leia(CPF[i])
         total <- total + 1
      senao
         escreval("SISTEMA LOTADO")
      fimse
   fimpara
   leia(x)
fimprocedimento

procedimento BUSCAR
var
   cpf,j: inteiro
inicio
   escreval("BUSCAR USUARIO")
   se(total=1) entao
      escreval("SISTEMA VAZIO")
   senao
      escreval("DIGITE O CPF PARA BUSCA: ")
      leia(cpf)
      para i de 1 ate total-1 faca
         se (cpf=CPF[i]) entao
            escreval("USU�RIO",i)
            escreval
         fimse
      fimpara
   fimse
   leia(x)
fimprocedimento

procedimento REMOVER
var
   CPF,op1,posi:inteiro
inicio
   escreval("[1] REMOVER TODOS OS CPFs DO SISTEMA")
   escreval("[2] REMOVER UM CPF DO SISTEMA")
   leia(op1)
   se (op1=1) entao
      total <- 1
      escreval("SISTEMA LIMPO COM SUCESSO")
   senao
      escreval("QUAL CPF GOSTARIA DE RETIRAR ? ")
      leia(CPF)
      para i de 1 ate total-2 faca
         se (CPF=CPF[i]) entao
            posi <- i
         fimse
      fimpara
      se (posi = 0) entao
         escreval(" CPF NAO ENCONTRADO")
      senao
         para i de posi ate total-2 faca
            CPF[i] <- CPF[i+1]
         fimpara
      fimse
      total <- total - 1
   fimse
   leia(x)
fimprocedimento

Inicio
   total <- 1
   repita
      limpatela
      escreval("CADASTRO DE CPF")
      escreval("----------------------------")
      escreval("[1] ADICIONAR UM CPF")
      escreval("[2] BUSCAR UM CPF")
      escreval("[3] REMOVER UM CPF")
      escreval("[4] EXIBIR O CADASTRO")
      escreval("[0] SAIR")
      escreva("OP��O: ")
      leia(op)
      limpatela
      escolha op
      caso 1
         ADD
      caso 2
         BUSCAR
      caso 3
         REMOVER
      caso 4
         EXIBIR
      fimescolha
   ate (op=0)
Fimalgoritmo