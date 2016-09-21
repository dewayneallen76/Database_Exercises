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





