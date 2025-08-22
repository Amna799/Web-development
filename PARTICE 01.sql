-- Create a new database for employees
CREATE DATABASE employee;

-- Switch to the employee database
USE employee;

-- Create employee table
CREATE TABLE employee (
    EmpID INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL CHECK (Age >= 18),
    Gender VARCHAR(1) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- Insert sample employee data
INSERT INTO employee (EmpID, Name, Age, Gender, Department, Salary)
VALUES
(1, 'Ali Raza', 30, 'M', 'HR', 55000.00),
(2, 'Sana Khan', 27, 'F', 'Finance', 65000.00),
(3, 'Bilal Ahmed', 35, 'M', 'IT', 80000.00),
(4, 'Ayesha Noor', 29, 'F', 'Marketing', 60000.00),
(5, 'Usman Tariq', 40, 'M', 'Operations', 75000.00),
(6, 'Hina Aslam', 32, 'F', 'Admin', 58000.00),
(7, 'Hamza Ali', 28, 'M', 'Sales', 62000.00),
(8, 'Nida Hassan', 26, 'F', 'Customer Support', 50000.00),
(9, 'Ahmed Khan', 38, 'M', 'IT', 85000.00),
(10, 'Sara Malik', 31, 'F', 'Finance', 70000.00);

-- Show all employees
SELECT * FROM employee;

SELECT COUNT(*) AS TOTAL_EMPLYES FROM employee;

SELECT min(salary) from employee;

SELECT sum(salary) As TOTAL_SALARY from employee;

SELECT max(salary) from employee;

SELECT DISTINCT Department FROM employee; 

UPDATE employee
SET Salary = 15000
WHERE EmpID = 5;

commit;

UPDATE employee
SET Salary = 5000
WHERE EmpID = 9;

START transaction();
UPDATE employee
SET Salary = 85000
WHERE EmpID = 1;

-- Start a transaction
START TRANSACTION;

DELETE FROM employee  WHERE EmpID = 9;
UPDATE employee SET Salary = 85000 WHERE EmpID = 1;

-- If you want to discard changes
ROLLBACK;

-- Or if you want to save changes
-- COMMIT;


SELECT * FROM employee;

ROLLBACK;


