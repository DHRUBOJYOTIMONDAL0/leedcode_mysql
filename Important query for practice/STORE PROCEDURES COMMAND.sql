-- STORE PROCEDURES COMMAND

DELIMITER $$
CREATE procedure emp_info()
BEGIN
	select * from employees order by salary;

END$$
DELIMITER ;

DELIMITER $$
CREATE procedure get_empif(in p_fname varchar(100))
BEGIN
	select emp_id from employees 
    where fname = p_fname;

END$$
DELIMITER ;

DELIMITER $$
CREATE procedure get_sum_by_dept
	(IN p_dept varchar(50), OUT p_sum DECIMAL (10,2))
BEGIN
		select sum(salary) INTO p_sum from employees
        where dept = p_dept;
END$$
DELIMITER ;

-- FUNCTIONS COMMAND

DELIMITER $$
CREATE FUNCTION emp_name_max_salary() RETURNS VARCHAR (50)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
	DECLARE v_max int;
    DECLARE v_emp_name varchar(50);
    
    SELECT max(salary) into v_max from employees;
    SELECT fname into v_emp_name from employees
		WHERE salary = v_max;
        
    return v_emp_name;
END$$    
DELIMITER ;
