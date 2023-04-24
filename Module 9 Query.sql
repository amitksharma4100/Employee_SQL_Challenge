-- List the employee number, last name, first name, sex, and salary of each employee.
Select employees.emp_no as "employee number", employees.last_name as "last name", 
employees.first_name as "first name", employees.sex, salaries.salary
from employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
from employees
where hire_date >= '1986/01/01' and hire_date <= '1986/12/31';

-- List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name.

Select departments.dept_no, departments.dept_name, dept_manager.dept_no, 
employees.emp_no, employees.last_name, employees.first_name 
from dept_manager
inner join departments on departments.dept_no = dept_manager.dept_no
inner join employees on employees.emp_no = dept_manager.emp_no;

-- List the department number for each employee along with 
-- that employee’s employee number, last name, first name, and department name.

Select departments.dept_no, departments.dept_name, 
employees.last_name, employees.first_name, dept_emp.emp_no
from dept_emp
inner join departments on departments.dept_no=dept_emp.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no;

-- List first name, last name, and sex of each employee whose first name is 
-- Hercules and whose last name begins with the letter B.

Select first_name, last_name, sex
from employees
where first_name = 'Hercules'and last_name like 'B%'

-- List each employee in the Sales department, 
--including their employee number, last name, and first name
Select departments.dept_no, departments.dept_name,employees.emp_no, employees.last_name, 
employees.first_name, dept_emp.emp_no
from dept_emp 
inner join departments on departments.dept_no = dept_emp.dept_no
inner join employees on employees.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "Count of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Count of Last Name" DESC;


