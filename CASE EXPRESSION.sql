SELECT * FROM EMPLOYEE;

INSERT INTO employee values
(1, "bob", 45000),
(2, "sun", 50000),
(3, "nus", 60000),
(4, "sud", 55000),
(5, "dun", 70000);

-- PAY INCREASE
 

SELECT name, salary,
CASE
	WHEN salary > 45000 THEN salary + (salary * 0.05)
    WHEN salary > 59000 THEN salary + (salary * 0.07)
    ELSE salary
END AS increment
from employee;

-- //////-- 

select * from student;

SELECT name, marks, grade,
CASE
	WHEN marks > 90 THEN "EXCELLENT"
    WHEN marks > 80 THEN "V.GOOD"
    WHEN marks > 70 THEN "GOOD"
    ELSE "IMPROVENT"
END AS REMARKS
FROM student
order by marks desc;