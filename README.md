# E-Commerce Advanced SQL Analytics Case Study

## Porject overview 

This project simulates a real-world e-commerce analytics scenario.
The objective is to analyze revenue performance and customer behavior using advanced SQL techniques.

## Data Model
Following are the tables used in case study:
- customers
- products
- orders
- orders_items
- payments

## Project structure

- schema.sql -> Database structure
- data.sql -> Sample dataset
- analysis.sql -> Advanced analytical queries.

## ER Diagram

e_commerce_analytics.png

## Performance optimization

Indexes created to improve performance.
Key indexed columnms :
- orders.customer_id
- orders_items.order_id
- orders_items.product_id
- payments.order_id
- payments.payment_date


-- Diksha Pandit
