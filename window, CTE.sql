SELECT  dem.first_name, dem.last_name, salary, gender,
SUM(salary) OVER (partition by gender order by dem.employee_id) as running_total
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT  dem.first_name, dem.last_name, salary, gender,
AVG(salary) OVER (partition by gender order by dem.employee_id) as avg_tot
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    SELECT  dem.first_name, dem.last_name, salary, gender,
AVG(salary) OVER (order by gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
select first_name, salary
from employee_salary
where salary > (select avg(salary) from employee_salary)
;
WITH Avg_sal AS 
(
select avg(salary) AS avg_salary
from employee_salary
)
select first_name, employee_salary.salary
from employee_salary, avg_sal
where salary > avg_salary;
    