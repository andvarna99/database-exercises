use ymir_employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

# 1st five 0, 2nd five 5, 3rd five 10,
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;