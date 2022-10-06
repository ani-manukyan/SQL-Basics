-- to keep all my test and homework queries in one place I'm creating a new db
-- create database [db name]
-- to delete we write drop database/table/schema [name]

use tempdb
GO

Create database data_analytics
GO

use data_analytics
GO

-- Schemas are usually created for security purposes to limit access to different users
-- create schema [schema name]

CREATE SCHEMA marketing
go

CREATE SCHEMA finance
go
​
DROP SCHEMA finance
go
​
​/* In a relational database, data is stored in tables of columns and rows("relations"). 
SQL is considered a relational database. */
-- create table schemaname.tablename(col1 datatype,col2 datatype ,etc...)
-- mentioning schema name is not mandatory
​
create TABLE finance.person
(
person_id int,
first_name varchar(50),
lastname_name varchar(50),
birth_date date,
passport_num char(9)
)
go
​
​-- we use int (integer) if we expect the column to have numbers
-- we use varchar for variable characters and give limits for the characters not to occupy more space than needed
-- we use char is we know the exact number of characters
-- we can also put not null, if we want to make sure the column doesn't have empty rows ​

CREATE TABLE person
(
person_id int not null,
first_name varchar(50),
lastname_name varchar(50),
birth_date date,
passport_num char(9)
)
go
​
DROP TABLE person
GO
​
-- Inserting data into tables
-- insert into table_name(col1,col2,...) values(value1,value2 ....),(value1,value2 ....)

insert into finance.person(person_id,first_name,last_name,birth_date)
values(1,'Jack','Brown','1990-01-01'),
(2,'John','Black','1980-01-01')
go
​
-- Retrieving data from tables
-- select col1,col2  ,etc .. from tablename  or select * from tablename
​
select first_name from finance.person 
select * from finance.person
​
-- Deleting rows in the table
-- delete from [tablename]
​
delete from finance.person
​
-- filtering the retrieving results 
-- select * from [tablename] where [col_name] = [data]

select * from finance.person
where person_id=1
​
​
-- Editing table value
-- update [tablename] set col1= 'yyyy' where col1='xxx'

update finance.person set passport_num='AN040404'
where person_id=1
select * from finance.person
