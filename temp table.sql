CREATE TEMPORARY TABLE temp_table
(first_name varchar (50),
last_name varchar (50),
fav_movie varchar (50)
);
SELECT *
FROM temp_table;

INSERT INTO temp_table (first_name, last_name, fav_movie) VALUES ('Joan','Sacreblu', 'Godzilla');

DELIMITER $$
CREATE TRIGGER emp_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	IF NOT EXISTS (SELECT 1 FROM employee_demographics WHERE employee_id = NEW.employee_id) THEN
    INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END IF;
END$$
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (17, 'morita', 'gris', 'gritar', 1234, null);

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (15, 'cheche', 'negra', 'comer', 4800, null);

SELECT * FROM employee_salary WHERE employee_id = 13;
DELETE FROM employee_salary WHERE employee_id = 13;

ALTER TABLE employee_demographics AUTO_INCREMENT = 14;

DROP TRIGGER IF EXISTS emp_insert;

DELIMITER $$
DROP TRIGGER IF EXISTS emp_insert;
CREATE TRIGGER emp_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
    SELECT 'Trigger fired!', NEW.employee_id, NEW.first_name, NEW.last_name;
END $$
DELIMITER ;

SELECT * FROM employee_salary WHERE employee_id IS NULL;


DELIMITER $$
CREATE TRIGGER prueba2_trigger
	AFTER INSERT ON employee_demographics
    FOR EACH ROW
BEGIN
	INSERT INTO employee_salary (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES (16, 'Yui', 'blanca', '12', 'Female', null);