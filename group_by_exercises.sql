use ymir_employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
    GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
    GROUP BY first_name, last_name;

SELECT last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%'
  GROUP BY last_name;

SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
    AND last_name LIKE '%q%'
    GROUP BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;