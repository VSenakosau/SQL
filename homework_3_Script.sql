# Homework 3
  
CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);

--1. Show all workers names and their salary 
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
SELECT employee_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id

--2. Show all workers names and their salary where salary <2000 
--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary
from employee_salary
join employees 
on employee_salary.employee_id = employees.id 
join salary
on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--or

select employee_name, monthly_salary
from employees e, salary s, employee_salary es 
where e.id = es.employee_id  and s.id = es.salary_id and monthly_salary < 2000;

--3. show null workers where salary exists
--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает
select monthly_salary,employee_name
from salary
left join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id
where employees.employee_name is null;

--4 Show null roles where salary exists and salary is less 2000
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
SELECT monthly_salary,employee_name
FROM salary
LEFT JOIN employee_salary ON salary.id = employee_salary.salary_id
LEFT JOIN employees ON employee_salary.employee_id = employees.id
WHERE employees.employee_name IS null and salary.monthly_salary < 2000;

--5. Show all workers who doesn't have salary
--5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary
from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary is null;

--6. Show all workers with their roles
--6. Вывести всех работников с названиями их должности.
select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id; 

--7. Show names, roles only for Java developers
--7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name in ('Junior Java developer','Middle Java developer','Senior Java developer');

--or

select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Java%';

--8. Show names, roles only for Python developers
--8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Python%';

--9. Show names, roles only for QA engineers
--9. Вывести имена и должность всех QA инженеров.
 select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name like '%QA%';

--10. Show names, roles only for Manual QA engineers
--10. Вывести имена и должность ручных QA инженеров.
 select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Manual QA%';

--11. Show names, roles only for Automation QA engineers
--11. Вывести имена и должность автоматизаторов QA
 select employee_name, role_name
from employees 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
where role_name like '%Automation QA%';

--12. Show names, roles, salary only for Junior specialists
--12. Вывести имена и зарплаты Junior специалистов
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior%';

--13. Show names, roles, salary only for Middle specialists
--13. Вывести имена и зарплаты Middle специалистов
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Middle%';

--14. Show names, roles, salary only for Senior specialists
--14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary
from employees 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Senior%';

--15. Show  roles, salary only for Java developers
--15. Вывести зарплаты Java разработчиков
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Java developer%';

--16. Show  roles, salary only for Python developers
--16. Вывести зарплаты Python разработчиков
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Python developer%';

--17. Show  names, roles, salary  for Junior Python developers
--17. Вывести имена и зарплаты Junior Python разработчиков
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior Python developer%';

--18. Show  names, roles, salary  for Middle JavaScript developers
--18. Вывести имена и зарплаты Middle JS разработчиков
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Middle JavaScript%';

--19. Show  names, roles, salary  for Senior Java developers
--19. Вывести имена и зарплаты Senior Java разработчиков
SELECT employee_name, monthly_salary, role_name
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON roles_employee.employee_id = employee_salary.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Senior Java%';

--20. Show  roles, salary  for Junior QA engineers
--20. Вывести зарплаты Junior QA инженеров
SELECT monthly_salary, role_name
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior%QA%';

--21. Show  average salary  for all Junior specialists
--21. Вывести среднюю зарплату всех Junior специалистов
SELECT AVG(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%Junior%';

--22. Show  summ salary  of all JavaScript developers
--22. Вывести сумму зарплат JS разработчиков
SELECT SUM(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%JavaScript%';

--23. Show minimum salary of QA engineers
--23. Вывести минимальную ЗП QA инженеров
select MIN(monthly_salary)
from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%'

--24. Show maximum salary of QA engineers
--24. Вывести максимальную ЗП QA инженеров
SELECT MAX(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name like '%QA%';

--25. Show the number of all QA engineers
--25. Вывести количество QA инженеров
SELECT COUNT(*) as number_of_all_QA_engineers
FROM roles
JOIN roles_employee ON roles.id = roles_employee.role_id
JOIN employees ON employees.id = roles_employee.employee_id
WHERE roles.role_name like '%QA%'

--26. Show the number of Middle specialists
--26. Вывести количество Middle специалистов.
SELECT COUNT(*) as number_of_Middle_specialists
FROM roles
JOIN roles_employee ON roles.id = roles_employee.role_id
JOIN employees ON employees.id = roles_employee.employee_id
WHERE roles.role_name like '%Middle%'

--27. Show the number of developers
--27. Вывести количество разработчиков
SELECT COUNT(*) as number_of_all_developers
FROM roles
JOIN roles_employee ON roles.id = roles_employee.role_id
JOIN employees ON employees.id = roles_employee.employee_id
WHERE roles.role_name ILIKE '%developer%'

--28. Show  summ salary  of all  developers
--28. Вывести фонд (сумму) зарплаты разработчиков.
SELECT SUM(monthly_salary)
FROM salary
JOIN employee_salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name ILIKE '%developer%'

--29. Show names, roles and salary of all specialists in ascending order 
--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
SELECT employee_name, role_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
ORDER BY monthly_salary ASC;

--30. Show names, roles and salary of all specialists in ascending order for workers with salary from 1700 to 2300
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
SELECT employee_name, role_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE monthly_salary between 1700 and 2300
ORDER BY monthly_salary ASC;

--31. Show names, roles and salary of all specialists in ascending order for workers with salary less than 2300
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
SELECT employee_name, role_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE monthly_salary < 2300
ORDER BY monthly_salary ASC;

--32. Show names, roles and salary of all specialists in ascending order for workers with salary equal to 1100, 1500, 2000
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
SELECT employee_name, role_name, monthly_salary
FROM employees
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
JOIN roles_employee ON employee_salary.employee_id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE monthly_salary in (1100, 1500,2000)
ORDER BY monthly_salary ASC;
