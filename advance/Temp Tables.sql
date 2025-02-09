SELECT * FROM parks_and_recreation.employee_demographics;
# temp tables in ram

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(50)
);

select * from temp_table;

insert into temp_table 
values("Himanshu","Bisht","Memes Mohabbat"),
("Mukul","Arya","Singham"),
("Ayush","Dhek","Shivaji the Boss"),
("Manish","Bhakuni","One Piece");

select * from temp_table;


# second way temporary tables in ram

select * from employee_salary;


create temporary table salary_over_50k
select * from employee_salary
where salary >= 50000;

select*from salary_over_50k