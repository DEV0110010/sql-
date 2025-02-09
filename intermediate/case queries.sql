SELECT * FROM parks_and_recreation.employee_demographics;

# case statements

select first_name, last_name,
case
	when age <= 30 then "Young"
end
from employee_demographics;


select first_name, last_name,
case
	when age between 31 and 50 then "Old"
    when age >= 50 then "age for retirement"
end as age_data
from employee_demographics;



-- pay increase and bonus

select first_name,last_name,salary,
case
	when	salary < 50000 then salary + (salary*0.5)
    when  salary > 50000 then salary + (salary*0.9)
end as new_salary
from employee_salary;

select first_name,last_name,salary,
case
	when	salary < 50000 then salary + (salary*0.5)
    when  salary > 50000 then salary + (salary*0.9)
end as new_salary,
case
	when dept_id = 6 then salary*1
end as bonus
from employee_salary;

