# Query 6 — Ticket Médio por Cliente

**Objetivo:**  
Calcular o valor médio gasto em cada pedido por cliente.  
Nesta análise, o *ticket médio por cliente* é definido como:

> ticket_medio = média do valor (`amount`) dos pedidos daquele cliente na tabela `orders`.

---

## 🧩 Por que essa métrica importa?

Dentro do modelo **RFV (Recência, Frequência, Valor)**, o *Valor* costuma ser analisado de duas formas:

- **Valor total** (Query 3) → quanto o cliente já gastou no histórico  
- **Ticket médio** (Query 6) → quanto ele gasta em média por pedido  

O ticket médio ajuda a:

- identificar clientes que compram pouco, mas com tickets altos  
- diferenciar “compradores de volume” de “compradores premium”  
- apoiar estratégias de up-sell, cross-sell e combo  
- entender o efeito de campanhas em valor de pedido

---

## 🛠️ SQL Utilizado

### Versão com ID

```sql
SELECT
    customer_id,
    AVG(amount) AS ticket_medio
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    ticket_medio DESC;
