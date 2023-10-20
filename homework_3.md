# Homework 3
## 1. Show all employees whose salaries are in the database, along with salaries.
```
SELECT employee_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
```
## 2. Show all employees whose salary is less than 2000.
```
SELECT employee_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE monthly_salary < 2000;
```
or
```
SELECT employee_name, monthly_salary
FROM employees e, salary s, employee_salary es 
WHERE e.id = es.employee_id  AND s.id = es.salary_id AND monthly_salary < 2000;
```
## 3. Display all salary positions, but no employee has been assigned to them. (There is a salary, but it is unclear who gets it.)   
```
SELECT monthly_salary,employee_name
FROM salary
LEFT JOIN employee_salary ON salary.id = employee_salary.salary_id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name is null;
```
