# language: pt
@conta
Funcionalidade: Consulta da conta
  Como cliente do BugBank
  Quero consultar as informações da minha conta
  Para acompanhar meu saldo e minhas movimentações

  Contexto:
    Dado que estou logado no BugBank com uma conta de teste

  @positivo @smoke
  Cenário: Visualizar a área principal da conta
    Quando acesso a área principal do sistema
    Então devo visualizar as informações disponíveis da minha conta
    E devo conseguir identificar o saldo apresentado

  @saldo
  Cenário: Conferir o saldo de uma conta recém-criada
    Dado que acabei de criar uma conta de teste
    Quando acesso a área principal da conta
    Então o saldo exibido deve corresponder à condição escolhida no cadastro

  @consistencia
  Cenário: Conferir o saldo depois de uma transferência realizada
    Dado que realizei uma transferência com sucesso
    Quando volto para a área principal da conta
    Então o saldo deve refletir o valor transferido

  @consistencia
  Cenário: Conferir o saldo depois de um pagamento realizado
    Dado que realizei um pagamento com sucesso
    Quando volto para a área principal da conta
    Então o saldo deve refletir o valor pago

  @consistencia
  Cenário: Conferir o saldo depois de um saque realizado
    Dado que realizei um saque com sucesso
    Quando volto para a área principal da conta
    Então o saldo deve refletir o valor sacado
