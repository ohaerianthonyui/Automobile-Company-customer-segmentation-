-- Create database Ikons

---Create tables


DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
  teacher_id BIGINT PRIMARY KEY
  , teacher_name VARCHAR(64)
);

DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
  course_id VARCHAR(16) PRIMARY KEY
  , course_name VARCHAR(128) NOT NULL
  , teacher_id BIGINT
  , FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)                       );
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  student_id BIGINT PRIMARY KEY
  , student_name VARCHAR(64)
);
DROP TABLE IF EXISTS student_courses;
CREATE TABLE student_courses (
  course_id VARCHAR(16)
  , student_id BIGINT
  , FOREIGN KEY (course_id) REFERENCES courses(course_id)
  , FOREIGN KEY (student_id) REFERENCES students(student_id)
  , PRIMARY KEY (course_id, student_id)
);


---Populate the tables
INSERT INTO teachers VALUES 
(1001, 'Mark, J.'),
(1002, 'Okoye, J.'),
(1003, 'Anna, C.'),
(1004, 'Igboho, D.'),
(1005, 'Kev, C.'),
(1006, 'Olamide, K.');


INSERT INTO courses VALUES 
('MTH 111', 'Practical Mathematics', 1001),
('ENG 111', 'Use of English', 1002),
('SOC 121', 'Societal Values', 1003),
('CSC 111', 'Intro to Computer Science', 1004),
('PSY 111', 'Intro to Psychology', 1003),
('POL 121', 'Intro to Political Science', 1003),
('STAT 111', 'Intro to Statistics', 1001),
('LAW 111', 'Nigerian Legal System', 1005),
('LAW 131', 'Business Law', 1005);

INSERT INTO students VALUES (3001, 'Obi Green'),
(3002, 'Anna Olotu'),
(3003, 'Romario Igwe'),
(3004, 'Michael Brown'),
(3005, 'Bobby Wilson'),
(3006, 'Catherine Ezeogu'),
(3007, 'Anthony Dennis'),
(3008, 'Bob White'),
(3009, 'Monica Alaba'),
(3010, 'George Okah'),
(3011, 'Angela Igwe'),
(3012, 'Ben Oloye'),
(3013, 'Derrick Wilson'),
(3014, 'David Jimba'),
(3015, 'Susan Olu'),
(3016, 'Calvin Harris'),
(3017, 'Amir Mohammed'),
(3018, 'Hannah Manu'),
(3019, 'Malek Shaibu'),
(3020, 'Esther Frances');

-- Obi green 7 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3001),
('ENG 111', 3001),
('CSC 111', 3001),
('POL 121', 3001),
('STAT 111', 3001),
('LAW 131', 3001),
('LAW 111', 3001);

--Ann olotu 7 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3002),
('ENG 111', 3002),
('SOC 121', 3002),
('CSC 121', 3002),
('STAT 111', 3002),
('LAW 131', 3002),
('LAW 111', 3002);

-- Romario igwe 2 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3003),
('ENG 111', 3003);

-- Michael Brown 5 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3004),
('ENG 111', 3004),
('SOC 121', 3004),
('CSC 121', 3004),
('STAT 111', 3004);

--Bobby Wilson 3 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3005),
('ENG 111', 3005),
('STAT 111', 3005);

--Catherine Ezeogu 4 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3006),
('ENG 111', 3006),
('SOC 121', 3006),
('CSC 121', 3006),
('STAT 111', 3006);

--Anthony Dennis  5 courses
INSERT INTO student_courses VALUES 
('SOC 121', 3007),
('CSC 121', 3007),
('STAT 111', 3007),
('LAW 131', 3007),
('LAW 111', 3007);

--Bob White 6 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3008),
('STAT 111', 3008),
('SOC 121', 3008),
('LAW 131', 3008),
('PSY 111', 3008),
('POL 121', 3008);

--Monica Alaba 6 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3009),
('STAT 111', 3009),
('SOC 121', 3009),
('CSC 111', 3009),
('PSY 111', 3009),
('POL 121', 3009);

--George Okah 4 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3010),
('STAT 111', 3010),
('SOC 121', 3010),
('POL 121', 3010);

--Angela Igwe 5 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3011),
('STAT 111', 3011),
('SOC 121', 3011),
('CSC 111', 3011),
('POL 121', 3011);

-- Ben Oloye 6 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3012),
('STAT 111', 3012),
('SOC 121', 3012),
('CSC 111', 3012),
('PSY 111', 3012),
('POL 121', 3012);


--Derrick Wilson 1 course
INSERT INTO student_courses VALUES 
('MTH 111', 3013);

--David Jimba 2 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3014),
('STAT 111', 3014);


--Susan Olu 4 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3015),
('STAT 111', 3015),
('SOC 121', 3015),
('PSY 111', 3015);

-- Calvin harris 7 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3016),
('STAT 111', 3016),
('SOC 121', 3016),
('CSC 111', 3016),
('PSY 111', 3016),
('POL 121', 3016),
('LAW 111', 3016);

---Amir Mohammed 7 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3017),
('STAT 111', 3017),
('SOC 121', 3017),
('CSC 111', 3017),
('PSY 111', 3017),
('POL 121', 3017),
('LAW 111', 3017);

---Hanna Manu 5 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3018),
('STAT 111', 3018),
('SOC 121', 3018),
('CSC 111', 3018),
('PSY 111', 3018);

--Malik Shaibu 2 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3019),
('POL 121', 3019),
('LAW 111', 3019);

--Esther Frances 3 courses
INSERT INTO student_courses VALUES 
('MTH 111', 3020),
('STAT 111', 3020),
('LAW 131', 3020);




---Implement a query to get a list of all students and how many courses each student is enrolled in.
SELECT student_name, COUNT(sc.course_id) AS OfferedCourses
FROm students s
INNER JOIN student_courses sc
ON s.student_id = sc.student_id
GROUP BY student_name, s.student_id;



--Implement a query that shows the number of full-time and part-time students. A full time is enrolled in at least 4 
courses. --A part-time student is enrolled in at least 1 course, but not more than 3.

with StudentCoursesCount as(
SELECT student_id, 
CASE when COUNT(course_id) >= 4 then 'fulltime'
when COUNT(course_id) BETWEEN 1 and 3 then 'partime'
END as student_type
from student_courses
  group by student_id)
  select student_type, count(*) as student_count
  from StudentCoursesCount
  group by student_type;
  
  --Write a query that shows which teacher(s) are teaching the most number of courses.
  
  SELECT teacher_name, COUNT(DISTINCT(course_id)) AS NumofCourses
  FROM teachers t
  JOIN courses c
  ON t.teacher_id = c.teacher_id
  GROUP BY teacher_name
  ORDER BY NumofCourses DESC
  LIMIT 3 ;
  
  
  --Write a query that shows which teacher(s) are teaching the least number of courses
  SELECT teacher_name, COUNT(DISTINCT(course_id)) AS NumofCourses
  FROM teachers t
  JOIN courses c
  ON t.teacher_id = c.teacher_id
  GROUP BY teacher_name
  ORDER BY NumofCourses ASC
  LIMIT 2;
  
  
--Write a query that lists the courses in order of most popular to least popular.
select course_id, count(student_id) As StudentCount
from student_courses
group by course_id
order by  StudentCount desc;




  
  
