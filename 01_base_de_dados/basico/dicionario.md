# 📘 Dicionário de Dados — Versão Básica  
# 📘 Data Dictionary — Basic Version

Este dicionário descreve os campos presentes nas três tabelas básicas utilizadas no projeto.  
This dictionary describes all fields contained in the three basic tables used in this project.

---

## 🧩 Tabela: `customers`
| Campo / Field | Tipo / Type | Descrição PT | Description EN |
|---------------|-------------|--------------|----------------|
| customer_id   | INTEGER     | Identificador único do cliente | Unique customer identifier |
| name          | TEXT        | Nome do cliente | Customer name |
| email         | TEXT        | E-mail cadastrado | Registered email |
| created_at    | DATE        | Data de cadastro | Signup date |
| city          | TEXT        | Cidade do cliente | Customer city |

---

## 🧩 Tabela: `orders`
| Campo / Field | Tipo / Type | Descrição PT | Description EN |
|---------------|-------------|--------------|----------------|
| order_id      | INTEGER     | Identificador único do pedido | Unique order ID |
| customer_id   | INTEGER     | Cliente que realizou o pedido | Customer who placed the order |
| order_date    | DATE        | Data do pedido | Order date |
| amount        | NUMERIC     | Valor total do pedido | Total order amount |

---

## 🧩 Tabela: `events`
| Campo / Field | Tipo / Type | Descrição PT | Description EN |
|---------------|-------------|--------------|----------------|
| event_id      | INTEGER     | Identificador do evento | Unique event identifier |
| customer_id   | INTEGER     | Cliente que realizou o evento | Customer who generated the event |
| event_type    | TEXT        | Tipo de evento (`view`, `add_to_cart`, etc.) | Event type |
| event_timestamp | TIMESTAMP | Momento do evento | Event timestamp |

---

### 📌 Observações Importantes / Key Notes

- `customer_id` é chave primária em `customers` e chave estrangeira nas demais tabelas.  
- `customer_id` is primary key in `customers` and foreign key in the other tables.  

- As tabelas são pequenas para facilitar testes rápidos.  
- Tables are intentionally small for quick testing and learning.

---
