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

## LIKE Opeartors
Select * from personal where name like "S%";
Select * from personal where name like "s%";

Select * from personal where name like "ram%";
Select * from personal where name like "rm%";

Select * from personal where name like "%am%";

Select * from personal where name like "r%" or "a%";

Select * from personal where name not like "r%";

Select * from personal where phone like "%21" ;

Select * from personal where name like "s%n";

Select * from personal where name like "r%r";

## Underscore
Select * from personal where name like "_am%";

Select * from personal where name like "__m%";

Select * from personal where name like "__l%";
Select * from personal where name like "r_m%";

## Regular Expression
Select * from personal where name regexp 'ra';

Select * from personal where name regexp 'ta';

Select * from personal where name regexp 'man';

##Beginning
Select * from personal where name regexp '^ra';
Select * from personal where name regexp '^sa';

##Last
Select * from personal where name regexp 'an$';

Select * from personal where name regexp 'ram|kapoor|khan';

Select * from personal where name regexp 'ram|poor|khan';

Select * from personal where name regexp '^ram|poor|^khan';

Select * from personal where name regexp '[is]';

Select * from personal where name regexp '[rm]';

Select * from personal where name regexp '[rm]a';  # Checks either 'ra' or 'ma';

Select * from personal where name regexp '[rmh]a';  #ra,ma,ha

Select * from personal where name regexp '^[rs]';

Select * from personal where name regexp 
'r[am]';

