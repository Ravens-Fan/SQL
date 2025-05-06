SELECT first_name, 
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Middle aged'
    WHEN age >= 51 THEN 'Old'
END AS 'Age_Bracket'
FROM employee_demographics;



-- PAY INCREASES & BONUS
-- <= 50,000 = 2%
-- > 50,000 = 3%
-- FINANCE = 5% BONUS
-- PARKS = 5% BONUS
-- ANIMAL CONTROL = 7% BONUS

SELECT first_name, last_name, salary,
CASE
	WHEN salary <= 50000 THEN salary * 1.02
	WHEN salary > 50000 THEN salary * 1.03
END AS 'New Salary',
CASE
	WHEN dept_id = 6 THEN salary * .05
    WHEN dept_id = 1 THEN salary * .05
    WHEN dept_id = 2 THEN salary * .07
    END AS 'Bonus'
FROM employee_salary;