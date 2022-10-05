-- create schama  fin on DB  Sql_group
-- create table on schema fin Employee(id,firstname,lastname,address,zipcode)
-- insert anel 10-20 tox
-- update anel en  ZipCode darcnel ayn 00012
--  select anel mnacac toxery
GO

-- task#1
use master
go
CREATE DATABASE DB_SQL_Group
go
use DB_SQL_Group
go
CREATE SCHEMA fin
go


-- task#2
CREATE TABLE fin.employee
(
employee_id int,
firstname varchar(50),
lastname varchar(50),
address VARCHAR(100),
zipcode int,
)
GO


-- task#3
insert into fin.employee(employee_id, firstname, lastname, address, zipcode)
values
(81001234,'John','Smith','Bakers Street 15','0012'),    
(91002345,'Jane','Smith','Bakers Street 15', 0012),
(11003456,'Jack','Brown','Boulevard Street 12', 0014),
(21004567,'Kate','Brown','Boulevard Street 12', 0014),
(31005678,'Brad','Pitt','Hollywood street 78', 0015),
(41006789,'Angelina','Jolie','Hollywood street 13', 0016),
(51007890,'Steve','Spenser','Abbey Road 18', 0017),
(61008901,'Monica','Black','Second street 16', 0018),
(71009012,'Sophia','White','Oaklin 44', 0022),
(81000123,'Alex','White','Oaklin 44', 0022),
(91001234,'Hayley','Aniston','North street 43', 0040),
(11002345,'Dylan','Bond','West street 23', 0042)
go

select * from fin.employee
go

-- after visualization i noticed that zeros disappeared in zipcode. I have used int, char, and even put '' like '0012', but still shows 12.

-- task#4
update fin.employee set zipcode=00012
where employee_id=11002345
go

-- task#5
select * from fin.employee
where firstname='John'
go

select * from fin.employee
where firstname='Jack'
GO

select * from fin.employee
where firstname='Jane'
GO

select * from fin.employee
where firstname='Kate'
GO

select * from fin.employee
where firstname='Brad'
GO

select * from fin.employee
where firstname='Angelina'
GO

-- using or to have all in one table
select * from fin.employee
where firstname='Kate' or firstname='John' or firstname='Monica' or firstname='Steve'
GO

-- what's the formula for saying "except"? like choose all rows except thiso one. 