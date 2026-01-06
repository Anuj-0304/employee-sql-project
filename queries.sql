-- 1. Displays all tables 
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM attendance;

-- 2. Show all employees along with the department they work in
SELECT e.emp_id, e.name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. Show each employee with their latest salary
SELECT e.emp_id, e.name, s.salary, s.effective_from
FROM employees e
JOIN salaries s
ON e.emp_id = s.emp_id
WHERE s.effective_from = (
    SELECT MAX(effective_from) 
    FROM salaries
    WHERE emp_id = e.emp_id
);

-- 4. For each department, show the employee who earns the highest current salary
SELECT d.dept_name, e.emp_id, e.name, s.salary
FROM departments d
JOIN employees e
  ON d.dept_id = e.dept_id
JOIN salaries s
  ON e.emp_id = s.emp_id
JOIN (
    SELECT emp_id, MAX(effective_from) AS latest_date
    FROM salaries
    GROUP BY emp_id
) latest
  ON s.emp_id = latest.emp_id
 AND s.effective_from = latest.latest_date
JOIN (
    SELECT e2.dept_id, MAX(s2.salary) AS max_salary
    FROM employees e2
    JOIN salaries s2
      ON e2.emp_id = s2.emp_id
    JOIN (
        SELECT emp_id, MAX(effective_from) AS latest_date
        FROM salaries
        GROUP BY emp_id
    ) latest2
      ON s2.emp_id = latest2.emp_id
     AND s2.effective_from = latest2.latest_date
    GROUP BY e2.dept_id
) dept_max
 ON e.dept_id = dept_max.dept_id
 AND s.salary = dept_max.max_salary;

-- 5. Which employees have received at least one salary increase since joining ?
SELECT emp_id, name
FROM employees
WHERE emp_id IN (
    SELECT emp_id
    FROM salaries
    GROUP BY emp_id
    HAVING MAX(salary) > MIN(salary)
);

-- 6. How much does each department cost us right now in salaries ?
SELECT d.dept_name, SUM(ls.salary) AS total_salary_cost
FROM departments d
JOIN employees e
ON d.dept_id = e.dept_id
JOIN (
    SELECT s.emp_id,
           s.salary
    FROM salaries s
    WHERE s.effective_from = (
        SELECT MAX(s2.effective_from)
        FROM salaries s2
        WHERE s2.emp_id = s.emp_id
    )
) ls
  ON e.emp_id = ls.emp_id
GROUP BY d.dept_name;

-- 7. Which employees were absent more than X days in a given period ?
SELECT e.emp_id, e.name,
       COUNT(*) AS absent_days
FROM employees e
JOIN attendance a
ON e.emp_id = a.emp_id
WHERE a.status = 'Absent'
GROUP BY e.emp_id, e.name
HAVING COUNT(*) > 1;

-- 8. Which departments currently have no employees ?
SELECT d.dept_id,
       d.dept_name
FROM departments d
LEFT JOIN employees e
  ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;
