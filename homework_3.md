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
select employee_name, monthly_salary
from employees e, salary s, employee_salary es 
where e.id = es.employee_id  and s.id = es.salary_id and monthly_salary < 2000;
```
