--UC1:Create Addressbook Database
CREATE DATABASE AddressBook;
use AddressBook;


--UC2:Create addressBook table
CREATE TABLE AddressBook
(
ID				int identity(1, 1)  PRIMARY KEY,
FirstName		varchar(55),
LastName		varchar(55),
Address			varchar(100),
City			varchar(40),
State			varchar(40),
Zip				int,
PhoneNumber	    varchar(14),
Email			varchar(50),

)

--UC3:Ability to add new contact
INSERT INTO AddressBook(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)VALUES
('Ajinkya', 'Patil', 'Ghatkopar', 'Mumbai', 'Maharashtra', '400075', '8806184089', 'patil@gmail.com'),
('Sachin', 'Shinde', 'Vikroli', 'Mumbai', 'Maharashtra', '400087', '8806184087', 'shinde@gmail.com'),
('Priya', 'kale', 'Gokhalenagr', 'Pune', 'Maharashtra', '411016', '8806184085', 'kale@gmail.com'),
('sneha', 'kulkarni', 'Bandra', 'Mumbai', 'Maharashtra', '400154', '8806184082', 'kulkarni@gmail.com'),
('Pratiksha', 'kare', 'Kothrude', 'Pune', 'Maharashtra', '4110343', '9702420754', 'pratiksha@gmail.com');
alter table AddressBook ADD Country varchar (10);
update AddressBook set Country = 'India';

--UC4:Ability to  edit contact
UPDATE AddressBook SET PhoneNumber = '9969818133' WHERE FirstName = 'Ajinkya'
SELECT * FROM AddressBook;

--UC5:Ability to delete using name
DELETE FROM AddressBook WHERE FirstName = 'Ajinkya';
SELECT * FROM AddressBook;

--UC6:Retrive the data from city and state
SELECT * FROM AddressBook WHERE City = 'Mumbai';
SELECT * FROM AddressBook WHERE State = 'Maharashtra';

--UC7:Ability to understand the size
SELECT CITY, COUNT(CITY) AS CITY_COUNT FROM AddressBook GROUP BY City;
SELECT STATE, COUNT(STATE) AS STATE_COUNT FROM AddressBook GROUP BY State;

--UC8:Ability to retrive the sorted list 
SELECT * FROM AddressBook WHERE CITY = 'Mumbai' ORDER BY FirstName;

--UC9:Ability to find name and type
ALTER table AddressBook ADD Type VARCHAR(20);
SELECT * FROM AddressBook;
UPDATE AddressBook SET Type = 'FRIENDS';
UPDATE AddressBook SET Type = 'FAMILY' WHERE FirstName = 'Sachin' or FirstName = 'sneha';
UPDATE AddressBook SET Type = 'PROFESSION' WHERE FirstName = 'Pratiksha';
SELECT * FROM AddressBook;

--UC10:Ability to get  number of contact person
SELECT Type, COUNT(*) AS TYPE_COUNT FROM AddressBook GROUP BY Type;


