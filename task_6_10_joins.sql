---10 joins---

--join 1

select us.student_id,
us.first_name,
us.last_name,
sfc.gender,
sfc.date_of_birth,
sfc.email
from university_students as us
inner join student_info_female_candidate as sfc
on us.student_id=sfc.student_id

--join 2

select us.student_id,
us.first_name,
us.last_name,
sp.program_name,
sp.department,
sp.enrollment_year
from university_students as us
inner join student_program as sp
on us.student_id=sp.student_id

--join 3

select si.student_id,
si.first_name,
si.last_name,
si.gender,
si.date_of_birth,
sp.program_name,
sp.department,
sp.enrollment_year,
sc.gpa,
sc.credits_completed,
sc.total_credits_required
from student_information as si
inner join student_program as sp
on si.student_id=sp.student_id
left join student_credits as sc
on si.student_id=sc.student_id

--join 4

select us.student_id,
us.first_name,
us.last_name,
sfc.gender,
sfc.date_of_birth,
sfc.email,
sc.gpa,
sc.credits_completed,
sc.total_credits_required
from university_students as us
inner join student_info_female_candidate as sfc
on us.student_id=sfc.student_id
right join student_credits as sc
on sfc.student_id=sc.student_id

--join 5

select smc.student_id,
smc.first_name,
smc.last_name,
smc.gender,
smc.date_of_birth,
sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status
from student_info_male_candidate as smc
left join student_credits as sc
on smc.student_id=sc.student_id

--join 6

select sfc.student_id,
sfc.first_name,
sfc.last_name,
sfc.gender,
sfc.date_of_birth,
sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status
from student_info_female_candidate as sfc
left join student_credits as sc
on sfc.student_id=sc.student_id

--join 7

select si.student_id,
si.first_name,
si.last_name,
smc.gender,
smc.date_of_birth,
smc.email,
smc.city,
smc.country,
sc.program_name,
sc.gpa,
sc.credits_completed,
sc.total_credits_required
from student_information as si
left join student_info_male_candidate as smc
on si.student_id=smc.student_id
full join student_credits as sc
on smc.student_id=sc.student_id

--join 8

select us.student_id,
us.first_name,
us.last_name,
us.date_of_birth,
us.email,
us.city,
us.country,
sfc.gender,
sfc.date_of_birth,
sfc.email
from university_students as us
full join student_info_female_candidate as sfc
on us.student_id=sfc.student_id
order by student_id desc

--join 9

select sp.student_id,
sp.first_name,
sp.last_name,
sp.program_name,
sp.department,
sp.enrollment_year,
sc.gpa,
sc.credits_completed,
sc.total_credits_required
from student_program as sp
full join student_credits as sc
on sp.student_id=sc.student_id

--join 10

select smc.student_id,
smc.first_name,
smc.last_name,
smc.gender,
smc.date_of_birth,
sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status,
sp.program_name,
sp.department,
sp.enrollment_year
from student_info_male_candidate as smc
left join student_credits as sc
on smc.student_id=sc.student_id
right join student_program as sp
on sp.student_id=sc.student_id
order by date_of_birth asc
