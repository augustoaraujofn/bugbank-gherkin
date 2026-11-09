# Plano de testes — BugBank

## Objetivo

Organizar a validação manual dos principais fluxos do BugBank. Os casos foram escritos em Gherkin para deixar claros os comportamentos que pretendo verificar.

## Escopo

- Cadastro de conta;
- Login;
- Consulta da conta e do saldo;
- Transferência;
- Pagamento;
- Consulta do extrato;
- Saque.

## Fora do escopo desta versão

- Automação dos testes;
- Testes de carga e desempenho;
- Testes de segurança especializados;
- Integração com bancos ou movimentação de dinheiro real.

## Preparação

Vou utilizar somente contas e dados fictícios. Para os testes de movimentação, preciso conhecer o saldo inicial e preparar as contas necessárias antes de executar cada cenário. Como a aplicação informa que utiliza armazenamento em memória local, não vou depender de dados de uma sessão anterior sem confirmar que continuam disponíveis.

## Execução e registro

Para cada cenário, pretendo registrar:

- Identificação do cenário;
- Data e navegador utilizados;
- Resultado: passou, falhou ou bloqueado;
- Resultado encontrado e comparação com o esperado;
- Evidências, como captura de tela ou vídeo, quando forem úteis;
- Bug report relacionado, caso seja identificado um defeito reproduzível.

Um cenário só será marcado como executado depois que os passos forem realizados na aplicação. Caso uma regra de negócio ainda não esteja clara, vou registrar a dúvida em vez de considerar o teste aprovado.
