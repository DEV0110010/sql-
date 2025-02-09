SELECT * FROM parks_and_recreation.employee_demographics;


# Group by and order by
-- group by group by rows having similar values and we can run aggregate functions

SELECT gender 
 FROM employee_demographics
GROUP BY gender
;

SELECT gender , avg(age), max(age), min(age)
 FROM employee_demographics
GROUP BY gender
;
SELECT occupation
FROM employee_salary
GROUP BY occupation
;
SELECT occupation , salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender , avg(age), max(age), min(age), count(age)
 FROM employee_demographics
GROUP BY gender
;



-- order by sort the result set either in ascending or descending order

select * from employee_demographics
order by first_name asc;

select * from employee_demographics
order by first_name desc;


select * from employee_demographics
order by gender, age desc;

select * from employee_demographics
order by age, gender; 
# here age is use to orser as unique values

select * from employee_demographics
order by 5,4;
# using colum position not recommended but used
