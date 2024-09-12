Algoritmo "sistemaFrutinhas"

Tipo
   Produto = registro
      nome: caractere
      precoPorKg: real
      peso: real
      valorTotal: real
   fimregistro

Var
   usuarioCorreto, senhaCorreta, usuario, senha: caractere
   tentativas, escolhas, numProdutos: inteiro
   totalCompra, valorPago, troco, precoPorKg, peso: real
   carrinho: vetor[1..50] de Produto
   produtoTemp: Produto

Inicio
   usuarioCorreto <- "admin"
   senhaCorreta <- "12345"
   tentativas <- 0
   totalCompra <- 0.0
   numProdutos <- 0

   enquanto (tentativas < 3) faca
      escreva("Digite o usuário: ")
      leia(usuario)
      se (usuario <> usuarioCorreto) entao
         escreval("Usuário incorreto.")
         tentativas <- tentativas + 1
      senao
         escreva("Digite a senha: ")
         leia(senha)
         se (senha <> senhaCorreta) entao
            escreval("Senha incorreta.")
            tentativas <- tentativas + 1
         senao
            escreval("Login realizado com sucesso.")
            interrompa
         fimse
      fimse
   fimenquanto

   se (tentativas >= 3) entao
      escreval("Número máximo de tentativas excedido.")
      interrompa
   fimse

   enquanto (escolhas <> 4) faca
      escreval("----------------------------------------")
      escreval("Escolha uma opção:")
      escreval("1. Adicionar produto normal ao carrinho")
      escreval("2. Adicionar hortifrúti ao carrinho (por peso)")
      escreval("3. Ver carrinho")
      escreval("4. Finalizar compra")
      escreval("----------------------------------------")
      escreva("Digite sua escolha: ")
      leia(escolhas)

      se (escolhas = 1) entao
         escreval("Adicionar produto normal ao carrinho.")
         escreva("Digite o nome do produto: ")
         leia(produtoTemp.nome)
         escreva("Digite o valor do produto: ")
         leia(produtoTemp.valorTotal)
         produtoTemp.precoPorKg <- 0
         produtoTemp.peso <- 0
         totalCompra <- totalCompra + produtoTemp.valorTotal

         numProdutos <- numProdutos + 1
         carrinho[numProdutos] <- produtoTemp
         escreval("Produto adicionado ao carrinho. Total atual: R$", totalCompra)

      senao se (escolhas = 2) entao
         escreval("Adicionar hortifrúti ao carrinho (por peso).")
         escreva("Digite o nome do produto: ")
         leia(produtoTemp.nome)
         escreva("Digite o preço por quilo: ")
         leia(produtoTemp.precoPorKg)
         escreva("Digite o peso do produto (em kg): ")
         leia(produtoTemp.peso)
         produtoTemp.valorTotal <- produtoTemp.precoPorKg * produtoTemp.peso
         totalCompra <- totalCompra + produtoTemp.valorTotal


         numProdutos <- numProdutos + 1
         carrinho[numProdutos] <- produtoTemp
         escreval("Produto adicionado ao carrinho. Total atual: R$", totalCompra)

      senao se (escolhas = 3) entao
         escreval("----------------------------------------")
         escreval("Carrinho de compras:")
         para i de 1 ate numProdutos faca
            escreva("Produto ", i, ": ", carrinho[i].nome, " - ")
            se (carrinho[i].peso > 0) entao
               escreval("Peso: ", carrinho[i].peso, " kg, Preço por kg: R$", carrinho[i].precoPorKg, ", Total: R$", carrinho[i].valorTotal)
            senao
               escreval("Total: R$", carrinho[i].valorTotal)
            fimse
         fimpara
         escreval("Total da compra até agora: R$", totalCompra)

      senao se (escolhas = 4) entao
         escreval("Finalizando compra...")
         interrompa
      fimse
   fimenquanto

   escreval("----------------------------------------")
   escreval("Total da compra: R$", totalCompra)
   escreva("Digite o valor pago pelo cliente: ")
   leia(valorPago)

   se (valorPago >= totalCompra) entao
      troco <- valorPago - totalCompra
      escreval("Troco: R$", troco)
      escreval("Compra realizada com sucesso.")
   senao
      escreval("Valor pago insuficiente para cobrir o total da compra.")
   fimse

Fimalgoritmo
