SELECT * FROM parks_and_recreation.employee_demographics;


# difference between having filter on aggregate functions and where fliter on columns
select gender , avg(age)
from employee_demographics
group by gender
having avg(age) > 40
;


select occupation , avg(salary)
from employee_salary
where occuption like '%managers%'
group by occupation
having avg(salary) > 75000
;