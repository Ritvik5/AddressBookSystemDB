create database AddressBook;

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

insert into AddressBook_System values
('Ritvik','Sharma','Street No. 64','Bangalore','Karnataka',560056,8888800000,'Abcd@gmail.com'),
('Babu','Bhaiya','Street No. 65','Bangalore','Karnataka',560056,8888877777,'Babu@gmail.com'),
('Ram','Kumar','Street No. 67','Bangalore','Karnataka',560056,8888811111,'Sham@gmail.com'),
('Shyam','Shetty','Street No. 69','Bangalore','Karnataka',560056,8888822222,'Raju@gmail.com')

update AddressBook_System set PhoneNumber = 8888875757 where FirstName = 'Babu';