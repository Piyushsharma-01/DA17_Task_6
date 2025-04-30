create table university_students(
student_id int primary key,
first_name varchar,
last_name varchar,
gender varchar,
date_of_birth date,
email varchar,
phone_number varchar,
address varchar,
city varchar,
state varchar,
country varchar,
postal_code bigint,
program_name varchar,
department varchar,
enrollment_year bigint,
graduation_year bigint,
current_year int,
gpa float,
credits_completed bigint,
total_credits_required bigint,
scholarship_status varchar,
extracurricular_activities varchar,
nationality varchar
)

select * from university_students

--Table 1: 

create table student_information as
(select student_id,first_name,last_name,gender,date_of_birth,email,city,state,country,program_name,
phone_number,address,postal_code,extracurricular_activities,nationality
from university_students)

select * from student_information

--Table 2: 
create table student_program as 
(select student_id,first_name,last_name,program_name,department,enrollment_year,graduation_year,current_year
from university_students)

select * from student_program

--Table 3: 
create table student_credits as
(select student_id,first_name,last_name,program_name,department,gpa,credits_completed,total_credits_required,scholarship_status
from university_students)

select * from student_credits

--Table 4: 
create table student_info_male_candidate as
(select student_id,first_name,last_name,gender,date_of_birth,email,city,state,country,program_name,
department,phone_number,address,postal_code,scholarship_status,extracurricular_activities,nationality
from university_students
where gender='Male')

select * from student_info_male_candidate

--Table 5: 
create table student_info_female_candidate as 
(select student_id,first_name,last_name,gender,date_of_birth,email,city,state,country,program_name,
department,phone_number,address,postal_code,scholarship_status,extracurricular_activities,nationality
from university_students
where gender='Female')

select * from student_info_female_candidate

