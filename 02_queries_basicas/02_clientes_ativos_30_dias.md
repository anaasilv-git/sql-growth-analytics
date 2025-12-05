# Query 2 — Clientes Ativos nos Últimos 30 Dias

**Objetivo:**  
Calcular quantos clientes fizeram pelo menos um pedido nos últimos 30 dias em relação à data atual.

Aqui usamos a definição:  
> Cliente ativo_30_dias = cliente que aparece na tabela `orders` com `order_date` no intervalo dos últimos 30 dias.

---

## 🔍 Por que essa métrica importa?

Ela é uma evolução da Query 1.

Enquanto a **Query 1** mostra quantos clientes **já compraram na vida**,  
a **Query 2** mostra quantos clientes estão **recentemente engajados**.

No CRM e no Growth, essa métrica é útil para:

- acompanhar **base ativa recente**  
- medir efeito de campanhas recentes  
- comparar períodos (últimos 30 vs 30 anteriores)  
- alimentar análise de **churn** e **reativação**  
- identificar se o negócio está “respirando” bem

---

## 🛠️ SQL Utilizado

```sql
SELECT
    COUNT(DISTINCT customer_id) AS clientes_ativos_30_dias
FROM
    orders
WHERE
    order_date >= CURRENT_DATE - INTERVAL '30 DAY';
