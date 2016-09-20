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
ORDER BY emp_no ASC;
-- Find ALL employees hired IN the 90s AND born ON Christmas — 362 rows. 
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
-- Find all employees with a 'q' in their last name but not 'qu'— 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
