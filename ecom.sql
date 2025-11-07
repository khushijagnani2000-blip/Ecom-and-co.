SELECT * FROM ecom;
use ecom;
/* ==============================================================
   Project: E-commerce Sales Analysis (SQL practice)
   Dataset: ecommerce_sales_34500
   - Rows: ~34,500
   - Columns (sample): order_id, customer_id, product_id, category, price,
       quantity, payment_method, order_date (DD-MM-YYYY), delivery_time_days,
       region, returned, total_amount, shipping_cost, profit_margin,
       customer_age, customer_gender

  
   Note: order_date appears in DD-MM-YYYY format (e.g., '23-12-2023').
         If your SQL engine supports date functions (MySQL/Postgres variants),
         you can convert it using STR_TO_DATE / to_date as needed.
   ==============================================================*/


/* --------------------------------------------------------
   1) Question: Retrieve all details of orders placed in January 2025.
   Insight: Helps understand recent customer activity and seasonal demand patterns.
---------------------------------------------------------*/
SELECT *
FROM ecom_sales
WHERE order_date LIKE '%-01-2025';


/* --------------------------------------------------------
   2) Question: List the unique payment methods used by customers.
   Insight: Shows the diversity of payment methods, useful for optimizing checkout.
---------------------------------------------------------*/

select payment_method, count(customer_id) as total_customers
from ecom_sales
group by payment_method;

/* --------------------------------------------------------
   3) Question: Find the total number of orders placed in each region.
   Insight: Identifies strong and weak regions for targeted marketing.
---------------------------------------------------------*/

select region,count(order_id) as total_orders
from ecom_sales
group by region;


/* --------------------------------------------------------
   4) Question: Calculate the total sales (sum of total_amount) for each category.
   Insight: Reveals the top-selling categories to guide inventory and promotions.
---------------------------------------------------------*/

SELECT category,
       SUM(total_amount) AS total_sales
FROM ecom_sales
GROUP BY category
ORDER BY total_sales DESC;


/* --------------------------------------------------------
   5) Question: Find the average delivery time for each payment method.
   Insight: Shows how delivery efficiency varies by payment type.
---------------------------------------------------------*/

select payment_method, avg(delivery_time_days) as avg_delivery_days
from ecom_sales
group by payment_method
order by payment_method;



/* --------------------------------------------------------
   6) Question: Get the top 5 customers who spent the most overall.
   Insight: Helps identify VIP customers for loyalty programs.
---------------------------------------------------------*/

select customer_id,sum(total_amount) as spendings
from ecom_sales
group by customer_id
order by spendings desc
limit 5;


/* --------------------------------------------------------
   7) Question: Retrieve orders where the profit_margin is negative (loss-making).
   Insight: Pinpoints unprofitable orders for review/price adjustments.
---------------------------------------------------------*/

select category,order_id,profit_margin
from ecom_sales
where profit_margin< 0;


/* --------------------------------------------------------
   8) Question: List all products in the 'Electronics' category with price > 500.
   Insight: Identifies high-value products in Electronics for focused promotion.
---------------------------------------------------------*/
select product_id,total_amount
from ecom_sales
where category='electronics' and total_amount>500;


/* --------------------------------------------------------
   9) Question: Find orders where the product was returned.
   Insight: Helps understand return trends impacting profit and satisfaction.
---------------------------------------------------------*/

SELECT *
FROM ecom_sales
WHERE returned = 'Yes';


/* --------------------------------------------------------
   10) Question: Get the number of orders placed by each customer_gender, grouped by region.
   Insight: Shows demographic buying patterns across regions for targeted campaigns.
---------------------------------------------------------*/

SELECT region,
       customer_gender,
       COUNT(order_id) AS total_orders
FROM ecom_sales
GROUP BY region, customer_gender
ORDER BY region, customer_gender;


/* --------------------------------------------------------
   11) Question: Find the average age of customers who used COD vs UPI.
   Insight: Reveals demographic preferences for specific payment methods.
---------------------------------------------------------*/

SELECT payment_method,
       AVG(customer_age) AS avg_age
FROM ecom_sales
WHERE payment_method IN ('COD', 'UPI')
GROUP BY payment_method;


/* --------------------------------------------------------
   12) Question: Count how many orders were delivered in less than 5 days.
   Insight: Shows efficiency in fast deliveries and potential customer satisfaction.
---------------------------------------------------------*/

select count(order_id) as Quick_delivery
from ecom_sales
where delivery_time_days<5;

/* --------------------------------------------------------
   13) Question: Find the month with the highest total sales in 2024.
   Insight: Helps track seasonal peaks and plan promotions accordingly.

   Note: If your SQL engine supports date conversion, consider:
     DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month_year
   ---------------------------------------------------------*/
SELECT SUBSTRING(order_date, 4, 7) AS month_year,  /* produces 'MM-YYYY' from 'DD-MM-YYYY' */
       SUM(total_amount) AS total_sales
FROM ecom_sales
WHERE order_date LIKE '%-2024'
GROUP BY month_year
ORDER BY total_sales DESC
LIMIT 1;


/* --------------------------------------------------------
   14) Question: Identify the top 3 categories with the highest average profit_margin.
   Insight: Guides business to focus on highly profitable categories.
---------------------------------------------------------*/
select category, avg(profit_margin) as Avg_profit
from ecom_sales
group by category
order by Avg_profit desc
limit 3;

/* --------------------------------------------------------
   15) Question: Calculate Customer Lifetime Value (CLV) = sum(total_amount) per customer, and rank them.
   Insight: Identifies high-value customers for retention and engagement strategies.
---------------------------------------------------------*/

SELECT customer_id,
       SUM(total_amount) AS lifetime_value,
       RANK() OVER (ORDER BY SUM(total_amount) DESC) AS rank_position
FROM ecom_sales
GROUP BY customer_id;
