# language: pt
@cadastro
Funcionalidade: Cadastro de conta
  Como uma pessoa que ainda não utiliza o BugBank
  Quero criar uma conta
  Para conseguir acessar as funcionalidades do banco

  Contexto:
    Dado que estou na página inicial do BugBank

  @positivo @smoke
  Cenário: Criar uma conta preenchendo os dados corretamente
    Quando acesso a opção "Registrar"
    E informo um e-mail válido que ainda não foi cadastrado
    E preencho meu nome
    E informo uma senha válida
    E repito a mesma senha no campo de confirmação
    E clico em "Cadastrar"
    Então a aplicação deve concluir o cadastro
    E deve apresentar uma confirmação da criação da conta

  @negativo
  Cenário: Tentar cadastrar sem preencher os campos
    Quando acesso a opção "Registrar"
    E clico em "Cadastrar" sem preencher os campos
    Então a aplicação deve indicar que existem campos obrigatórios
    E a conta não deve ser criada

  @negativo
  Cenário: Tentar cadastrar sem informar o e-mail
    Quando acesso a opção "Registrar"
    E preencho o nome e os campos de senha
    Mas deixo o campo de e-mail vazio
    E clico em "Cadastrar"
    Então a aplicação deve solicitar o e-mail
    E a conta não deve ser criada

  @negativo
  Cenário: Tentar cadastrar sem informar o nome
    Quando acesso a opção "Registrar"
    E informo um e-mail válido e preencho os campos de senha
    Mas deixo o campo de nome vazio
    E clico em "Cadastrar"
    Então a aplicação deve solicitar o nome
    E a conta não deve ser criada

  @negativo
  Cenário: Tentar cadastrar sem informar a senha
    Quando acesso a opção "Registrar"
    E informo um e-mail válido e meu nome
    Mas deixo os campos de senha vazios
    E clico em "Cadastrar"
    Então a aplicação deve solicitar o preenchimento da senha
    E a conta não deve ser criada

  @negativo
  Cenário: Informar um e-mail em formato inválido
    Quando acesso a opção "Registrar"
    E preencho meu nome e os campos de senha corretamente
    Mas informo um e-mail em formato inválido
    E clico em "Cadastrar"
    Então a aplicação deve indicar que o e-mail é inválido
    E a conta não deve ser criada

  @negativo
  Cenário: Informar senhas diferentes
    Quando acesso a opção "Registrar"
    E preencho os dados de cadastro
    Mas informo uma senha diferente no campo de confirmação
    E clico em "Cadastrar"
    Então a aplicação deve informar que as senhas não correspondem
    E a conta não deve ser criada

  @negativo
  Cenário: Tentar cadastrar com um e-mail que já está em uso
    Dado que existe uma conta cadastrada com um determinado e-mail
    Quando tento criar outra conta utilizando esse mesmo e-mail
    Então a aplicação deve impedir o cadastro duplicado
    E deve apresentar uma mensagem informando o motivo

  @saldo-inicial
  Cenário: Criar uma conta marcando a opção de saldo inicial
    Quando acesso a opção "Registrar"
    E preencho os dados de cadastro corretamente
    E marco a opção "Criar conta com saldo"
    E clico em "Cadastrar"
    Então a aplicação deve concluir o cadastro
    E o saldo inicial apresentado deve corresponder à regra dessa opção

  @saldo-inicial
  Cenário: Criar uma conta sem marcar a opção de saldo inicial
    Quando acesso a opção "Registrar"
    E preencho os dados de cadastro corretamente
    E deixo desmarcada a opção "Criar conta com saldo"
    E clico em "Cadastrar"
    Então a aplicação deve concluir o cadastro
    E o saldo inicial apresentado deve corresponder à regra da opção desmarcada
