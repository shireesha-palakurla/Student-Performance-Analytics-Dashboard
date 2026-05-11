CREATE DATABASE student_dashboard;
USE student_dashboard;
CREATE TABLE students (
    gender VARCHAR(20),
    race_ethnicity VARCHAR(50),
    parental_education VARCHAR(100),
    lunch VARCHAR(50),
    test_preparation VARCHAR(50),
    math_score INT,
    reading_score INT,
    writing_score INT,
    total_marks INT,
    average_marks DECIMAL(5,2),
    result VARCHAR(20),
    grade VARCHAR(5)
);
SELECT * FROM students;

SELECT COUNT(*) AS total_students
FROM students;

SELECT AVG(average_marks) AS class_average
FROM students;

SELECT *
FROM students
ORDER BY average_marks DESC
LIMIT 10;

SELECT result,
COUNT(*) AS total_students
FROM students
GROUP BY result;

SELECT grade,
COUNT(*) AS total_students
FROM students
GROUP BY grade;

SELECT gender,
AVG(average_marks) AS average_marks
FROM students
GROUP BY gender;

SELECT
AVG(math_score) AS math_average,
AVG(reading_score) AS reading_average,
AVG(writing_score) AS writing_average
FROM students;
