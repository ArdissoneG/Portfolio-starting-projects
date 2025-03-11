select *
from employee_demographics
where (first_name = "Leslie" and age=44) or age >55;

select *
from employee_salary
where salary >= 50000;

select salary, COUNT(first_name)
from employee_salary
group by salary;

select *
from employee_demographics
where gender != "female";

select *
from employee_demographics
where birth_date > "1985-01-01";

select *
from employee_demographics
where birth_date > "1985-01-01"
or not gender = "male" ;

select *
from employee_demographics
where first_name like "a___%";

select *
from employee_demographics
where birth_date like "1989%"
;
select *
from employee_demographics
order by gender, age DESC; 

select * #es lo mismo que el de arriba con n°#
from employee_demographics
order by 5, 4 DESC;