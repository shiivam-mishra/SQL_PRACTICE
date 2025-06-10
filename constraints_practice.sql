CREATE DATABASE practice;

CREATE TABLE constraints_not_null(
ID INT NOT NULL,
LastName varchar(50) NOT NULL,
FirstName varchar(50) NOT NULL,
Age INT
);

-- ALTER-- 

ALTER TABLE constraints_not_null MODIFY COLUMN AGE INT NOT NULL;


-- UNIQUE CONSTRAINTS-- 

CREATE TABLE Persons_unique(
ID INT NOT NULL,
LastName varchar(50) NOT NULL,
FirstName varchar(50),
Age int,
CONSTRAINT UC_Person UNIQUE (ID, LastName)
);


INSERT INTO Persons_unique (ID, LastName, FirstName, Age) VALUES
(101, "miii", "shii", 20),
(102, "mii", "abhi", 21),
(101, "shiii", "mii", 22);

select * from Persons_unique;


-- DROP TABLE Persons_unique;-- 
-- 2 METHOD--
 
-- CREATE TABLE Persons_unique(
-- ID INT NOT NULL,
-- LastName varchar(50) NOT NULL,
-- FirstName varchar(50),
-- Age int,
-- UNIQUE (ID)
-- );

-- ALTER--  




