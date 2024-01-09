--  Find the name and title of the highest-paid employee in each department

SELECT d.dept_name, e.first_name, e.last_name, t.title, s.salary
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON de.emp_no = e.emp_no
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE (d.dept_no, s.salary) IN (
SELECT dept_no, MAX(salary)
FROM dept_emp
JOIN salaries ON dept_emp.emp_no = salaries.emp_no
GROUP BY dept_no
);