
USE nj_state_teachers_salaries;

SELECT 
    'id' AS id,
    'last_name' AS last_name,
    'first_name' AS first_name,
    'county' AS county,
    'district' AS district,
    'school' AS school,
    'primary_job' AS primary_job,
    'fte' AS fte,
    'salary' AS salary,
    'certificate' AS certificate,
    'subcategory' AS subcategory,
    'teaching_route' AS teaching_route,
    'highly_qualified' AS highly_qualified,
    'experience_district' AS experience_district,
    'experience_nj' AS experience_nj,
    'experience_total' AS experience_total
UNION ALL
SELECT
    id,
last_name,
first_name,
county,
district,
school,
primary_job,
fte,
salary,
certificate,
subcategory,
teaching_route,
highly_qualified,
experience_district,
experience_nj,
experience_total
FROM teachers_salaries_pset4
ORDER BY RAND(7)
LIMIT 777
INTO OUTFILE '/Users/alf/Documents/sample.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';
