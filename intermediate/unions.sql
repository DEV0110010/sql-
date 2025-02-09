SELECT * FROM parks_and_recreation.employee_demographics;

# union allows to combine rows together from separate or same tables
# wrong method
SELECT age, gender FROM parks_and_recreation.employee_demographics
union 
select first_name, last_name from employee_salary
;

# right metod
SELECT first_name, last_name FROM parks_and_recreation.employee_demographics
union 
select first_name, last_name from employee_salary
;



# all values
SELECT first_name, last_name FROM parks_and_recreation.employee_demographics
union all
select first_name, last_name from employee_salary
;


# label
SELECT first_name, last_name, 'old' as label FROM parks_and_recreation.employee_demographics
where age > 50 
union
select first_name, last_name, 'highly paid employee' as label 
from employee_salary
where salary > 70000
;



SELECT first_name, last_name, 'old man' as label FROM employee_demographics
where age > 40 and gender = 'Male'
union
SELECT first_name, last_name, 'old lady' as label FROM employee_demographics
where age > 40 and gender = 'Female'
union
select first_name, last_name, 'highly paid employee' as label 
from employee_salary
where salary > 70000
;

SELECT first_name, last_name, 'old man' as label FROM employee_demographics
where age > 40 and gender = 'Male'
union
SELECT first_name, last_name, 'old lady' as label FROM employee_demographics
where age > 40 and gender = 'Female'
union
select first_name, last_name, 'highly paid employee' as label 
from employee_salary
where salary > 70000
order by first_name, last_name
;

