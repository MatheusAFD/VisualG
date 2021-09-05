Algoritmo "GameCenter"
tipo
    jogo = registro
    id :inteiro
    nome: caractere
    preco: real
    quantJogo : inteiro
fimregistro

inventarioItens = registro
nome: caractere
id: inteiro
fimregistro


Var
// { Seção de Declarações das variáveis}
escolhaMenu, qtdJogosComprados, qtdJogosCadastrados: inteiro
jogos: vetor [1..5] de jogo
inventario: vetor[1..5] de inventarioItens
saldoUsuario : real

procedimento comprarJogo()
var
qual, inventIndice, pare: inteiro
inicio
   inventIndice <- 1
   repita
      escreval ("Qual jogo você deseja?")
      leia (qual)

      se saldoUsuario > jogos[qual].preco entao

         inventario[inventIndice].nome <- jogos[qual].nome
         escreval (inventario[inventIndice].nome)
         escreval ("Compra realizada com sucesso !"   )
         inventIndice <- inventIndice+1
         qtdJogosComprados <- qtdJogosComprados+1;
         escreval ("Deseja comprar mais? 1 - sim 2 - não")
         saldoUsuario <- (saldoUsuario - jogos[qual].preco)
         escreval ("Saldo Atual:" , saldoUsuario)
      senao
         escreval ("Saldo insuficiente")
         escreval ("Deseja continuar comprando ? 1 - sim 2 - não")
      fimse
      leia (pare)


   ate pare =2
fimprocedimento

procedimento verificarInventario()
var
i: inteiro;
inicio

   para i de 1 ate qtdJogosComprados faca
        escreval("Nome do jogo: ", inventario[i].nome)
        escreval ("Existem ", qtdJogosComprados," jogos comprados com sucesso")
        escreval ("-------------------------------------")
        escreval ("Saldo atual: ", saldoUsuario )
   fimpara
fimprocedimento;



procedimento listarJogo()
var
i: inteiro;
inicio

   para i de 1 ate qtdJogosCadastrados     faca
      escreval ("-------------------------------------")
      escreval("Nome do jogo: ", jogos[i].nome)
      escreval("Preço do jogo: R$", jogos[i].preco)
      escreval("id unico jogo: ", jogos[i].id)
   fimpara;
   escreval ("Estes ", qtdJogosCadastrados,"Foram os jogos cadastrados com sucesso")
   escreval ("-------------------------------------")

fimprocedimento


inicio
   saldoUsuario <-100

   qtdJogosComprados <-0

   qtdJogosCadastrados <-5

   jogos[1].nome <- "Portal"
   jogos[1].preco <- 9,99
   jogos[1].id <- 1;

   jogos[2].nome <- "FarCry 3"
   jogos[2].preco <- 14,70
   jogos[2].id <- 2

   jogos[3].nome <- "Control"
   jogos[3].preco <- 180,00
   jogos[3].id <- 3

   jogos[4].nome <- "Tibia"
   jogos[4].preco <- 9.99
   jogos[4].id <- 4

   jogos[5].nome <- "Subnautica"
   jogos[5].preco <-28,00
   jogos[5].id <- 5



      // { Seção de Comandos, procedimento, funções, operadores, etc...}

     repita
      escreval ("-------------------------------------")
      escreval ("Sistema de compras de jogos online")
      escreval ("Digite um número para acessar a opção desejada")
      escreval ("1 - Mostrar jogos disponiveis")
      escreval ("2 - Comprar jogo")
      escreval ("3 - Verificar Inventario e saldo")
      escreval ("5 - Para sair do programa")
      leia (escolhaMenu)

      Escolha escolhaMenu

      caso 1
         escreval ("-------------------------------------")
         escreval("Opção escolhida: 1")
         listarJogo()


      caso 2
         escreval ("-------------------------------------")
         escreval("Opção escolhida: 2")
         comprarJogo()

      caso 3


         escreval ("-------------------------------------")
         escreval("Opção escolhida: 3")
         verificarInventario()

     fimescolha

     ate escolhaMenu=5

Fimalgoritmo
