SELECT * FROM parks_and_recreation.employee_demographics;

-- stored procedures - are way to store your sql code


select * 
from employee_salary
where salary >= 50000;


create procedure lare_salaries()
select * 
from employee_salary
where salary >= 50000;


call large_salaries();



# best practice

delimiter $$ 
create procedure large_salaries2()
begin
	select * 
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary > 10000;
end $$
delimiter ;

call large_salaries2();


# parameters are variables that are passed as an input into a store procedure that allows the store procedure to take an input value and place iti in our code
delimiter $$ 
create procedure large_salaries4(employee_id_param int)
begin
	select salary
	from employee_salary
	where employee_id = employee_id_param;
end $$
delimiter ;

call large_salaries4(1)