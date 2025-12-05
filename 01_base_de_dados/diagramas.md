# Diagramas da Modelagem de Dados

Este arquivo mostra, de forma visual, os relacionamentos entre as tabelas das versões **básica** e **intermediária** da base de dados.

---

## 🟢 Versão Básica

Tabelas:
- `customers`
- `orders`
- `events`

```mermaid
erDiagram
    customers ||--o{ orders : "faz pedido"
    customers ||--o{ events : "gera evento"

    customers {
        int customer_id
        string name
        string email
        date created_at
        string city
    }

    orders {
        int order_id
        int customer_id
        date order_date
        numeric amount
    }

    events {
        int event_id
        int customer_id
        string event_type
        datetime event_timestamp
    }
