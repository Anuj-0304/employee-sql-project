# Employee & Payroll Analytics System (MySQL)

## Overview
This project simulates a real-world Employee Management and Payroll Analytics system using MySQL.
It focuses on relational database design, handling salary history, and writing business-driven SQL queries 
commonly used in HR and finance analytics.

## Database Schema
The project consists of four tables:
- departments
- employees
- salaries (salary history)
- attendance

Salary data is stored as historical records to accurately track salary changes over time.
Salary and attendance are treated as time-dependent data.

## Business Problems Solved
- Employees with their department names
- Latest salary of each employee
- Highest paid employee per department
- Employees who received salary hikes
- Department-wise current salary cost
- Employees absent more than a given number of days
- Departments with no employees

## SQL Concepts Used
- JOINs (INNER, LEFT)
- Subqueries
- GROUP BY and HAVING
- Aggregate functions
- Time-based data handling

## Project Structure
schema.sql – table creation  
data.sql – sample data  
queries.sql – analytics queries  
README.md – project documentation  

## Tools
- MySQL
- MySQL Workbench 8.0 CE

## How to Run
1. Execute schema.sql
2. Execute data.sql
3. Run queries from queries.sql

Author : 
Anuj Jaiswal
