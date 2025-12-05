-- Query 2: Contar clientes que fizeram pedidos nos últimos 30 dias
-- Definição: Cliente ativo_30_dias = fez pelo menos 1 pedido nos últimos 30 dias.
-- Tabela usada: orders
-- Observação: CURRENT_DATE pode variar conforme o banco (GETDATE(), NOW(), etc.).

SELECT
    COUNT(DISTINCT customer_id) AS clientes_ativos_30_dias
FROM
    orders
WHERE
    order_date >= CURRENT_DATE - INTERVAL '30 DAY';
