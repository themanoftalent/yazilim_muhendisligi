INSERT INTO faculties (faculty_id, name) VALUES
(1, 'Faculty of Engineering'),
(2, 'Faculty of Arts'),
(3, 'Faculty of Science');

INSERT INTO departments (department_id, Name, faculty_id) VALUES
(1, 'Computer Science', 1),
(2, 'Electrical Engineering', 1),
(3, 'English Literature', 2),
(4, 'Biology', 3);

INSERT INTO students (student_no, first_name, last_name, email, phone, date_of_birth, department_id) VALUES
(1001, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2000-08-15', 1),
(1002, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2001-03-25', 3),
(1003, 'David', 'Brown', 'david.brown@example.com', '555-555-5555', '2001-11-10', 2),
(1004, 'Emily', 'Johnson', 'emily.johnson@example.com', '111-222-3333', '2001-09-03', 4);

INSERT INTO courses (course_id, title, credits, description) VALUES
(101, 'Introduction to Programming', 3, 'Basic programming concepts using Java'),
(102, 'Literary Analysis', 3, 'Study of various literary works and analysis techniques'),
(103, 'Circuit Theory', 4, 'Fundamental principles of electrical circuits'),
(104, 'Cell Biology', 4, 'Study of cell structure and function'),
(105, 'Data Structures and Algorithms', 4, 'Study of data structures and algorithms'),
(106, 'Shakespearean Literature', 3, 'Exploration of Shakespeare''s plays and sonnets'),
(107, 'Digital Electronics', 3, 'Introduction to digital electronics and logic circuits'),
(108, 'Genetics', 4, 'Study of genes and heredity');

INSERT INTO enrollments (enrollemnt_id, student_no, course_id, enrollment_date, grade) VALUES
(1, 1001, 101, '2024-03-25', 85),
(2, 1002, 102, '2024-03-25', 78),
(3, 1003, 103, '2024-03-25', NULL),
(4, 1004, 104, '2024-03-25', 91),
(5, 1001, 105, '2023-09-01', 79),
(6, 1002, 106, '2023-09-01', 87),
(7, 1003, 107, '2023-09-01', NULL),
(8, 1004, 108, '2023-09-01', 95),
(9, 1001, 107, '2023-09-01', 83),
(10, 1002, 105, '2023-09-01', 91),
(11, 1003, 108, '2023-09-01', NULL),
(12, 1004, 106, '2023-09-01', 88);
