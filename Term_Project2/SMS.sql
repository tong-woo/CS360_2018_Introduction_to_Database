#clear formor table, it can be sourced again


DROP TABLE COMPANY;
DROP TABLE STOCK;
DROP TABLE SALEVOLUMN;
DROP TABLE EXCHANGEPLACE;
DROP TABLE INDUSTRY;


#table creation

CREATE TABLE COMPANY (
	CName VARCHAR(100) PRIMARY KEY,
	Chairman VARCHAR(30),
	StockID VARCHAR(6));

CREATE TABLE STOCK (
	SID VARCHAR(6) PRIMARY KEY,
	SName VARCHAR(100),
	SPrice decimal(5,2));

CREATE TABLE SALEVOLUMN (
	SName VARCHAR(100) PRIMARY KEY,
	Volumn integer(7));

CREATE TABLE EXCHANGEPLACE (
	SName VARCHAR(100) PRIMARY KEY,
	Place VARCHAR(20));

CREATE TABLE INDUSTRY (
	SName VARCHAR(100) PRIMARY KEY,
	Industry VARCHAR(20));


#insert values

insert into COMPANY(CName, Chairman, StockID) values('China United Network Communications Limited', 'WangXiaochu', '600050');
insert into COMPANY(CName, Chairman, StockID) values('China Vanke Co.,Ltd ', 'YuLiang', '000002');
insert into COMPANY(CName, Chairman, StockID) values('Bank Of China Limited', 'ChenSiqing', '601988');
insert into COMPANY(CName, Chairman, StockID) values('The People Insurance Company (Group) of China Limited', 'LiaoJianmin', '601319');
insert into COMPANY(CName, Chairman, StockID) values('China Evergrande Group', 'XUJiayin', '033333');


#insert values

insert into STOCK(SID, SName, SPrice) values('600050', 'CUCC', 5.31);
insert into STOCK(SID, SName, SPrice) values('000002', 'VANKE', 25.18);
insert into STOCK(SID, SName, SPrice) values('601988', 'BOC', 3.61);
insert into STOCK(SID, SName, SPrice) values('601319', 'PICC', 6.29);
insert into STOCK(SID, SName, SPrice) values('033333', 'Evergrande', 23.75);


#insert salevolumn

insert into SALEVOLUMN(SName, Volumn) values('CUCC', 276589);
insert into SALEVOLUMN(SName, Volumn) values('VANKE', 92730);
insert into SALEVOLUMN(SName, Volumn) values('BOC', 307179);
insert into SALEVOLUMN(SName, Volumn) values('PICC', 1025503);
insert into SALEVOLUMN(SName, Volumn) values('Evergrande', 2547);


#insert Exchange place

insert into EXCHANGEPLACE(SName, Place) values('CUCC', 'ShangHai');
insert into EXCHANGEPLACE(SName, Place) values('VANKE', 'ShenZhen');
insert into EXCHANGEPLACE(SName, Place) values('BOC', 'ShangHai');
insert into EXCHANGEPLACE(SName, Place) values('PICC', 'ShangHai');
insert into EXCHANGEPLACE(SName, Place) values('Evergrande', 'HongKong');



#insert into industry

insert into INDUSTRY(SName, Industry) values('CUCC', 'telecom');
insert into INDUSTRY(SName, Industry) values('VANKE', 'realestate');
insert into INDUSTRY(SName, Industry) values('BOC', 'BANK');
insert into INDUSTRY(SName, Industry) values('PICC', 'Insurance');
insert into INDUSTRY(SName, Industry) values('Evergrande', 'Culture');
insert into INDUSTRY(SName, Industry) values('CMCC', 'telecom');



# selection
/*
select * from COMPANY;
*/
 
#projection
/*
select SName 
from EXCHANGEPLACE
where Place='ShangHai'
*/

#insertion
/*
insert into INDUSTRY(SName, Industry) values('CTCC', 'telecom');
*/

#update
/*
update EXCHANGEPLACE
set place='XiangGang'
where place='HongKong'
*/

#delete
/*
delete from EXCHANGEPLACE
where place='ShenZhen'
*/

#join
/*
select V.Volumn, S.SName
from SALEVOLUMN V, STOCK S
where V.SName=S.SName
*/


#subquery
/*
select SName, Industry
from INDUSTRY
where SName NOT IN (select SName from STOCK)
*/

#aggregation
/*
select place, COUNT(place)
from EXCHANGEPLACE
Group by place
*/












































