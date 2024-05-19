##make database called library
CREATE DATABASE Library;
##FIRST TABLE emoployees FIRST TABLE PRIMARY KEY AND NOT NULL VALUES identified, names separated into first name and last name section and same with address for unique normalisation purposes.

CREATE TABLE Employees (
Employee_ID INTEGER PRIMARY KEY NOT NULL,
First_Name Varchar (50) NOT NULL,
Last_Name Varchar (50) NOT NULL,
Address_Number INTEGER,
Address_Street Varchar (100) NOT NULL,
Address_City Varchar (100) NOT NULL,
Address_Postcode Varchar (100) NOT NULL,
Email_Address Varchar (200) NOT NULL,
Mobile_Number INTEGER,
Next_kin Varchar (50) NOT NULL,
Next_kin_Number INT NOT NULL,
Medical_Disclosure BOOLEAN,
Abscence_Number INTEGER,
Training_Attended BOOLEAN NOT NULL
);
INSERT INTO Employees (
Employee_ID, 
First_Name, 
Last_Name, 
Address_Number, 
Address_Street, 
Address_City, 
Address_Postcode, 
Email_Address, 
Mobile_Number, 
Next_kin, 
Next_kin_Number, 
Medical_Disclosure,
Abscence_Number,
Training_Attended)
VALUES
(1,'Jonathan','Anderson',123, 'Elm_Street', 'Smithville', 'OH 12345','jonathan.anderson@example.com','44156678951','Susan_Johnson','44156688951',1,7,1),
(2,'Katherine','Murphy',456, 'Oak_Avenue', 'Willow_Creek', 'CA 98765','katherine.murphy@example.com', '44567313457','David_Smith','44587313457',1,12,0),
(3,'Samuel','Evans',789,'Maple_Lane', 'Oakville', 'L4X 2Z1','samuel.evans@example.com', '44578784644','Lisa_Williams', '44578784444', 0, 5, 1),
(4,'Jessica', 'Turner',1010, 'Pine_Road', 'Greenville', 'SC 29601','jessica.turner@example.com','44526384947','Michael_Davis','44509384947',0,10,1),
(5,'Nicholas',	'Mitchell',	222, 'Birch_Circle', 'Redwood', 'CA 94063', 'nicholas.mitchell@example.com','44135778422','Karen_Brown','44165778422',1,3,0),
(6,'Emma',	'Robinson',	333, 'Cedar_Drive', 'Manchester', 'UK M1 1AB','emma.robinson@example.com','44143789492','Steven_Wilson','44143786692',1,9,1),
(8,'Lauren','Simmons',	555, 'Redwood_Boulevard', 'Springfield', 'IL 62701','lauren.simmons@example.com','44677233559', 'Thomas_Harris','44677223559',1,8,0),
(9,'Christopher','Cooper',	666, 'Willow_Place', 'Portland', 'OR 97201','christopher.cooper@example.com','44857252748','Laura_Anderson','4485755748',1,14,1);


