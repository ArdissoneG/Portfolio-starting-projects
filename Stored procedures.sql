CREATE PROCEDURE large_salaries ()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries() ;

DELIMITER $$
CREATE PROCEDURE large_salaries2 ()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
    END $$
DELIMITER ;

CALL large_salaries2 ();

DELIMITER $$
CREATE PROCEDURE large_salaries3 (p_empleado_param INT)
BEGIN
	SELECT *
	FROM employee_salary
    WHERE employee_id = p_empleado_param
	;
END $$
DELIMITER ;

CALL large_salaries3(1);

DELIMITER $$
CREATE PROCEDURE empleados_mayores ()
BEGIN
	SELECT *
    FROM employee_demographics
    WHERE age >= 40;
END $$
DELIMITER ;

CALL empleados_mayores();

DELIMITER $$
CREATE PROCEDURE empleados_mayores2 (IN edad_minima INT)
BEGIN
	SELECT *
    FROM employee_demographics
    WHERE age >= edad_minima;
END $$
DELIMITER ;

CALL empleados_mayores3(40);

DELIMITER $$
CREATE PROCEDURE empleados_mayores3 (edad_minima INT)
BEGIN
	SELECT *
    FROM employee_demographics
    WHERE age >= edad_minima;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE total_emp (OUT total INT)
BEGIN
	SELECT COUNT(*)
    INTO total
    FROM employee_demographics
    ;
END $$
DELIMITER ;

CALL total_emp(@resultado);

SET @resultado = 0;
SELECT @resultado;

DELIMITER $$
CREATE PROCEDURE actualiz_emp(INOUT total INT, IN incremento INT)
BEGIN
	SET total = total + incremento;
END $$
DELIMITER ;

SET @total_emp = 50;
CALL actualiz_emp(@total_emp,5);

SELECT @total_emp
