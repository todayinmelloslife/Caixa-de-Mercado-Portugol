# Sistema Frutinhas

Projeto inicial da disciplina de Algoritmos e Lógica de Programação do primeiro semestre da faculdade de ADS.

## Descrição

O "Sistema Frutinhas" é um algoritmo desenvolvido para simular um sistema de compras. O sistema abrange as seguintes funcionalidades:

- **Autenticação:** Login com usuário e senha (usuário: *admin*, senha: *12345*) com no máximo 3 tentativas.
- **Adição de Produtos:**  
  - **Produto normal:** Cadastro com valor fixo.
  - **Hortifrúti:** Cadastro baseado no peso e preço por quilo.
- **Carrinho de Compras:** Armazenamento dos produtos em um vetor e visualização dos itens adicionados, com cálculo do total da compra.
- **Finalização da Compra:** Verificação do valor pago, cálculo do troco (se houver) e conclusão da transação.

## Funcionalidades

- **Login Seguro:** Garante que apenas usuários autenticados possam utilizar o sistema, limitando a 3 tentativas de acesso.
- **Cadastro de Produtos:**
  - *Produto Normal:* Solicita o nome e o valor total.
  - *Hortifrúti:* Solicita o nome, o preço por quilo e o peso, calculando o valor total automaticamente.
- **Visualização do Carrinho:** Exibe os produtos adicionados, diferenciando entre produtos normais e hortifrúti (por peso).
- **Finalização da Compra:** Após a confirmação, o sistema solicita o valor pago e verifica se o mesmo cobre o total da compra, calculando o troco quando aplicável.

## Estrutura do Algoritmo

1. **Autenticação do Usuário:**  
   - Solicita o usuário e a senha.
   - Permite no máximo 3 tentativas para login.
   - Em caso de sucesso, exibe mensagem de confirmação e prossegue para o menu principal.

2. **Menu Principal:**
   - **Opção 1:** Adicionar produto normal ao carrinho.
   - **Opção 2:** Adicionar hortifrúti ao carrinho (produto calculado por peso).
   - **Opção 3:** Visualizar o carrinho de compras.
   - **Opção 4:** Finalizar a compra.

3. **Processamento e Armazenamento:**
   - Os produtos são armazenados em um vetor (estrutura do tipo `Produto`), contendo:
     - *nome*
     - *precoPorKg*
     - *peso*
     - *valorTotal*
   - O total da compra é atualizado conforme cada produto é adicionado.

4. **Finalização da Compra:**
   - O sistema solicita o valor pago pelo cliente.
   - Verifica se o valor pago é suficiente para cobrir o total da compra.
   - Caso seja, calcula e exibe o troco; se não, exibe uma mensagem de valor insuficiente.

## Instruções de Uso

Este projeto é apresentado em forma de pseudocódigo e foi desenvolvido para fins acadêmicos. Para testar ou adaptar o algoritmo:

1. **Estudo do Pseudocódigo:**
   - Leia atentamente o fluxo do algoritmo e identifique as estruturas de controle (loops, condicionais) e o uso dos vetores.

2. **Implementação:**
   - Escolha uma linguagem de programação de sua preferência para implementar o algoritmo.
   - Utilize o pseudocódigo como referência para desenvolver a lógica de autenticação, cadastro de produtos e finalização da compra.

3. **Testes:**
   - Realize testes de autenticação, adicionando produtos e finalizando a compra para garantir que o sistema funcione conforme o esperado.
   - Verifique cenários com tentativas de login incorretas, adição de produtos com diferentes tipos de entrada (valor fixo e por peso) e pagamentos insuficientes.

## Considerações Finais

Este projeto é uma excelente prática para compreender conceitos fundamentais de programação, como:
- Controle de fluxo
- Estruturas condicionais e de repetição
- Manipulação de vetores e registros
- Cálculo de valores e lógica de autenticação

## Autor

- **Maria Eduarda Mello**
- Curso de Análise e Desenvolvimento de Sistemas - [Nome da Faculdade]

