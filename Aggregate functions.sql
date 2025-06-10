USE college;

SELECT * FROM student;

SELECT marks FROM student;

SELECT MAX(marks) FROM student;

SELECT MIN(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT COUNT(marks) FROM student;

SELECT COUNT(*) FROM student;

SELECT  MAX(marks) AS LowMarks, grade
From student
GROUP BY grade
ORDER BY grade ASC;

SELECT  COUNT(*) AS "Number of Records", city
FROM student
GROUP BY city;
-- ORDER BY name ASC;

