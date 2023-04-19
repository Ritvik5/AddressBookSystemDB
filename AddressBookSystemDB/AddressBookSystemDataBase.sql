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

