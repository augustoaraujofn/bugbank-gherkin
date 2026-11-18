# BugBank — Testes de Software com BDD e Gherkin

## Sobre o projeto

Este projeto tem como objetivo aplicar conhecimentos de Quality Assurance (QA) por meio da elaboração e execução de testes manuais na aplicação BugBank.

Foram desenvolvidos cenários de teste utilizando BDD (Behavior-Driven Development) e Gherkin, contemplando diferentes funcionalidades da aplicação, com foco na validação de comportamentos, identificação de possíveis defeitos e análise da consistência das operações.

O projeto também contempla o registro de evidências e a documentação dos defeitos identificados durante as verificações.

**Aplicação:** https://bugbank.netlify.app/

**Requisitos:** https://bugbank.netlify.app/requirements

## Objetivos

- Elaborar cenários de teste utilizando Gherkin.
- Aplicar conceitos de BDD na especificação de comportamentos.
- Executar testes manuais nas funcionalidades da aplicação.
- Validar comportamentos esperados e identificar inconsistências.
- Aplicar cenários positivos, negativos e de consistência.
- Registrar evidências das verificações realizadas.
- Documentar defeitos encontrados durante os testes.

## Funcionalidades testadas

Os cenários foram organizados de acordo com as funcionalidades da aplicação:

| Funcionalidade | Descrição |
|---|---|
| Cadastro | Criação de contas e validação dos dados informados |
| Login | Autenticação e validação de credenciais |
| Conta | Consulta de informações e verificação de saldo |
| Transferência | Validação de operações entre contas |
| Extrato | Consulta, ordenação e consistência das movimentações |
| Pagamento | Validação dos dados e regras de pagamento |
| Saque | Validação das operações de retirada de saldo |

## Tipos de testes abordados

- **Testes positivos:** validação de operações com dados válidos.
- **Testes negativos:** verificação do comportamento diante de dados inválidos ou operações não permitidas.
- **Testes de consistência:** conferência da integridade das informações e atualização do saldo.
- **Testes exploratórios:** investigação de comportamentos inesperados e possíveis falhas.
- **Testes de regressão:** verificação de funcionalidades para identificar possíveis impactos em comportamentos já existentes.

## Tecnologias e práticas utilizadas

| Tecnologia / Prática | Aplicação |
|---|---|
| Gherkin | Escrita dos cenários de teste |
| BDD | Especificação de comportamentos |
| Markdown | Documentação do projeto |
| Git e GitHub | Versionamento e organização dos arquivos |
| Testes manuais | Execução e validação dos cenários |

## Estrutura do projeto

```text
bugbank-gherkin/
│
├── bug-reports/
│   ├── CT-CAD-007-bug
|   └── CT-CAD-009-bug   
├── docs/
│   ├── analise-inicial.md
│   └──plano-de-testes.md   
│
├── evidências/
│   ├── cadastro.evid
│   ├── conta.evid
│   ├── extrato.evid
│   ├── login.evid
│   ├── pagamento.evid
│   ├── saque.evid
|   └── transferencia.evid
│
├── features/
│   ├── cadastro.feature
│   ├── conta.feature
│   ├── extrato.feature
│   ├── login.feature
│   ├── pagamento.feature
│   ├── saque.feature
|   └── transferencia.feature
│
└── README.md
```

## Exemplo de cenário em Gherkin

```gherkin
@CT-TRA-001 @positivo @smoke
  Cenário: Realizar uma transferência com saldo suficiente
    Quando acesso a funcionalidade de transferência
    E informo os dados válidos da conta de destino
    E preencho um valor menor que o saldo disponível
    E confirmo a transferência
    Então a operação deve ser concluída
    E a aplicação deve apresentar uma confirmação
    E o saldo da conta de origem deve ser atualizado
```

## Execução e análise dos testes

Todos os cenários de teste documentados em Gherkin foram utilizados durante a execução de testes manuais na aplicação BugBank.

Durante as execuções, foram analisados os comportamentos das funcionalidades, comparando os resultados obtidos com os resultados esperados, com o objetivo de identificar possíveis inconsistências e defeitos.

As evidências das verificações realizadas estão organizadas no diretório `evidências/`, enquanto os defeitos identificados são documentados em `bug-reports/`.

Durante os testes, algumas limitações da aplicação foram identificadas. As funcionalidades de Pagamento e Saque, por exemplo, apresentaram mensagens informando que estavam em desenvolvimento, impossibilitando a execução prática dos respectivos fluxos.

Nesses casos, os impedimentos foram registrados como evidências, mantendo a documentação dos cenários para futuras validações.

**Abordagem:** testes manuais, BDD e documentação em Gherkin. O projeto não contempla automação da execução dos testes.

## Aprendizados

O desenvolvimento deste projeto proporcionou a prática de atividades importantes para QA, como:

- Análise de requisitos e identificação de comportamentos esperados.
- Elaboração e organização de cenários de teste.
- Aplicação de BDD e Gherkin.
- Execução de testes manuais.
- Identificação e documentação de possíveis defeitos.
- Registro e organização de evidências.
- Análise de resultados e identificação de limitações da aplicação.

## Autor

**Augusto Araújo**

[GitHub](https://github.com/augustoaraujofn)

[LinkedIn](https://www.linkedin.com/in/augusto-ara%C3%BAjo/)
