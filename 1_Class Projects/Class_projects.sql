CREATE DATABASE college1;
USE college1;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR (20)
);

INSERT INTO student(rollno , name , marks , grade,city )
VALUES 
(101, "anil", 78, 'C', 'Pune'),
(102, "bhumika", 93, 'A', 'Mumbai'),
(103, "chetan", 85, 'B', 'Mumbai'),
(104, "dhruv", 96, 'A', 'Delhi'),
(105, "farah", 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi');

SELECT * FROM student;
DROP TABLE student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks >80 AND city = 'mumbai';
SELECT * FROM student
WHERE marks+10 > 100;

SELECT * FROM student 
WHERE marks > 90 AND city = 'mumbai';

SELECT * FROM student
WHERE marks > 90 OR city = 'mumbai';

SELECT * FROM student 
WHERE marks BETWEEN 80 and 90 ;

SELECT * FROM student 
WHERE city IN ('delhi','mumbai');

SELECT * FROM student 
WHERE city NOT IN ('delhi','mumbai');

SELECT * FROM student
WHERE marks > 75
LIMIT 3;

SELECT * FROM student 
ORDER BY city ASC;

SELECT  MAX(marks) FROM student;

SELECT *
FROM student
WHERE marks = (SELECT MAX(marks) FROM student);

SELECT AVG(marks) FROM student;

SELECT city , COUNT(name)
FROM student
GROUP BY city;

SELECT name , COUNT(grade)
FROM student
GROUP BY name;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city ASC;

SELECT name , COUNT(grade)
FROM student
GROUP BY name;

SELECT grade , COUNT(name)
FROM student
GROUP BY grade
ORDER BY grade ASC;

SELECT COUNT(rollno) , city
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city , COUNT(name)
FROM student
WHERE grade = 'A'
GROUP BY city 
HAVING MAX(marks) > 94
ORDER BY city ASC; 

UPDATE student 
SET grade = 'D'
WHERE grade = 'A';

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM student;

UPDATE student 
SET marks = marks+1;

DELETE FROM student
WHERE marks < 33;

ALTER TABLE student
ADD COLUMN age INT ;

UPDATE student
SET age = CASE
  WHEN name = 'anil' THEN 20
  WHEN name = 'bhumika' THEN 21
  WHEN name = 'chetan' THEN 22
  WHEN name = 'farah' THEN 23
  ELSE 25
END;



ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student1
RENAME TO student;

SELECT * FROM student;

SELECT rollno, name, marks, grade, city,
  CASE
    WHEN name = 'anil' THEN 'Needs Improvement'
    WHEN name = 'bhumika' THEN 'Topper'
    WHEN name = 'chetan' THEN 'Good'
    WHEN name = 'farah' THEN 'Duplicate Name'
    ELSE 'Average'
  END AS remark
FROM student;

SELECT name, marks,
  CASE
    WHEN marks >= 90 THEN 'Outstanding'
    WHEN marks >= 75 THEN 'Excellent'
    WHEN marks >= 50 THEN 'Average'
    ELSE 'Fail'
  END AS performance
FROM student
;
ALTER TABLE student 
MODIFY age VARCHAR(2); 

ALTER TABLE student 
CHANGE age stu_age INT;

INSERT INTO student 
(rollno, name , marks , grade, city , stu_age)
VALUES 
(107,'unnati',99, 'A','delhi',100);
