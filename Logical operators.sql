Create Database University12;


Use University12;
Create Table Student121(
id int not null unique,
name Varchar(20) not null,
percentage int not null,
age int null check(age>=18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar(15) not null Default "UP");
insert into Student121(id,name,percentage,age,gender,phone,city)values
(1,"Ram Kumar",45,19,"M","41654","Agra"),
(2,"Sarita Kumari",55,22,"F",'454545',"Delhi"),
(3,"Salman Khan",62,20,"M","454544","Agra"),
(4,"Juhi Chawala",47,18,"F","5665645","Bhopal"),
(5,"Anil Kapoor",74,22,"M","3526455","Agra"),
(6,"Johan Abharam",64,21,"M","6565466","Delhi"),
(7,"Sahid Kapoor",52,20,"M","6569454","Agra");
select *from Student121;
update Student121 
set phone="70704010" where id=3;

select *from Student121;
Update Student121
set percentage=45,age=34  where id=6;

set sql_safe_Updates=0;
select *from Student121;
select*from Student121

where percentage>30 and percentage<70;

select *from Student121
where percentage>=30 and percentage<=70;

select *from student121
where percentage>30 or percentage<70; 


select*from Student121
where age<=20 and gender="M";

select*from Student121
where age<=20 and Gender="M" and city="Agra";


select *from Student121
where city="Agra" and percentage<=70;

select *from Student121
where city="Agra"or"Delhi"
;
select *from Student121
where city="Delhi" or city= "Agra";

select*from Student121
where age<=20 or Gender="M" or city="Agra";

select*from Student121
where (city="Bhopal" or city="Agra") and gender="M";
select* from student121
where (age=20 or city="Delhi") and gender = "F";
select* from student121
where not city="Bhopal" or city="Agra";
select* from student121
where not (city="Bhopal" and city="Agra");

### In OPERATOR

select * from Student121
where city In("Delhi","Bhopal","Agra");

select * from Student121
where city not In("Delhi","Bhopal");

select * from Student121
where age In(18,40,30);

select * from Student121
where age not In(18,40,30);

select*from Student121
where id in(4,5,7);

select * from Student121
where percentage in ("45");

select*from Student121
where percentage not in("78");

### Between And Not Between OPrator 


select *from Student121
where age between 18 and 70;

select *from Student121
where age not between 18 and 70;

select *from Student121
where age between 18 and 30;

select*from Student121
where percentage not between 20 and 50;


### Like Oprators


select*from Student121 
where name like "S%";

select*from Student121
where name like "s%";

insert into Student121(id,name,percentage,age,gender,phone,city)values
(8,"suraj",45,19,"M","41667","Agra");

select * from Student121;
 
 select*from Student121
 where name like"s%";
 
 select*from Student121
 where name like "%s%";
 
 select *from Student121
 where name like "%am%";

select *from Student121
where name like "%am%";

select*from Student121
where name like "s%" or  name like "a%";

select*from Student121
where name not like "r%";

select*from Student121
where name not like "%a";

select*from Student121
where phone like "7%";

select  min(percentage)from Student121 where city="Agra";
select max(phone) from Student121;

select max(phone) from Student121 where city="Bhopal";

select 5+6;

select 5+6 as total;

select 5-6 as Diffrence;

select 5*6 as multiply;

select 5/6 as Divison;

select id ,name , (percentage+5) as "New Percentage" from Student121;

select pi();   ### Use The Pi for increase and discrease Decimal Values

select round(4.51);

select round(4.49);

select round(-4.49);

select round(1234.987,2);

select round(1234.987,1);

select round(1234.457,2);

select ceil(1.23); ## Pic the nearest Highest values 

select floor(1.23); ## Pic the nearest Lowest values 

select pow(2,2); ###  For use Power 

select pow(2,3);

select pow(2,4);

select sqrt(16);   ### Use for Squire root

select sqrt(4);


select round(sqrt(5),2) as SQRT ; 

select rand();

select round(rand()*20,1);

select floor(7+rand()*6);

select abs(-56) as "Absloute Value";

select abs(-56.25);

select abs(56.25);

select sign(25);

select sign(0);

select sign(-25);

select sign(-44)

















