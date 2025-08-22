START TRANSACTION;

UPDATE employee.personal SET Salary = 5000 WHERE EmpID = 9;
UPDATE employee.personal SET Salary = 85000 WHERE EmpID = 1;

-- Undo changes
ROLLBACK;

-- Or save changes
-- COMMIT;
