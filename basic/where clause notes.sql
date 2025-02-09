# where statement to filter our data

select * from employee_salary
where first_name = 'Leslie'
;

select * from employee_demographics
where gender = 'Female'
;

select * from employee_salary
where salary <= 50000
;


select * from employee_demographics
where gender != 'Female'
;


select * from employee_demographics
where gender = 'Male'
;

select * from employee_demographics
where birth_date > '1985-01-01'
;



-- and or not -- logical operators

select * from employee_demographics
where birth_date > '1985-01-01' 
and gender = 'Male'
; 

select * from employee_demographics
where birth_date > '1985-01-01' 
or gender = 'Male'
;

select * from employee_demographics
where birth_date > '1985-01-01' 
or not gender = 'Male'
;

select * from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;
#pamdos


# like statement
-- % and _ wih like statement
select * from employee_demographics
where first_name like 'Jer%'
;
# % anything after that
select * from employee_demographics
where first_name like '%er%'
;

select * from employee_demographics
where first_name like '%a%'
;

# a__ two characters after it specific (_ specified sequence)

select * from employee_demographics
where first_name like 'a__'
;

select * from employee_demographics
where first_name like 'a__%'
;