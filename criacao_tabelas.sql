-- SCRIPT DE CRIAÇÃO DE TABELAS
-- Este script cria as tabelas do banco de dados: cliente, cartao e compra.

-- TABELA CLIENTE
CREATE TABLE cliente (
     cliente_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
     nome VARCHAR(100),
     cpf CHAR(11) UNIQUE,
     data_nascimento DATE
);

-- TABELA CARTAO
CREATE TABLE cartao (
    cartao_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    numero CHAR(16) UNIQUE,
    limite DECIMAL(10,2),
    saldo_disponivel DECIMAL(10,2),
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(cliente_id)
);

-- TABELA COMPRA
CREATE TABLE compra(
    compra_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	descricao VARCHAR(255),
    valor DECIMAL(10,2),
    data_compra DATETIME,
    id_cartao INT NOT NULL, 
    FOREIGN KEY (id_cartao) REFERENCES cartao(cartao_id)
);


-- INSERIR DADOS NA TABELA CLIENTE
INSERT INTO cliente(nome, cpf, data_nascimento)
VALUES("Joao Silva", 12345678900, "1990-01-15"),
      ("Maria Oliveira",  98765432100, "1985-03-22");
      

-- INSERIR DADOS NA TABELA CARTAO
INSERT INTO cartao(numero, limite, saldo_disponivel, id_cliente)
VALUES(1234123412341234, 5000.00, 5000.00, 1),
      (4321432143214321,  3000.00, 3000.00, 2);
      
-- INSERIR DADOS NA TABELA COMPRA
INSERT INTO compra(descricao, valor, data_compra, id_cartao)
VALUES("Notebook", 2500.00, "2023-11-01 10:30:00", 1),
      ("Mouse",  150.00, "2023-11-01 11:00:00", 1),
      ("Teclado",  200.00, "2023-11-02 14:00:00", 1),
      ("Monitor",  1100.00, "2023-11-01 15:00:00", 2),
      ("Impressora",  800.00, "2023-11-01 09:30:00", 2);