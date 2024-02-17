-- Creating a table named Employees
CREATE TABLE Employees (
  EmployeeID integer PRIMARY KEY AUTOINCREMENT, 
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Sex char(1) NOT NULL CHECK (Sex IN ('M', 'F')),
  Department varchar(30) DEFAULT NULL CHECK (Department IN ('A', 'B', 'C', 'D', 'F', NULL)),
  Position varchar(100) DEFAULT 'TEMP',
  Salary decimal(10, 2)
);


-- Inserting data into the Employees table
INSERT INTO Employees (FirstName, LastName, Sex, Position, Salary) VALUES 
  ('John', 'Doe', 'M', 'Manager', 60000.00),
  ('Jane', 'Smith', 'F', 'Developer', 50000.00),
  ('Mike', 'Johnson', 'M', 'Sales Representative', 45000.00),
  ('Emily', 'Davis', 'F', 'HR Specialist', 55000.00),
  ('Chris', 'Brown', 'M', 'Analyst', 48000.00),
  ('Amanda', 'Miller', 'F', 'Designer', 52000.00),
  ('Mark', 'Taylor', 'M', 'Accountant', 47000.00),
  ('Laura', 'Wilson', 'F', 'Customer Support', 43000.00),
  ('Daniel', 'Lee', 'M', 'Marketing Coordinator', 49000.00),
  ('Sarah', 'Anderson', 'F', 'IT Specialist', 55000.00),
  ('Kevin', 'Moore', 'M', 'Project Manager', 65000.00),
  ('Hannah', 'Clark', 'F', 'Software Engineer', 58000.00),
  ('Alex', 'Turner', 'M', 'Marketing Manager', 62000.00),
  ('Olivia', 'White', 'F', 'Data Analyst', 50000.00),
  ('Ryan', 'Evans', 'M', 'Customer Success', 48000.00), 
  ('Sophia', 'Baker', 'F', 'Operations Coordinator', 45000.00),
  ('Ethan', 'Hill', 'M', 'Quality Assurance', 52000.00),
  ('Isabella', 'Ward', 'F', 'Financial Analyst', 54000.00),
  ('Caleb', 'Fisher', 'M', 'Legal Counsel', 60000.00),
  ('Madison', 'Cooper', 'F', 'Business Development', 58000.00);


-- Inserting data into the Employees table using DEFAULT Clause
INSERT INTO Employees (FirstName, LastName, Sex, Salary) VALUES 
  ('Alex', 'Miller', 'M', 1000.00),
  ('Adrian', 'Carlk', 'M', 1000.00);


-- Adding new columns to the Employees table
ALTER TABLE Employees
  ADD Nationality varchar(50);

ALTER TABLE Employees
  ADD Branch varchar(50);


-- Updating values for the newly added columns based on EmployeeID
UPDATE Employees
  SET
    Nationality = CASE
                WHEN EmployeeID IN (5, 6) THEN 'Canadian'
                WHEN EmployeeID IN (7, 8) THEN 'Japanese'
                WHEN EmployeeID IN (9, 10, 11) THEN 'Chinese'
                WHEN EmployeeID IN (12, 13) THEN 'Italian'
                WHEN EmployeeID IN (14) THEN 'Indian'
                WHEN EmployeeID IN (15, 16) THEN 'Brazilian'
                WHEN EmployeeID IN (16, 17, 18) THEN 'German'
                WHEN EmployeeID IN (19, 20) THEN 'French'
                ELSE 'American'
           END,
    Branch = CASE
              WHEN EmployeeID IN (1, 2, 7, 8, 13, 15, 19, 20) THEN 'France'
              WHEN EmployeeID IN (3, 4, 5, 6, 9, 10, 11, 14) THEN 'China'
              ELSE 'USA'
           END,
    Department = CASE
                WHEN EmployeeID IN (1, 2, 3, 4, 5) THEN 'A'
                WHEN EmployeeID IN (6, 7, 8) THEN 'B'
                WHEN EmployeeID IN (9, 10) THEN 'C'
                WHEN EmployeeID IN (11, 12, 13, 14, 15) THEN 'D'
                WHEN EmployeeID IN (16, 17, 18, 19, 20) THEN 'E'
                WHEN EmployeeID IN (21, 22) THEN 'F'
                ELSE NULL
           END;


