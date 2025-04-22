SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE birth_date >= '1985-01-01'
;

SELECT *
FROM employee_demographics
WHERE birth_date >= '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date >= '1980-01-01'
OR gender != 'male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 50
;

SELECT *
FROM employee_salary
WHERE salary LIKE '5%'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;
