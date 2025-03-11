select first_name, length(first_name) AS "largo nombre"
FROM employee_demographics
ORDER BY 2  desc; #en vez del nombre de la columna pone el num

select first_name, UPPER(first_name) AS "nombre"
FROM employee_demographics;

select first_name,
LEFT(first_name, 1) AS "inicial",
RIGHT(first_name, 1) AS "Letra final",
SUBSTRING(first_name, 1,2) AS "dos letras",
birth_date,
SUBSTRING(birth_date,6,2) AS "mes de nac."
FROM employee_demographics

;
select first_name, REPLACE(REPLACE(first_name, "i","1"),"a", "4") AS "nombre turro"
FROM employee_demographics;

select first_name, LOCATE("An",first_name) AS "an"
FROM employee_demographics
;
select first_name, last_name,
CONCAT("XxX",first_name," ",last_name,"XxX") AS "nombre gamer"
FROM employee_demographics;

select gender, 
count(age)
FROM employee_demographics
group by gender;

select *, 
count(salary)over(partition by occupation) as "total" 
FROM employee_salary
