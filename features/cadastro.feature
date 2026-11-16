Contexto:
    Dado que estou na página inicial do BugBank

  @CT-CAD-001 @positivo @smoke
  Cenário: Criar uma conta preenchendo os dados corretamente sem conta com saldo
    Dado que não existe uma conta cadastrada com o e-mail informado
    Quando acesso a opção "Registrar"
    E informo um e-mail válido
    E preencho meu nome
    E informo uma senha válida
    E repito a mesma senha no campo de confirmação
    E clico em "Cadastrar"
    Então a aplicação deve concluir o cadastro
    E deve apresentar uma confirmação da criação da conta

  @CT-CAD-002 @positivo @smoke
  Cenário: Criar uma conta preenchendo os dados corretamente com conta com saldo
    Dado que não existe uma conta cadastrada com o e-mail informado
    Quando acesso a opção "Registrar"
    E informo um e-mail válido
    E preencho meu nome
    E informo uma senha válida
    E repito a mesma senha no campo de confirmação
    E marco a opção criar conta com saldo
    E clico em "Cadastrar"
    Então a aplicação deve concluir o cadastro
    E deve apresentar uma confirmação da criação da conta

  @CT-CAD-003 @negativo
  Cenário: Tentar cadastrar sem preencher os campos com e sem conta com saldo
    Dado que estou na tela de cadastro
    Quando clico em "Cadastrar" sem preencher os campos
    Então a aplicação deve indicar que existem campos obrigatórios
    E a conta não deve ser criada

  @CT-CAD-004 @negativo
  Cenário: Tentar cadastrar sem informar o e-mail com ou sem saldo em conta
    Dado que estou na tela de cadastro
    Quando preencho o nome e os campos de senha
    E deixo o campo de e-mail vazio
    E clico em "Cadastrar"
    Então a aplicação deve solicitar o preenchimento do e-mail
    E a conta não deve ser criada

  @CT-CAD-005 @negativo
  Cenário: Tentar cadastrar sem informar o nome com ou sem saldo em conta
    Dado que estou na tela de cadastro
    Quando informo um e-mail válido
    E preencho os campos de senha corretamente
    E deixo o campo de nome vazio
    E clico em "Cadastrar"
    Então a aplicação deve solicitar o preenchimento do nome
    E a conta não deve ser criada

  @CT-CAD-006 @negativo
  Cenário: Tentar cadastrar sem informar a senha com ou sem saldo em conta
    Dado que estou na tela de cadastro
    Quando informo um e-mail válido
    E preencho meu nome
    E deixo os campos de senha vazios
    E clico em "Cadastrar"
    Então a aplicação deve solicitar o preenchimento da senha
    E a conta não deve ser criada

  @CT-CAD-007 @negativo
  Cenário: Informar um e-mail em formato inválido com ou sem saldo em conta
    Dado que estou na tela de cadastro
    Quando informo um e-mail em formato inválido
    E preencho meu nome e os campos de senha corretamente
    E clico em "Cadastrar"
    Então a aplicação deve indicar que o e-mail é inválido
    E a conta não deve ser criada

  @CT-CAD-008 @negativo
  Cenário: Informar senhas diferentes com ou sem saldo em conta
    Dado que estou na tela de cadastro
    Quando preencho os dados de cadastro
    E informo uma senha no primeiro campo
    E informo uma senha diferente no campo de confirmação
    E clico em "Cadastrar"
    Então a aplicação deve informar que as senhas não correspondem
    E a conta não deve ser criada

  @CT-CAD-009 @negativo
  Cenário: Tentar cadastrar com um e-mail que já está em uso com ou sem saldo em conta
    Dado que existe uma conta cadastrada com um determinado e-mail
    E estou na tela de cadastro
    Quando informo o mesmo e-mail já utilizado em outra conta
    E preencho meu nome e os campos de senha corretamente
    E clico em "Cadastrar"
    Então a aplicação deve impedir a criação da nova conta
    E deve apresentar uma mensagem informando que o e-mail já está cadastrado
