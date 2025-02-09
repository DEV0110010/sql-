SELECT * FROM parks_and_recreation.employee_demographics;

# window functions 

select gender , avg(salary) from employee_demographics as ed
join employee_salary as es 
on ed.employee_id = es.employee_id
group by gender
; 

# average salary of everybody
select gender , avg(salary) over() from employee_demographics as ed
join employee_salary as es 
on ed.employee_id = es.employee_id
; 


select ed.first_name,ed.last_name, gender , avg(salary) over(partition by gender) from employee_demographics as ed
join employee_salary as es 
on ed.employee_id = es.employee_id
; 









select ed.first_name,ed.last_name, gender ,
sum(salary) over(partition by gender) from employee_demographics as ed
join employee_salary as es 
on ed.employee_id = es.employee_id
; 



select ed.first_name,ed.last_name, gender , salary,
sum(salary) over(partition by gender order by ed.employee_id) as rolling_total from employee_demographics as ed
join employee_salary as es 
on ed.employee_id = es.employee_id
; 





# rank() new number positionally, dense rank() new number numerically
select ed.employee_id, ed.first_name,ed.last_name, gender , salary,
row_number() over(partition by gender order by salary desc) as row_avg,
rank()  over(partition by gender order by salary desc) as rank_rank,
dense_rank() over(partition by gender order by salary desc) as rank_dense
from employee_demographics as ed
join employee_salary as es 
on ed.employee_id = es.employee_id
; 