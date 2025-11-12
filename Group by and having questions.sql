create database sales;

use sales;

create table sale(
sale_id int primary key,
product varchar(50),
category varchar(50),
quantity int,
price decimal(10,2),
region varchar(50),
salesperson varchar(50),
sale_date date);

insert into sale(sale_id,product,category,quantity,price,region,salesperson,sale_date) values
(1,"Laptop","Electroise",5,50000,"East","John","2024-01-05"),
(2,"Mobile","Electroise",10,20000,"West","Mary","2024-01-10"),
(3,"Chair","Furniture",20,1500,"East","John","2024-02-15"),
(4,"Mobile","Furniture",8,5000,"North","Steve","2024-02-18"),
(5,"Laptop","Electroise",7,55000,"South","Mary","2024-03-01"),
(6,"Mobile","Electroise",15,18000,"East","John","2024-03-05"),
(7,"Sofa","Furniture",3,25000,"West","Steve","2024-03-20"),
(8,"Laptop","Electroise",2,25000,"North","Mary","2024-04-02"),
(9,"Chair","Furniture",30,1200,"South","John","2024-04-12"),
(10,"Mobile","Electroise",12,12000,"West","Steve","2024-04-15");

select * from sale;

# Q1 find total sales amount for each region.
select region,
sum(quantity*price) as total_sales
from sale group by region;

# Q2. find total quantity sold by each salesperson.
select salesperson,
sum(quantity) as total_quantity_sold
from sale group by salesperson;

# Q3. show categories where  total quantity sold is more than 30.
select category,
sum(quantity) as total_quantity_sold
from sale group by category having 
sum(quantity)>30;

# Q4. find total revenue by each category.
select category,
sum(quantity*price) as total_revenue
from sale group by category;

# Q5. find salesperson who sold total quantity more than 20.
select salesperson,
sum(quantity) as total_quantity_sold
from sale group by salesperson having
sum(quantity)>20;

# Q6. find region_wise average sale price.
select region,
avg(price) as average_sale_price
from sale group by region;
use sale;

# Q7. find total revenue for each salesperson and show only those having revenue above 300000.
select salesperson,
sum(quantity*price) as total_revenue
from sale group by salesperson having
sum(quantity*price)>300000;

# Q8. find how many products each category has.
select product,
count(category) as total_category
from sale group by product;

# Q9. find total sales per month.
select month(sale_date) as month,
sum(quantity*price) as total_sales
from sale group by month(sale_date);

# Q10. find each region's maximum sale price.
select region,
max(price) as max_price
from sale group by region;

# Q11. find each category's average quantity sold, but show only where avg>10
select category,
avg(quantity) as average_quantiy_price
from sale group by category having
avg(quantity)>10;

# Q12. find total revenue by region and category.
select region, category,
sum(price) as revenue
from sale group by region, category;

# Q13. find how many sales each salesperson  made in each region.
select salesperson,region,
count(*) as total_sales
from sale group by salesperson,region;

# Q14. find the region where total quantity sold exceeds 20.
select region,
sum(quantity) as total_quantity
from sale group by region having
sum(quantity)>20;

# Q15. find salesperson who sold in more than one region.
select salesperson,
count(region) as count_region
from sale group by salesperson having
count(region)>1;

# Q16. find category having total revenue between 200000 and 1000000.
select category,
sum(price) as total_revenue
from sale group by category having
sum(price) between 200000 and 1000000;

# Q17. find top 1 category with the highest total sales.
select category,
sum(price) as highest_price
from sale group by category
order by highest_price DESC limit 1;

# Q18. find salesperson's average sale value per transaction.
select salesperson,
avg(price)  as avg_sale_value_per_transaction
from sale group by salesperson;

# Q19. find category with minimum average price greater than 20000.
select category,
avg(price) as min_price
from sale group by category having
avg(price)>20000;

# Q20. find region and salesperson comination where revenue >200000.
select region,salesperson,
sum(quantity*price) as total_revenue
from sale group by region,salesperson having
sum(quantity*price) > 200000;

