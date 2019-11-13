-- 1. Create Employees table
create table employees (
    emp_no int,
    birth_date date,
	first_name varchar(30),
    last_name varchar(30),
	gender varchar(1),
	hire_date date,
    primary key (emp_no)
);

--Create the departments table

create table departments (
    dept_no varchar(30),
    dept_name varchar(30),
    primary key (dept_no)
);

--Create the department and associated employees table

create table dept_emp (
    emp_no int,
    dept_no varchar(30),
	from_date date,
    to_date date,
	foreign key (emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no),
    primary key (emp_no, dept_no)
);

--Create the department and the associated managers table

create table dept_manager(
    dept_no varchar(30),
	emp_no int,
	from_date date,
    to_date date,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
    primary key (dept_no, emp_no)
);

--Create the salaries table

create table salaries (
    emp_no int,
    salary int,
	from_date date,
    to_date date,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no));
	
create table titles (
    emp_no int,
    title varchar(30),
	from_date date,
    to_date date,
	foreign key (emp_no) references employees(emp_no)
	);












