-- SCRIPT DE CONSULTAS
-- Aqui estão as consultas realizadas no banco de dados.

-- LISTANDO AS COMPRAS REALIZADAS PELO JOAO
SELECT cl.nome, cp.descricao, cp.valor, cp.data_compra
FROM cliente AS cl
JOIN cartao AS ct
ON cl.cliente_id = ct.id_cliente
JOIN compra AS cp
ON ct.cartao_id = cp.id_cartao
WHERE cl.nome = "Joao Silva";


-- CALCULO DA SOMA DOS VALORES GASTOS POR JOAO
SELECT SUM(valor) AS total_gasto
FROM compra
WHERE id_cartao = 1;

-- ATUALIZANDO SALDO DISPONIVEL NO CARTAO
UPDATE cartao 
SET saldo_disponivel = saldo_disponivel - (
      SELECT SUM(valor) AS total_gasto
	  FROM compra
      WHERE id_cartao = 1
)
WHERE cartao_id = 1;

-- MOSTRANDO O SALDO DISPONIVEL DE JOAO APÓS COMPRAS 
SELECT ct.numero, ct.saldo_disponivel 
FROM cartao AS ct
WHERE cartao_id = 1;

-- RESUMO DETALHADO DAS COMPRAS REALIZADAS POR CLIENTES
SELECT cl.nome, ct.numero , (
    SELECT SUM(valor) AS total_gasto 
	FROM compra
	WHERE compra.id_cartao = ct.cartao_id
) AS total_gasto ,( 
   SELECT COUNT(descricao) AS quantidade_compras 
   FROM compra 
   WHERE compra.id_cartao = ct.cartao_id
) AS quantidade_compras
FROM cliente AS cl
JOIN cartao AS ct
ON cl.cliente_id = ct.id_cliente;

--  LISTANDO CLIENTE QUE FIZERAM COMPRA ACIMA DE UM DETERMINADO VALOR
SELECT cl.nome 
FROM cliente AS cl
JOIN cartao AS ct
ON cl.cliente_id = ct.id_cliente
WHERE (
    SELECT SUM(valor) 
	FROM compra AS cp
	WHERE cp.id_cartao = ct.cartao_id
) > 2000.00;


-- ATUALIZANDO NOME DE CLIENTE
UPDATE cliente 
SET nome = "João da Silva de Oliveira" 
WHERE cliente_id = 1;
