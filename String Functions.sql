SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT last_name, left(last_name, 3)
FROM employee_demographics;

SELECT department_name, left(department_name, 5)
FROM parks_departments;

SELECT birth_date,
SUBSTRING(birth_date,6,2) AS Birth_Month
FROM employee_demographics
ORDER BY SUBSTRING(birth_date,6,2) ASC;

SELECT salary,
SUBSTRING(SALARY,1,2) AS Salary_Thousands
FROM employee_salary
ORDER BY SUBSTRING(SALARY,1,2) DESC;

SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS Full_Name_Salary
FROM employee_demographics;