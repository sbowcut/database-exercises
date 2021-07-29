USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT count(*)
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya';

SELECT *
FROM employees.employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'm';

SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT *
FROM employees.employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT count(*)
FROM employees.employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';