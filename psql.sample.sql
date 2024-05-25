CREATE DATABASE student;
CREATE TABLE student_details(rollno INT NOT NULL PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),brith_date DATE NOT NULL);
INSERT INTO student_details(rollno,first_name,last_name,brith_date)VALUES(3,'hari','krishnan','2003-03-03'),(6,'as','wini','2005-02-06'),(9,'dhaya','nithi','2004-12-03'),(13,'nare','ntheran','2002-12-13');
SELECT * FROM student_details;
SELECT rollno,first_name,last_name,AGE(brith_date) FROM student_details;
SELECT rollno,first_name,last_name,brith_date FROM student_details ORDER BY first_name DESC;
 SELECT rollno,first_name,LENGTH(last_name)len,brith_date FROM student_details ORDER BY LENGTH(last_name) DESC;
 SELECT first_name||' '||last_name AS full_name FROM student_details;
  SELECT first_name FROM student_details WHERE first_name LIKE 'd%';