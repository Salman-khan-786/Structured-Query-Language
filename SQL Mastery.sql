create database comp;

use comp;

create table employees(
emp_id int primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary decimal(10,2),
hire_date Date);

insert into employees(emp_id,first_name,last_name,department,salary,hire_date) values
(1,"John","Doe","IT",60000.00,"2019-01-10"),
(2,"Jane","Smith","HR",55000.00,"2018-03-05"),
(3,"Emily","Jones","IT",62000.00,"2020-07-23"),
(4,"Michael","Brown","Finance",70000.00,"2016-05-14"),
(5,"Sarah","Davis","Finance",69000.00,"2017-11-18"),
(6,"David","Johnson","HR",48000.00,"2021-09-10");

select * from employees;

# Q1. find the average salary of employees in each department.
select department,
avg(salary) as avg_salary
from employees group by department;

# Q2. find the total number of employees hierd after 2019.
select 
count(*) as total_employees
from employees where hire_date > "2019-01-10";

# Q3. List the departments and the total salary of all employees in each department,ordered by the total salary.
select department,
sum(salary) as total_salary
from employees group by department order by total_salary DESC;

# Q4. find the highest salary in the Finance department.
select "Finance",
max(salary) as highest_salary
from employees group by "Finance";

# Q5. Get the top 3 hihgest-paid employees,
select
emp_id,first_name,last_name,salary
from employees order by salary DESC LIMIT 3;

# Q6. find the department with the minimum average salary.
select department,
avg(salary) as min_avg_salary
from employees group by department having
min(salary);

# Q7. Display the total number of employees in each department.
select department,
count(salary) as total_employees
from employees group by department;

# Q8. find the average salary of employees who were hired before 2020.
select 
avg(salary) as avg_salary
from employees where hire_date<"2020-07-23";

# Q9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.
select first_name,last_name,hire_date
from employees where department="IT" order by hire_date;

# Q10. find the sum of salaries for all employees hired after January1,2019,ordered by salary.
select 
sum(salary) as total_salary
from employees where hire_date>"2019-01-10" order by salary;

# Q11. Get the employees with the lowest salary in the HR department.
select first_name,last_name,salary
from employees order by department="HR" and 
salary=( select min(salary) from employees where department="HR");

# Q12. find the total salary paid to employees in each department , but limit the result to the top 2 highest-paying departmens.
select department,
sum(salary) as total_salary
from employees group by department order by total_salary LIMIT 2;

# Q13. List all employees hired after 2018, oredred by salary,and show only the first 4 employees.
select first_name,last_name,hire_date
from employees where hire_date>"2018-03-05" order by salary LIMIT 4;

# Q14. find the highest salary in the IT department, but limit the results to the top 1 result.
select first_name,last_name,salary
from employees where department="IT" order by salary LIMIT 1;

# Q15. Get the average salary of employees in each department and list only department with an average salary greater than $60,000.
select department,
avg(salary ) as avg_salary
from employees group by department having avg(salary) >600000;







