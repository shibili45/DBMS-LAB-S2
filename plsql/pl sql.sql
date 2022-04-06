create database mark;
use mark;
create table student(id int primary key,name varchar(20),m1 int,m2 int,m3 int,status varchar(10));
call details(500,'ram',60,50,70);
call details(600,'sam',35,20,60);
call details(700,'dam',35,20,60);
select *,perc(m1,m2,m3) from student;