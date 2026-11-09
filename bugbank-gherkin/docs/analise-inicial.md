# Análise inicial do BugBank

Este documento reúne as observações usadas para organizar a primeira versão dos cenários. A ideia é registrar o que já está visível na aplicação e separar isso das regras que ainda precisam ser verificadas durante a execução.

## Funcionalidades identificadas

Na página de requisitos do BugBank aparecem as seguintes áreas:

- Login;
- Cadastro;
- Transferência;
- Pagamento;
- Extrato;
- Saque.

Na tela inicial, a aplicação apresenta os campos de e-mail e senha, a opção de acessar e o formulário de registro. No cadastro, também aparece a opção "Criar conta com saldo".

## Pontos que precisam ser confirmados

- Qual é o saldo inicial criado quando a opção de saldo está marcada e quando está desmarcada.
- Quais são as mensagens exatas apresentadas nas validações de cadastro e login.
- Quais dados são solicitados para realizar um pagamento e quais formatos são aceitos.
- Quais dados são solicitados para realizar um saque e se há limites para a operação.
- Como a aplicação trata valores iguais ao saldo disponível, valores zero e valores negativos.
- Quais informações de cada operação são apresentadas no extrato.
- Como a aplicação se comporta quando o usuário tenta repetir uma operação.

Não defini tarifas, valores mínimos ou máximos, mensagens específicas ou regras que não estejam descritas nos requisitos consultados. Esses pontos devem ser observados na aplicação antes de serem considerados resultados esperados definitivos.

## Observação sobre os dados

A página de requisitos informa que a aplicação não conta com um banco de dados e que as informações são armazenadas em memória local. Por isso, os cenários devem usar contas fictícias e os dados podem precisar ser criados novamente conforme a sessão ou o ambiente utilizado.

## Referências

- https://bugbank.netlify.app/
- https://bugbank.netlify.app/requirements
