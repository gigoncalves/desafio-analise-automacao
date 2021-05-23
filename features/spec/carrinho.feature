# language: pt

Funcionalidade: Inserção de itens no carrinho do Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para adicioná-los ao carrinho de compras

  Contexto:
    Dado que esteja na página de login
    Quando submete as seguintes credenciais:
      | email                   | password |
      | gi.fgoncalves@gmail.com | pwd123   |
      E buscar pelo produto 'shirt'

  Cenário: Adicionar produto direto ao carrinho
    Quando adicionar ao carrinho
    Então o produto deve ser adicionado corretamente

  Cenário: Adicionar produto e seguir para o carrinho
    Quando adicionar ao carrinho
      E clicar para seguir para o carrinho
    Então o carrinho de compras exibido