-- Task 9 Database Normalization
/* 
A table stores employee details and the names of projects they are working on. The data is as follows:

| EmployeeID | EmployeeName | ProjectName   |
|------------|--------------|---------------|
| 1          | Alice Brown  | Project Alpha |
| 2          | Bob Smith    | Project Beta  |
| 1          | Alice Brown  | Project Beta  |

#### Tasks

- Identify the anomalies in this design.
- Normalize the data to 3rd Normal Form (3NF).
- Write SQL statements to create the normalized tables.
*/

CREATE DATABASE NORMALISED_DATA

USE NORMALISED_DATA

CREATE TABLE Employees
(
    [EmployeeId] INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL
  
)

CREATE TABLE Projects
(
    [ProjectID] INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL
)

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