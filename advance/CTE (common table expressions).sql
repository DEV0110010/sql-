SELECT * FROM parks_and_recreation.employee_demographics;
# advance common table expressions

with cte_example as
(
select gender , avg(salary) as average_salary, max(salary) max_salary, sum(salary) as sum, min(salary)min_salary,count(salary) as count
from employee_demographics as ed
join employee_salary as es
on ed.employee_id=es.employee_id
group by gender
)
select * from cte_example
;

# readability

with cte_example as
(
select gender , avg(salary) as average_salary, max(salary) max_salary, sum(salary) as sum, min(salary)min_salary,count(salary) as count
from employee_demographics as ed
join employee_salary as es
on ed.employee_id=es.employee_id
group by gender
)
select avg(average_salary) from cte_example
;

# CTE to increase readability
with cte_example as
(
select gender, employee_id, birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
cte_example2 as(
select * from employee_salary
where salary > 50000
)
select * from cte_example 
join cte_example2 
on cte_example.employee_id=cte_example2.employee_id
;


with cte_example(gender, avg_sal, max_sal, min_sal, sum_sal, count) as
(
select gender , avg(salary) average_salary, max(salary) max_salary, sum(salary) sum, min(salary)min_salary,count(salary)  count
from employee_demographics as ed
join employee_salary as es
on ed.employee_id=es.employee_id
group by gender
)
select * from cte_example
;


