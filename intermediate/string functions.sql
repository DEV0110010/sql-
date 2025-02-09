SELECT * FROM parks_and_recreation.employee_demographics;
# String functions

select length('skyfall');

SELECT first_name, length(first_name) FROM parks_and_recreation.employee_demographics
order by 2
;

SELECT first_name, upper(first_name) FROM parks_and_recreation.employee_demographics
order by 2
;



# trim- basically going to take the white space
select trim("          sky          ");

select rtrim("          sky          ");

select ltrim("          sky          ");





select first_name, left(first_name , 4) from employee_demographics;

select first_name, right(first_name , 4) from employee_demographics;




# substrings(1-specify position, 2- to where we want to go)
select first_name, substring(first_name,3,2), substring(birth_date,6,2) as month from employee_demographics;






#replace
select first_name, replace(first_name,"a","z") 
from employee_demographics;




# locate - locates sequence we are looking for

select locate('x',"alexander");
select first_name, locate("A",first_name) 
from employee_demographics;




select concat( first_name," ",last_name) as full_name
from employee_demographics;