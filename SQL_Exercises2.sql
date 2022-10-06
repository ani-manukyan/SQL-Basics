--N1 Create Schema act

Use sql_group
go
create schema act
go
​
/*
N2 Create Table act.Customer with the folowing columns
(Customerid number should not be null,first_name variable type,
 last_name variable type max simbols 50,
 age number,maritial status 1 symbol,updated date datetime2)
*/
​
create table act.Customer
(
Customerid int not null,
first_name varchar (25),
last_name varchar (50),
Age tinyint,
martialstatus char(1),
updateddate datetime2
)
select * from act.Customer

-- we choose int not null as it's important to have that information
-- varchar (25) means we assue that first name won't have more than 25 characters and we put limits to save data storage
-- age tinyint, cause age won't be more than 255
-- datetime2 shows with seconds accuracy, we use it here to understand how it works, otherwise not necessary
​-- after select we'll see an empty table

-- N3 now let's insert data 
Insert into act.Customer values
(1, 'Jack', 'Black', 22, 'S', '01.22.2001'),
(2, 'John', 'White',25, 'M', '03.15.2012'),
(3, 'Jane', 'Brown', 30, 'M', '05.12.2011')

Insert into act.Customer(Customerid, first_Name, last_name, Age, martialstatus)
values
(4, 'Suzie', 'Smith', 29, 'M'),
(5, 'Anna',  'Jackson', 31, 'S'),
(6, 'Laura', 'Johnson', 46, 'M')

Insert into act.Customer(Customerid, first_Name, last_name, martialstatus, updateddate)
values(7, 'Natalie', 'Clark', 'M', '09.26.2008')
​
select * from act.Customer
-- after retrieving data you can see we have different rows with different info, and some columns have null values​

-- N4 Update null columns replacing them with 'unknown'/0/3000-01-01  values
​
Update act.Customer set Last_Name = 'unknown'
where Last_Name is null
go
​
Update  act.Customer set [Age]='0'
where Age is null
go
​
Update act.Customer set updateddate = '3000-01-01'
where updatedDate is null
go

select * from act.Customer

-- you can see that we filled in all null cells
​
-- N5 Delete any row where the column has 'unknown'/0/3000-01-01 values. 
​
Delete from act.Customer
where Last_Name ='unknown'
go
​
Delete  from act.Customer
where Age='0'
go
​
Delete  from act.Customer
where updateddate='3000-01-01'
go
​
select * from act.Customer

-- and this is how we delete rows from the table