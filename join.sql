create database mvdb;
use mvdb;
create table actor(actid int primary key not null,actname varchar(20),actgender varchar(20));
use mvdb;
insert into actor(actid,actname,actgender) values(502,'srk','male');
insert into actor(actid,actname,actgender) values(503,'kajol','female');
insert into actor(actid,actname,actgender) values(504,'salman','male');
insert into actor(actid,actname,actgender) values(505,'hrithik','male');
use mvdb;
create table director(dirid int primary key not null,dirname varchar(20),dirphone int8);
insert into director(dirid,dirname,dirphone) values(1001,'ram',9947556235);
insert into director(dirid,dirname,dirphone) values(1002,'Steven Spielberg’ ',9947565235);
insert into director(dirid,dirname,dirphone) values(1003,'Hitchcock',9947565235);
insert into director(dirid,dirname,dirphone) values(1004,'adarsh',9947533335);
create table movies(movid int primary key,movtitle varchar(20),movyear int,movlang varchar(20),dirid int,foreign key(dirid) references director(dirid));
insert into movies(movid,movtitle,movyear,movlang,dirid) values(601,'titanic',1991,'english',1002);
insert into movies(movid,movtitle,movyear,movlang,dirid) values(602,'spiderman',2007,'english',1003);
insert into movies(movid,movtitle,movyear,movlang,dirid) values(603,'avengers',2014,'english',1003);
insert into movies(movid,movtitle,movyear,movlang,dirid) values(604,'abc',1999,'hindi',1004);
create table moviecast(actid int,foreign key(actid) references actor(actid),movid int,foreign key(movid) references movies(movid),role varchar(20));
insert into moviecast(actid,movid,role) values(503,604,'heroine');
insert into moviecast(actid,movid,role) values(502,601,'hero');
insert into moviecast(actid,movid,role) values(504,603,'hero');
insert into moviecast(actid,movid,role) values(504,602,'hero');
insert into moviecast(actid,movid,role) values(505,604,'hero');
create table rating(movid int,foreign key(movid ) references movies(movid),revstar int);
insert into rating(movid,revstar)values(602,5);
insert into rating(movid,revstar)values(601,3);
insert into rating(movid,revstar)values(604,4);
select movies.movtitle from director inner join movies on director.dirid=movies.dirid where dirname='Hitchcock';
select movies.movtitle,actor.actid from 
actor join moviecast on actor.actid=moviecast.actid 
join movies on  moviecast.movid=movies.movid  
where actor.actid=( select actor.actid from 
actor join moviecast on actor.actid=moviecast.actid 
join movies on  moviecast.movid=movies.movid group by actor.actid having count(movtitle)>1 ) 
