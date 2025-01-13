USE Company;

-- Insert rows into table 'Employees'
INSERT INTO [Employees]
( -- Columns to insert data into
    [Name], [JobTitle], [Email]
)
VALUES
(  'Peter Johnson', 'CEO', 'Peter.Johnson@company.mail' ),
(  'Jack Richard', 'CTO', 'Jack.Richard@company.mail' ),
(  'Maya Tomas', 'CFO', 'Maya.Tomas@company.mail' ),
(  'Tomas Lindt', 'Lead Software Engineer', 'Tomas.Lindt@company.mail' ),
(  'George Russel', 'Software Engineer', 'George.Russel@company.mail' ),
(  'Anna Rocksmith', 'Junior Software Engineer', 'Anna.Rocksmith@company.mail' ),
(  'Lily Jones', 'Lead Accountant', 'Lily.Jones@company.mail' ),
(  'Lionel Ross', 'Accountant', 'Lionel.Ross@company.mail' ),
(  'Star Light', 'Sales Lead', 'Star.Light@company.mail' ),
(  'John Smith', 'Sales Representative', 'John.Smith@company.mail' )

GO

-- Insert rows into table 'Departments'
INSERT INTO [Departments]
( -- Columns to insert data into
 [DepartmentID], [Name], [ManagerID]
)
VALUES
(  1, 'Management', 1 ),
(  2, 'Development', 2 ),
(  3, 'Finance', 3 ),
(  4, 'Sales', 9 )
GO

-- Insert rows into table 'Projects'
INSERT INTO [Projects]
( -- Columns to insert data into
[Name], [Description], [Deadline]
)
VALUES
(  'Finance Review', 'Review all the company finances in order to lower company expenditures', '2025-02-28' ), 
(  'Winter Sale', 'Focus our efforts on maximasing sales for the winter period', '2025-03-30' ), 
(  'New RocketSoft Release', 'Finish up the development of the next version of our proprietary rocket software', '2025-06-01' )

GO

-- Insert rows into table ''
INSERT INTO [ProjectEmployees]
( [ProjectID], [EmployeeID])
VALUES
( 3, 1), 
( 3, 3), 
( 3, 7), 
( 3, 8), 
( 4, 1), 
( 4, 9), 
( 4, 10), 
( 5, 2), 
( 5, 4), 
( 5, 5), 
( 5, 6)

GO