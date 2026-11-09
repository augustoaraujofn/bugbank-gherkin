# language: pt
@saque
Funcionalidade: Saque
  Como cliente do BugBank
  Quero solicitar um saque da minha conta
  Para retirar parte do saldo disponível

  Contexto:
    Dado que estou logado em uma conta de teste
    E tenho acesso à funcionalidade de saque

  @positivo @smoke
  Cenário: Realizar um saque com saldo suficiente
    Dado que tenho saldo suficiente para o saque
    Quando informo um valor válido para retirada
    E confirmo a operação
    Então o saque deve ser concluído
    E a aplicação deve apresentar uma confirmação
    E o saldo da conta deve ser atualizado pelo valor sacado

  @positivo
  Cenário: Sacar todo o saldo disponível
    Dado que conheço o saldo disponível da conta
    Quando informo o valor total do saldo para saque
    E confirmo a operação
    Então a aplicação deve seguir a regra definida para saque do saldo total
    E o saldo deve ser atualizado de acordo com o resultado

  @negativo
  Cenário: Tentar sacar um valor maior que o saldo disponível
    Dado que o valor solicitado é maior que o saldo da conta
    Quando tento confirmar o saque
    Então a aplicação não deve concluir a operação
    E deve informar que o saldo é insuficiente
    E o saldo da conta deve permanecer inalterado

  @negativo
  Cenário: Tentar sacar o valor zero
    Quando informo o valor zero para saque
    E tento confirmar a operação
    Então a aplicação deve impedir o saque
    E deve informar que o valor não é válido

  @negativo
  Cenário: Tentar sacar um valor negativo
    Quando informo um valor negativo para saque
    E tento confirmar a operação
    Então a aplicação deve impedir o saque
    E o saldo da conta deve permanecer inalterado

  @negativo
  Cenário: Tentar realizar um saque sem informar o valor
    Quando acesso a funcionalidade de saque
    E deixo o campo de valor vazio
    E tento confirmar a operação
    Então a aplicação deve solicitar o valor do saque
    E a operação não deve ser concluída

  @consistencia
  Cenário: Conferir a atualização do saldo depois do saque
    Dado que conheço o saldo antes da operação
    Quando realizo um saque válido
    Então o saldo apresentado deve ser o saldo anterior menos o valor sacado

  @consistencia
  Cenário: Conferir o registro do saque no extrato
    Quando realizo um saque válido
    E acesso o extrato da conta
    Então devo encontrar o registro do saque, caso essa movimentação seja listada
    E as informações apresentadas devem corresponder à operação
