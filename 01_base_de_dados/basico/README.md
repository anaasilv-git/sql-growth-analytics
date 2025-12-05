# Base de Dados — Versão Básica

Esta é a versão mais simples da modelagem utilizada neste projeto.  
Ela inclui apenas as tabelas essenciais para análises de CRM, funil e métricas iniciais.

---

## 📁 Tabelas incluídas

### 1. `customers`
Informações básicas dos clientes.
- customer_id  
- name  
- email  
- created_at  
- city  

### 2. `orders`
Registro de pedidos realizados.
- order_id  
- customer_id  
- order_date  
- amount  

### 3. `events`
Eventos de navegação e interação do cliente.
- event_id  
- customer_id  
- event_type (ex: `view`, `add_to_cart`)  
- event_timestamp  

---

## 🎯 Quando usar este modelo?

- Para aprender SQL do zero  
- Para criar funis simples  
- Para calcular engajamento básico  
- Para começar análises de retenção  

Este modelo é perfeito para entender a lógica antes de avançar para estruturas mais complexas.
