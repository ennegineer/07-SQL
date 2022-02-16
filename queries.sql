-- Run the code below each question:

-- 1. List the following details of each employee: employee number, last name, 
-- first name, sex, and salary.
select 
e.emp_no as employee_number,
e.last_name,
e.first_name,
e.sex,
salary
from employees AS e
join salaries on e.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select 
first_name,
last_name,
hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select distinct
	dep.dept_no,
	dep.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
from departments AS dep
join employees AS e on ()
where e.emp_no in (
	select emp_no
	from dept_manager) 
join dept_emp AS de on (e.emp_no = de.emp_no)
-- dept_no and dept_name in departments

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

-- -- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select * from employees limit 10
select * from dept_manager limit 10
select * from dept_emp limit 10
select * from departments limit 10
-- -- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- -- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
departments.dept_name = Sales or Development
-- -- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.