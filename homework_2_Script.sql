	CREATE TABLE public.students (
 id serial NOT NULL,
 "name" varchar(50) NOT NULL,
 email varchar(50) NOT NULL,
 "password" varchar(50) NOT NULL,
 created_on timestamp NOT NULL,
 CONSTRAINT students_email_key UNIQUE (email),
 CONSTRAINT students_pkey PRIMARY KEY (id)
);

-- Show all information in the table 'Students'
select * from public.students;

--Show ids of the table 'Students'
select id from students;

--Show all names of the table 'Students'
select name from students;

--Show all emails of the table 'Students'
select email from students;

--Show all names and emails of the table 'Students'
select name,email from students;

--Show all ids, names, emails, dates of creation of the table 'Students'
select id,name,email,created_on from students;

--Show all users of the table 'Students' with password 12333
select * from students
where password = '12333';

--Show all users of the table 'Students' which were created on 2021-03-26 00:00:00
select * from students
where created_on = '2021-03-26 00:00:00';

--Show all users of the table 'Students'  which  names contain "Anna" 
select * from students
where name like '%Anna%';

--Show all users of the table 'Students' which names contain "8" in the end of the name
select * from students
where name like '%8';

--Show all users of the table 'Students' which names contain "a" 
select * from students
where name like '%a%'

--Show all users of the table 'Students' which were created on 2021-07-12 00:00:00
select * from students
where created_on ='2021-07-12 00:00:00';

--Show all users of the table 'Students' which were created on 2021-07-12 00:00:00 and have password 1m313
select * from students
where created_on ='2021-07-12 00:00:00' and password = '1m313';

--Show all users of the table 'Students' which were created on 2021-07-12 00:00:00 and name contained "Andrey"
select * from students
where created_on ='2021-07-12 00:00:00' and name like '%Andrey%';

--Show all users of the table 'Students' which were created on 2021-07-12 00:00:00 and name contained "8"
select * from students
where created_on ='2021-07-12 00:00:00' and name like '%8%';

--Show user of the table 'Students' which have id = 110
select * from students
where id = '110';

--Show user of the table 'Students' which have id = 153
select * from students
where id = '153';

--Show users of the table 'Students' which have id > 140
select * from students
where id > 140;

--Show users of the table 'Students' which have id < 130
select * from students
where id < 130;

--Show users of the table 'Students' which have id < 130 or > 188
select * from students
where id < '130' or id > '188';

--Show users of the table 'Students' which have id <= 137
select * from students
where id <= 137;

--Show users of the table 'Students' which have id >= 137
select * from students
where id >= 137;

--Show users of the table 'Students' which have id more than 180 and less than 190
select * from students
where id > 180 and id < 190;

--Show users of the table 'Students' which have id between 180 and 190
select * from students
where id between 180 and 190;

--Show users of the table 'Students' which have password in range 12333, 1m313, 123313
select * from students 
where password in ('12333', '1m313', '123313');

 --Show users of the table 'Students' which were created in range 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 select * from students 
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
 
--Show minimum id of the table 'Students'
select min(id) from students;
select * from students 

--Show maximum id of the table 'Students'
select max(id) from students;

--Show number of users of the table 'Students'
SELECT COUNT(*) AS number_of_users
FROM students;

--Show all names of the table 'Students' order by creation  date ascending order
select id,name, created_on from students
order by created_on asc;

--Show all names of the table 'Students' order by creation  date descending order
select id,name, created_on from students
order by created_on desc;