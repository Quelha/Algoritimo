Algoritmo "AV2 - 1"

Var
   RG:vetor[1..4] de inteiro
   i,x,op,total: inteiro

procedimento Add
inicio
   limpatela
   escreval("ADICIONAR USUARIO")
   se(total<=4)entao
      escreval("Usuario ",total)
      escreva("Digite seu RG (apenas numeros): ")
      leia(RG[total])
      total <- total + 1
   senao
      escreval("SISTEMA LOTADO")
   fimse
   leia(x)
fimprocedimento

procedimento Buscar
var
   rg,j: inteiro
inicio
   escreval("BUSCAR USUARIO")
   se(total=1) entao
      escreval("SISTEMA VAZIO")
   senao
      escreval("Digite o RG que gostaria de buscar: ")
      leia(rg)
      para i de 1 ate total-1 faca
         se (rg=RG[i]) entao
            escreval("Usuario ",i)
            escreval
         fimse
      fimpara
   fimse
   leia(x)
fimprocedimento

procedimento Remover
var
   rg,op1,posi:inteiro
inicio
   escreval("[1] Remover todos os RGs do sistema")
   escreval("[2] Remover um RG do sistema")
   leia(op1)
   se (op1=1) entao
      total <- 1
      escreval("SISTEMA LIMPO COM SUCESSO")
   senao
      escreval("Qual RG gostaria de retirar? ")
      leia(rg)
      para i de 1 ate total-2 faca
         se (rg=RG[i]) entao
            posi <- i
         fimse
      fimpara
      se (posi = 0) entao
         escreval("ALUNO NAO ENCONTRADO")
      senao
         para i de posi ate total-2 faca
            RG[i] <- RG[i+1]
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
      escreval("[1] Adicionar um RG")
      escreval("[2] Buscar um RG")
      escreval("[3] Remover um RG")
      escreval("[0] Sair")
      leia(op)
      limpatela
      escolha op
      caso 1
         Add
      caso 2
         Buscar
      caso 3
         Remover
      fimescolha
   ate (op=0)

Fimalgoritmo