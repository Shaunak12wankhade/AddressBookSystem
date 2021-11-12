--Welcome to AddressBook--

--UC1--
---Create Addressbook service Database---

CREATE DATABASE AddressBookService;
USE AddressBookService;

--UC2--
---Create Addressbook table---

CREATE TABLE AddressBookTable(
FirstName varchar(100) not null,
LastName varchar(50),
Address varchar(200),
City varchar(150),
StateName varchar(100),
ZipCode int,
Phonenum bigint,
EmailId varchar(100)
);
select * from AddressBookTable;

--UC3--
---Insert data in table---

INSERT INTO AddressBookTable VALUES('Ashish','singh','shashtri chowk','wardha','Maharashtra',442001,7507123464,'ashsingh@gmail.com'),
('Abhi','sawarkar','Gond Nagar','Wardha','Maharashtra',442001,8976324153,'abhisawarkar@gmail.com'),
('Ani','Kumar','Ram Nagar','Wardha','Maharashtra',442001,9878342169,'anikumar@gmail.com'),
('Sagar','panth','Sahayog Nagar','Nagpur','Maharashtra',450213,9637449858,'sagarpanth@gmail.com');


select * from AddressBookTable;



--UC4--
---Edit existing contact using name---

UPDATE AddressBookTable SET Phonenum=9745638984 WHERE FirstName='Ashish';
UPDATE AddressBookTable SET LastName='Maske' WHERE FirstName='Sagar';
UPDATE AddressBookTable SET EmailId='Kumar12@gmail.com' WHERE LastName='Kumar';


select * from AddressBookTable;


--UC5--
---Delete contact using person name---

DELETE FROM AddressBookTable WHERE FirstName='Abhi';

select * from AddressBookTable;


--UC6--
---Retrieve person belonging to city or state---

SELECT * FROM AddressBookTable WHERE  City='Nagpur' or StateName='Maharashtra';

