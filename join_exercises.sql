USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'f'
ORDER BY d.dept_name;

SELECT t.title
           AS titles,
       COUNT(t.title)
FROM titles AS t
         JOIN dept_emp de on t.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
WHERE de.dept_no = 'd009'
  AND t.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY count(t.title) DESC;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager, s.salary
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
         JOIN salaries s
              ON dm.emp_no = s.emp_no
                  AND S.to_date - '9999-01-01'
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name ASC;

select CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name,
       CONCAT(m.first_name, ' ', m.last_name) AS Manger
from employees.employees e
         join dept_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
         join dept_manager dm on de.dept_no = dm.dept_no
         join employees m on dm.emp_no = m.emp_no
where de.to_date = '9999-01-01'
  and dm.to_date = '9999-01-01'
order by dept_name, e.emp_no;