USE employees;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE DAY(birth_date) = 25
AND MONTH(birth_date) = 12;

SELECT *
FROM employees
WHERE DAY(birth_date) = 25
AND MONTH(birth_date) = 12
AND YEAR(hire_date) >= 1990
AND YEAR(hire_date) < 2000;

SELECT *
FROM employees
WHERE DAY(birth_date) = 25
AND MONTH(birth_date) = 12
AND year(hire_date) >= 1990
  AND year(hire_date) < 2000
ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(CURDATE(), hire_date) AS DATEDIFF
FROM employees
WHERE DAY(birth_date) = 25
  AND MONTH(birth_date) = 12
  AND YEAR(hire_date) >= 1990
  AND YEAR(hire_date) < 2000;