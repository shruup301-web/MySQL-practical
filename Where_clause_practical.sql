-- KIRAN ACADEMY - SQL WHERE Clause & Operators - 60 Tasks
-- Database: company_db | Table: employees

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    joining_date DATE,
    email VARCHAR(100),
    status VARCHAR(20)
);

INSERT INTO employees VALUES
(101, 'Amit Sharma', 'IT', 55000, 'Pune', '2022-01-15', 'amit@company.com', 'Active'),
(102, 'Priya Sharma', 'HR', 48000, 'Mumbai', '2021-03-20', 'priya@company.com', 'Active'),
(103, 'Rahul Deshmukh', 'Sales', 35000, 'Pune', '2023-06-10', NULL, 'Active'),
(104, 'Sneha Kulkarni', 'IT', 72000, 'Nashik', '2020-11-05', 'sneha@company.com', 'Active'),
(105, 'Vikram Singh', 'Finance', 65000, 'Pune', '2019-08-12', 'vikram@company.com', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Nagpur', '2023-01-25', NULL, 'Active'),
(107, 'Rohan Joshi', 'Sales', 38000, 'Mumbai', '2022-09-18', 'rohan@company.com', 'Active'),
(108, 'Pooja Patil', 'HR', 52000, 'Pune', '2021-07-14', 'pooja@company.com', 'Active'),
(109, 'Kiran Verma', 'IT', 85000, 'Bangalore', '2018-05-30', 'kiran@company.com', 'Active'),
(110, 'Suresh Reddy', 'Support', 30000, 'Pune', '2023-11-01', 'suresh@company.com', 'Active'),
(111, 'Neha Gupta', 'Finance', 62000, 'Mumbai', '2020-02-10', NULL, 'Inactive'),
(112, 'Ajay Pawar', 'IT', 78000, 'Pune', '2019-12-20', 'ajay@company.com', 'Active'),
(113, 'Kavita Shah', 'Sales', 40000, 'Nashik', '2022-04-11', 'kavita@company.com', 'Active'),
(114, 'Manish Kumar', 'IT', 90000, 'Pune', '2018-01-10', 'manish@company.com', 'Active'),
(115, 'Deepa Rao', 'HR', 45000, 'Pune', '2023-03-05', 'deepa@company.com', 'Active'),
(121, 'Bharat Patil', 'IT', 95000, 'Pune', '2017-04-25', 'bharat@company.com', 'Active'),
(126, 'Test User', 'IT', 60000, 'Pune', '2025-05-10', 'test@company.com', 'Active'),
(127, 'Future User', 'HR', 50000, 'Mumbai', '2026-02-15', 'future@company.com', 'Active');

-- ================= Part B - Basic Equality (1-12) =================
-- Task 1: Display all employee records from Pune city.
SELECT * FROM employees WHERE city = 'Pune';
-- Task 2: Display all employees working in Mumbai.
SELECT * FROM employees WHERE city = 'Mumbai';
-- Task 3: Display all employees belonging strictly to the IT department.
SELECT * FROM employees WHERE department = 'IT';
-- Task 4: Display all employees belonging to the HR department.
SELECT * FROM employees WHERE department = 'HR';
-- Task 5: Display all employees belonging to the Sales department.
SELECT * FROM employees WHERE department = 'Sales';
-- Task 6: Display all employees whose status is marked as 'Active'.
SELECT * FROM employees WHERE status = 'Active';
-- Task 7: Display all employees whose status is marked as 'Inactive'.
SELECT * FROM employees WHERE status = 'Inactive';
-- Task 8: Display the complete record of the employee where employee_id = 103
SELECT * FROM employees WHERE employee_id = 103;
-- Task 9: Display the record of the employee named 'Priya Sharma'.
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';
-- Task 10: Display all employees whose monthly salary is equal to 35000.
SELECT * FROM employees WHERE salary = 35000;
-- Task 11: Display all employees who do not belong to Pune ( city != 'Pune' )
SELECT * FROM employees WHERE city != 'Pune';
-- Task 12: Display all employees whose department is NOT Testing using <> operator.
SELECT * FROM employees WHERE department <> 'Testing';

-- ================= Part C - Relational (13-20) =================
-- Task 13: Display employees whose salary is greater than 40000.
SELECT * FROM employees WHERE salary > 40000;
-- Task 14: Display employees whose salary is less than 35000.
SELECT * FROM employees WHERE salary < 35000;
-- Task 15: Display employees whose salary is greater than or equal to 50000.
SELECT * FROM employees WHERE salary >= 50000;
-- Task 16: Display employees whose salary is less than or equal to 30000.
SELECT * FROM employees WHERE salary <= 30000;
-- Task 17: Display employees who joined after January 1, 2025
SELECT * FROM employees WHERE joining_date > '2025-01-01';
-- Task 18: Display employees who joined on or before December 31, 2024.
SELECT * FROM employees WHERE joining_date <= '2024-12-31';
-- Task 19: Display employees whose employee_id is greater than 110.
SELECT * FROM employees WHERE employee_id > 110;
-- Task 20: Display employee names and joining dates for employees with joining_date >= '2026-01-01'
SELECT employee_name, joining_date FROM employees WHERE joining_date >= '2026-01-01';

-- ================= Part D - AND Operator (21-28) =================
-- Task 21: Display Pune employees whose status is Active.
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
-- Task 22: Display IT department employees whose salary is greater than 50000.
SELECT * FROM employees WHERE department = 'IT' AND salary > 50000;
-- Task 23: Display employees located in Mumbai whose status is Inactive.
SELECT * FROM employees WHERE city = 'Mumbai' AND status = 'Inactive';
-- Task 24: Display Sales employees from Pune earning at least 42000
SELECT * FROM employees WHERE department = 'Sales' AND city = 'Pune' AND salary >= 42000;
-- Task 25: Display HR employees who joined after June 1, 2025.
SELECT * FROM employees WHERE department = 'HR' AND joining_date > '2025-06-01';
-- Task 26: Display Active employees whose salary is between 40000 and 70000 using >= and <= with AND
SELECT * FROM employees WHERE status = 'Active' AND salary >= 40000 AND salary <= 70000;
-- Task 27: Display employees from Mumbai in the Testing department with salary > 38000
SELECT * FROM employees WHERE city = 'Mumbai' AND department = 'Testing' AND salary > 38000;
-- Task 28: Display Active employees who joined on or after '2026-01-01' earning over 45000.
SELECT * FROM employees WHERE status = 'Active' AND joining_date >= '2026-01-01' AND salary > 45000;

-- ================= Part E - OR & NOT (29-36) =================
-- Task 29: Display employees who belong to either Pune or Mumbai using OR.
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';
-- Task 30: Display employees working in the IT department OR HR department.
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';
-- Task 31: Display employees whose salary is strictly less than 32000 OR greater than 60000.
SELECT * FROM employees WHERE salary < 32000 OR salary > 60000;
-- Task 32: Display employees who are located in Nashik OR earn more than 55000.
SELECT * FROM employees WHERE city = 'Nashik' OR salary > 55000;
-- Task 33: Display employees who do NOT belong to the HR department using NOT ( NOT department = 'HR' ).
SELECT * FROM employees WHERE NOT department = 'HR';
-- Task 34: Display employees whose status is NOT Inactive.
SELECT * FROM employees WHERE NOT status = 'Inactive';
-- Task 35: Display employees from Pune OR Mumbai who have Active status (using parentheses).
SELECT * FROM employees WHERE (city = 'Pune' OR city = 'Mumbai') AND status = 'Active';
-- Task 36: Display employees whose city is NOT Pune AND salary is greater than 40000.
SELECT * FROM employees WHERE city != 'Pune' AND salary > 40000;

-- ================= Part F - BETWEEN, IN (37-46) =================
-- Task 37: Display employees whose salary is between 35000 and 55000 using BETWEEN.
SELECT * FROM employees WHERE salary BETWEEN 35000 AND 55000;
-- Task 38: Display employees whose salary is NOT between 40000 and 65000 using NOT BETWEEN.
SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 65000;
-- Task 39: Display employees who joined between '2025-01-01' and '2025-12-31'.
SELECT * FROM employees WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';
-- Task 40: Display employees whose employee_id lies between 105 and 115.
SELECT * FROM employees WHERE employee_id BETWEEN 105 AND 115;
-- Task 41: Display all employees working in 'IT', 'HR', or 'Sales' using the IN operator.
SELECT * FROM employees WHERE department IN ('IT', 'HR', 'Sales');
-- Task 42: Display employees stationed in 'Pune', 'Mumbai', or 'Nagpur' using IN.
SELECT * FROM employees WHERE city IN ('Pune', 'Mumbai', 'Nagpur');
-- Task 43: Display employees whose department is NOT IN ('Testing', 'Support').
SELECT * FROM employees WHERE department NOT IN ('Testing', 'Support');
-- Task 44: Display employees whose city is NOT IN ('Mumbai', 'Nashik').
SELECT * FROM employees WHERE city NOT IN ('Mumbai', 'Nashik');
-- Task 45: Display employees with employee_id IN (101, 105, 110, 115, 120).
SELECT * FROM employees WHERE employee_id IN (101, 105, 110, 115, 120);
-- Task 46: Display IT or Sales employees whose salary is BETWEEN 45000 AND 75000.
SELECT * FROM employees WHERE department IN ('IT', 'Sales') AND salary BETWEEN 45000 AND 75000;

-- ================= Part G - LIKE & Wildcards (47-54) =================
-- Task 47: Display employees whose name starts with 'A' ( LIKE 'A%' ).
SELECT * FROM employees WHERE employee_name LIKE 'A%';
-- Task 48: Display employees whose name starts with 'R'.
SELECT * FROM employees WHERE employee_name LIKE 'R%';
-- Task 49: Display employees whose name ends with 'a' ( LIKE '%a' ).
SELECT * FROM employees WHERE employee_name LIKE '%a';
-- Task 50: Display employees whose name contains 'sh' anywhere ( LIKE '%sh%' ).
SELECT * FROM employees WHERE employee_name LIKE '%sh%';
-- Task 51: Display employees whose name starts with 'P' and ends with 'a'.
SELECT * FROM employees WHERE employee_name LIKE 'P%a';
-- Task 52: Display employees whose name has exactly 5 characters using five underscores ('_____').
SELECT * FROM employees WHERE employee_name LIKE '_____';
-- Task 53: Display employees whose name has 'a' as the second character ( LIKE '_a%' ).
SELECT * FROM employees WHERE employee_name LIKE '_a%';
-- Task 54: Display all employees whose name does NOT start with 'R' using NOT LIKE
SELECT * FROM employees WHERE employee_name NOT LIKE 'R%';

-- ================= Part H - NULL Checks (55-58) =================
-- Task 55: Display all employees whose email address is missing ( email IS NULL )
SELECT * FROM employees WHERE email IS NULL;
-- Task 56: Display all employees who have a recorded email ID ( email IS NOT NULL )
SELECT * FROM employees WHERE email IS NOT NULL;
-- Task 57: Display employees from Pune whose email address has NOT been provided yet.
SELECT * FROM employees WHERE city = 'Pune' AND email IS NULL;
-- Task 58: Display Active employees whose email address IS NOT NULL and salary > 40000.
SELECT * FROM employees WHERE status = 'Active' AND email IS NOT NULL AND salary > 40000;

-- ================= Part I - Combined Industrial Challenge (59-60) =================
-- Task 59: Display all Active employees from Pune or Mumbai who belong to the IT or Sales department, earn between 40000 and 70000, and joined after '2025-01-01'.
SELECT * FROM employees WHERE status = 'Active' AND (city = 'Pune' OR city = 'Mumbai') AND (department = 'IT' OR department = 'Sales') AND salary BETWEEN 40000 AND 70000 AND joining_date > '2025-01-01';

-- Task 60: Display all employees whose name begins with 'S' or 'R', whose email is NOT NULL, whose status is Active, and whose city is IN ('Pune', 'Nashik').
SELECT * FROM employees WHERE (employee_name LIKE 'S%' OR employee_name LIKE 'R%') AND email IS NOT NULL AND status = 'Active' AND city IN ('Pune', 'Nashik');