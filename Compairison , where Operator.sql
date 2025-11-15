create database company2;
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

#WHERE 


Select * from personal where gender="M";

Select * from personal where gender="F";

Select name ,age from personal where gender="F";


Select * from personal where city="Delhi";
Select * from personal where city !="Delhi";
Select * from personal where city <>"Delhi";

Select * from personal where age>20;

Select * from personal where age<18;
Select * from personal where age=18;  

set sql_safe_updates=0;

update personal 
set phone="405555" where id=1; 

select * from personal; 


update personal 
set percentage= 70, age= 27
where id=3;

update personal
set age=18
where id IN(2,3);  

update personal
set age=19;

update personal 
set percentage=65 where id=2; 


##Comparison(>,<,=,<=,>=,!=,<>) and LOGICAL OPERATORS(AND,OR,NOT)

select * from personal
where percentage>30 and percentage<60;

select * from personal
where percentage>=30 and percentage<=60;

select * from personal
where percentage>30 or percentage<60;

select * from personal
where percentage>=30 or percentage<=70;

select * from personal
where age<=20 and gender="M";

select * from personal
where age<=20 and gender="M" and city="Agra";

select * from personal
where age<=20 or city="Agra";

select * from personal
where city="Bhopal" or city="Agra";

select * from personal
where (city="Bhopal" or city="Agra") and gender="M";

select * from personal
where not city="Bhopal" or city="Agra";

select * from personal
where not (city="Bhopal" or city="Agra");

select * from personal
where not (city="Bhopal" and city="Agra");

## IN Operator(Replace multiple ORs)

Select * from personal
where city="Agra" or city="Bhopal"or  city="Delhi";

Select * from personal
where city IN("Agra","Bhopal","Dehli");

Select * from personal
where age IN(18,19,20);

Select * from personal
where age not IN(18,19,20);

Select * from personal
where id IN(1,3,5); 


# BETWEEN & NOT BETWEEN

Select * from personal 
where age between 18 and 20;

Select * from personal 
where age not between 18 and 20;

Select * from personal 
where id between 2 and 5;

Select * from personal 
where name between "a" and "k"; 


