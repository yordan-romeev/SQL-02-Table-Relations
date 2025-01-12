# Table Relations - Exercises

## 1. Specification

Develop a system to manage information about employees, projects, and departments.

- Each employee has a name, ID, job title, and email.
- Each project has a name, description, and deadline.
- Each department has a name, ID, and manager.

### Relationships

- An employee can work on multiple projects, and each project can have multiple employees.
- Each employee belongs to only one department, but a department can have multiple employees.

## 2. Identifying Entities and Relationships

Based on the specification:

- **Entities**: Identify the entities in this system.
- **Attributes**: Define the attributes for each entity.
- **Relationships**: Identify the type of relationships between entities (e.g., one-to-many, many-to-many).

## 3. Designing Tables with Primary and Foreign Keys

Design the SQL schema for the identified entities and relationships.

- Create tables for `Employees`, `Projects`, and `Departments`.
- Define primary keys and appropriate foreign keys.
- Write SQL statements to create these tables.

## 4. Implementing One-to-Many Relationships

### Scenario
Each employee belongs to only one department, but a department can have multiple employees.

#### Tasks

- Update the schema to implement this one-to-many relationship using foreign keys.
- Write the SQL statements for:
  - Creating the updated `Employees` table.
  - Adding foreign key constraints.

## 5. Implementing Many-to-Many Relationships

### Scenario
Employees can work on multiple projects, and each project can have multiple employees.

#### Tasks

- Design and implement a mapping table for this many-to-many relationship.
- Write the SQL statements for:
  - Creating a mapping table (e.g., `EmployeeProjects`).
  - Establishing the necessary foreign key constraints.

## 6. Cascade Delete

### Scenario
If a department is deleted, all employees belonging to that department should also be deleted.

#### Task
- Modify the schema to include `ON DELETE CASCADE` for the relevant foreign key.
- Write the SQL statement to implement this behavior in the `Employees` table.

## 7. Cascade Update

### Scenario
If the `DepartmentID` of a department is updated, the change should be reflected in the `Employees` table.

#### Task
- Modify the schema to include `ON UPDATE CASCADE` for the relevant foreign key.
- Write the SQL statement to implement this behavior.

## 8. Writing JOIN Queries

Write SQL queries to perform the following:

- Retrieve all employees working on a specific project.
- List all projects assigned to employees in a specific department.
- Display all departments along with the names of their employees.

## 9. Database Normalization

### Scenario
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

## 10. Visualizing Relationships

Using SSMS or any database design tool:

- Create an Entity-Relationship (E/R) Diagram for the system.
- Show all relationships, including one-to-many and many-to-many.

## 11. Queries

Use `sirmadb.sql` to create the database. Then write the following queries:

1. **List All Employees**:
   Retrieve all employees' full names, job titles, and their salaries.

2. **Employees by Department**:
   Display the names of employees and their departments.

3. **List Employees in a Specific Location**:
   Retrieve the names and job titles of employees working in the "UK Branch".

4. **Highest Paid Employee**:
   Find the employee with the highest salary.

5. **Average Salary by Department**:
   Calculate the average salary for each department.

6. **Employees Without a Manager**:
   Retrieve the names of employees who are not managers.

7. **Departments and Their Managers**:
   Display each department name along with the full name of its manager.

8. **Employees in a Specific Country**:
   Find all employees working in offices located in "Bulgaria".

9. **Total Salaries by Country**:
   Calculate the total salaries of employees working in each country.

10. **Employees Earning Above Average Salary**:
    Find employees who earn above the average salary for the company.
