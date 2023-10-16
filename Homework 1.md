# Homework #1
## 1. Create table "employees" with following DDL:
- id. serial,  primary key,
- employee_name. Varchar(50), not null
  ```
  create table employees (         
  id serial primary key,      
  employee_name varchar (50) not null);
  ```
   
## 2. Insert 70 values in the employees table
```   
INSERT INTO employees (employee_name)
VALUES 
    ('Alice Johnson'),
    ('David Smith'),
    ('Emma Williams'),
    ('Michael Brown'),
    ('Olivia Jones'),
    ('Sarah Davis'),
    ('James Miller'),
    ('Emily Wilson'),
    ('Daniel Moore'),
    ('Ava Taylor'),
    ('Joseph Anderson'),
    ('Sophia Thomas'),
    ('Benjamin Jackson'),
    ('Mia White'),
    ('Ethan Harris'),
    ('Charlotte Martin'),
    ('Liam Clark'),
    ('Grace Turner'),
    ('Henry Walker'),
    ('Amelia Lewis'),
    ('Samuel Carter'),
    ('Harper Scott'),
    ('William Young'),
    ('Abigail Hall'),
    ('Alexander Green'),
    ('Madison King'),
    ('Noah Adams'),
    ('Elizabeth Martinez'),
    ('Oliver Rodriguez'),
    ('Ella Hill'),
    ('Daniel Allen'),
    ('Scarlett Bennett'),
    ('Matthew Parker'),
    ('Lily Wright'),
    ('Christopher Turner'),
    ('Chloe Mitchell'),
    ('Andrew Carter'),
    ('Zoe Hall'),
    ('Jack Scott'),
    ('Aubrey Wilson'),
    ('Ethan Baker'),
    ('Addison Wood'),
    ('Samuel Hayes'),
    ('Avery Nelson'),
    ('Benjamin Cook'),
    ('Sofia Rivera'),
    ('Luke Johnson'),
    ('Victoria Evans'),
    ('Caleb Perez'),
    ('Grace Murphy'),
    ('Daniel Reed'),
    ('Mia Torres'),
    ('James Foster'),
    ('Lily Ramirez'),
    ('Henry Russell'),
    ('Ella Butler'),
    ('Alexander Price'),
    ('Sophia Coleman'),
    ('Noah Morris'),
    ('Scarlett Ward'),
    ('William Brooks'),
    ('Ava Perry'),
    ('Christopher Cox'),
    ('Olivia Howard'),
    ('Matthew Bell'),
    ('Amelia Long'),
    ('Michael Gray'),
    ('Harper Hughes'),
    ('Samuel Watson'),
    ('Emily Powell');
```

## 3. Create table 'salary' with following DDL:
```
- id. Serial  primary key,   
- monthly_salary. Int, not null
```
```
create table salary (   
   id serial primary key,   
   monthly_salary int not null);   
```

## 4. Insert 16 entries in the salary table
```
INSERT INTO salary (monthly_salary)
values
		(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
```

## 5. Create table 'employee_salary' with following DDL:
```
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
```
```
create table employee_salary(   
	 id serial primary key,   
	 employee_id int not null,   
	 salary_id int not null);   
```
## 6. Insert values in 'employee_salary' table
```
insert into employee_salary(employee_id,salary_id)
	 values (1, 1),
    		(2, 2),
    		(3, 3),
    		(4, 4),
    		(71, 16),  -- Existing employee_id
    		(6, 6),
    		(7, 7),
    		(8, 8),
    		(9, 9),
    		(72, 6),  -- Existing employee_id  
    		(11, 11),
    		(12, 12),
    		(13, 13),
    		(14, 14),
    		(73, 2),  -- Existing employee_id
    		(16, 16),
    		(17, 1),   
    		(18, 2),   
    		(19, 3),   
    		(74, 11),   -- Non-existent employee_id
    		(21, 5),
    		(22, 6),
    		(23, 7),
    		(24, 8),
    		(75, 9),  -- Existing employee_id
    		(26, 10),  
    		(27, 11),
    		(28, 12),
    		(29, 13),
    		(76, 4),  -- Non-existent employee_id
    		(31, 15),
    		(32, 16),
    		(33, 1),   
    		(34, 2),   
    		(77, 6),   -- Non-existent employee_id
    		(36, 4),   
    		(37, 5),
    		(78, 5),  -- Non-existent employee_id
    		(79, 15),  -- Non-existent employee_id
    		(80, 9);  -- Non-existent employee_id
```

## 7. Create table 'roles' with following DDL:
```
- id. Serial  primary key,
- role_name. int, not null, unique
```
```
create table roles(   
  id serial primary key,   
  role_name int unique not null);   
```

## 8. Change the type of the role_name column from int to varchar(30)
```
alter table roles
alter column role_name type varchar(30);
```

## 9. Insert the roles table with 20 rows
```
insert into roles(role_name)
    values 
    		('Junior Python developer'),
    		('Middle Python developer'),
    		('Senior Python developer'),
    		('Junior Java developer'),
    		('Middle Java developer'),
    		('Senior Java developer'),
    		('Junior JavaScript developer'),
    		('Middle JavaScript developer'),
    		('Senior JavaScript developer'),
    		('Junior Manual QA engineer'),
    		('Middle Manual QA engineer'),
    		('Senior Manual QA engineer'),
    		('Project Manager'),
    		('Designer'),
    		('HR'),
    		('CEO'),
    		('Sales manager'),
    		('Junior Automation QA engineer'),
    		('Middle Automation QA engineer'),
    		('Senior Automation QA engineer');
```

## 10. Create table 'roles_employee' with following DDL:
```
id. Serial  primary key,
- employee_id. Int, not null, unique (foreign key for table employees, field id)
- role_id. Int, not null (foreign key for table roles, field id)
```
```
  create table roles_employee(
    id serial primary key,
    employee_id int unique not null,
    role_id int not null,
    foreign key (employee_id) references employees(id),
    foreign key (role_id) references roles(id));
```

## 11. Insert the roles_employee table with 40 rows
```
insert into roles_employee(employee_id,role_id)
    values
    		    (7, 2),
		    (20, 4),
		    (3, 9),
		    (5, 13),
		    (23, 4),
		    (11, 2),
		    (10, 9),
		    (22, 13),
		    (21, 3),
		    (34, 4),
		    (6, 7),
		    (12, 5),
		    (8, 8),
		    (9, 14),
		    (15, 10),
		    (17, 6),
		    (18, 1),
		    (19, 11),
		    (13, 16),
		    (25, 12),
		    (26, 3),
		    (27, 8),
		    (28, 5),
		    (29, 19),
		    (30, 17),
		    (31, 15),
		    (32, 2),
		    (33, 7),
		    (35, 20),
		    (36, 9),
		    (37, 4),
		    (38, 1),
		    (39, 16),
		    (40, 6),
		    (4, 12),
		    (2, 18),
		    (1, 10),
		    (24, 14),
		    (16, 11),
		    (14, 7);
```
