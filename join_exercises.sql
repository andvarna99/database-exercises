use ymir_employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
    INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
    INNER JOIN departments AS d ON d.dept_no = dm.dept_no
    WHERE dm.to_date = '9999-01-01';

SELECT dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
        INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
        INNER JOIN departments AS d ON d.dept_no = dm.dept_no
        WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT t.title AS Title, COUNT(t.emp_no) AS Total
FROM employees AS e
    INNER JOIN titles AS t ON t.emp_no = e.emp_no
    INNER JOIN dept_emp AS de ON de.emp_no = t.emp_no
    INNER JOIN departments AS d ON d.dept_no = de.dept_no
    WHERE d.dept_name = 'Customer Service'
      AND t.to_date = '9999-01-01'
      AND de.to_date = '9999-01-01'
    GROUP BY t.title
    ORDER BY Total DESC;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM employees AS e
         INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         INNER JOIN departments AS d ON d.dept_no = dm.dept_no
         INNER JOIN salaries AS s on s.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees AS e
    INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
    INNER JOIN departments AS d ON d.dept_no = de.dept_no
    INNER JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
    INNER JOIN employees AS e2 ON e2.emp_no = dm.emp_no
    WHERE de.to_date = '9999-01-01'
      AND dm.to_date= '9999-01-01';