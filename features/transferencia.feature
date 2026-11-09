# language: pt
@transferencia
Funcionalidade: Transferência entre contas
  Como cliente do BugBank
  Quero transferir um valor para outra conta
  Para movimentar meu dinheiro dentro da aplicação

  Contexto:
    Dado que estou logado em uma conta de teste
    E tenho os dados de uma segunda conta de teste

  @positivo @smoke
  Cenário: Realizar uma transferência com saldo suficiente
    Quando acesso a funcionalidade de transferência
    E informo os dados válidos da conta de destino
    E preencho um valor menor que o saldo disponível
    E confirmo a transferência
    Então a operação deve ser concluída
    E a aplicação deve apresentar uma confirmação
    E o saldo da conta de origem deve ser atualizado

  @positivo
  Cenário: Transferir todo o saldo disponível
    Dado que conheço o saldo disponível da conta de origem
    Quando informo os dados válidos da conta de destino
    E preencho o valor total do saldo disponível
    E confirmo a transferência
    Então o sistema deve seguir a regra definida para transferência do saldo total
    E o saldo da conta de origem deve ser atualizado de acordo com o resultado

  @negativo
  Cenário: Tentar transferir um valor maior que o saldo disponível
    Quando acesso a funcionalidade de transferência
    E informo os dados válidos da conta de destino
    E preencho um valor maior que o saldo disponível
    E confirmo a transferência
    Então a aplicação não deve concluir a transferência
    E deve informar que o saldo é insuficiente
    E o saldo da conta de origem deve permanecer inalterado

  @negativo
  Cenário: Tentar transferir o valor zero
    Quando acesso a funcionalidade de transferência
    E informo os dados válidos da conta de destino
    E preencho o valor zero
    E confirmo a transferência
    Então a aplicação deve impedir a operação
    E deve informar que o valor não é válido

  @negativo
  Cenário: Tentar transferir um valor negativo
    Quando acesso a funcionalidade de transferência
    E informo os dados válidos da conta de destino
    E preencho um valor negativo
    E confirmo a transferência
    Então a aplicação deve impedir a operação
    E o saldo da conta de origem deve permanecer inalterado

  @negativo
  Cenário: Tentar transferir sem informar o valor
    Quando acesso a funcionalidade de transferência
    E informo os dados válidos da conta de destino
    Mas deixo o campo de valor vazio
    E confirmo a transferência
    Então a aplicação deve solicitar o valor da transferência
    E a operação não deve ser concluída

  @negativo
  Cenário: Tentar transferir sem informar os dados da conta de destino
    Quando acesso a funcionalidade de transferência
    E deixo os campos da conta de destino vazios
    E informo um valor válido
    E confirmo a transferência
    Então a aplicação deve solicitar os dados da conta de destino
    E a operação não deve ser concluída

  @negativo
  Cenário: Tentar transferir para uma conta inexistente
    Quando acesso a funcionalidade de transferência
    E informo dados de uma conta de destino inexistente
    E preencho um valor válido
    E confirmo a transferência
    Então a aplicação não deve concluir a operação
    E deve apresentar uma mensagem sobre a conta de destino

  @consistencia
  Cenário: Conferir os saldos das contas depois de uma transferência
    Dado que conheço os saldos iniciais das duas contas
    Quando realizo uma transferência válida da conta de origem para a conta de destino
    Então o saldo da conta de origem deve diminuir pelo valor transferido
    E o saldo da conta de destino deve aumentar pelo mesmo valor
