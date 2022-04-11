create database tbl;
use tbl;
create table details(roll int,name varchar(10));
call name(101);
call name(102);
select * from details;
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `name`(roll int)
BEGIN
if(roll=101) then
	insert into details values(roll,"sunil");
elseif(roll=102) then
	insert into details values(roll,"vyshnav");
end if;
END
*/