
# 🎓 College Student Database - SQL Project

This repository contains a full SQL script for creating and managing a student database named `college1`. It demonstrates SQL basics like table creation, data insertion, complex queries, joins, grouping, aggregation, updates, and schema modifications.

---

## 🛠️ Technologies Used

- **Database**: MySQL
- **Language**: SQL
- **Platform**: Local or any SQL IDE (e.g., MySQL Workbench, phpMyAdmin, VS Code + Extensions)

---

## 📁 Project Structure

### 1. Database Creation
```sql
CREATE DATABASE college1;
USE college1;
```

### 2. Table Creation
```sql
CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);
```

### 3. Data Insertion
```sql
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, 'C', 'Pune'),
(102, "bhumika", 93, 'A', 'Mumbai'),
(103, "chetan", 85, 'B', 'Mumbai'),
(104, "dhruv", 96, 'A', 'Delhi'),
(105, "farah", 12, 'F', 'Delhi'),
(106, "farah", 82, 'B', 'Delhi');
```

---

## 🔍 SQL Operations Covered

### 🔹 Basic Queries
```sql
SELECT * FROM student;
SELECT DISTINCT city FROM student;
```

### 🔹 Filtering with WHERE
```sql
SELECT * FROM student WHERE marks > 80 AND city = 'mumbai';
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
```

### 🔹 Sorting & Limiting
```sql
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student WHERE marks > 75 LIMIT 3;
```

### 🔹 Aggregation & Grouping
```sql
SELECT AVG(marks) FROM student;
SELECT city, COUNT(name) FROM student GROUP BY city;
```

### 🔹 Conditional Logic with CASE
```sql
SELECT name, marks,
  CASE
    WHEN marks >= 90 THEN 'Outstanding'
    WHEN marks >= 75 THEN 'Excellent'
    WHEN marks >= 50 THEN 'Average'
    ELSE 'Fail'
  END AS performance
FROM student;
```

### 🔹 Updates & Deletes
```sql
UPDATE student SET grade = 'D' WHERE grade = 'A';
DELETE FROM student WHERE marks < 33;
```

### 🔹 Altering the Table
```sql
ALTER TABLE student ADD COLUMN age INT;
ALTER TABLE student CHANGE age stu_age INT;
```

---

## 🆕 Bonus Entries

```sql
INSERT INTO student 
(rollno, name, marks, grade, city, stu_age)
VALUES 
(107, 'unnati', 99, 'A', 'delhi', 100);
```

---

## 📌 How to Use

1. Clone the repository:
2. Open any SQL IDE (e.g., MySQL Workbench).
3. Run the script step-by-step or all at once.
4. Modify queries to test different conditions.

---

-  [LinkedIn](https://www.linkedin.com/in/shivam-kumar-mahto-b7a84a311) 
 - [GitHub](https://github.com/yourusername)

