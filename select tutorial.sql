select *
FROM employee_demographics as emp_dem
INNER JOIN employee_salary AS emp_sal
	ON emp_dem.employee_id = emp_sal.employee_id
;
select emp_dem.employee_id, age, occupation
FROM employee_demographics as emp_dem
INNER JOIN employee_salary AS emp_sal
	ON emp_dem.employee_id = emp_sal.employee_id
;
select *
FROM employee_demographics as emp_dem
RIGHT OUTER JOIN employee_salary AS emp_sal
	ON emp_dem.employee_id = emp_sal.employee_id;
    
select emp_sal1.employee_id AS emp_santa,
emp_sal1.first_name AS first_name_santa,
emp_sal1.last_name AS Last_name_santa,
emp_sal2.employee_id, 
emp_sal2.first_name,
emp_sal2.last_name
FROM employee_salary as emp_sal1
JOIN employee_salary AS emp_sal2
	ON emp_sal1.employee_id + 1 = emp_sal2.employee_id;
    
select *
FROM employee_demographics as emp_dem
INNER JOIN employee_salary AS emp_sal
	ON emp_dem.new_procedureemployee_id = emp_sal.employee_id
INNER JOIN parks_departments AS pd
	ON emp_sal.dept_id = pd.department_id;