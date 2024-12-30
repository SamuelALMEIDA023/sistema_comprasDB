Gerenciamento de Banco de Dados - Sistema de Compras

💡 Sobre o Projeto
Este repositório contém scripts SQL para a criação e manipulação de um banco de dados voltado para o gerenciamento de compras realizadas por clientes através de cartões de crédito. 
Abaixo, você encontrará uma documentação detalhada sobre cada script, tabelas criadas e consultas realizadas.

O foco do projeto está em fortalecer os conhecimentos sobre banco de dados SQL, sobre criação de tabelas em SQL, definição de atributos e tipo de dados, consultas SQL.

📁 Estrutura do Projeto
  
 -> tabelas.sql: Contém os comandos para criação das tabelas do banco de dados.

 -> consultas.sql: Inclui diversas consultas realizadas no banco de dados, com explicações e exemplos de saídas.
 

🛠️ Tabelas Criadas

🧑‍💼 Tabela cliente

Descrição: Armazena informações sobre os clientes.
Colunas:

    cliente_id (INT, PK): Identificador único do cliente.

    nome (VARCHAR): Nome do cliente.

    cpf (CHAR): CPF único do cliente.

    data_nascimento (DATE): Data de nascimento do cliente.
   

💳 Tabela cartao

Descrição: Armazena informações sobre os cartões de crédito dos clientes.
Colunas:

    cartao_id (INT, PK): Identificador único do cartão.

    numero (CHAR): Número único do cartão.

    limite (DECIMAL): Limite de crédito do cartão.

    saldo_disponivel (DECIMAL): Saldo disponível no cartão.

    id_cliente (INT, FK): Relaciona o cartão a um cliente.

🛒 Tabela compra

Descrição: Registra as compras realizadas pelos clientes.
Colunas:

    compra_id (INT, PK): Identificador único da compra.

    descricao (VARCHAR): Descrição da compra.

    valor (DECIMAL): Valor da compra.

    data_compra (DATETIME): Data e hora da compra.

    id_cartao (INT, FK): Relaciona a compra a um cartão.
    

🔍 Consultas Realizadas
 📝 Consulta para listar todas as compras realizadas por um cliente específico:

![Lista de compras Joao](images/lista.png)
 📝 Consulta que mostra o saldo disponível de um cartão após todas as compras:

![Saldo disponivel de um cliente após compras realizadas](images/saldoDisponivel.png)

📝 Consulta que exibe um resumo detalhado das compras realizadas por cliente:

![Resumo de compras](images/resumoDetalhado.png)

📝 Consulta que pesquisa o cliente com compra acima de R$ 2.000,00:

![Nome de cliente com total de compras acima de R$ 2000,00](images/pesquisaNome.png)

