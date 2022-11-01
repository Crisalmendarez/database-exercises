USE employees;

#1
-- select prints name
SELECT first_name, last_name
-- from gets table
FROM employees
-- where this condition works
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);


#2

SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name = 'Aamod');

#3

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F'
    AND dept_manager.to_date = '9999-01-01'
    );