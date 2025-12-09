# Query 3 — Top Clientes por Valor Total Gasto

**Objetivo:**  
Identificar quais clientes mais geraram receita em um determinado período (ou no histórico completo), somando o valor de todos os pedidos (`orders`).

---

## 🧩 Por que essa métrica importa?

No CRM e no Growth, saber *quem são seus melhores clientes* é crucial para:

- criar campanhas VIP ou de relacionamento personalizado  
- montar segmentações de alta receita (top spenders)  
- analisar LTV por perfil de cliente  
- priorizar atendimento, ofertas e retenção  
- entender se a receita está concentrada em poucos clientes

---

## 🛠️ SQL Utilizado

### Versão simples (apenas IDs)

```sql
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
