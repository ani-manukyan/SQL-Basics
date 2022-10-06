-- Exercises
-- N1 create schema  fin on Sql_group database
​
CREATE DATABASE sql_group
go
​
Use sql_group
go
​
Create Schema fin
go
​
​
-- N2 create table on schema fin Employee(id,firstname,lastname,address,zipcode)
​
CREATE TABLE fin.employee
(
employee_id int,
firstname varchar(50),
lastname varchar(50),
address VARCHAR(100),
zipcode int,
)
GO
​
-- N3 Insert 10 rows of data
​
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
​
select * from fin.employee
go
​
-- N4 update one of the rows, change ZipCode to '00012'
​
Update fin.employee set Zipcode = '00012'
where Firstname = 'John'