create database datadigger;
use datadigger;
create table customers(
customer_id int primary key,
name varchar(100),
email varchar(100),
address varchar(100));
select*from customers;
insert into customers 
(customer_id,name,email,address) values
(1,'Naman','Naman@gamail.com','mumbai'),
(2,'tarun','tarun@gmail.com','surat'),
(3,'jayesh','jayesh@gmail.com','bengluru'),
(4,'sahil','sahil@gmail.com','hydrabad'),
(5,'garvit','garvit@gmail.com','hydrabad');
select*from customers;
update customers
set address='mp'
where customer_id=5;
select*from customers where customer_id=5;
delete from customers
where customer_id=5;
select*from customers
where name="sahil";
create table orders(
order_id int primary key,
customer_id int,
orderdate date ,
totalamount DECIMAL(10,2),
foreign key (customer_id)
references customers(customer_id));
insert into orders
(order_id,customer_id,orderdate,totalamount)values
(101,3,'2026-09-22',2500),
(102,2,'2026-09-8',1500),
(103,3,'2026-09-3',3200),
(104,4,'2026-09-4',1800),
(105,2,'2026-09-9',4500);
select*from orders;
create table products(
product_id int primary key,
product_name varchar(100),
price decimal(10,2),
Stock int);
insert into products
(product_id,product_name,price,stock)values
(201,'laptop',55000,10),
(202,'tv',800,30),
(203,'mobile',1500,40),
(204,'washing machine',2000,30),
(205,'headphone',12000,100),
(206,'monitor',500,20);
select*from products;
create table  OrderDetails (
OrderDetailID  int primary key,
order_id int,
product_id int,
Quantity int,
SubTotal decimal(10,2),

foreign key(order_id)
 references orders(order_id),
 
 foreign key (product_id)
 references products(product_id));
insert into OrderDetails
(OrderDetailID, Order_id, product_id, Quantity, SubTotal)
values
(1, 101, 201, 1, 55000),
(2, 101, 202, 2, 1800),
(3, 102, 203, 3, 4500),
(4, 103, 202, 5, 4500),
(5, 104, 205, 1, 12000);
select*from OrderDetails;
select*from products
order by price DESC;
update products 
set price = 900
where product_id=202;
select*from products
where product_id=202;
update products 
set Stock = 0
where product_id = 204;
select*from products
where product_id=204;
delete from products 
where Stock = 0;
select*from products 
where price between 500 and 2000;
select max(price) as most_expensive,
min(price)as cheapest
from products;
select*from OrderDetails
where order_id=101;
select sum(subtotal)as total_revenue
from OrderDetails;
select product_id,
sum(Quantity)as total_quantity
from OrderDetails
group by product_id
order by total_quantity desc
limit 3;
select p.product_id,
p.product_name,
sum(od.Quantity)as total_Quantity
from orderdetails od
inner join products p
on od.product_id=p.product_id
group by p.product_id,p.product_name
order by total_Quantity desc
limit 3;
select count(*) as times_sold 
from OrderDetails
where product_id=202;
SELECT Product_id,
       SUM(Quantity) AS Total_Units_Sold
FROM OrderDetails
WHERE Product_id = 202
GROUP BY Product_id;
SELECT
    c.Name,
    o.order_id,
    o.orderdate,
    p.product_name,
    od.Quantity,
    od.SubTotal
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id
INNER JOIN OrderDetails od
    ON o.order_id = od.order_id
INNER JOIN products p
    ON od.product_id = p.product_id;
select*from customers;
select*from orders;
select*from products;
select*from OrderDetails;
SELECT
    c.Name,
    o.order_id,
    o.orderdate,
    p.product_name,
    od.Quantity,
    od.subtotal
FROM Customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
INNER JOIN OrderDetails od
    ON o.order_id = od.order_id
INNER JOIN products p
    ON od.product_id = p.product_id;