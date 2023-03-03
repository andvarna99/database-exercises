use ymir_employees;

SELECT e.hire_date, e.first_name, e.last_name
FROM employees AS e
WHERE e.hire_date IN (
    SELECT e.hire_date
    FROM employees
    WHERE e.hire_date = '1990-10-22'
    );

SELECT t.title, e.first_name, e.last_name
FROM employees AS e
    JOIN titles AS t ON t.emp_no = e.emp_no
    WHERE e.first_name IN (
        SELECT e.first_name
        FROM employees
        WHERE e.first_name = 'Aamod'
        );

SELECT e.first_name, e.last_name, e.gender
FROM employees AS e
    JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
    WHERE e.gender IN (
        SELECT e.gender
        FROM employees
        WHERE e.gender = 'F'
        ) AND dm.to_date = '9999-01-01';

SELECT d.dept_name AS Department
FROM departments AS d
WHERE d.dept_no IN (
    SELECT dm2.dept_no
    FROM dept_manager AS dm2
             INNER JOIN employees AS e2 ON e2.emp_no = dm2.emp_no
    WHERE e2.gender = 'F'
      AND dm2.to_date = '9999-01-01'
    );

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.emp_no IN (
    SELECT s.emp_no
    FROM salaries AS s
    ORDER BY s.salary
    LIMIT 1
    );