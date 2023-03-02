use ymir_employees;

SELECT CONCAT(first_name,' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
    ORDER BY emp_no;

SELECT first_name, last_name
FROM employees
WHERE day(birth_date) =  25
    AND month(birth_date) = 12;

SELECT first_name, last_name
FROM employees
WHERE year(hire_date) BETWEEN '1990-01-01' AND '2000-12-31'
    AND day(birth_date) =  25
    AND month(birth_date) = 12;

SELECT first_name, last_name
FROM employees
WHERE year(hire_date) BETWEEN '1990-01-01' AND '2000-12-31'
    AND day(birth_date) =  25
    AND month(birth_date) = 12
    ORDER BY birth_date ASC, hire_date DESC;

SELECT first_name, last_name, datediff(curdate(),hire_date) AS days_employed
FROM employees
WHERE year(hire_date) BETWEEN '1990-01-01' AND '2000-12-31'
    AND day(birth_date) =  25
    AND month(birth_date) = 12
    AND datediff(curdate(),hire_date);