-- Creating another table named EmployeeDetails
CREATE TABLE EmployeeDetails (
  EmployeeID integer PRIMARY KEY AUTOINCREMENT, 
  BirthDate DATE,
  Email varchar(100),
  PhoneNumber varchar(20),
  Address varchar(200),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Renaming the column "Address" to "Age" in the EmployeeDetails table
ALTER TABLE EmployeeDetails
  RENAME COLUMN Address TO Age;

-- Modifying the data type of the "Age" column to integer
ALTER TABLE EmployeeDetails
  ALTER COLUMN Age INTEGER;

-- Dropping the column "PhoneNumber" from the EmployeeDetails table
ALTER TABLE EmployeeDetails
  DROP COLUMN PhoneNumber;

-- Dropping the entire EmployeeDetails table
DROP TABLE EmployeeDetails;

-- Creating a table named Departments
CREATE TABLE Departments (
  DepartmentID INTEGER PRIMARY KEY AUTOINCREMENT,
  DepartmentName VARCHAR(30) NOT NULL CHECK (DepartmentName IN ('A', 'B', 'C', 'D', 'F')),
  Location VARCHAR(50),
  FOREIGN KEY (DepartmentName) REFERENCES Employees(Department)
);

-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentName, Location) VALUES 
  ('A', 'USA'),
  ('B', 'France'),
  ('C', 'France'),
  ('D', 'China'),
  ('F', 'USA');

-- Creating an index named "idx_name" on the "firstname" column of the Employees table
CREATE INDEX idx_name ON Employees (firstname);

-- Dropping the index "idx_name" from the Employees table
DROP INDEX idx_name;

-- Delete records from the Employees table where the Department is 'F'
DELETE FROM Employees
  WHERE Department LIKE 'F';

-- Retrieve the minimum, maximum, and average salary from the Employees table
SELECT MIN(salary), MAX(salary), AVG(salary)
  FROM Employees;

-- Retrieve the details (FirstName, LastName, Sex, Department) of employees with a salary greater than or equal to 3000
SELECT FirstName, LastName, Sex, Department
  FROM Employees
  WHERE salary >= 3000;

-- Retrieve the details (FirstName, LastName, Sex, Department) of employees with a salary between 30000 and 50000
SELECT FirstName, LastName, Sex, Department
  FROM Employees
  WHERE salary BETWEEN 30000 AND 50000;

-- Retrieve the details (FirstName, LastName, Position, Department) of female employees with a salary greater than or equal to 3000
SELECT FirstName, LastName, Position, Department
  FROM Employees
  WHERE salary >= 3000 AND sex = 'F';

-- Count the number of employees by sex
SELECT Sex, COUNT(*) AS qt
  FROM Employees
  GROUP BY sex;

-- Count the number of employees by department
SELECT Department, COUNT(*) AS qt
  FROM Employees
  GROUP BY Department;

-- Count the number of employees by nationality
SELECT Nationality, COUNT(*) AS qt
  FROM Employees
  GROUP BY Nationality;

-- Count the number of employees by nationality and sex
SELECT Department, Nationality, COUNT(*) AS qt
  FROM Employees
  GROUP BY Nationality;

-- Retrieve all columns from both Employees and Departments tables using INNER JOIN
SELECT *
  FROM Employees
  INNER JOIN Departments ON Employees.EmployeeID = Departments.DepartmentID;

-- Retrieve all columns from both Employees and Departments tables using RIGHT JOIN
SELECT *
  FROM Employees
  RIGHT JOIN Departments ON Employees.EmployeeID = Departments.DepartmentID;

-- Retrieve all columns from both Employees and Departments tables using LEFT JOIN
SELECT *
  FROM Employees
  LEFT JOIN Departments ON Employees.EmployeeID = Departments.DepartmentID;

-- Retrieve all columns from both Employees and Departments tables using FULL JOIN
SELECT *
  FROM Employees
  FULL JOIN Departments ON Employees.EmployeeID = Departments.DepartmentID;

-- Retrieve details (FirstName, LastName, Position) of employees whose first name contains the letter 'a'
SELECT FirstName, LastName, Position
  FROM Employees
  WHERE FirstName LIKE '%a%';

-- Retrieve details (FirstName, LastName, Position) of employees whose first name ends with the letter 'a'
SELECT FirstName, LastName, Position
  FROM Employees
  WHERE FirstName LIKE '%a';

-- Retrieve details (FirstName, LastName, Position) of employees whose first name starts with the letter 'a'
SELECT FirstName, LastName, Position
  FROM Employees
  WHERE FirstName LIKE 'a%';

-- Retrieve first names of male employees who belong to departments with a matching branch
SELECT FirstName
  FROM Employees
  WHERE Sex = 'M'
  AND (Department, Branch) IN (SELECT DepartmentName, Location FROM Departments);

-- Retrieve details (firstname, lastname, position, Department, sex, average salary) of employees grouped by department, with an average salary greater than 50000
SELECT FirstName, LastName, Position, Department, Sex, AVG(salary) AS avg_salary
  FROM Employees
  GROUP BY Department
  HAVING AVG(salary) > 50000;

-- Create a view named "all_employees" to simplify querying for firstname and lastname from the Employees table
CREATE VIEW all_employees AS
  SELECT FirstName, LastName
  FROM Employees;
