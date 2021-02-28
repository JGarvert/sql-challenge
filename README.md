
# SQL Challenge at Pewlett Hackard

## The purpose of this project is to use SQL to load csv files, aggregate data, and provide simple outputs.
Background - pulled directely from the homework assignment:
"It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files. "This project is to design tables to hold csv data, import the data and answer questions about the data.""

This project requires 6 csv files, postgresql, and a fundamental knowledge of database schema.

## Part 1: Understand and load the data in EmployeeSQL
There are 6 csv files of data to load.  An image of the schema is here:
https://github.com/JGarvert/sql-challenge/issues/1

SQL schema is in sql-challenge\SRC\Data_Schema.sql
Once the schema has been set up, data from csv files must be loaded in the following order:
group # 1 (primary keys only): titles, departents, salaries
group # 2 (primary and foreign keys): employees, dept_manager
group # 3 (junction tables): dept_emp

Great - the data has been loaded!  Onto the next part.

## Part 2: Analaysis using preset queries
The queries have been sent up to answer the following questions.  See the queries here: sql-challenge\SRC\Data_Engineering.sql
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
9. Check out your employee number of 499942.


## Part 3: Bonus
Nope. As enticing as this is, I've got other things to do, namley the tasks that I am employeed for.   Otherwise, this would be interesting to tackle at another time.
