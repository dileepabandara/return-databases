create database hdse;
use hdse;
create table employee(
	empId varchar(10),
	fName varchar(20),
	lName varchar(20),
	dob date,
	salary decimal(7,2),
	hireDate date,
);

insert into employee values ('e001','Fname01','Lname01','1994-07-06',75000.00,'2018-04-05');
insert into employee values ('e002','Fname02','Lname02','1989-05-21',75000.00,'2018-06-05');
insert into employee values ('e003','Fname03','Lname03','1992-07-06',89000.56,'2020-02-03');
insert into employee values ('e004','Fname04','Lname04','1993-03-06',78256.56,'1999-04-05');
insert into employee values ('e005','Fname05','Lname05','1980-07-06',56236.56,'2015-09-25');
insert into employee values ('e006','Fname06','Lname06','1989-12-06',96256.56,'2016-12-24');
insert into employee values ('e007','Fname07','Lname07','2000-12-06',42000.56,'2009-07-07');
insert into employee values ('e008','Fname08','Lname08','1999-11-06',36214.56,'2011-04-05');
insert into employee values ('e009','Fname09','Lname09','1991-02-06',23654.56,'2013-12-25');
insert into employee values ('e010','Fname10','Lname10','1990-01-06',95256.56,'2011-04-05');
insert into employee values ('e011','Fname11','Lname11','1988-05-06',57639.56,'2011-08-17');

select * from employee;

select fname, salary from employee where salary > 50000;

select fname, dob from employee where year(dob) > '1999';

select fname+' '+lname as [Full Name] from employee; 

select convert(nvarchar,dob,100) from employee;

select fname, lname from employee where fname like 's%';