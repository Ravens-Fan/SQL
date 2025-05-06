SELECT *
FROM employee_demographics
WHERE employee_id IN 
		(SELECT employee_id
        FROM employee_salary
        WHERE dept_id = 1);
        
SELECT first_name, last_name, salary, dept_id, 
		(SELECT AVG(salary)
        FROM employee_salary)
        AS 'Average Salary'
FROM employee_salary;

SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(Oldest) AS 'Average Age'
FROM
		(SELECT gender, AVG(age) AS 'Average Age', MIN(age) AS 'Youngest', MAX(age) AS 'Oldest', COUNT(age) AS 'Total'
		FROM employee_demographics
		GROUP BY gender) AS Agg_Table
GROUP BY gender;