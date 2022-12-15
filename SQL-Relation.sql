CREATE DATABASE CourseDatabase

USE CourseDatabase

CREATE TABLE Students(
	Id INT Primary Key IDENTITY,
	Name nvarchar(20) NOT NULL,
	Surname nvarchar(20) DEFAULT 'xxx',
	Age tinyint NOT NULL,
	Point FLOAT NOT NULL,
)
INSERT INTO Students
VALUES 
('Nihad','Balakisiyev',19,89.5),
('Kamil','Qurbanov',19,92),
('Kamran','Mustafayev',19,95)

INSERT INTO Students(Name,Age,Point)
VALUES ('Eli',19,78)

INSERT INTO Students(Name,Age,Point)
VALUES ('Veli',24,84)

SELECT * FROM Students

-- Surname-i xxx olan datalarin surname-ni update edib deyishin
UPDATE Students 
SET Surname='New Surname' WHERE Surname='xxx'

-- Id-i 1 olan datani point deyerini deyishin
UPDATE Students 
SET Point=99.9 WHERE Id=1

SELECT * FROM Students

-- Point deyeri 70 ile 90 arasinda olan butun datalari gosterin
SELECT * FROM Students Where Point>70 AND Point<90

-- Age deyeri 21-den kicik olan datalarin name ve surname-lerini gosterin
SELECT * FROM Students Where Age<21

-- Table-a AvaregePoint deyeri elave edin ve yoxlayin ki,
-- AvaregePoint deyeri 0 ile 100 arasinda olsun
ALTER TABLE Students
ADD AvaregePoint FLOAT CONSTRAINT CK_STUDENTS_AvaregePoint CHECK(AvaregePoint>0 AND AvaregePoint<=100)

UPDATE Students 
SET AvaregePoint=75 WHERE AvaregePoint IS NUll

--Bu hissede AvaregePoint 100-den boyuk olduqu ucun error verecek------------------------
UPDATE Students 
SET AvaregePoint=102 WHERE Id=1
-----------------------

SELECT * FROM Students