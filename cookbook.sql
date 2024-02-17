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
  ADD Country varchar(50);

ALTER TABLE Employees
  ADD Branch varchar(50);


-- Updating values for the newly added columns based on EmployeeID
UPDATE Employees
  SET
    Country = CASE
                WHEN EmployeeID IN (1, 2, 3, 4, 21, 22) THEN 'USA'
                WHEN EmployeeID IN (5, 6) THEN 'Canada'
                WHEN EmployeeID IN (7, 8) THEN 'UK'
                WHEN EmployeeID IN (9, 10, 11) THEN 'China'
                WHEN EmployeeID IN (12, 13) THEN 'Japan'
                WHEN EmployeeID IN (14) THEN 'India'
                WHEN EmployeeID IN (15, 16) THEN 'Brazil'
                WHEN EmployeeID IN (16, 17, 18) THEN 'Germany'
                WHEN EmployeeID IN (19, 20) THEN 'France'
                ELSE NULL
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


