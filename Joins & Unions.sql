SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
 INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
    
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT emp1.employee_id AS Santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id +1 = emp2.employee_id
;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS PD
	ON sal.dept_id = pd.department_id
;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old Man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name,  'Highly Paid' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;

