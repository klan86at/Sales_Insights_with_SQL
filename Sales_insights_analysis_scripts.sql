select *
from customer_info
limit 10;

select *
from sales_transactions
limit 10;

-- Locations/City with higher sales transaction counts.
select COUNT(transaction_id) as "Total Transactions", city 
from sales_transactions
join customer_info
on customer_info.customer_id = sales_transactions.customer_id
group by customer_info.city
order by "Total Transactions" desc;

-- The list of top five most purchased products
select product_name, sum(quantity) as "Products"
from sales_transactions
group by product_name, quantity
order by "Products" desc
limit 5;

-- Average transaction amount per category
select category, AVG(total_amount):: numeric(20,2) as average_transaction_amount
from sales_transactions
group by category 
order by average_transaction_amount desc;

-- Customers with at Least 4 Transactions – Identifies loyal and repeat customers
select first_name, last_name, count(transaction_id) as Transaction_counts
from sales_transactions
join customer_info on customer_info.customer_id = sales_transactions.customer_id
group by first_name , last_name 
having count(transaction_id) >=4;

-- Payment method that has the highest sales.
select payment_method, sum(total_amount) as total_sales
from sales_transactions
group by payment_method
order by total_sales desc;

-- The Last 6 Months of Customer Registration without Transactions
select first_name, last_name, transaction_id
from sales_transactions 
left join customer_info
on customer_info.customer_id = sales_transactions.customer_id
where registration_date >= current_date - interval '6'
and transaction_id is null;

-- Yearly Revenue Trends – Evaluates business growth and sales performance over time.
select date_part('year',transaction_date) as transaction_year, sum(total_amount) as total_amount
from sales_transactions 
group by date_part('year', transaction_date)
order by total_amount desc;

-- Number of unique products sold in each category.
select distinct(product_name), category
from sales_transactions;

-- Customers who have made purchases across at least 3 different product categories.
select first_name, count(distinct(category)) as category_count
from customer_info
join sales_transactions 
on customer_info.customer_id = sales_transactions.customer_id
group by first_name
having count(distinct(category)) >= 3
order by category_count desc
limit 10;

-- The list of Top 5 Customers by Spending in the Last 12Months.
select customer_id, first_name, last_name, city,
	sum(total_amount) as total_spending
from customer_info
join sales_transactions 
using(customer_id)
where transaction_date <= current_date - interval '12'
group by customer_id, first_name, last_name 
order by total_spending desc 
limit 5;

-- Find the month-over-month sales growth for the last 12 months.
-- Month-over-Month Sales Growth – Analyzes business growth patterns.
with monthly_sales as (
	select
		to_char(transaction_date, 'MONTH') as sales_month,
		sum(total_amount) as total_monthly_sales
	from sales_transactions 
	where transaction_date >= current_date - interval '12 months'
	group by sales_month 
)
select 
	sales_month,
	total_monthly_sales,
	total_monthly_sales - Lag(total_monthly_sales) OVER(order by sales_month) as sales_difference,
	(total_monthly_sales - lag(total_monthly_sales) over(order by sales_month)) / 
	nullif(lag(total_monthly_sales) over(order by sales_month), 0) as sales_growth_rate
from monthly_sales 
order by sales_month desc;

-- Identify customers who have increased their spending by at least 30% compared to the previous year.
with monthly_sales as(
	select 
		customer_id,
		to_char(transaction_date, 'month') as sales_month,
		sum(total_amount) as total_monthly_sales
	from sales_transactions 
	group by customer_id, to_char(transaction_date, 'month')
),
sales_growth as (
	select 
		customer_id,
		sales_month,
		total_monthly_sales,
		lag(total_monthly_sales) over(partition by customer_id order by sales_month) as previous_month_sales,
		case 
			when lag(total_monthly_sales) over(partition by customer_id order by sales_month) = 0 then null 
			else 
				(total_monthly_sales - lag(total_monthly_sales) over (partition by customer_id order by sales_month))
				/ lag(total_monthly_sales) over(partition by customer_id order by sales_month)
		end as sales_growth_rate
	from monthly_sales	
)
select 
	customer_id,
	sales_month,
	total_monthly_sales,
	previous_month_sales
from sales_growth
where sales_growth_rate >= 0.5
order by customer_id, sales_month;

-- Find the first purchase date for each customer.  
select first_name, last_name, min(transaction_date) as first_purchase_date
from sales_transactions 
join customer_info 
using(customer_id)
group by first_name, last_name 
order by first_purchase_date asc;

-- Determine the percentage of total revenue contributed by each product category
select category, sum(total_amount) as category_revenue,
	round(sum(total_amount)* 100 / (select sum(total_amount) from sales_transactions), 2) as revenue_percentage
from sales_transactions 
group by category 
order by revenue_percentage desc;
