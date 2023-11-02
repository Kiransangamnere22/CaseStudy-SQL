-- Q1 How many records in sales transaction and customers column

select count(*) from transactions;
select count(*) from customers;

-- Q2 check how many transcation held in chennai

select * from transactions where market_code="Mark001";

-- count 

select count(*) from transactions where market_code='Mark001';

-- Q3 how many transaction have USD currency

select * from transactions where currency='USD';

-- Q4 how many transaction have INR currency

select count(*) from transactions where currency='INR';

-- Q5 how many transaction held in year 2020? 

-- used inner join to joined transaction and date column

select * from transactions inner join
date on transactions.order_date=date.date;

select * from transactions inner join
date on transactions.order_date=date.date where date.year=2020;

select count(*)  from transactions inner join
date on transactions.order_date=date.date where date.year=2020;

-- Q6 how many transaction held in year 2017?

select count(*)  from transactions inner join
date on transactions.order_date=date.date where date.year=2017;

-- Q7 find total sales in year 2020

select sum(transactions.sales_amount)  from transactions inner join
date on transactions.order_date=date.date where date.year=2020;

-- for 2019

select sum(transactions.sales_amount)  from transactions inner join
date on transactions.order_date=date.date where date.year=2019;

--  Q8 find avg sales in year 2019?

select avg(transactions.sales_amount)  from transactions inner join
date on transactions.order_date=date.date where date.year=2019;

-- used round() function to remove "DECIMAL POINT"

select round(avg(transactions.sales_amount),0)  from transactions inner join
date on transactions.order_date=date.date where date.year=2019;

-- Q9 find how much sales i did in mumbai?

-- joined transaction and markets column using inner joined

select * from transactions inner join markets on 
transactions.market_code=markets.markets_code;

select sum(transactions.sales_amount) from transactions inner join markets on 
transactions.market_code=markets.markets_code where markets_name='Mumbai';

--  Q10 find avg sales i didi in 'Chennai'?

select round(avg(transactions.sales_amount),0)  from transactions inner join markets on 
transactions.market_code=markets.markets_code where markets_name='Chennai';

-- --  Q11 find sum of  sales i didi in 'Chennai' in year of 2020?

select sum(transactions.sales_amount)  from transactions inner join
date on transactions.order_date=date.date where date.year=2020 and market_code='Mark001';

