-- Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.
SELECT roles.name AS role_name,COUNT(roles.name) FROM users LEFT JOIN roles ON users.role_id=roles.id
GROUP BY role_name;

-- write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager", d.dept_name AS "Department Name"
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
-- Find the name of all departments currently managed by women.
AND e.gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Customer Service Titles', COUNT(t.emp_no) AS 'Count'
FROM employees AS e
JOIN dept_emp AS de 
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no
JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE d.dept_name = 'Customer Service'
	AND de.to_date = '9999-01-01'
	AND t.to_date = '9999-01-01'
GROUP BY title;

-- Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM departments AS d 
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no
JOIN salaries AS s
	ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';


-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(dme.first_name, ' ', dme.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no 
JOIN dept_manager AS dm 
	ON d.dept_no = dm.dept_no
JOIN employees AS dme
	ON dm.emp_no = dme.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';

-- Is there wage discrimination based on gender in the company? 
SELECT d.dept_name AS "Department Name", e.gender AS "Gender", AVG(s.salary) AS "Average Salary"
FROM employees AS e
JOIN salaries AS s
	ON e.emp_no = s.emp_no
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no
WHERE s.to_date > CURTIME()
AND de.to_date > CURTIME()
GROUP BY e.gender, d.dept_name
ORDER BY d.dept_name, e.gender;

-- Breakdown departments by gender 
SELECT d.dept_name AS "Deparment Name", COUNT(e.gender) AS "Total", e.gender AS "Gender"
FROM employees AS e
JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
GROUP BY e.gender, d.dept_name
ORDER BY d.dept_name, e.gender
