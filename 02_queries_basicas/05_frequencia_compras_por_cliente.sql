-- Query 5: Frequência de compras por cliente
-- Objetivo: contar quantos pedidos cada cliente já fez.
-- Tabela usada: orders

----------------------------------------------
-- Versão 1: simples (somente IDs)
----------------------------------------------
SELECT
    customer_id,
    COUNT(order_id) AS quantidade_pedidos
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    quantidade_pedidos DESC;


----------------------------------------------
-- Versão 2: incluindo o nome do cliente
----------------------------------------------
SELECT
    c.customer_id,
    c.name AS nome_cliente,
    COUNT(o.order_id) AS quantidade_pedidos
FROM
    orders o
JOIN
    customers c
    ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY
    quantidade_pedidos DESC;


----------------------------------------------
-- Versão 3: ranking dos clientes por frequência
-- (muito usado em dashboards e squads de CRM)
----------------------------------------------
SELECT
    c.customer_id,
    c.name AS nome_cliente,
    COUNT(o.order_id) AS quantidade_pedidos,
    RANK() OVER (ORDER BY COUNT(o.order_id) DESC) AS posicao_ranking
FROM
    orders o
JOIN
    customers c
    ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY
    quantidade_pedidos DESC;
