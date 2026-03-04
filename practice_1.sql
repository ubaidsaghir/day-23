CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);

INSERT INTO employees (name,department,salary)
VALUES
('Ubaid','IT',40000),
('Ahmad','HR',50000),
('Raheel','IT',60000),
('Ahsan','Finance',70000),
('Ali','IT',80000);


SELECT * FROM employees;

SELECT * FROM employees
WHERE department = 'IT';

SELECT * FROM employees
WHERE salary > 60000;

SELECT * FROM employees
ORDER BY salary DESC;

