CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),          
    Department VARCHAR(50),                             /*Create Table */
    Salary DECIMAL(10, 2),
    JoinDate DATE
);

INSERT INTO Employees (EmployeeID, Name, Department, Salary, JoinDate)
VALUES (1, 'Alice', 'Engineering', 75000.00, '2023-01-15'),
       (2, 'Bob', 'Marketing', 50000.00, '2023-03-10'),                                  /*Insertion in Sql*/
       (3, 'Charlie', 'Engineering', 82000.00, '2022-11-20');

SELECT Department, AVG(Salary) AS AverageSalary, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)                                                   /* Joins Tables*/
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'Engineering'), (2, 'Marketing'), (3, 'HR');

SELECT e.Name, e.Salary, d.DepartmentName                                 
FROM Employees e                                                             /* Join Query*/
JOIN Departments d ON e.Department = d.DepartmentName;



