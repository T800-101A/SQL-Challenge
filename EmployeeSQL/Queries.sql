

--------------------------------- List the employee number, last name, first name, sex, and salary of each employee  ---------------------------------


select	employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from	employees e 
join	salaries s 
on		employees.emp_no = salaries.emp_no;

--------------------------------- List the first name, last name, and hire date for the employees who were hired in 1986   ---------------------------------

select	first_name, last_name, hire_date
from	employees e 
where	hire_date
	between '01/1/1986' and '12/31/1986'
		order by hire_date;


------------List the manager of each department along with their department number, department name, employee number, last name, and first name --------

select	d.dept_no, d.dept_name, dm.emp_no, e.last_name ,e.first_name
from 	departments d 
join 	dept_manager dm 
on		d.dept_no = dm.dept_no
join 	employees e 
on 		dm.emp_no = e.emp_no ;

-------------List the department number for each employee along with that employee’s employee number, last name, first name, and department name------------

select	de.emp_no, e.last_name, e.first_name, d.dept_name, d.dept_no
from	dept_emp de 
join	employees e 
on		de.emp_no = e.emp_no 
join	departments d 
on		de.dept_no  = d.dept_no ;

-------------List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B------------

select e.first_name, e.last_name, e.sex 
from employees e 
where first_name  = 'Hercules'
and last_name like 'B%';


-------------List each employee in the Sales department, including their employee number, last name, and first name------------

select	e.emp_no , e.last_name , e.first_name 
from	dept_emp de 
join	employees e 
on		de.emp_no = e.emp_no 
join	departments d 
on		de.dept_no = d.dept_no 
where	d.dept_name = 'Sales';

-------------List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name ------------

select	e.emp_no , e.last_name , e.first_name, d.dept_name 
from	dept_emp de 
join	employees e 
on		de.emp_no = e.emp_no 
join	departments d 
on		de.dept_no = d.dept_no 
where	d.dept_name = 'Sales'
or 		d.dept_name = 'Development';

-------------List the frequency counts, in descending order, of all the employee last names------------

select	last_name, count(last_name) as "Frequency"
from	employees e 
group by last_name 
order by count (last_name) desc ;







