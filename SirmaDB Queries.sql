--Use `sirmadb.sql` to create the database. Then write the following queries:
USE SirmaAcademy

--1. **List All Employees**:
--   Retrieve all employees' full names, job titles, and their salaries.

SELECT FirstName + ' ' + LastName AS [Full Name], JobTitle, Salary
FROM Employees

--2. **Employees by Department**:
--   Display the names of employees and their departments.

SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees AS e
    JOIN Departments AS d ON e.DepartmentID = d.DepartmentID

--3. **List Employees in a Specific Location**:
--   Retrieve the names and job titles of employees working in the "UK Branch".

SELECT e.FirstName, e.LastName, e.JobTitle
FROM Employees AS e
    JOIN OfficeLocations AS ol ON e.LocationID = ol.LocationID
WHERE ol.LocationName = 'UK Branch'

--4. **Highest Paid Employee**:
--  Find the employee with the highest salary.
SELECT *
FROM Employees
WHERE Salary = (SELECT MAX(Salary) FROM Employees)

--5. **Average Salary by Department**:
--   Calculate the average salary for each department.
SELECT d.DepartmentName, AVG(e.Salary) AS [Average Salary]
FROM Employees AS e
    JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName

--6. **Employees Without a Manager**:
--   Retrieve the names of employees who are not managers.
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (SELECT ManagerID FROM Departments)

--7. **Departments and Their Managers**:
--   Display each department name along with the full name of its manager.

--8. **Employees in a Specific Country**:
--   Find all employees working in offices located in "Bulgaria".

--9. **Total Salaries by Country**:
--   Calculate the total salaries of employees working in each country.

--10. **Employees Earning Above Average Salary**:
--    Find employees who earn above the average salary for the company.