use college;

create table student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- WHERE CLAUSE-- 

SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Mumbai";
SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

-- logical operators
-- AND
SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";

-- OR
SELECT * FROM student WHERE marks > 90 OR city = "Mumbai"; 

-- BETWEEN (selects for given range

SELECT * FROM student WHERE marks BETWEEN 80 AND 90; 

-- IN, NOT IN
 SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");
 SELECT * FROM student WHERE city NOT IN ("Delhi", "Pune");
 SELECT * FROM student WHERE NOT city = "Delhi" ;

--  LIMIT CLASUSE--

SELECT * FROM student WHERE marks > 80 LIMIT 3; 

-- ORDER BY --  

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks ASC;

SELECT * FROM student ORDER BY marks DESC
LIMIT 3;

-- GROUP BY --  

SELECT COUNT(marks), grade
FROM student
GROUP BY grade;

SELECT COUNT(marks), name, rollno, grade
FROM student
GROUP BY name, rollno, grade
ORDER BY grade;

SELECT COUNT(marks), name, rollno, grade
FROM student
GROUP BY name, rollno, grade
ORDER BY grade DESC;

-- HAVING --  

SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

-- GROUP ORDER-- 
SELECT city FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city DESC;


-- TABLE QUERY TOPIC-- 

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 83 , grade = "B"
WHERE rollno = 105;

UPDATE student
SET marks = 12
WHERE rollno = 105;

SELECT * FROM student;

-- DELETE --

DELETE FROM student
WHERE marks < 33;  

-- ALTER-- 

-- ADD -- 

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- DROP --

ALTER TABLE student
DROP COLUMN stu_age; 

-- CHANGE COLUMN-- 

ALTER TABLE student CHANGE
age stu_age INT;

-- MODIFY DATATYPE -- 

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

-- Eg -- 
INSERT INTO student (rollno, name, marks, stu_age) VALUE
(107, "bob", 97, 100);

TRUNCATE TABLE student;


-- SUB QUERY-- 

-- 1. Find the avg of class-- 
-- 2. Find the names of students with marks > avg--  

select avg(marks) from student;

SELECT name FROM student
WHERE marks > (select avg(marks) from student);

-- 3.Find the even roll number--
-- 4. Find the names of students with even rollno.

SELECT rollno from student
WHERE rollno % 2 =0;

SELECT name from student
where rollno IN (102, 104, 106); 

-- SUB QUERY-- 
SELECT name, rollno from student
where rollno IN (SELECT rollno from student
WHERE rollno % 2 = 0);
