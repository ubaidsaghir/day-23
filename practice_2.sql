CREATE TABLE employees(
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary INT
);

INSERT INTO employees (name,age,department,salary)
VALUES
('Ubaid',21,'IT',50000),
('Ahmad',22,'IT',60000),
('Raheel',23,'IT',70000),
('Awais',24,'HR',80000),
('Huzaifa',25,'HR',90000);


SELECT * FROM employees;

-- Filter employees by salary > X (choose any threshold).
SELECT * FROM employees
WHERE salary>60000;


-- Filter employees by department.
SELECT * FROM employees
WHERE department = 'IT';

-- Show only specific columns (e.g., name and salary).

SELECT name,salary FROM employees;


-- Sort employees by salary ascending/descending.
-- Ascending Order
SELECT * FROM employees
ORDER BY salary;

-- Decending Order
SELECT * FROM employees
ORDER BY salary DESC;

-- Sort employees by age, then salary.

SELECT name,age,salary FROM employees
ORDER BY age DESC,salary DESC;

-- Combine filters and sorting
-- (e.g., employees in IT with salary > 50000, sorted by salary descending).

SELECT * FROM employees
WHERE department = 'IT' AND salary>50000
ORDER BY salary DESC;
