-- ============================================
-- LEVEL 4: SQL JOINS
-- TOPIC 6: SELF JOIN
-- SETUP: EMPLOYEES TABLE
-- ============================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(100),
    manager_id INT
);

INSERT INTO employees
(employee_id, employee_name, department, manager_id)
VALUES
(1, 'Alice', 'Management', NULL),
(2, 'Bob', 'IT', 1),
(3, 'Charlie', 'Finance', 1),
(4, 'Diana', 'IT', 2),
(5, 'Edward', 'Finance', 2),
(6, 'Fiona', 'HR', 3);

SELECT * FROM employees;
-- Join a table by itself --
SELECT
    employees.employee_name AS employee,
    managers.employee_name AS manager
FROM employees
LEFT JOIN employees AS managers
    ON employees.manager_id = managers.employee_id;

-- Exercise 1: Employee and Manager Report
-- Display every employee alongside their manager.
-- Include employees who do not have a manager.
-- Display employee_name and manager_name.
SELECT
    employees.employee_name AS employee,
    managers.employee_name AS manager
FROM employees
LEFT JOIN employees AS managers 
    ON employees.manager_id = managers.employee_id;

-- Exercise 2: Employee and Manager Department Report
-- Display each employee, their department, and their manager.
-- Include employees without managers.
SELECT
    employees.employee_name,
    employees.department,
    managers.employee_name AS manager_name,
    managers.department AS manager_department
FROM employees
LEFT JOIN employees AS managers
    ON employees.manager_id = managers.employee_id;

-- Exercise 3: Identify Employees Without Managers
-- Find employees who do not have an assigned manager.
-- Display employee_id, employee_name, and department.
-- Use SELF JOIN with LEFT JOIN.
SELECT
    employees.employee_id,
    employees.employee_name,
    employees.department
FROM employees
LEFT JOIN employees AS managers
    ON employees.manager_id = managers.employee_id
WHERE employees.manager_id IS NULL;