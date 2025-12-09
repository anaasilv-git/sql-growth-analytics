# Query 4 — Distribuição de Eventos por Tipo

**Objetivo:**  
Descobrir quais tipos de eventos são mais frequentes na base (por exemplo: `view`, `add_to_cart`, etc.).

Essa query responde à pergunta:  
> "O que os clientes mais fazem quando interagem com a minha marca?"

---

## 🧩 Por que essa métrica importa?

No CRM e no Digital, nem todo mundo compra — mas quase todo mundo **interage**.

Olhar eventos por tipo ajuda a:

- entender se as pessoas **só olham** (view) ou se de fato **avançam** (add_to_cart, purchase)  
- identificar comportamentos que antecedem a compra  
- desenhar jornadas (ex: view → add_to_cart → order)  
- medir impacto de campanhas em termos de engajamento, não só venda  
- apoiar times de produto/UX em decisões de interface

---

## 🛠️ SQL Utilizado

```sql
SELECT
    event_type,
    COUNT(*) AS qtd_eventos
FROM
    events
GROUP BY
    event_type
ORDER BY
    qtd_eventos DESC;
