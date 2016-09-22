-- sub-queries classroom example, department managers and their birthday
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
	SELECT emp_no
    FROM dept_manager
    WHERE to_date > curdate()
    )
LIMIT 10;
 
-- Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT CONCAT(first_name, ' ', last_name) AS "Employee Name", hire_date AS "Hire Date"
FROM employees
WHERE hire_date IN (
	SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );
-- Find all the titles held by all employees with the first name Aamod.
SELECT t.title
FROM titles AS t
WHERE emp_no IN (
	SELECT emp_no
    FROM employees AS e
    WHERE first_name = 'Aamod'
    )
    GROUP BY title;
-- Find all the department managers that are female. 
SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN (
	SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F'
    )

-- BONUS Find all the department names that have female managers.