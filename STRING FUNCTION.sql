USE COLLEGE;

select * from student;

SELECT length("skyfall");

SELECT name, length(name) from student
ORDER BY 2;

SELECT upper("skyfall");
SELECT lower("SKYFALL");

SELECT name, UPPER(name) from student;

-- TRIM-- 
SELECT RTRIM("        SKYFALL      ");
SELECT LTRIM("        SKYFALL      ");
SELECT TRIM("        SKYFALL      ");

-- SUBSTRING-- 

-- LEFT,RIGHT-- 
select name,
left(name, 3),
right(name, 3),
substring(name,3,2)
from student;

select "skyfall",
substring("skyfall",3,2);

-- REPLACE-- 
select "skyfall",
replace("skyfall", "f", "w");

select "skyfall",
replace("skyfall", "f", "");

-- ////////////--  

-- LOCATE-- 

select "skyfall",
locate("f","skyfall");

select "26-08-2000",
locate("8", "26-08-2000");

-- /////////--  

-- CONCATENTION-- 

SELECT name, city,
upper(concat(name,' ', city)) as name_city
from student;




