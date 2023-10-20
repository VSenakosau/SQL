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
## 11. Show all users of the table 'Students' which names contain "8" in the end of the name
```
SELECT * FROM students
WHERE name LIKE '%8';
```
## 12. Show all users of the table 'students' which names contain "a"
```
SELECT * FROM users
WHERE name LIKE '%a%';
```
## 13. Show all users of the table 'students' which were created on 2021-07-12 00:00:00
```
SELECT * from students
WHERE created_on = '2021-07-12 00:00:00';
```
## 14. Show all users of the table 'students' which were created on 2021-07-12 00:00:00 and have password 1m313
```
SELECT * from students
WHERE created_on = '2021-07-12 00:00:00' and passwor = '1m313';
```
## 15. Show all users of the table 'students' which were created on 2021-07-12 00:00:00 and name contained "Andrey"
```
SELECT * from students
WHERE created_on = '2021-07-12 00:00:00' and name LIKE '%Andrey%';
```
## 16. Show all users of the table 'students' which were created on 2021-07-12 00:00:00 and name contained "8"
```
SELECT * from students
WHERE created_on = '2021-07-12 00:00:00' and name LIKE '%8%';
```
## 17. Show user of the table 'students' which have id = 110
```
SELECT id, name FROM students
WHERE id = '110';
```
## 18. Show user of the table 'students' which have id = 153
```
SELECT id, name FROM students
WHERE id = '153';
```
## 19. Show users of the table 'students' which have id > 140
```
SELECT id, name FROM students
WHERE id > '140';
```
## 20. Show users of the table 'students' which have id < 130
```
SELECT id, name FROM stedents
WHERE id < '130';
```
## 21. Show users of the table 'students' which have id < 127 or > 188
```
SELECT id, name FROM students
WHERE id < 127 or > id > 188;
```
## 22. Show users of the table 'Students' which have id <= 137
```
SELECT id, name FROM students
WHERE id <= 137;
```
## 23. Show users of the table 'Students' which have id >= 137
```
SELECT id, name FROM students
WHERE id >= 137;
```
## 24. Show users of the table 'Students' which have id more than 180 and less than 190
```
SELECT id, name FROM students
WHERE id > 137 and id <190;
```
## 25. Show users of the table 'students' which have id between 180 and 190
```
SELECT id, name FROM students
WHERE id between 180 and 190;
```
## 26.  Show users of the table 'Students' which have password in range 12333, 1m313, 123313
```
SELECT id, name FROM students
WHERE password IN ('12333', '1m313', '123313');
```
## 27. Show users of the table 'Students' which were created in range 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
```
SELECT id, name FROM students
WHERE created_in IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
```
## 28. Show minimum id of the table 'Students'
```
SELECT MIN(id) FROM students;
```
## 29. Show maximum id of the table 'Students'
```
SELECT MAX(id) FROM students;
```
## 30. Show number of users of the table 'Students'
```
SELECT COUNT(*) AS number_of_users
FROM students;
```
## 31. Show all users id, name, created_on. Sort by ascending order of the date the user was added.
```
SELECT id, name, created_on FROM students
ORDER BY created_on ASC;
```
## 32. Show all id, name, created_on. Sort by descending order of the date the user was added.
```
SELECT id, name, created_on FROM students
ORDER BY created_on DESC;
```
