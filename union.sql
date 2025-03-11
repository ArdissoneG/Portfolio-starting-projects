SELECT first_name, last_name, 'viejo' AS "columna nueva"
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION 
SELECT first_name, last_name, "vieja" AS "columna nueva"
FROM employee_demographics
WHERE age > 40 AND gender = "female"
UNION
SELECT first_name, last_name, "empleado caro" AS "otra"
FROM employee_salary
WHERE salary > 70000
order by first_name
;
select *
from employee_salary
left join parks_departments
	on employee_salary.dept_id = parks_departments.department_id;

SELECT first_name, last_name
FROM employee_demographics
WHERE age > 40 AND gender = "male"