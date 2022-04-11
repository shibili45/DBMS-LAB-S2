create database incentive;
use incentive;
create table insc(id int,name varchar(10),target int8);
insert into insc values(101,"sunil",15000);
insert into insc values(102,"vyshnav",20000);
select *,incentive(id,target) from insc where id=101;
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `incentive`(id int,target int8) RETURNS bigint(20)
BEGIN
declare inscentive int8;
if(target>10000  and target<13000) then
set inscentive=500;
elseif(target>13000 and target<16000) then
set inscentive=700;
elseif(target>16000) then
set inscentive=1000;

end if;
RETURN inscentive;
END
*/
