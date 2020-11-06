SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.sex, 
		salaries.salary
FROM employees LEFT JOIN salaries 
ON salaries.emp_no=employees.emp_no;


SELECT employees.first_name, 
		employees.last_name, 
		employees.hire_date
FROM employees WHERE hire_date IN
		(
		SELECT hire_date FROM employees
		WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'
		);
		






/*
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	PRIMARY KEY (emp_no) 
	);
*/



