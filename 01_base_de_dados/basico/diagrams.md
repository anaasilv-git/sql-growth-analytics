# Diagramas da Modelagem de Dados

Este arquivo apresenta os diagramas ER das duas versões da base de dados utilizadas neste projeto:  
**versão básica**

---

# 🟢 Versão Básica

Tabelas:
- customers  
- orders  
- events  

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
