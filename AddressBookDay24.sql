











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

--UC11:Ability to add in both family and friend
INSERT INTO  AddressBook (FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email , Type)VALUES
('Sachin', 'Shinde', 'Vikroli', 'Mumbai', 'Maharashtra', '40007', '8806184087', 'shinde@gmail.com', 'FRIENDS');



