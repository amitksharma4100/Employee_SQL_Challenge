--Drop pre-existing tables
Drop Table departments cascade;
Drop Table if Exists dept_emp;
Drop Table if Exists dept_manager;
Drop Table if Exists employees;
Drop Table if Exists salaries;
Drop Table if Exists titles;

--Create Tables
Create Table titles (title_id VARCHAR (20) primary key, title VARCHAR (20));
Create Table salaries (emp_no INTEGER Primary key, salary INTEGER);
Create Table departments ( dept_no VARCHAR (4) primary key not null, dept_name VARCHAR not null);
Create Table dept_emp(emp_no INT, dept_no VARCHAR (20), foreign key (dept_no) references 
					  departments(dept_no));
Create Table employees ( emp_no INT, emp_title_id VARCHAR (20), birth_date date, 
						first_name VARCHAR (20)not null, last_name VARCHAR (20)not null, sex VARCHAR (3),
					   hire_date date, foreign key (emp_title_id) references 
						titles(title_id));
Create Table dept_manager (dept_no VARCHAR, emp_no INT, foreign key (dept_no) references 
						   departments(dept_no));
						   
						   




