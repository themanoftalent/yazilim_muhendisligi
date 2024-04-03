CREATE TABLE `faculties` (
  `faculty_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`)
); 

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`),
  KEY `faculty_id_fk_idx` (`faculty_id`),
  CONSTRAINT `faculty_id_fk` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`faculty_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `students` (
  `student_no` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_no`),
  KEY `department_id_fk_idx` (`department_id`),
  CONSTRAINT `department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`course_id`)
);


CREATE TABLE `enrollments` (
  `enrollemnt_id` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrollment_date` datetime NOT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`enrollemnt_id`),
  KEY `student_no_idx` (`student_no`),
  KEY `course_id_fk_idx` (`course_id`),
  CONSTRAINT `course_id_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_no_fk` FOREIGN KEY (`student_no`) REFERENCES `students` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

