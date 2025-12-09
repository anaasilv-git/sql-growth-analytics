-- Query 3: Top clientes por valor total gasto
-- Objetivo: identificar os clientes que mais geraram receita.
-- Tabela usada: orders (uma linha por pedido).

-- Versão 1: apenas ID do cliente
SELECT
    customer_id,
    SUM(amount) AS valor_total_gasto
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    valor_total_gasto DESC
LIMIT 5;


-- Versão 2: trazendo também o nome do cliente (recomendado)
-- Supondo a tabela customers (customer_id, name, ...)

SELECT
    c.customer_id,
    c.name AS nome_cliente,
    SUM(o.amount) AS valor_total_gasto
FROM
    orders o
JOIN
    customers c
    ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY
    valor_total_gasto DESC
LIMIT 5;
