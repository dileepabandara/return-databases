use testAd;

create table course(
	courseId varchar(5),
	courseName varchar(20),
);

create table student(
	stId varchar(5),
	stName varchar(20),
	courseId varchar(5),
);


insert into course values ('c1','IT'), ('c2','MGT');
insert into student values ('s1', 'Fname01','c1'), ('s2', 'Fname02','c2'), ('s3', 'Fname03','c1'), ('s4', 'Fname04','c2');

select * from student;
select * from course;

/*sub query*/
select * from student where courseId = (select courseId from course where courseName = 'IT');

/*inner join tables*/
select student.stName, course.courseId
from student
inner join course on student.courseId = course.courseId;

insert into course values ('c3', 'HR'), ('c4', 'ENG');
insert into student(stId,stName) values ('s5', 'Fname07'), ('s6', 'Fname08');

select student.stName, course.courseName
from student
full outer join course on student.courseId = course.courseId;