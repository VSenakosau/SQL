# Homework #1
1. Create table "employees" with following DDL:
- id. serial,  primary key,
- employee_name. Varchar(50), not null
  ```
  create table employees (         
  id serial primary key,      
  employee_name varchar (50) not null);
  ```
   
2. Insert 70 values in the employees table
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

3. Create table 'salary' with following DDL:
```
- id. Serial  primary key,   
- monthly_salary. Int, not null   
```
