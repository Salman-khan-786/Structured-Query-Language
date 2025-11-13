create database company;

use company;

create table company(
emp_id int primary key,
name varchar(50),
department varchar(30),
salary int,
experience int,
gender varchar(10)
);

insert into company values
(1,'Alice','HR',40000,3,'f'),
(2,'Bob','Finance',60000,6,'m'),
(3,'Charlie','IT',55000,4,'m'),
(4,'David','IT',80000,10,'m'),
(5,'Eva','Finance',45000,2,'f'),
(6,'Frank','HR',50000,7,'m'),
(7,'Grace','IT',30000,1,'f'),
(8,'Helen','Finance',70000,9,'f'),
(9,'IAN','HR',65000,8,'m'),
(10,'Julia','IT',48000,3,'f');

select * from company;

select name,salary,
case
when salary>70000 then 'high' 
when salary between 40000 and 70000
then 'medium'
else'low'
end as salary_level
from company;

select emp_id,name,department,salary,experience,gender,
case
when experience>=8 then "10000"
when experience>=5 then "5000"
else "3000"
end as salary_bonus
from company;

select emp_id,name,department,salary,experience,gender,
case 
when 'Male' then concat('Mr.',name)
when 'Female' then concat('Ms.',name)
end as titled_name
from company;

select emp_id,name,department,salary,experience,gender,
case
when experience>8 and salary >6000 then'A'
when experience between 5 and 8 then 'B'
else 'C'
end as performance_grate
from company;

select emp_id,name,department,salary,experience,gender,
case
when department='IT' then 'D01'
when department='Finance' then 'D02'
when department='HR' then 'D03'
else 'Unknown'
end as department_code
from company;


select emp_id,name,department,salary,experience,gender,
case
when department in('IT','Finance') then 'tech'
else 'Not tech'
end as department_type
from company;

# Display remarks using nested CASE
select emp_id,name,department,salary,experience,gender,
case
when department="IT" then
case
when experience>5 then "experienced IT staff"
else "New IT staff"
end
else "other department"
end as remarks
from company;

# Salary comparison to overall average
select emp_id,name,department,salary,experience,gender,
case
when salary>(select avg(salary) from company) then "Above salary"
else "Below salary"
end as check_salary
from company;

# salary difference message
select emp_id,name,department,salary,experience,gender,
case 
when salary-50000>0 then concat("Avove 50k by ",salary -50000)
when salary-50000<0 then concat("Below 50k by",50000-salary)
else "exactly 50k"
end as salary_gap
from company;













