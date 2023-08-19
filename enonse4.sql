CREATE DATABASE IF NOT EXISTS StudentGrades;

USE StudentGrades;

CREATE TABLE IF NOT EXISTS Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade_math INT,
    grade_science INT,
    grade_history INT,
);


INSERT INTO Students (first_name, last_name, age, grade_math, grade_science, grade_history, grade_english)
VALUES
    ('samfeyo', 'Jacques', 18, 85, 92, 78, 0),
    ('Foukan', 'Jean', 17, 92, 88, 75, 0),
    ('Mesidye', 'Joseph', 16, 78, 95, 82, 0),
    ('Dyepifo', 'Charelus', 18, 90, 85, 88, 0),
    ('Jezila', 'Jules', 17, 82, 78, 91, 0);
    
    
UPDATE Students
SET grade_math = 88
WHERE student_id = 1;

SELECT
    first_name,
    last_name,
    (grade_math + grade_science + grade_history) / 3 AS average
FROM Students;

ALTER TABLE Students
ADD COLUMN grade_english INT;

DELETE FROM Students
WHERE first_name = 'Mesidye';
