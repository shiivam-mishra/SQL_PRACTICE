USE COLLEGE;


CREATE TABLE students1(
ID INT NOT NULL,
NAME VARCHAR(50)
);

INSERT INTO students1 (ID, NAME) VALUES
(1, "BOB"),
(2, "SOB"),
(3, "BOS");

SELECT * FROM students1;

CREATE TABLE course(
ID INT NOT NULL,
course VARCHAR(50)
);

ALTER TABLE course
ADD COLUMN roll_no INT;

INSERT INTO course (ID, course, roll_no) VALUES
(1, "english", 18),
(2, "math",16),
(4, "science",14),
(2, "cs",15);

TRUNCATE TABLE course;

SELECT * FROM course;

-- joins -- 

SELECT *
FROM students1 as stu
INNER JOIN course as cou
ON stu.ID = cou.ID;

SELECT stu.ID, cou.course, cou.roll_no
FROM students1 as stu
INNER JOIN course as cou
ON stu.ID = cou.ID;

-- LEFT JOIN-- 

SELECT *
FROM students1 as stu
LEFT JOIN course as cou
ON stu.ID = cou.ID;

-- RIGHT JOIN --

SELECT *
FROM students1 as stu
RIGHT JOIN course as cou
ON stu.ID = cou.ID;  

-- FULL JOIN-- 

SELECT *
FROM students1 as stu
LEFT JOIN course as cou
ON stu.ID = cou.ID
UNION
SELECT *
FROM students1 as stu
RIGHT JOIN course as cou
ON stu.ID = cou.ID;  