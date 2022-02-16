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
join dept_manager AS dm
on (dep.dept_no = dm.dept_no)
join employees AS e 
on (e.emp_no = dm.emp_no)
where e.emp_no in (
	select emp_no
	from dept_manager);

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
select 
e.emp_no as employee_number,
e.last_name,
e.first_name,
d.dept_name
from employees AS e
left join dept_emp 
on e.emp_no = dept_emp.emp_no
left join departments AS d
on dept_emp.dept_no = d.dept_no;

-- 5. List first name, last name, and sex for employees whose first name
--is "Hercules" and last names begin with "B."
select first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their
--employee number, last name, first name, and department name.
select 
e.emp_no as employee_number,
e.last_name,
e.first_name,
d.dept_name
from employees AS e
left join dept_emp 
on e.emp_no = dept_emp.emp_no
left join departments AS d
on dept_emp.dept_no = d.dept_no
where dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their
--employee number, last name, first name, and department name.
select 
e.emp_no as employee_number,
e.last_name,
e.first_name,
d.dept_name
from employees AS e
left join dept_emp 
on e.emp_no = dept_emp.emp_no
left join departments AS d
on dept_emp.dept_no = d.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
select last_name,
COUNT(last_name) AS name_count
from employees
group by last_name
order by name_count DESC;


-- epilogue - HA!
select * from employees
where emp_no = 499942;