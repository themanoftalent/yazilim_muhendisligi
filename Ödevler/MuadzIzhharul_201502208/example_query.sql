
-- GET ALL STUDENTS WITH THEIR DEPARTMENT NAME AND THEIR COURSES

-- SELECT s.first_name, s.last_name, d.Name AS department_name, c.title AS course_title
-- FROM students s
-- JOIN departments d ON s.department_id = d.department_id
-- JOIN enrollments e ON s.student_no = e.student_no
-- JOIN courses c ON e.course_id = c.course_id;

-- GET SELECTED COURSE WITH ITS STUDENTS

-- SELECT c.title AS course_title, s.first_name, s.last_name
-- FROM courses c
-- JOIN enrollments e ON c.course_id = e.course_id
-- JOIN students s ON e.student_no = s.student_no
-- WHERE c.title = 'Introduction to Programming';

-- GET COUNT OF STUDENTS IN EACH COURSE

-- SELECT c.title AS course_title, COUNT(e.student_no) AS student_count
-- FROM courses c
-- JOIN enrollments e ON c.course_id = e.course_id
-- GROUP BY c.title;


