# language: pt
@extrato
Funcionalidade: Consulta do extrato
  Como cliente do BugBank
  Quero consultar o extrato da minha conta
  Para acompanhar as movimentações realizadas

  Contexto:
    Dado que estou logado no BugBank com uma conta de teste

  @CT-EXT-001 @positivo @smoke
  Cenário: Abrir o extrato da conta
    Quando acesso a funcionalidade de extrato
    Então devo visualizar o histórico de movimentações disponível

  @CT-EXT-002 @consistencia
  Cenário: Conferir uma transferência realizada no extrato
    Dado que realizei uma transferência com sucesso
    Quando acesso o extrato da conta de origem
    Então devo encontrar o registro da transferência
    E o valor apresentado deve corresponder ao valor transferido

  @CT-EXT-003 @consistencia
  Cenário: Conferir um pagamento realizado no extrato
    Dado que realizei um pagamento com sucesso
    Quando acesso o extrato da conta
    Então devo encontrar o registro do pagamento, caso esse tipo de operação seja apresentado
    E as informações disponíveis devem corresponder ao pagamento realizado

  @CT-EXT-004 @consistencia
  Cenário: Conferir um saque realizado no extrato
    Dado que realizei um saque com sucesso
    Quando acesso o extrato da conta
    Então devo encontrar o registro do saque, caso esse tipo de operação seja apresentado
    E o valor apresentado deve corresponder ao valor sacado

  @CT-EXT-005 @ordenacao
  Cenário: Verificar a ordem das movimentações
    Dado que realizei mais de uma movimentação na conta
    Quando acesso o extrato
    Então as movimentações devem ser apresentadas na ordem definida pela aplicação

  @CT-EXT-006 @consistencia
  Cenário: Verificar a movimentação mais recente
    Dado que realizei uma movimentação há pouco tempo
    Quando acesso o extrato da conta
    Então devo conseguir identificar a movimentação realizada
    E os dados apresentados devem corresponder à operação

  @CT-EXT-007 @exploratorio
  Cenário: Consultar o extrato de uma conta sem movimentações
    Dado que estou utilizando uma conta de teste sem movimentações
    Quando acesso o extrato
    Então a aplicação deve apresentar o estado vazio ou a mensagem correspondente
    E não deve exibir movimentações que não pertencem à conta
