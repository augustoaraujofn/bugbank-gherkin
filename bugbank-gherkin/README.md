# BugBank — cenários de teste com BDD e Gherkin

Este projeto reúne cenários de teste que estou elaborando para praticar análise de requisitos e escrita de casos de teste com BDD e Gherkin. Escolhi o BugBank porque ele simula operações de um banco digital e permite explorar diferentes fluxos de uma aplicação.

**Aplicação:** https://bugbank.netlify.app/  
**Requisitos:** https://bugbank.netlify.app/requirements

## Funcionalidades cobertas

| Arquivo | O que estou verificando |
|---|---|
| `cadastro.feature` | Criação de conta e validação dos dados informados |
| `login.feature` | Acesso com credenciais válidas e inválidas |
| `conta.feature` | Visualização dos dados da conta e do saldo |
| `transferencia.feature` | Transferências entre contas e validações dos valores e destinatários |
| `pagamento.feature` | Preenchimento dos dados de pagamento, confirmação e atualização do saldo |
| `extrato.feature` | Consulta e conferência das movimentações da conta |
| `saque.feature` | Solicitação de saque e validação do saldo disponível |

## Organização do repositório

```text
bugbank-gherkin/
├── README.md
├── features/
│   ├── cadastro.feature
│   ├── login.feature
│   ├── conta.feature
│   ├── transferencia.feature
│   ├── pagamento.feature
│   ├── extrato.feature
│   └── saque.feature
└── docs/
    ├── analise-inicial.md
    ├── plano-de-testes.md
    └── modelo-bug-report.md
```

## Exemplo de cenário

```gherkin
Cenário: Realizar uma transferência com saldo suficiente
  Dado que estou logado em uma conta com saldo disponível
  E tenho os dados de uma conta de destino válida
  Quando informo os dados da conta de destino
  E preencho um valor menor que o saldo disponível
  E confirmo a transferência
  Então a operação deve ser concluída
  E o saldo da minha conta deve ser atualizado
```

## Como estou conduzindo os testes

Nesta versão, o foco é **planejamento e documentação de cenários em Gherkin**. Não há código de automação, integração contínua ou execução automatizada.

Os cenários ainda precisam ser executados manualmente na aplicação. Durante essa etapa, vou comparar o resultado encontrado com o resultado esperado, registrar evidências quando forem úteis e revisar os passos que se mostrarem pouco claros.

Não vou marcar cenários como aprovados ou reprovados antes de executá-los. Caso encontre uma diferença entre o comportamento observado e o esperado, vou documentá-la usando o modelo de bug report disponível em `docs/modelo-bug-report.md`.

## Observações sobre os requisitos

A página de requisitos do BugBank apresenta as áreas de login, cadastro, transferência, pagamento, extrato e saque. Ela também informa que a aplicação não utiliza banco de dados e que as informações são armazenadas em memória local.

Nem todas as regras de negócio, mensagens de validação ou limites estão descritos nessa página. Por isso, os cenários que dependem desses detalhes devem ser confirmados durante a exploração da aplicação. Não defini valores, tarifas ou mensagens específicas sem uma referência que os comprove.

## Documentos de apoio

- `docs/analise-inicial.md`: observações iniciais e pontos que precisam ser confirmados.
- `docs/plano-de-testes.md`: objetivo, escopo e abordagem de execução manual.
- `docs/modelo-bug-report.md`: modelo para registrar defeitos encontrados durante os testes.

## Autor

**Augusto Araújo**  
[GitHub](https://github.com/augustoaraujofn) · [LinkedIn](https://www.linkedin.com/in/augusto-ara%C3%BAjo/)
