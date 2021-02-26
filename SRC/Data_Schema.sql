-- Data Engineering: Add in all 6 data sets

-- Drop table added to rerun all coding fresh.  Select queries included to confirm data imported successfully.

DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE dept_emp;
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE titles;

-- Start by adding in primary key tables
CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL,
	salary VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(20) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Add in tables that have foreign keys
CREATE TABLE employees (
	emp_no INT NOT NULL,
	title_id VARCHAR(255) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary FLOAT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Check on imported data

SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
