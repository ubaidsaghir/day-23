CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
name VARCHAR(50),
age INT,
gender VARCHAR(50),
city VARCHAR(50),
marks INT,
course VARCHAR(50)
);

-- INSERT DATA INTO TABLE(students)

INSERT INTO students (name,age,gender,city,marks,course)
VALUES
('Ubaid',22,'Male','Multan',550,'Math'),
('Ali',23,'Male','Lahore',650,'English'),
('Sara',24,'Female','Multan',750,'Physics'),
('Iqra',25,'Female','Lahore',850,'Computer'),
('Nimra',26,'Female','Karachi',950,'Bio'),
('Emaan',27,'Female','Bahawalpur',450,'Chemistry'),
('Zain',20,'Male','Multan',780,'Math'),
('Haris',28,'Male','Lahore',990,'Computer');

-- Students with marks > 750
SELECT * FROM students
WHERE marks>750;


-- Students from Lahore OR Karachi
SELECT * FROM students 
WHERE city='Lahore' OR city='Karachi';

-- Students with: course = 'CS' 
-- AND marks > 75

SELECT * FROM students
WHERE course='Computer' AND marks>500;

-- Students with: 
-- (course = 'CS' OR course = 'IT') AND marks > 60

SELECT * FROM students
WHERE (course ='Computer' OR course='Math') AND marks>500;

-- Sort students: First by marks DESC Then by age ASC

SELECT * FROM students
ORDER BY marks DESC, age ASC;


-- Show only: name marks grade (A/B/C logic using CASE) 

SELECT name,marks,
CASE
    WHEN marks >=900 THEN 'A'
	WHEN marks >=800 THEN 'B'
	ELSE 'C'
END AS grade
FROM students;


-- Students whose name ends with 'a'
SELECT * FROM students
WHERE name LIKE '%a';