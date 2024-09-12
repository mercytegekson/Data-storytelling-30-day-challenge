create database school;

use school;

# Create a Table Students

create table Students (
stud_id int primary key,
first_name varchar(100),
last_name varchar(100),
email varchar(255)
);
select * FROM Students;
select * from Students;

insert into Students (stud_id,first_name,last_name,email)
values (001,'Jane','Doe','janedoe@gmail.com');

insert into Students (stud_id,first_name,last_name,email)
values (002,'john','Doe','johndoe@gmail.com'),
(003,'Mercy','Rono','rono@gmail.com'),
(004,'Stan','lee','lee@gmail.com');

# Add a new column named EnrollmentDate to the Students table, which stores the date a student enrolled. Use the DATE data type.
ALTER TABLE Students
ADD EnrollmentDate DATE;

INSERT INTO Students (stud_id, first_name, email, EnrollmentDate)
VALUES (5, 'Alice', 'alice.johnson@example.com', '2024-09-12');

UPDATE students
SET EnrollmentDate = '2024-01-15'
WHERE stud_id = 1;

UPDATE students
SET EnrollmentDate = '2024-08-01'
WHERE stud_id IN (2, 3, 4);


# Modify the Email column to increase its maximum length to 300 characters.
ALTER TABLE Students 
MODIFY email VARCHAR(300);

# Drop the LastName column from the Students table.
ALTER TABLE Students
DROP COLUMN last_name;

select * FROM Students;
