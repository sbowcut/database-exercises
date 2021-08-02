# USE employees;
# DESCRIBE employees;
# DESCRIBE departments;
# DESCRIBE dept_emp;
# DESCRIBE employee;
# DESCRIBE pets;
# DESCRIBE salaries;
# DESCRIBE spouses;
# DESCRIBE titles;
# DESCRIBE dept_manager;
USE codeup_test_db;
ALTER TABLE albums
ADD CONSTRAINT name_artist_clin_1 UNIQUE (name, artist);