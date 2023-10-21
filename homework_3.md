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
## 4. Display all salary positions less than 2000, but no employee has been assigned to them. (There is a PO, but it is unclear who gets it.)
```
SELECT monthly_salary,employee_name
FROM salary
LEFT JOIN employee_salary ON salary.id = employee_salary.salary_id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name IS null and salary.monthly_salary < 2000;
```
## 5. Show all employees who doesn't have salary
```
SELECT employee_name, monthly_salary
FROM employees
LEFT JOIN employee_salary ON employees.id = employee_salary.employee_id
LEFT JOIN salary ON salaru.id = employee_salary.salary_id
WHERE salary.monthly_salary is NULL;
```
## 6. Show all workers with their roles
```
SELECT employee_name, role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
```
## 7. Show names, roles only for Java developers
```
SELECT employee_name, role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Java%';
```
## 8. Show names, roles only for Python developers
```
SELECT employee_name, role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Python%';
```
## 9. Show names, roles only for QA engineers
```
SELECT employee_name, role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%QA%';
```
## 10. Show names, roles only for Manual QA engineers
```
SELECT employee_name, role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Manual QA%';
```
## 11. Show names, roles only for Automation QA engineers
```
SELECT employee_name, role_name
FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Automation QA%';
```
## 12. Show names, roles, salary only for Junior specialists
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior%';
```
## 13. Show names, roles, salary only for Middle specialists
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Middle%';
```
## 14. Show names, roles, salary only for Senior specialists
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Senior%';
```
## 15. Show roles, salary only for Java developers
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Java developer%';
```
## 16. Show roles, salary only for Python developers
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Python developer%';
```
## 17. Show names, roles, salary for Junior Python developers
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior Python developer%';
```
## 18. Show names, roles, salary for Middle JavaScript developers
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Middle JavaScript%';
```
## 19. Show names, roles, salary for Senior Java developers
```
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Senior Java%';
```
## 20. Show salary, roles, for Junior QA engineers
```
SELECT monthly_salary, role_name
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior%QA%';
```
## 21. Show average salary for all Junior specialists
```
SELECT AVG(mothly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior%';
```
## 22. Show summ salary of all JavaScript developers
```
SELECT SUM(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%JavaScript%';
```
## 23. Show minimum salary of QA engineers
```
SELECT MIN(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%QA%';
```
## 24. Show maximum salary of QA engineers
```
SELECT MAX(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%QA%';
```
## 25. Show the number of all QA engineers
```
SELECT COUNT(*) as number_of_all_QA_engineers
FROM roles
JOIN roles_employee ON roles.id = roles_employee.role_id
JOIN employees ON employees.id = roles_employee.employee_id
WHERE roles.role_name like '%QA%'
```
## 26. Show the number of Middle specialists
```
SELECT COUNT(*) as number_of_Middle_specialists
FROM roles
JOIN roles_employee ON roles.id = roles_employee.role_id
JOIN employees ON employees.id = roles_employee.employee_id
WHERE roles.role_name like '%Middle%'
```
## 27. Show the number of developers
```
SELECT COUNT(*) as number_of_all_developers
FROM roles
JOIN roles_employee ON roles.id = roles_employee.role_id
JOIN employees ON employees.id = roles_employee.employee_id
WHERE roles.role_name ILIKE '%developer%'
```
## 28. Show summ salary of all developers
```
SELECT SUM(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name ILIKE '%developer%'
```
## 29. Show names, roles and salary of all specialists in ascending order
```
SELECT employee_name, role_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
ORDER BY monthly_salary ASC;
```
## 30. Show names, roles and salary of all specialists in ascending order for wokers with salary from 1700 to 2300
```
SELECT employee_name, role_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE monthly_salary between 1700 and 2300
ORDER BY monthly_salary ASC;
```
## 31.
