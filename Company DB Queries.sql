USE Company

--Retrieve all employees working on a specific project.

SELECT p.Name, e.Name, e.JobTitle
FROM ProjectEmployees AS pe
    JOIN Projects AS p ON pe.ProjectID = p.ProjectID
    JOIN Employees AS e ON pe.EmployeeID = e.EmployeeId
WHERE p.Name = 'New RocketSoft Release'

--List all projects assigned to employees in a specific department.

SELECT d.Name AS Department, p.Name AS [Project Name], e.Name AS Employee , e.JobTitle AS [Job Title]
FROM ProjectEmployees AS pe
    JOIN Projects AS p ON pe.ProjectID = p.ProjectID
    JOIN Employees AS e ON pe.EmployeeID = e.EmployeeId
    JOIN Departments AS d ON d.DepartmentID = e.DepartmentID
WHERE d.Name = 'Management'

--Display all departments along with the names of their employees

SELECT d.Name AS Department, e.Name AS [Employee Name], e.JobTitle AS [Job Title]
FROM Departments AS d
    JOIN Employees AS e ON d.DepartmentID = e.DepartmentID
