# 🟣 Diagrama da Modelagem de Dados — Versão Intermediária

A versão intermediária da base de dados representa um cenário mais próximo de empresas reais, permitindo análises aprofundadas de CRM, funil, comportamento do cliente, produtos e sessões de navegação.

Este modelo inclui cinco tabelas principais:

- **customers** — dados cadastrais do cliente  
- **orders** — pedidos realizados  
- **order_items** — itens dentro de cada pedido  
- **products** — catálogo de produtos  
- **sessions** — sessões e canais de entrada  

O diagrama abaixo mostra como essas tabelas se relacionam entre si.

---

```mermaid
erDiagram
    customers ||--o{ orders : "faz pedido"
    customers ||--o{ sessions : "inicia sessão"
    orders    ||--o{ order_items : "contém itens"
    products  ||--o{ order_items : "é vendido em"

    customers {
        int customer_id
        string name
        string email
        date created_at
        string city
    }

    products {
        int product_id
        string name
        string category
    }

    orders {
        int order_id
        int customer_id
        date order_date
        numeric amount
    }

    order_items {
        int item_id
        int order_id
        int product_id
        int quantity
        numeric unit_price
    }

    sessions {
        int session_id
        int customer_id
        datetime started_at
        string channel
    }
