-- Query 1: Contar clientes ativos
-- Definição: Cliente ativo é aquele que fez pelo menos 1 pedido.
-- Tabela usada: orders (versão básica e intermediária da base)

SELECT 
    COUNT(DISTINCT customer_id) AS clientes_ativos
FROM 
    orders;
