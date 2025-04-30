--joins with agg,having,groupby

select us.student_id,
us.first_name,
us.last_name,
sfc.gender,
sfc.date_of_birth,
sfc.email
from university_students as us
inner join student_info_female_candidate as sfc
on us.student_id=sfc.student_id
group by us.student_id,
us.first_name,
us.last_name,
sfc.gender,
sfc.date_of_birth,
sfc.email
having us.student_id>3000
order by student_id asc


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
group by si.student_id,
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
having sum(si.student_id)>3000
order by student_id asc


select us.student_id,
us.first_name,
us.last_name,
sp.program_name,
sp.department,
sp.enrollment_year
from university_students as us
inner join student_program as sp
on us.student_id=sp.student_id
group by us.student_id,
us.first_name,
us.last_name,
sp.program_name,
sp.department,
sp.enrollment_year
having sum(us.student_id)>5500
order by student_id asc


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
group by smc.student_id,
smc.first_name,
smc.last_name,
smc.gender,
smc.date_of_birth,
sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status
having smc.student_id<7000
order by smc.student_id asc


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
group by si.student_id,
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
having si.student_id>7000



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
group by smc.student_id,
smc.first_name,
smc.last_name,
smc.gender,
smc.date_of_birth,
sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status
having smc.student_id<6000
order by smc.student_id asc



select us.student_id,
us.first_name,
sfc.gender,
sfc.date_of_birth,
sc.gpa,
sc.credits_completed
from university_students as us
inner join student_info_female_candidate as sfc
on us.student_id=sfc.student_id
right join student_credits as sc
on sfc.student_id=sc.student_id
group by us.student_id,
us.first_name,
sfc.gender,
sfc.date_of_birth,
sc.gpa,
sc.credits_completed
having us.student_id>2000
order by us.student_id asc



select sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status,
sp.student_id,
sp.first_name,
sp.last_name,
sp.program_name,
sp.department,
sp.enrollment_year
from student_credits as sc
full join student_program as sp
on sc.student_id=sp.student_id
group by sc.gpa,
sc.credits_completed,
sc.total_credits_required,
sc.scholarship_status,
sp.student_id,
sp.first_name,
sp.last_name,
sp.program_name,
sp.department,
sp.enrollment_year
having sp.student_id<3000 or sp.student_id<9000
order by sp.student_id asc


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
group by si.student_id,
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
having si.student_id<4000 or si.student_id>10000
order by si.student_id desc


select us.student_id,
us.first_name,
us.last_name,
us.gender,
sc.gpa,
sc.credits_completed,
sc.total_credits_required
from university_students as us
inner join student_credits as sc
on us.student_id=sc.student_id
where gender='Other'
group by us.student_id,
us.first_name,
us.last_name,
us.gender,
sc.gpa,
sc.credits_completed,
sc.total_credits_required
having us.student_id<900 or us.student_id>5000
order by us.student_id asc
