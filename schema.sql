CREATE DATABASE employee_project;
USE employee_project;

CREATE TABLE departments(
	dept_id INT PRIMARY KEY ,
	dept_name VARCHAR(50) NOT NULL,
	location VARCHAR(50)
);

CREATE TABLE employees(
	emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    hire_date DATE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id )
);

CREATE TABLE salaries(
	salary_id INT PRIMARY KEY,
	emp_id INT,
	salary INT NOT NULL,
	effective_from DATE NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE attendance(
	attendance_id INT PRIMARY KEY,
	emp_id INT,
	attendance_date DATE NOT NULL,
	status VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
 