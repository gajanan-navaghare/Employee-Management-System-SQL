# 🗄️ Employee Management System (SQL Project)

---

## 📌 Project Overview

The **SQL Employee Management System** is a relational database project designed to manage **employee, department, and payroll/attendance data** efficiently.  
It demonstrates **real-world usage of SQL concepts** such as **normalization, primary & foreign keys, JOINs, and constraints**, similar to an HR system used in organizations.

---

## 🛠️ Technologies Used

- **MySQL (SQL – MySQL compatible)**
- **Relational Database Design**
- **Structured Query Language (SQL)**

---

## 🗂️ Database Structure

### Employees Table
- `emp_id` (Primary Key)
- `emp_name`
- `email`
- `salary`
- `dept_id` (Foreign Key)
- `join_date`

### Departments Table
- `dept_id` (Primary Key)
- `dept_name`

### Attendance / Payroll Table
- `record_id` (Primary Key)
- `emp_id` (Foreign Key)
- `month`
- `days_present`
- `salary_paid`

---

## ⚙️ Core Features

- Full **CRUD operations** on employee records  
- **Employee–Department mapping** using JOIN queries  
- **Department-wise** and **salary-based reports**  
- **Data integrity enforcement** using constraints  

---

## 🎯 Outcome & Learning

- Strong understanding of **relational database concepts**
- Hands-on experience with **real-world HR data modeling**
- Demonstrates **strong SQL fundamentals** and reporting skills  

---
