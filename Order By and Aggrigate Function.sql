create  database  company2;
use company2;


Create Table personal(
id int not null unique,
name Varchar(20) not null,
percentage int not null,
age int null check(age>=18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar(15) not null Default "UP");


insert into personal(id,name,percentage,age,gender,phone,city)values
(1,"Ram Kumar",45,19,"M","41654","Agra"),
(2,"Sarita Kumari",55,22,"F",'454545',"Delhi"),
(3,"Salman Khan",62,20,"M","454544","Agra"),
(4,"Juhi Chawala",47,18,"F","5665645","Bhopal"),
(5,"Anil Kapoor",74,22,"M","3526455","Agra"),
(6,"Johan Abharam",64,21,"M","6565466","Delhi"),
(7,"Sahid Kapoor",52,20,"M","6569454","Agra");

## Order By & Distinct

Select * from personal order by name;

Select * from personal order by name desc;

Select * from personal where city="Agra" order by name desc;

Select * from personal order by name,city;

## Distinct

Select distinct city from personal;

Select distinct age from personal;

Select distinct city from personal order by city desc;

Select distinct age from personal order by age; 

## LIMIT & OFFSET

Select * from personal;

Select * from personal limit 2;

Select * from personal limit 3;

Select * from personal where city="Agra";

Select * from personal 
where city="Agra"
order by name desc 
limit 2; 

Select * from personal limit 3,3;

Select * from personal limit 1,3;


Select * from personal limit 1,2;

Select * from personal limit 2,8;

## AGGREGATE FUNCTIONS

Select count(name) from personal;

Select count(*) from personal;

Select count(distinct city) from personal;

Select count(city) from personal;

Select max(percentage) from personal;

Select min(percentage) as agra from personal ;

Select min(percentage) as MinP from personal;

Select sum(percentage) from personal;

Select avg(percentage) from personal;

