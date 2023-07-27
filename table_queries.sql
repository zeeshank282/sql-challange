--List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name
SELECT d_m.dept_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager AS d_m
JOIN  departments AS d
ON d_m.dept_no = d.dept_no
JOIN  employees AS e
ON d_m.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name
SELECT d_e.dept_no, d.dept_name, e.first_name, e.last_name
FROM employees AS e
JOIN dept_emp AS d_e
ON e.emp_no = d_e.emp_no
JOIN departments AS d
ON d_e.dept_no = d.dept_no
ORDER BY d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT d.dept_name, e.emp_no, e.first_name, e.last_name
FROM employees AS e
JOIN dept_emp AS d_e
ON e.emp_no = d_e.emp_no
JOIN departments AS d
ON d_e.dept_no = d.dept_no
WHERE dept_name = 'Sales'

--List each employee in the Sales or Development departments, including their employee number, 
--last name, first name, and department name 
SELECT d.dept_name, e.emp_no, e.first_name, e.last_name
FROM employees AS e
JOIN dept_emp AS d_e
ON e.emp_no = d_e.emp_no
JOIN departments AS d
ON d_e.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name)
SELECT last_name, COUNT(*)
FROM employees
GROUP BY  last_name 
ORDER BY COUNT(*) DESC










