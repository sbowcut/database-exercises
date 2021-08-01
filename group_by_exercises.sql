USE employees;

SELECT DISTINCT(title)
FROM titles;

SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE 'E%'
LIMIT 5;

SELECT DISTINCT(CONCAT(first_name, ' ', last_name))
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name = 'Vidya'
OR first_name = 'Irena'
OR first_name = 'Maya'
GROUP BY gender;
# get it baby
# and another one