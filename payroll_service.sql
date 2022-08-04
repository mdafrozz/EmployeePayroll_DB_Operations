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