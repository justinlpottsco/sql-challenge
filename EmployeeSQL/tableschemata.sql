CREATE TABLE departments(
	dept_no VARCHAR Primary Key NOT NULL,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE salaries( 
	emp_no INT Primary Key NOT NULL,
	salary INT NOT NULL 
);

CREATE TABLE titles( 
	title_id VARCHAR Primary Key NOT NULL,
	title VARCHAR NOT NULL 
);

CREATE TABLE dept_manager( 
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp( 
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees( 
	emp_no INT Primary Key NOT NULL,
	emp_title_id VARCHAR NOT NULL, 
	birth_date VARCHAR NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL, 
	hire_date VARCHAR NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES salaries(salary)
);

SELECT * FROM employees
