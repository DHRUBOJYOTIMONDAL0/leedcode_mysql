-- SELECT * FROM institute.student_course; it is only show both table id numbers
-- This command for student name and course name usnig many to many join  
-- select student_name, course_name from students
-- join
-- student_course on student_course.student_id = std_id
-- join
-- courses on student_course.course_id = cus_id
-- order  by student_name asc; 

-- Print number of students for each course
-- select count(student_name) as Total_Students, course_name from students
-- join
-- student_course on student_course.student_id = std_id
-- join
-- courses on student_course.course_id = cus_id
-- group by course_name;

-- Print number of courses taken by each student

-- select student_name, count(course_name) from students
-- join
-- student_course on student_course.student_id = std_id
-- join
-- courses on student_course.course_id = cus_id
-- group by student_name;

-- Total fees paid by each student

-- select student_name, fees from students
-- join
-- student_course on student_course.student_id = std_id
-- join
-- courses on student_course.course_id = cus_id
-- group by student_name;

-- Create view command

create view student_info as
select student_name, course_name, fees From students
join
student_course on student_course.student_id = std_id
join
courses on student_course.course_id = cus_id;
