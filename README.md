# Ecom and co.
Project: Ecom and Co Analyzed e-commerce sales data using SQL to explore customer behaviour, product performance, and revenue trends. Performed complex queries, aggregations, and joins to uncover key business insights and optimize overall sales and marketing strategies
# E-Commerce Sales Analysis (SQL Project)

##  Project Overview
This project focuses on analyzing an **E-commerce Sales dataset** containing over **34,500 transactions**.  
The main goal was to derive **actionable business insights** related to sales trends, profitability, customer behavior, and operational performance using **Structured Query Language (SQL)**.  

As a **Data Analyst student**, I built SQL queries to explore data patterns, perform aggregations, and interpret business outcomes that help improve sales, marketing, and logistics strategies.

## 🗂️ Dataset Information
The dataset represents real-world e-commerce sales data and includes the following key columns:

| Column | Description |
|---------|--------------|
| order_id   | Unique order identifier |
| order_date | Date of purchase |
| customer_id | Unique customer reference |
| customer_name | Name of the buyer |
| customer_age, gender | Demographic details |
| region | Customer’s geographical region |
| category, `sub_category | Product category and subcategory |
| payment_method | Payment mode (COD, UPI, PayPal, etc.) |
| quantity, price_per_unit, total_amount | Order value details |
| profit_margin | Profit earned per order |
| delivery_time_days | Delivery duration in days |
| returned | Return status of the product |

# Problem Statement
The objective of this project was to perform **SQL-based analysis** on the sales dataset to answer the following key questions:
- Which categories and regions generate the highest sales and profits?
- What are the dominant customer and payment trends?
- How efficient are deliveries across different regions?
- What are the return and loss patterns?
- How can overall business performance be improved?


#SQL Techniques Used
The analysis involved the use of:
- **Aggregate functions:** `SUM()`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`
- **Date & string functions:** `MONTH()`, `YEAR()`, `CONCAT()`, `DATEDIFF()`
- **Conditional logic:** `CASE WHEN`, `BETWEEN`, `IN`, `LIKE`
- **Grouping & filtering:** `GROUP BY`, `HAVING`, `ORDER BY`
- **Joins & Subqueries** for multi-dimensional insights
- **Window functions** for ranking and advanced comparisons

# Key Insights
- *Top Categories:* Electronics and Home contributed the most to overall revenue.  
- *Low Performers:* Grocery and Toys recorded the least sales and lowest profits.  
- *Regional Sales:* South and North regions dominated; Central performed the weakest.  
- *Profit Margins:* Electronics achieved the highest profit (~55%), Grocery showed negative margins.  
- *Return Rate:* 5.5% overall; mostly from Fashion and Electronics.  
- *Delivery Performance:* Average delivery time = 4.8 days; East region faced slower deliveries.  
- *Peak Sales Month:* December 2024 (holiday-driven sales).  


## Conclusions
1. **Revenue Drivers:** Electronics and Home categories significantly drive profitability.  
2. **Optimization Areas:** Grocery and Toys need pricing and supplier improvements.  
3. **Regional Focus:** South and North are performing well; Central needs targeted campaigns.  
4. **Operational Efficiency:** East region’s delivery times require improvement.  
5. **Customer Satisfaction:** High return rates in Fashion suggest quality or size-related issues.  

# Recommendations
- Focus on *high-margin categories* like Electronics and Home to increase profits.  
- Review *low-performing products* (Grocery, Toys) and improve supply chain margins.  
- Reduce *return rates* through better quality checks and detailed product descriptions.  
- Improve *delivery times* in the East region to enhance customer experience.  
- Promote *Central region* through marketing offers and customer engagement strategies.
- 
## Tools & Skills Used
- **Database:** MySQL  
- **Techniques:** SQL querying, data cleaning, aggregation, performance analysis  
- **Skills:** Analytical reasoning, data interpretation, business insight generation  

## Final Outcome
This SQL project successfully demonstrates how data-driven insights can help an e-commerce business:
- Identify profitable categories and customer segments  
- Streamline logistics and delivery performance  
- Minimize returns and improve customer satisfaction  
- Support strategic decisions for future growth  

Through this project, I applied my **SQL skills** to transform raw transactional data into **meaningful business intelligence**.
