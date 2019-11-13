--Query Tables
--Part 1 Number 1  Employees and their salaries

select employees.emp_no, last_name, first_name, gender, salaries.salary
from employees join salaries on employees.emp_no = salaries.emp_no
order by employees.emp_no

 --Part 1 Number 2  All employees hired in 1986
 
 select first_name, last_name, hire_date
 from employees
 where extract(Year from hire_date)='1986'
 

 --Part 1 Number 3  List of managerrs, the department they manage, time period during which they managed the department
 --and data on the managers such as employee number etc
 
 select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
 from dept_manager dm
 inner join employees e on dm.emp_no=e.emp_no
 inner join departments d on d.dept_no = dm.dept_no
 
 --Part 1 Number 4  The employees and the departments to which they belong
 
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from dept_emp de
 inner join employees e on e.emp_no=de.emp_no
 inner join departments d on d.dept_no=de.dept_no
 order by e.emp_no
 
 ---Part 1 Number 5  List of employees whose first name is Hercules and last name begins with B.
 
 select * from employees
 where first_name='Hercules' AND last_name LIKE 'B%'
 
 ---Part 1 Number 6  List of employees in the Sales Department
 
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from employees e
 inner join dept_emp de on de.emp_no = e.emp_no
 inner join departments d on d.dept_no=de.dept_no
 where d.dept_name='Sales'
 order by e.emp_no
 
 ---Part 1 Number 7  List of employees in the Sales and Development Departments
 
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from employees e
 inner join dept_emp de on de.emp_no = e.emp_no
 inner join departments d on d.dept_no=de.dept_no
 where d.dept_name='Sales' OR d.dept_name='Development'
 order by e.emp_no
 
 --Part 1 Number 8  Count of all last names in descending order
 
 select last_name, count(last_name)
 from employees
 group by last_name
 order by count(last_name) desc
 
 






