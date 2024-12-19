create database classroom

CREATE table Emp_details_view(
employee_id int,
job_id int,
manager_id int,
location_id int,
first_name varchar(50),
last_name  varchar(50),
salary decimal(5.2),
commission_pct decimal (5.2),
department_name varchar(50),
Job_Title varchar(50),
City varchar(50),
State varchar(50),
State_Province varchar(50), 
Country_Name varchar(50),
Region_Name varchar(50)
);

select*
from emp_details_view;