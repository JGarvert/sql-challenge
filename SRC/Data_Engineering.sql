-- Data Analysis

-- #1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT ee.emp_no, ee.last_name, ee.first_name, ee.gender, s.salary
FROM employees AS ee
INNER JOIN salaries AS s ON
ee.emp_no = s.emp_no;

-- #2. List first name, last name, and hire date for employees who were hired in 1986.

-- SELECT first_name, last_name, hire_date, YEAR(hire_date) AS "hire_year"
-- SELECT first_name, last_name, hire_date, EXTRACT(YEAR FROM hire_date) AS "hire_year"
-- SELECT first_name, last_name, hire_date, date_part('year', hire_date) AS "hire_year"
SELECT first_name, last_name, hire_date
FROM employees
-- WHERE YEAR(hire_date) = 1986;
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- #3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- Note: one manager can be in charge of multiple departments. Join dept_manager to employees and departments to get names of managers and departments.
SELECT dm.dept_no, dpt.dept_name, dm.emp_no, ee.last_name, ee.first_name
FROM dept_manager AS dm
JOIN employees AS ee ON
ee.emp_no = dm.emp_no
	JOIN departments as dpt ON
	dpt.dept_no = dm.dept_no;

-- #4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- Note: must join employees to dept_emp first, then join dept_emp to departments to retreive department name.
SELECT ee.emp_no, ee.last_name, ee.first_name, dpt.dept_name
FROM employees AS ee
INNER JOIN dept_emp AS de ON
ee.emp_no = de.emp_no
	INNER JOIN departments as dpt ON
	dpt.dept_no = de.dept_no;

-- #5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- Note: Filter results in the employees table.
SELECT first_name, last_name, gender as sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- #6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- Note: join employees, dept_emp, and departments table.  Then filter results on departments table.
SELECT ee.emp_no, ee.last_name, ee.first_name, dpt.dept_name
FROM employees AS ee
JOIN dept_emp AS de ON
ee.emp_no = de.emp_no
	JOIN departments as dpt ON
	dpt.dept_no = de.dept_no
	WHERE dept_name = 'Sales';

-- #7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- Note: repeat #6 with filters on Sales or Development
SELECT ee.emp_no, ee.last_name, ee.first_name, dpt.dept_name
FROM employees AS ee
JOIN dept_emp AS de ON
ee.emp_no = de.emp_no
	JOIN departments as dpt ON
	dpt.dept_no = de.dept_no
	WHERE dept_name = 'Sales' or dept_name = 'Development';

-- #8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- Group by last name in employee table and count
SELECT last_name, COUNT (last_name) AS "Last_Name_Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last_Name_Frequency" DESC;