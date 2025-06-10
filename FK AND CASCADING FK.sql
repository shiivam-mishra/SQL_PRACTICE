-- keys-- 

select * from student;

select * from student1;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept VALUES
(101, "english"),
(102, "maths");

UPDATE dept
SET id = 103
WHERE id = 102;

SELECT * from dept;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) references dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher VALUES
(101, "ADAM", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

DROP table teacher;
