-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title FROM titles;

-- Update the previous query to sort the results alphabetically.
SELECT DISTINCT	title FROM titles GROUP BY title;

-- Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name;

-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

-- Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

