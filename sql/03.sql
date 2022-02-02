use testAd;

create table course(
	courseId varchar(5) not null,
	courseName varchar(20) not null,
	primary key (courseId)
);

create table student(
	stId varchar(5) not null,
	stName varchar(20) not null,
	courseId varchar(5) not null,
	primary key (stId)
);


insert into course values ('c1','IT'), ('c2','MGT');
insert into student values ('s1', 'Fname01', 'c1'), ('s2', 'Fname02', 'c2'), ('s3', 'Fname03', 'c1'), ('s4', 'Fname04', 'c2');

select * from student;
select * from course;

/*sub query*/
select * from student where courseId = (select courseId from course where courseName = 'IT');
