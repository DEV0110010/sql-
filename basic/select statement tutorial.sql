
# select all
select * 
from parks_and_recreation.employee_demographics;





select first_name, 
last_name, 
birth_date,
age,
(age + 10) *10 +10
from parks_and_recreation.employee_demographics;

# PEMDAS peranthesis exponents multiply divide addition subtraction

# distinct slect only unique values within column

select distinct first_name, age, gender
from parks_and_recreation.employee_demographics;

select distinct gender
from parks_and_recreation.employee_demographics;




