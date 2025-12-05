# Query 1 — Contar Clientes Ativos

**Objetivo:**  
Identificar quantos clientes realizaram pelo menos um pedido.  
Um *cliente ativo* é definido como qualquer cliente presente na tabela `orders`.

---

## 🧩 Por que essa métrica importa?

No CRM e no Growth, a base ativa é o coração do negócio.  
Saber quantas pessoas realmente compram é fundamental para:

- medir engajamento real  
- acompanhar crescimento da base  
- calcular métricas como LTV, CAC e frequência  
- planejar campanhas  
- comparar períodos  
- identificar queda ou aumento de atividade  

---

## 🛠️ SQL Utilizado

```sql
SELECT 
    COUNT(DISTINCT customer_id) AS clientes_ativos
FROM 
    orders;
