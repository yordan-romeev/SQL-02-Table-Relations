-- Tasks 1 to 7 Develop a system to manage information about employees, projects, and departments

-- Create the Company database
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Company')
BEGIN
    CREATE DATABASE Company;
END;

-- Switch to the Company database
USE Company;

-- Create Employee table

CREATE TABLE Employees
(
    [EmployeeId] INT IDENTITY(1,1) PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL,
    [JobTitle] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE Projects
(
    [ProjectID] INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(250) NOT NULL,
    [Deadline] DATE NOT NULL
)

CREATE TABLE Department
(
    [DepartmentID] INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    [Manager] NVARCHAR(50) NOT NULL
)
