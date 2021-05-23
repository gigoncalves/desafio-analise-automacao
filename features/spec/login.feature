# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente previamente cadastrado
  Gostaria de acessar site FakeEcommerce
  Para realizar minhas compras

  Contexto:
    Dado que esteja na página de login

  @login_sucesso
  # Completar o cenário abaixo
  Esquema do Cenário: Realizar login
    Quando submete as seguintes credenciais:
      | email   | password |
      | <email> | <pwd>    |
    Então deve ser redirecionado para página 'My account'
    E deve ver o seguinte nome de usuário: 'Gislaine Ferreira Gonçalves'

    Exemplos:
      | email                   | pwd    |
      | gi.fgoncalves@gmail.com | pwd123 |

  @authentication_failed
  # Completar o cenário abaixo
  Esquema do Cenário: Login com falha
    Quando submete as seguintes credenciais:
      | email   | password |
      | <email> | <pwd>    |
    Então deve ver a seguinte mensagem: 'Authentication failed.'

    Exemplos:
      | email                   | pwd    |
      | gi.fgoncalves@uol.com   | pwd123 |
      | gi.fgoncalves@gmail.com | abc123 |
      | gifgoncalves@gmail.com  | abc123 |