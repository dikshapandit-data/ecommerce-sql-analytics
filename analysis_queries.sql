-- 1. Total revenue
select sum(payment_amount) as total_revenue from payments;


-- 2. Monthly revenue trend
select date_format(payment_date, '%Y-%m') as month, sum(payment_amount) as monthly_revenue 
from payments group by month;


-- 3. MOM growth
select month, monthly_revenue, case when mom_growth_perct IS NULL then 0.00 else mom_growth_perct end as mom_growth_perct from
(select month, monthly_revenue, round(mom_1 * 100,2) as mom_growth_perct from
(select *, (monthly_revenue - prev_month_revenue)/prev_month_revenue as mom_1 from
(select *, lag(monthly_revenue, 1, 0.00) over (order by month) as prev_month_revenue from
(select date_format(payment_date, '%Y-%m') as month, sum(payment_amount) as monthly_revenue
from payments group by month)a)b)c)d;


-- 4. Total revenue per customer
select a.customer_id, a.customer_name, sum(p.payment_amount) as total_spent from
(select c.customer_id, concat(c.first_name, ' ', c.last_name) as customer_name , o.order_id
from customers c left join orders o on c.customer_id=o.customer_id)a
left join payments p on a.order_id=p.order_id
group by 1 order by 3 desc;


-- 5. Rank customers by total amount spent
select *, dense_rank() over (order by total_spent desc) as customer_rank from
(select a.customer_id, a.customer_name, sum(p.payment_amount) as total_spent from
(select c.customer_id, concat(c.first_name, ' ', c.last_name) as customer_name , o.order_id
from customers c left join orders o on c.customer_id=o.customer_id)a
left join payments p on a.order_id=p.order_id
group by 1 order by 3 desc)b;


-- 6. Top 5 cusotmers by revenue
select * from
(select *, dense_rank() over (order by total_spent desc) as customer_rank from
(select a.customer_id, a.customer_name, sum(p.payment_amount) as total_spent from
(select c.customer_id, concat(c.first_name, ' ', c.last_name) as customer_name , o.order_id
from customers c left join orders o on c.customer_id=o.customer_id)a
left join payments p on a.order_id=p.order_id
group by 1 order by 3 desc)b)c
where customer_rank <=5;


-- 7. Customer Lifetime value
select a.customer_id, a.customer_name, count(a.order_id) as total_orders, 
sum(p.payment_amount) as total_spent, round(avg(p.payment_amount), 2) as avg_money_spent from
(select c.customer_id, concat(c.first_name, ' ', c.last_name) as customer_name , o.order_id
from customers c left join orders o on c.customer_id=o.customer_id)a
left join payments p on a.order_id=p.order_id
group by a.customer_id order by total_orders desc;


-- 8. Revenue by product category
select pr.category, sum(oi.quantity * oi.item_price) as category_wise_revenue
from orders_items oi join products pr on oi.product_id=pr.product_id
group by pr.category order by category_wise_revenue desc;


-- 9. Revenue contribution by product category
with category_revenue as (
select pr.category, sum(oi.quantity * oi.item_price) as revenue
from orders_items oi join products pr on oi.product_id=pr.product_id
group by pr.category
),
total_revenue as (
select sum(revenue) as total from category_revenue
)
select cr.category, cr.revenue, round((cr.revenue / tr.total) * 100, 2) as revenue_perct
from category_revenue cr cross join total_revenue tr
order by revenue_perct desc;
