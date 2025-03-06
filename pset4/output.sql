
SELECT 
    'id',
    'first_name',
    'last_name',
    'primary_job',
    'experience_total',
    'experience_district',
    'experience_current_job',
    'salary',
    'days_worked',
    'teaching_route',
    'subcategory'
UNION ALL
SELECT
    id,
    first_name,
    last_name,
    primary_job,
    experience_total,
    experience_district,
    experience_current_job,
    salary,
    days_worked,
    teaching_route,
    subcategory
FROM teachers_salaries_pset4
ORDER BY RAND(7)
LIMIT 777
INTO OUTFILE '/Users/alf/Documents/VS Code/pset4/sample.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';
