select *
FROM parks_and_recreation.employee_demographics;  

select first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10
FROM parks_and_recreation.employee_demographics;  
# PEMDAS
select distinct gender
FROM parks_and_recreation.employee_demographics;


select first_name, count(age)
from employee_demographics
group by first_name;

select gender, avg(age)
from e mployee_demographics
group by gender
having avg(age) > 40 
;
select occupation, avg(salary)
from employee_salary
group by occupation;

select occupation, avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary) >75000;

select *
from employee_demographics
order by age desc
limit 2,5
;

select gender, AVG(age) as edad_promedio #puedo no usar el as"
from employee_demographics
group by gender
having edad_promedio > 40
;