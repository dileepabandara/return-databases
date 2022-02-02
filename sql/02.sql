Create database testAD;

use testAD;

create table employee(
	eId int,
	eName varchar(20),
	eSalary decimal(9,2),
	eGender varchar(10),
);

insert into employee values ('3','Fname01',75000.00,'Male');
insert into employee values ('5','Fname02',23000.00,'Female');
insert into employee values ('1','Fname03',95000.00,'Male');
insert into employee values ('2','Fname04',33000.00,'Male');
insert into employee values ('4','Fname05',57000.00,'Female');

select * from employee;

select * from employee where eId = 2;

alter table employee alter column eId int not null;

/* Clustered index for eId*/
alter table employee add constraint primarykeyofEmpl primary key (eId);

/* Clustered index for eSalary*/
create clustered index indexExample on employee (eGender, eSalary asc);

select * from employee where eSalary > 30000 and eSalary < 70000;
