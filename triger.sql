create database shop;
use shop;
create table stock(pid int,pname varchar(20),price int,brand varchar(20),quantity int);
insert into stock(pid,pname,price,brand,quantity)values(501,'soap',25,'lux',6),(502,'cheep',10,'soman',8),(503,'kannadi',40,'sasi',10),
(504,'powder',72,'cuticura',12);
create table purchase(custid int,cname varchar(20),pitem varchar(20),quant int);
insert into purchase(custid,cname,pitem,quant)values(1001,'sunil','cheep',4);
insert into purchase(custid,cname,pitem,quant)values(1001,'sunil','cheep',2);
select * from stock;

/*CREATE DEFINER=`root`@`localhost` TRIGGER `shop`.`purchase_AFTER_INSERT` AFTER INSERT ON `purchase` FOR EACH ROW
BEGIN

set SQL_SAFE_UPDATES=0;
update stock set quantity=quantity-new.quant where pname=new.pitem;
END*/
