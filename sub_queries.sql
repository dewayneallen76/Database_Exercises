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
    );

-- BONUS Find all the department names that have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
    FROM dept_manager
WHERE emp_no IN(
    SELECT emp_no
    FROM employees
	WHERE gender = 'F'
    )
    AND to_date = '9999-01-01'
    );
    
-- BONUS QUERIES       
-- what is the most common birthday in the company? 
SELECT birth_date, COUNT(birth_date)
FROM employees
GROUP BY birth_date
ORDER BY count(birth_date) DESC
LIMIT 1;

-- least common?
SELECT birth_date, COUNT(birth_date)
FROM employees
GROUP BY birth_date
LIMIT 1;

-- what is the average salary of managers by department?
SELECT AVG(salary)
FROM salaries
WHERE emp_no IN (
	SELECT emp_no
    FROM dept_manager);

-- how many employees currently work in each department?

-- what is the average salary for each department?

-- what was the average salary in the 80s? By department?

-- how many times (on average) do employees switch titles?

-- how many times (on average) do employees get a raise?