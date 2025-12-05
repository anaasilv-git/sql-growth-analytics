# 📘 Dicionário de Dados — Versão Intermediária  
# 📘 Data Dictionary — Intermediate Version

Este dicionário descreve os campos presentes nas tabelas da modelagem intermediária.  
This dictionary describes all fields in the intermediate data model.

---

## 🧩 Tabela: `customers`
| Campo / Field | Tipo / Type | PT | EN |
|---------------|-------------|----|----|
| customer_id   | INTEGER     | Identificador único | Unique customer ID |
| name          | TEXT        | Nome do cliente | Customer name |
| email         | TEXT        | Email cadastrado | Registered email |
| created_at    | DATE        | Data de cadastro | Signup date |
| city          | TEXT        | Cidade | City |

---

## 🧩 Tabela: `products`
| Campo / Field | Tipo / Type | PT | EN |
|---------------|-------------|----|----|
| product_id    | INTEGER     | ID do produto | Product ID |
| name          | TEXT        | Nome do produto | Product name |
| category      | TEXT        | Categoria | Category |

---

## 🧩 Tabela: `orders`
| Campo / Field | Tipo / Type | PT | EN |
|---------------|-------------|----|----|
| order_id      | INTEGER     | ID do pedido | Order ID |
| customer_id   | INTEGER     | Cliente | Customer |
| order_date    | DATE        | Data do pedido | Order date |
| amount        | NUMERIC     | Total do pedido | Order amount |

---

## 🧩 Tabela: `order_items`
| Campo / Field | Tipo / Type | PT | EN |
|---------------|-------------|----|----|
| item_id       | INTEGER     | ID do item | Item ID |
| order_id      | INTEGER     | Pedido ao qual pertence | Associated order |
| product_id    | INTEGER     | Produto comprado | Purchased product |
| quantity      | INTEGER     | Quantidade | Quantity |
| unit_price    | NUMERIC     | Preço unitário | Unit price |

---

## 🧩 Tabela: `sessions`
| Campo / Field | Tipo / Type | PT | EN |
|---------------|-------------|----|----|
| session_id    | INTEGER     | ID da sessão | Session ID |
| customer_id   | INTEGER     | Cliente | Customer |
| started_at    | TIMESTAMP   | Início da sessão | Session start |
| channel       | TEXT        | Canal de entrada (ex: Email, Ads, Organic) | Channel source |

---

# 📌 Observações Importantes / Key Notes

- `order_items` sempre depende de `orders`.  
- `order_items` always depends on `orders`.

- `products` enriquece análises de mix, categoria e margem.  
- `products` enriches mix, category and margin analysis.

- `sessions` permite criar funis completos:  
  visita → produto → carrinho → pedido.  
- `sessions` allows full funnel analysis:  
  visit → product → cart → purchase.

---
