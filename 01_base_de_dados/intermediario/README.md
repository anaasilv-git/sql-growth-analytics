# Base de Dados — Versão Intermediária

Modelo mais completo e realista de dados para CRM, Growth e análises de produto.  
Inclui tabelas adicionais como itens de pedido, produtos e sessões.

---

## 📁 Tabelas incluídas

### 1. `customers`
Base de clientes.

### 2. `orders`
Pedidos realizados.

### 3. `order_items`
Itens dentro de cada pedido.
- item_id  
- order_id  
- product_id  
- quantity  
- price  

### 4. `products`
Catálogo de produtos.
- product_id  
- name  
- category  

### 5. `sessions`
Sessões do usuário.
- session_id  
- customer_id  
- started_at  
- channel  

---

## 🎯 Quando usar este modelo?

- Para análises mais robustas de comportamento  
- Para calcular CAC, LTV e ticket médio  
- Para entender categorias e mix de produtos  
- Para funis mais completos (visita → sessão → compra)  
- Para análises preparatórias para Machine Learning  

Ideal para quando você estiver mais confortável com SQL.
