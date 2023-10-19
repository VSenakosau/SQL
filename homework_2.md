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
## 1. Show all information in the table 'students'
```
SELECT * FROM students;
```
## 2. Show all students of the table 'students'
```
SELECT * FROM students;
```
## 3. Show id of the table 'students'
```
SELECT id FROM students;
```
## 4. Show all names of the table 'students'
```
SELECT name FROM students;
```
## 5. Show all emails of the table 'students'
```
SELECT email FROM students;
```
## 6. Show all names and emails of the table 'students'
```
SELECT name, email from students;
```
## 7. Show all ids, names, emails, dates of creation of the table 'students'
```
SELECT id, name, email, created_on FROM students;
```
## 8. Show all users of the table 'students' with password 12333
```
select * from students
where password = '12333';
```
## 9. Show all users of the table 'students' which were created_on 2021-03-26 00:00:00
```
SELECT * FROM students
where created_on = '2021-03-26 00:00:00';
```
## 10. Show all users of the table 'students' which names contain "Anna"
```
SELECT * FROM students
WHERE name like 'Anna';
```
