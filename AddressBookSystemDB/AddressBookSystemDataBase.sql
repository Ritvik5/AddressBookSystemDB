﻿create database AddressBook;

select Name from sys.databases;

use AddressBook;

create table AddressBook_System
(
FirstName Varchar(100) not null,
LastName Varchar(100) not null,
Address Varchar(100),
City Varchar(50),
State Varchar(50),
Zip int,
PhoneNumber BigInt,
Email Varchar(100)
);

select * from AddressBook_System;

insert into AddressBook_System values
('Ritvik','Sharma','Street No. 64','Bangalore','Karnataka',560056,8888800000,'Abcd@gmail.com'),
('Babu','Bhaiya','Street No. 65','Bangalore','Karnataka',560056,8888877777,'Babu@gmail.com'),
('Ram','Kumar','Street No. 67','Bangalore','Karnataka',560056,8888811111,'Sham@gmail.com'),
('Shyam','Shetty','Street No. 69','Bangalore','Karnataka',560056,8888822222,'Raju@gmail.com')

update AddressBook_System set PhoneNumber = 8888875757 where FirstName = 'Babu';
update AddressBook_System set PhoneNumber = 9999999999 where FirstName = 'Shyam';
update AddressBook_System set PhoneNumber = 9898989898 where FirstName = 'Ram';


delete from AddressBook_System where FirstName = 'Ram';
delete from AddressBook_System where FirstName = 'Shyam';

insert into AddressBook_System values
('Ram','Kumar','Street No. 67','Bangalore','Karnataka',560056,8888811111,'Sham@gmail.com'),
('Shyam','Shetty','Street No. 69','Bangalore','Karnataka',560056,8888822222,'Raju@gmail.com')

update AddressBook_System set City = 'Mangalore' where FirstName = 'Shyam';
update AddressBook_System set City = 'Mysore' where FirstName = 'Ram';

select * from AddressBook_System where City = 'Mangalore';
select * from AddressBook_System where City = 'Bangalore';

SELECT COUNT(*) FROM AddressBook_System where State = 'Karnataka';
SELECT COUNT(*) FROM AddressBook_System where City = 'Bangalore';


select * from AddressBook_System where City = 'Bangalore' Order by FirstName;

alter table AddressBook_System add AddressBookName Varchar(100) , AddressBookType Varchar(100);
update AddressBook_System 
Set AddressBookName = 'MyAddressBook';

update AddressBook_System 
set AddressBookType = 'Family' where FirstName = 'Ritvik';
update AddressBook_System 
set AddressBookType = 'Friend' where FirstName = 'Babu';
update AddressBook_System 
set AddressBookType = 'Professional' where FirstName = 'Ram';
update AddressBook_System 
set AddressBookType = 'Relative' where FirstName = 'Shyam';


select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Professional';
select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Relative';
select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Friend';
select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Family';


insert into AddressBook_System values
('Jack','Snow','Street No. 77','Mohali','Punjab',561111,9090909090,'Jack@gmail.com','DeathNote','Friend'),
('Joe','Smith','Street No. 99','Lucknow','Uttar Pradesh',247111,9090909999,'Joe@gmail.com','MyAddressBook','Family')


//UC13-Ensure all retrieve queries done in UC6, UC7, UC8 and UC10

select * from AddressBook_System where City = 'Mangalore';
select * from AddressBook_System where City = 'Bangalore';
select * from AddressBook_System where State = 'Karnataka';
select * from AddressBook_System where City = 'Mohali';
select * from AddressBook_System where State = 'Uttar Pradesh';



SELECT COUNT(*) FROM AddressBook_System where State = 'Karnataka';
SELECT COUNT(*) FROM AddressBook_System where City = 'Bangalore';
SELECT COUNT(*) FROM AddressBook_System where City = 'Mohali';
SELECT COUNT(*) FROM AddressBook_System where State = 'Uttar Pradesh';


select * from AddressBook_System where City = 'Bangalore' Order by FirstName;
select * from AddressBook_System where State = 'Karnataka' Order by FirstName;
select * from AddressBook_System where State = 'Punjab' Order by FirstName;


select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Professional';
select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Relative';
select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Friend';
select count(AddressBookType) as CountByType from AddressBook_System where AddressBookType ='Family';
