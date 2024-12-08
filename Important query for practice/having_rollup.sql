-- SELECT student_name, sum(fees) as Total from student_info
-- group by student_name;

-- SELECT student_name, sum(fees) as Total from student_info
-- group by student_name
-- where sum(fees) > 10000 // in this format group by clause not work, so i am using having clause

-- HAVING SECTION

-- select student_name, sum(fees) as total_feea from student_info
-- group by student_name
-- having sum(fees) > 10000;

-- GROUP BY ROLLUP CLAUSE

select ifnull(student_name, "Total"), sum(fees) from student_info
group by student_name with rollup;
