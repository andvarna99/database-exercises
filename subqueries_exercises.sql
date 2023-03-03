use ymir_employees;

SELECT *
FROM employees AS e
WHERE e.hire_date IN (
    SELECT e2.hire_date
    FROM employees AS e2
    WHERE e2.emp_no = '101010'
    );

SELECT t.title, e.first_name, e.last_name
FROM employees AS e
    JOIN titles AS t ON t.emp_no = e.emp_no
    WHERE e.first_name IN (
        SELECT e2.first_name
        FROM employees AS e2
        WHERE e2.first_name = 'Aamod'
        );

SELECT distinct t.title
FROM employees AS e
         JOIN titles AS t ON t.emp_no = e.emp_no
WHERE e.first_name IN (
    SELECT e2.first_name
    FROM employees AS e2
    WHERE e2.first_name = 'Aamod'
);

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.gender = 'F'
AND e.emp_no IN (
        SELECT dm2.emp_no
        FROM dept_manager AS dm2
        WHERE dm2.to_date = '9999-01-01'
        );

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
WHERE e.emp_no = (
    SELECT s.emp_no
    FROM salaries AS s
    ORDER BY s.salary DESC
    LIMIT 1
    );