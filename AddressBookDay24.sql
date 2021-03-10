















--UC10:Ability to get  number of contact person
SELECT Type, COUNT(*) AS TYPE_COUNT FROM AddressBook GROUP BY Type;

--UC11:Ability to add in both family and friend
INSERT INTO  AddressBook (FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email , Type)VALUES
('Sachin', 'Shinde', 'Vikroli', 'Mumbai', 'Maharashtra', '40007', '8806184087', 'shinde@gmail.com', 'FRIENDS');



