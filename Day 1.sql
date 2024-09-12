CREATE database school;
use school
CREATE table students(
stud_id int primary key,
first_name varchar(100),
last_name varchar(100),
email varchar(255)
);
select * from students;
insert into Students (stud_id,first_name,last_name,email)
values (001,'Jane','Doe','janedoe@gmail.com');

insert into Students (stud_id,first_name,last_name,email)
values (002,'john','Doe','johndoe@gmail.com'),
(003,'Mercy','Rono','rono@gmail.com'),
(004,'Stan','lee','lee@gmail.com');