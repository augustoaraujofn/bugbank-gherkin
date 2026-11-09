# language: pt
@login
Funcionalidade: Login
  Como uma pessoa que já possui uma conta
  Quero entrar no BugBank
  Para acessar meus dados e realizar operações

  Contexto:
    Dado que estou na página inicial do BugBank

  @positivo @smoke
  Cenário: Entrar com e-mail e senha corretos
    Dado que tenho uma conta cadastrada e ativa para o teste
    Quando informo meu e-mail cadastrado
    E digito minha senha corretamente
    E clico em "Acessar"
    Então devo entrar na minha conta
    E devo visualizar a área principal do BugBank

  @negativo
  Cenário: Tentar entrar com uma senha incorreta
    Dado que tenho uma conta cadastrada e ativa para o teste
    Quando informo meu e-mail cadastrado
    E digito uma senha incorreta
    E clico em "Acessar"
    Então o acesso deve ser recusado
    E a aplicação deve apresentar uma mensagem de erro

  @negativo
  Cenário: Tentar entrar com um e-mail não cadastrado
    Quando informo um e-mail que não está cadastrado
    E preencho o campo de senha
    E clico em "Acessar"
    Então o acesso deve ser recusado
    E a aplicação deve apresentar uma mensagem de erro

  @negativo
  Cenário: Tentar entrar sem preencher os campos
    Quando clico em "Acessar" sem informar e-mail e senha
    Então a aplicação deve solicitar os dados de acesso
    E não devo entrar na conta

  @negativo
  Cenário: Tentar entrar sem informar o e-mail
    Quando preencho somente o campo de senha
    E clico em "Acessar"
    Então a aplicação deve solicitar o e-mail
    E não devo entrar na conta

  @negativo
  Cenário: Tentar entrar sem informar a senha
    Quando preencho somente o campo de e-mail
    E clico em "Acessar"
    Então a aplicação deve solicitar a senha
    E não devo entrar na conta

  @sessao
  Cenário: Sair da conta depois de realizar o login
    Dado que entrei no BugBank com meus dados corretos
    Quando utilizo a opção de sair da conta, caso esteja disponível na interface
    Então devo voltar para a tela de acesso
    E não devo continuar visualizando os dados da conta
