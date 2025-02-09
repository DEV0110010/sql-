SELECT * FROM parks_and_recreation.employee_demographics;

# joins - allows to bind two or more table having similar column data

# inner joins return rows that are the same in both columns in both table

SELECT * FROM employee_demographics as ed
inner join employee_salary as es
	on ed.employee_id = es.employee_id;
    
    
    
    
SELECT ed.employee_id, age, occupation FROM employee_demographics as ed
inner join employee_salary as es
	on ed.employee_id = es.employee_id;
    
    
    
    # outer joins - left join- take everything from left table only reurn mathches from right table  and right join - vice versa
SELECT * FROM employee_demographics as ed
left outer join employee_salary as es
	on ed.employee_id = es.employee_id; 
    
    
SELECT * FROM employee_demographics as ed
right outer join employee_salary as es
	on ed.employee_id = es.employee_id; 
    
    
# self join where we tie the table to itself
# asignment to different
select * from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 =emp2.employee_id;

select emp1.employee_id as emp_boss, emp1.first_name as name_boss, 
emp1.last_name as lastname_boss, emp2.employee_id as emp_worker, 
emp2.first_name as name_worker, emp2.last_name as lastname_worker 
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 =emp2.employee_id;



# joining multiple tables together
select * from employee_demographics as ed
inner join employee_salary as es
	on ed.employee_id = es.employee_id
inner join parks_departments as pd
	on es.dept_id = pd.department_id 
;

select * from parks_departments; 
# reference table

