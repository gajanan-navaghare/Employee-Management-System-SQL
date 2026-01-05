-- Create database
CREATE DATABASE employee_management;

-- Use database
USE employee_management;

-- Create Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    department_id INT,
    designation VARCHAR(50),
    joining_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Create Salaries table
CREATE TABLE Salaries (
    emp_id INT,
    basic_salary INT,
    bonus INT,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Create Attendance table
CREATE TABLE Attendance (
    emp_id INT,
    month VARCHAR(20),
    days_present INT,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Insert data into Departments
INSERT INTO Departments VALUES
(1,'HR'),(2,'IT'),(3,'Finance'),(4,'Operations');

-- Insert data into Employees
INSERT INTO Employees VALUES
(101,'Rahul Sharma','Male',2,'Developer','2023-06-10'),
(102,'Anita Desai','Female',1,'HR Executive','2022-04-15'),
(103,'Vikram Singh','Male',3,'Accountant','2021-09-20'),
(104,'Sneha Patil','Female',2,'Tester','2023-01-05'),
(105,'Amit Verma','Male',4,'Supervisor','2020-08-18'),
(106,'Pooja Kulkarni','Female',1,'HR Manager','2019-11-25'),
(107,'Rohit Mehta','Male',2,'Backend Developer','2022-02-14'),
(108,'Neha Joshi','Female',3,'Finance Analyst','2021-06-30'),
(109,'Karan Malhotra','Male',4,'Operations Lead','2020-12-10'),
(110,'Priya Nair','Female',2,'Frontend Developer','2023-03-19');

-- Insert data into Salaries
INSERT INTO Salaries VALUES
(101,40000,5000),(102,30000,3000),(103,35000,4000),
(104,32000,2500),(105,38000,4500),(106,45000,6000),
(107,42000,5000),(108,39000,4500),(109,41000,4800),
(110,36000,3500);

-- Insert data into Attendance
INSERT INTO Attendance VALUES
(101,'January',22),(102,'January',24),(103,'January',20),
(104,'January',23),(105,'January',21),(106,'January',25),
(107,'January',22),(108,'January',19),(109,'January',24),
(110,'January',21);

-- Queries

-- Employee with Department
SELECT e.emp_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Total Salary
SELECT e.emp_name, s.basic_salary + s.bonus AS total_salary
FROM Employees e
JOIN Salaries s ON e.emp_id = s.emp_id;

-- Low Attendance Employees
SELECT e.emp_name, a.days_present
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.days_present < 22;

-- Department-wise Employee Count
SELECT d.department_name, COUNT(e.emp_id) AS employee_count
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Highest Paid Employee
SELECT e.emp_name, s.basic_salary
FROM Employees e
JOIN Salaries s ON e.emp_id = s.emp_id
ORDER BY s.basic_salary DESC
LIMIT 1;