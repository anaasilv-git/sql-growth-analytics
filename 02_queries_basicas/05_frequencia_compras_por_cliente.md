# Query 5 — Frequência de Compras por Cliente

**Objetivo:**  
Descobrir quantos pedidos cada cliente já fez e identificar quem compra mais frequentemente.

Essa métrica é uma das mais importantes em CRM, pois faz parte do pilar **Frequência** do modelo RFV (Recência, Frequência, Valor).

---

## 🧩 Por que essa métrica importa?

- identifica clientes altamente engajados  
- ajuda a detectar compradores ocasionais vs. recorrentes  
- apoia ações de retenção e reativação  
- alimenta cálculos de **LTV**  
- mostra concentração de engajamento na base  
- serve de insumo para segmentações do tipo "heavy users"

É extremamente útil para análises de comportamento e decisões de marketing.

---

## 🛠️ SQL Utilizado

### Versão simples
```sql
SELECT
    customer_id,
    COUNT(order_id) AS quantidade_pedidos
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    quantidade_pedidos DESC;
