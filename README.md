# BugBank — cenários de teste com BDD e Gherkin

Este repositório reúne cenários que estou escrevendo para praticar análise de testes e BDD usando o BugBank, uma aplicação que simula algumas operações de um banco digital.

Escolhi começar pelos fluxos de cadastro, login, consulta da conta, transferência e extrato. São caminhos que se relacionam: o usuário cria uma conta, entra no sistema, movimenta o saldo e depois confere o que aconteceu.

**Aplicação:** [BugBank](https://bugbank.netlify.app/)

## O que tem aqui

Os arquivos `.feature` descrevem o comportamento que espero encontrar em cada funcionalidade. Tentei escrever os passos de um jeito que outra pessoa consiga entender o que está sendo testado sem precisar ler uma explicação longa.

| Arquivo | O que estou verificando |
|---|---|
| `cadastro.feature` | Criação de conta, preenchimento dos campos e validações |
| `login.feature` | Entrada com dados corretos e tentativas com dados inválidos |
| `conta.feature` | Acesso à conta e consulta do saldo |
| `transferencia.feature` | Transferências válidas e situações em que a operação deve ser recusada |
| `extrato.feature` | Consulta do histórico e conferência de uma transferência |

## Organização

```text
bugbank-bdd-gherkin/
├── README.md
├── features/
│   ├── cadastro.feature
│   ├── login.feature
│   ├── conta.feature
│   ├── transferencia.feature
│   └── extrato.feature
└── docs/
    ├── analise-inicial.md
    ├── plano-de-testes.md
    └── modelo-bug-report.md
```

## Um exemplo

Este é um dos cenários que escrevi para a transferência:

```gherkin
Cenário: Transferir um valor dentro do saldo disponível
  Dado que estou logado em uma conta com saldo disponível
  E tenho os dados de uma segunda conta do BugBank
  Quando faço uma transferência para essa conta
  E informo um valor menor que o meu saldo
  Então a transferência deve ser concluída
  E o saldo da minha conta deve diminuir pelo valor transferido
```

A intenção é deixar claro o que precisa acontecer, sem prender o cenário a detalhes de automação ou de código.

## Como estou conduzindo os testes

Por enquanto, este é um projeto de **planejamento e documentação**. Os cenários ainda precisam ser executados manualmente no site. Não estou apresentando nenhum deles como aprovado ou reprovado e também não estou afirmando que encontrei defeitos.

Quando fizer a execução, pretendo anotar o resultado, guardar uma captura de tela quando ela ajudar a explicar o que aconteceu e abrir um bug report caso encontre uma diferença entre o esperado e o que a aplicação apresentou.

Uma observação importante: o próprio BugBank informa que não possui banco de dados e que as informações ficam armazenadas em memória local. Por isso, os testes devem usar contas de demonstração e os dados podem precisar ser criados novamente, dependendo da sessão ou do ambiente utilizado.

## O que ficou para uma próxima etapa

A página de requisitos do BugBank também apresenta as áreas de pagamento e saque. Deixei essas duas funcionalidades para uma próxima revisão, depois de detalhar os fluxos e as regras que deverão ser conferidos nelas.

Também quero executar os cenários, registrar os resultados e melhorar os passos que ficarem vagos durante a prática. A automação não faz parte desta versão: aqui o foco é somente escrever os cenários em Gherkin.

## Referências

- [Aplicação BugBank](https://bugbank.netlify.app/)
- [Página de requisitos do BugBank](https://bugbank.netlify.app/requirements)

## Autor

**Augusto Araújo**  
[GitHub](https://github.com/augustoaraujofn) · [LinkedIn](https://www.linkedin.com/in/augusto-ara%C3%BAjo/)
