select first_name, last_name, age
from employee_demographics
WHERE age <= 30;

select first_name, last_name, age,
CASE
	WHEN age <=30 THEN "young" 
    WHEN age BETWEEN 31 and 50 THEN "old"
    WHEN age >=50 THEN "on death row"
    END AS "vida restante"
from employee_demographics;

select first_name, last_name, salary,
CASE
	WHEN salary <50000 THEN salary * 1.05 
    WHEN salary >50000 THEN salary * 1.07
END AS "salario nuevo",
CASE
    WHEN dept_id = 6 THEN salary * 0.10
    END AS "bono"
    from employee_salary;
    
SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary, 
SUM(salary) OVER(PARTITION BY gender order by dem.first_name) AS "Rolling total"
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    
SELECT  dem.first_name, dem.last_name, salary, gender,
rank () OVER (order by salary desc) AS rank_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT  dem.first_name, dem.last_name, salary, 
rank () OVER (partition by salary desc) AS rank_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name, dem.last_name, salary, gender,
AVG(salary) 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
    
    