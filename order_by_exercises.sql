use ymir_employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name, first_name;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name DESC, first_name DESC ;

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%E%' ORDER BY emp_no;

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;
