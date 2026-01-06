INSERT INTO departments (dept_id, dept_name, location)
 VALUES
 (101, 'IT', 'Mumbai'),
 (102, 'HR', 'Mumbai'),
 (103, 'Sales', 'Pune'),
 (104, 'Finance', 'Delhi');
 
INSERT INTO employees (emp_id, name, email, hire_date, dept_id)
 VALUES 
 (101, 'Ajay Kumar', 'ajay@example.com', '2025-01-01', 102),
 (102, 'Raj Sharma', 'raj@example.com', '2025-08-01', 103),
 (103, 'Suraj Rathi', 'suraj@example.com', '2025-06-01', 101),
 (104, 'Ankita Sharma', 'ankita@example.com', '2025-08-01', 103),
 (105, 'Tilak Jha', 'tilak@example.com', '2025-07-01', 102),
 (106, 'Nitin Verma', 'nitin@example.com', '2025-02-01', 101),
 (107, 'Pallavi Mehta', 'pallavi@example.com', '2025-03-01', 102);

INSERT INTO salaries (salary_id, emp_id, salary, effective_from)
VALUES
-- Ajay Kumar (hired 2025-01-01, salary hike)
(1, 101, 40000, '2025-01-01'),
(2, 101, 45000, '2025-12-01'),

-- Raj Sharma (hired 2025-08-01, single salary)
(3, 102, 50000, '2025-08-01'),

-- Suraj Rathi (hired 2025-06-01, salary hike)
(4, 103, 35000, '2025-06-01'),
(5, 103, 42000, '2025-11-01'),

-- Ankita Sharma (hired 2025-08-01, single salary)
(6, 104, 48000, '2025-08-01'),

-- Tilak Jha (hired 2025-07-01, salary hike)
(7, 105, 38000, '2025-07-01'),
(8, 105, 43000, '2025-12-01'),

-- Nitin Verma (3 salary records)
(9, 106, 42000, '2025-02-01'),
(10, 106, 45000, '2025-07-01'),
(11, 106, 48000, '2025-12-01'),

-- Pallavi Mehta (single salary)
(12, 107, 46000, '2025-03-01');
 
INSERT INTO attendance (attendance_id, emp_id, attendance_date, status)
VALUES
-- Ajay Kumar (emp_id 101)
(1, 101, '2025-01-02', 'Present'),
(2, 101, '2025-01-03', 'Present'),
(3, 101, '2025-01-04', 'Absent'),

-- Raj Sharma (emp_id 102)
(4, 102, '2025-08-02', 'Present'),
(5, 102, '2025-08-03', 'Absent'),

-- Suraj Rathi (emp_id 103)
(6, 103, '2025-06-02', 'Present'),
(7, 103, '2025-06-03', 'Present'),
(8, 103, '2025-06-04', 'Present'),

-- Ankita Sharma (emp_id 104)
(9, 104, '2025-08-02', 'Present'),

-- Tilak Jha (emp_id 105)
(10, 105, '2025-07-02', 'Absent'),
(11, 105, '2025-07-03', 'Present'),
(12, 105, '2025-07-04', 'Absent'),

-- Nitin Verma (emp_id 106)
(13, 106, '2025-02-02', 'Present'),
(14, 106, '2025-02-03', 'Absent'),

-- Pallavi Mehta (emp_id 107)
(15, 107, '2025-03-02', 'Present');