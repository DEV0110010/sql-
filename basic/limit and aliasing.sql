SELECT * FROM parks_and_recreation.employee_demographics;

# limit and aliasing 
# limit specify how many rows we want on table

select * from employee_demographics
order by age desc
limit 3;

select * from employee_demographics
order by age desc
limit 2, 1;
# start at 2 and select one after that


-- aliasing used to chnage name of column

select gender, avg(age) as aveage from employee_demographics
group by gender
having aveage>40;