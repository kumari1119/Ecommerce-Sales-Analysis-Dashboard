#1.Top 10 profitable products
select product_name,
round(sum(profit_usd),2)as total_profit
from superstoresuperstore
group by product_name
order by total_profit desc
limit 10;

#2.Top 10 customers by sales
select customer_name, 
    sum(sales_usd)as total_sales
from superstore
group by customer_name
order by total_sales desc
limit 10;

#3.Region wise total sales
select region,
sum(sales_usd)as total_sales
from superstore
group by region;

#4.Category wise average profit
select category,
avg(profit_usd)as average_profit
from superstore
group by category;

#5.highest discount category
select category,
avg(discount_rate)as average_discount
from superstore
group by category
order by average_discount desc
limit 3;

#6.orders with negative profit
select order_id,
product_name,
profit_usd as loss
from superstore
where profit_usd<0
order by profit_usd asc
limit 10;

#7.Monthly sales trend
select month, 
sum(sales_usd) as total_sales
from superstore
group by month
order by month;

#8.Market wise revenue analysis
select market,
sum(sales_usd) as Revenue
from superstore
group by market;

#9.Top performing sub_categories
select sub_category,
round(sum(profit_usd),2) as total_profit
from superstore 
group by sub_category
order by total_profit desc
limit 10;

#10.ship mode usage analysis
select ship_mode,
count(*) as total_orders
from superstore
group by ship_mode;

#11.year wise sales trend
select order_year,
 round(sum(sales_usd),2)as total_sales
 from superstore
 group by order_year
 order by order_year;
 
#12.Average shipping cost by ship mode
 select ship_mode,
 round(avg(shipping_cost_usd),2)as avg_shipping_cost
 from superstore
 group by ship_mode;
 
 #13.top 5 countries by sales
 select country, round(sum(sales_usd),2)as total_sales
 from superstore
 group by country
 order by total_sales desc
 limit 5;
 
 #14.sales by customer segment
 select customer_segment,
 round(sum(sales_usd),2)as total_sales
 from superstore
 group by customer_segment;
 
#15.Top 5 States by Profit
SELECT state_province,
       ROUND(SUM(profit_usd),2) AS total_profit
FROM superstore
GROUP BY state_province
ORDER BY total_profit DESC
LIMIT 5;