/*----UC1--------*/
create database payroll_service;
show databases;
use payroll_service

/*-------UC2-------*/
create table employee_payroll(
	id int not null auto_increment,
    name varchar(50) not null,
    salary Double not null,
    startDate Date not null,
    primary key(id)
);

desc employee_payroll;

/*--------UC3----------*/
insert into employee_payroll(name, salary, startDate) values('Sachin', 50000.0, '2022-06-025');
insert into employee_payroll(name, salary, startDate) values('Vignesh', 60000.0, '2022-06-15');
insert into employee_payroll(name, salary, startDate) values('Rahul', 40000.0, '2022-06-27');
insert into employee_payroll(name, salary, startDate) values('Rishab', 55000.0, '2022-06-29');

/*--------UC4----------*/
select * from employee_payroll;

/*--------UC5----------*/
select salary from employee_payroll where name = "Vignesh";
select * from employee_payroll where startDate between cast('2022-01-01' as date) and Date(now());

/*--------UC6----------*/
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender = 'M' where name = 'Sachin';
update employee_payroll set gender = 'M';

/*--------UC7----------*/
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;

select avg(salary) from employee_payroll;

select min(salary) as lowSalary from employee_payroll;
select max(salary) as highSalary from employee_payroll;

select count(gender) from employee_payroll where gender = 'M' group by gender;