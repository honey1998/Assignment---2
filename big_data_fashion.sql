create database db_fashion ;
use db_fashion;
create table fashio_n (p_id int primary key,name varchar(250),
price int,color varchar(30) , brand varchar(300),
ratingCount int, avg_rating decimal(11,9));
select * from fashio_n;

select distinct brand from fashio_n;

select count(distinct brand) from fashio_n;

select max(price) from fashio_n;

select avg(price) from fashio_n;

select max(brand) from fashio_n; 

select price,brand,name from fashio_n where price >= '3000';

select price,avg_rating,brand,name from fashio_n where brand = 'Zola' and price >= '3000';

select price,brand from fashio_n order by avg_rating;

select name,brand,price from fashio_n where avg_rating  in (select avg_rating from fashio_n 
where avg_rating <= '3.733333333');

