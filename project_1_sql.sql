-- This is the Code of Project 1 in SQL
-- First We start with creating a table
create table retailsales(
	transactions_id int primary key,
	sale_date date,
	sale_time time,	
	customer_id	int,
	gender varchar(10),
	age	int,
	category varchar(30),	
	quantiy	int,
	price_per_unit float,
	cogs float,
	total_sale float

);

select * from retailsales;

-- Data Cleaning

select * from retailsales
where transactions_id is null
or sale_date is null
or sale_time is null
or customer_id is null
or gender is null
or  age is null
or category is null
or quantiy is null
or price_per_unit is null
or cogs is null
or total_sale is null;

-- Removing null data containing null values
delete from retailsales where transactions_id is null
or sale_date is null
or sale_time is null
or customer_id is null
or gender is null
or  age is null
or category is null
or quantiy is null
or price_per_unit is null
or cogs is null
or total_sale is null;

-- Changing quantiy to quantity column name
alter table retailsales
rename quantiy to quantity;

-- Data Analysis & Business Key Problems & Answers

--1.Write a SQL query to retrieve all columns for sales made on '2022-11-05'
--> 
select * from retailsales
where sale_date='2022-11-05';

--2.Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 3 in the month of Nov-2022
-->
select * from retailsales
where category='Clothing'
and
quantity>=3
and 
to_char(sale_date,'YYYY-MM')='2022-11';

--3.Write a SQL query to calculate the total sales (total_sale) for each category.
-->
select category,sum(total_sale) from retailsales
group by category;

--4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-->
select category,avg(age) from retailsales
group by category
having category='Beauty';

--5. Write a SQL query to find all transactions where the total_sale is greater than 1000.
-->
select * from retailsales
where total_sale>1000;

--6.Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-->
select category,gender,count(transactions_id) from retailsales
group by 1,2;

--7.Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
--> 
select year,month,total_sales from
(
select extract(year from sale_date) as year ,extract(month from sale_date) as month,avg(total_sale) as total_sales,
rank() over(partition by extract(year from sale_date) order by avg(total_sale) desc ) as Rank
from retailsales 
group by 1,2)
where rank=1;

--8.Write a SQL query to find the top 5 customers based on the highest total sales 
-->
select customer_id,sum(total_sale) from retailsales
group by 1
order by sum(total_sale)  desc
limit 5;

-- 9.Write a SQL query to find the number of unique customers who purchased items from each category.
-->
select category,count( distinct customer_id) from retailsales
group by 1;

--10.Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17) 
-->
with hourly_sales
as(
select *,
case
	when extract(hour from sale_time) < 12 then 'Morning'
	when extract(hour from sale_time) between 12 and 17 then 'Afternoon'
	else 'Evening'
end as shift
from retailsales)
select shift,count(*) as orders from hourly_sales
group by 1;

--End of projec
