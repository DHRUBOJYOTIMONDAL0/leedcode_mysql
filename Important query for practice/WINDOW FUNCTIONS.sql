-- WINDOW FUNCTIONS:-

-- select sum(salary) over() as sum_salay
-- from employees;

-- select emp_id, dept, salary, sum(salary) over(order by emp_id) as sum_salary
-- from employees;

-- select emp_id, dept, salary, sum(salary) over(PARTITION BY dept) as sum_salary
-- from employees;

-- Inbuilt WINDOW Function:-

-- select 
-- 	-- ROW_NUMBER() OVER() as row_no,
--     -- ROW_NUMBER() OVER(order by salary) AS row_no,
--      ROW_NUMBER() OVER(partition by  salary) AS row_no,
--     emp_id, dept, salary from employees;


-- select emp_id, dept, salary,
-- 	rank() over(order by salary) as rank_sal from employees;

-- select emp_id, dept, salary,
-- 	dense_rank() over(order by salary) as rank_sal from employees;

-- select 
-- 	emp_id,
--     dept,
--     salary,
--     LAG(salary) over(order by salary) as salary_lag -- LAG works only column
-- from employees;


-- select 
-- 	emp_id,
--     dept,
--     salary,
--    salary - LAG(salary) over(order by salary) as salary_lag -- LAG works only column
-- from employees;

-- select 
-- 	emp_id,
--     dept,
--     salary,
--     LEAD(salary) over(order by salary) as difference_salary
-- from employees;

select 
	emp_id,
    dept,
    salary,
   salary - LEAD(salary) over(order by salary) as salary_lag 
from employees;
