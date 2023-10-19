# Homework 2
## Create table students with following DDL:
```
CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);
  ```
## 1. Show all information in the table 'Students'
```
SELECT * FROM students;
```
## 2. Show all students of the table 'Students'
```
SELECT * FROM students;
```
## 3. Show id of the table 'Students'
```
SELECT id FROM students;
```
## 4. Show all names of the table 'Students'
```
SELECT name FROM students;
```
## 5. Show all emails of the table 'Students'
