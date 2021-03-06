-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE gender = 'M' AND (first_name ='Irena' OR first_name = 'Vidya' OR first_name ='Maya')
-- Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
ORDER BY last_name ASC, first_name ASC;

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE'%e'
ORDER BY emp_no ASC;
-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
-- Now reverse the sort order for both queries.
ORDER BY emp_no DESC;

-- Find ALL employees hired IN the 90s AND born ON Christmas — 362 rows. 
-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY hire_date DESC, birth_date ASC;

-- Find all employees with a 'q' in their last name but not 'qu'— 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- The first name of the oldest employee whose last name starts with an 'h'.
SELECT first_name FROM employees WHERE last_name LIKE 'h%'
ORDER BY birth_date ASC;

-- The two people that were both born and hired on Christmas.
SELECT * FROM employees WHERE hire_date LIKE '%-12-25' AND birth_date LIKE '%-12-25';

-- The number of people born on a leap day - 297 rows.
SELECT * FROM employees WHERE birth_date LIKE '%-02-29';