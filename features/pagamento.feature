# language: pt
@pagamento
Funcionalidade: Pagamento
  Como cliente do BugBank
  Quero realizar um pagamento pela aplicação
  Para quitar uma cobrança utilizando o saldo da minha conta

  Contexto:
    Dado que estou logado em uma conta de teste
    E tenho acesso à funcionalidade de pagamento

  @positivo @smoke
  Cenário: Realizar um pagamento com dados válidos e saldo suficiente
    Dado que tenho saldo suficiente para o pagamento
    Quando informo os dados de pagamento aceitos pela aplicação
    E confiro as informações apresentadas
    E confirmo a operação
    Então o pagamento deve ser processado com sucesso
    E a aplicação deve apresentar uma confirmação
    E o saldo da conta deve ser atualizado pelo valor pago

  @negativo
  Cenário: Tentar realizar um pagamento sem preencher os dados obrigatórios
    Quando acesso a funcionalidade de pagamento
    E tento confirmar a operação sem preencher os dados obrigatórios
    Então a aplicação deve indicar quais informações precisam ser preenchidas
    E o pagamento não deve ser realizado

  @negativo
  Cenário: Informar dados de pagamento em formato inválido
    Quando acesso a funcionalidade de pagamento
    E informo dados em um formato que a aplicação não aceita
    E tento confirmar a operação
    Então a aplicação deve informar que os dados são inválidos
    E o pagamento não deve ser realizado

  @negativo
  Cenário: Tentar pagar um valor maior que o saldo disponível
    Dado que o saldo da minha conta é menor que o valor da cobrança
    Quando informo os dados válidos de pagamento
    E tento confirmar o pagamento
    Então a aplicação não deve concluir a operação
    E deve informar que o saldo é insuficiente
    E o saldo da conta deve permanecer inalterado

  @negativo
  Cenário: Tentar realizar um pagamento com valor zero
    Quando informo os dados de pagamento
    E preencho o valor zero, caso exista campo para informar o valor
    E tento confirmar a operação
    Então a aplicação deve impedir um pagamento sem valor válido

  @consistencia
  Cenário: Conferir a atualização do saldo depois do pagamento
    Dado que conheço o saldo antes da operação
    Quando realizo um pagamento válido
    Então o saldo deve apresentar o desconto correspondente ao pagamento

  @consistencia
  Cenário: Conferir o registro do pagamento no extrato
    Quando realizo um pagamento válido
    E acesso o extrato da conta
    Então devo encontrar o registro do pagamento, caso essa movimentação seja listada no extrato
    E as informações exibidas devem corresponder à operação realizada

  @exploratorio
  Cenário: Verificar como a aplicação trata uma tentativa repetida de pagamento
    Dado que acabei de confirmar um pagamento
    Quando tento enviar novamente os mesmos dados de pagamento
    Então a aplicação deve apresentar o comportamento previsto para evitar uma cobrança duplicada
    E o resultado deve ser conferido durante a execução do teste
