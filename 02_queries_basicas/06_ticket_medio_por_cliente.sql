-- Query 6: Ticket médio por cliente
-- Objetivo: calcular o valor médio gasto por pedido em cada cliente.
-- Tabela usada: orders

----------------------------------------------
-- Versão 1: ticket médio por cliente (ID)
----------------------------------------------
SELECT
    customer_id,
    AVG(amount) AS ticket_medio
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    ticket_medio DESC;


----------------------------------------------
-- Versão 2: ticket médio com nome do cliente
----------------------------------------------
SELECT
    c.customer_id,
    c.name AS nome_cliente,
    AVG(o.amount) AS ticket_medio
FROM
    orders o
JOIN
    customers c
        ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY
    ticket_medio DESC;
