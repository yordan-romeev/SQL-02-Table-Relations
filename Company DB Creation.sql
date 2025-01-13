-- Tasks 1 to 7 Develop a system to manage information about employees, projects, and departments

-- Create the Company database
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Company')
BEGIN
    CREATE DATABASE Company;
END;

-- Switch to the Company database
USE Company;

-- Create Departments table

CREATE TABLE Departments
(
    [DepartmentID] INT PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    [ManagerID] INT NOT NULL
)

-- Create Employees table

CREATE TABLE Employees
(
    [EmployeeId] INT IDENTITY(1,1) PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL,
    [JobTitle] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL UNIQUE,
    [DepartmentID] INT,
    CONSTRAINT [FK_Employees_Departments] 
    FOREIGN KEY(DepartmentID)  
    REFERENCES Departments(DepartmentID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)

-- Add foreign key constraint to Department ManagerID Column

ALTER TABLE Departments
ADD CONSTRAINT FK_Departments_Employees 
FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeId)

-- Create Projects table

CREATE TABLE Projects
(
    [ProjectID] INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(250) NOT NULL,
    [Deadline] DATE NOT NULL
)

-- Create ProjectEmployees mapping table for many to many relarionship between Projects and Employees

CREATE TABLE ProjectEmployees
(
    ProjectID INT,
    EmployeeID INT,
    PRIMARY KEY (ProjectID, EmployeeID),
    CONSTRAINT FK_ProjectEmployees_Projects
    FOREIGN KEY (ProjectID)
    REFERENCES Projects(ProjectID),
    CONSTRAINT FK_ProjectEmployees_Employees
    FOREIGN KEY (EmployeeID)
    REFERENCES Employees(EmployeeID)
)
