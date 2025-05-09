-- Query 1: Calculate the average salary.
SELECT AVG(salary) 
FROM nj_state_teachers_salaries.salaries;

-- Query 2: Calculate the number of people whose salary is more than 150,000.
SELECT COUNT(*) 
FROM nj_state_teachers_salaries.salaries 
WHERE salary > 150000;

-- Query 3: Get the last name of the ones who make more than 150,000 but have less than 5 years of total experience.
SELECT last_name 
FROM nj_state_teachers_salaries.salaries 
WHERE salary > 150000 
  AND experience_total < 5;

-- Query 4: Get the highest salary for Preschool.
SELECT MAX(salary) 
FROM nj_state_teachers_salaries.salaries 
WHERE primary_job LIKE '%Preschool%';

-- Query 5: Get the highest salary for School Counselor.
SELECT MAX(salary) 
FROM nj_state_teachers_salaries.salaries 
WHERE primary_job LIKE '%School Counselor%';

-- Query 6: Get the highest salary for Principal (any title containing "Principal").
SELECT MAX(salary) 
FROM nj_state_teachers_salaries.salaries 
WHERE primary_job LIKE '%Principal%';

-- Query 7: Get the highest salary for School Psychologist.
SELECT MAX(salary) 
FROM nj_state_teachers_salaries.salaries 
WHERE primary_job LIKE '%School Psychologist%';

-- Query 8: Get the highest salary for Kindergarten.
SELECT MAX(salary) 
FROM nj_state_teachers_salaries.salaries 
WHERE primary_job LIKE '%Kindergarten%';

-- Query 9: Get the last name, first name, and salary of the lowest earner who works in Atlantic City.
SELECT last_name, first_name, salary 
FROM nj_state_teachers_salaries.salaries 
WHERE city = 'Atlantic City' 
ORDER BY salary ASC 
LIMIT 1;

-- Query 10: Get the total number of employees working in Passaic City with more than ten years of total experience.
SELECT COUNT(*) 
FROM nj_state_teachers_salaries.salaries 
WHERE city = 'Passaic City' 
  AND experience_total > 10;
