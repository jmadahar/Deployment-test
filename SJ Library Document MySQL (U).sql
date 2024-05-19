##make database called SJBookShop
CREATE DATABASE SJBookShop;
##FIRST TABLE employees FIRST TABLE PRIMARY KEY AND NOT NULL VALUES identified, names separated into first name and last name section and same with address for unique normalisation purposes.
CREATE TABLE Employees (
Employee_ID Varchar(20) PRIMARY KEY NOT NULL,
First_Name Varchar(50) NOT NULL,
Last_Name Varchar(50) NOT NULL,
Address_Number INT,
Address_Street Varchar(100),
Address_City Varchar(100),
Address_Postcode Varchar(100) NOT NULL,
Email_Address Varchar(200) NOT NULL,
Mobile_Number Varchar(100) NOT NULL,
Next_kin Varchar(50),
Next_kin_Number Varchar (100) NOT NULL,
Medical_Disclosure BOOLEAN default 0,
Abscence_Number INT,
Training_Attended BOOLEAN  NOT NULL default 0);
INSERT INTO Employees
VALUES
('EID1','Jonathan','Anderson',123, 'Elm Street', 'Smithville', 'OH 12345','jonathananderson@example.com',44156678951,'Susan Johnson',44156688951,1,7,1),
('EID2','Katherine','Murphy',456, 'Oak Avenue', 'Willow_Creek', 'CA 98765','katherinemurphy@example.com', 44567313457,'David Smith',44587313457,1,12,0),
('EID3','Samuel','Evans',789,'Maple Lane', 'Oakville', 'L4X 2Z1','samuelevans@example.com', 44578784644,'Lisa Williams', 44578784444, 0, 5, 1),
('EID4','Jessica', 'Turner',1010, 'Pine Road', 'Greenville', 'SC 29601','jessicaturner@example.com',44526384947,'Michael Davis',44509384947,0,10,1),
('EID5','Nicholas',	'Mitchell',	222, 'Birch Circle', 'Redwood', 'CA 94063', 'nicholasmitchell@example.com',44135778422,'Karen Brown',44165778422,1,3,0),
('EID6','Emma',	'Robinson',	333, 'Cedar Drive', 'Manchester', 'M1 1AB','emmarobinson@example.com',44143789492,'Steven Wilson',44143786692,1,9,1),
('EID8','Lauren','Simmons',	555, 'Redwood Boulevard', 'Springfield', 'IL 62701','laurensimmons@example.com',44677233559, 'Thomas Harris',44677223559,1,8,0),
('EID9','Christopher','Cooper',	666, 'Willow Place', 'Portland', 'OR 97201','christophercooper@example.com',44857252748,'Laura Anderson',4485755748,1,14,1);

##SECOND TABLE MEDIA.  PK and NOT NULL values identified.  NAMES AND ADDRESSES have been separated for normalisation. Added Decimal to take price into account. To show a range of data types used. 
CREATE TABLE Media (
Gift_ID Varchar (100) Primary Key NOT NULL,
Gift_name Varchar (500) NOT NULL,
First_Name Varchar(50) NOT NULL,
Last_Name Varchar(50) NOT NULL,
Address_Number INT,
Address_Street Varchar(100),
Address_City Varchar(100),
Address_Postcode Varchar(100) NOT NULL,
Email_Address Varchar(200) NOT NULL,
Promoted_Social_Media Varchar (100) NOT NULL,
Paid BOOLEAN NOT NULL default 0,
Total_Amount DECIMAL (10,2)
);
INSERT INTO Media
VALUES
('GFID1','Bookstore Gift Card','John', 'Doe', 12, 'HaleWood Road', 'Birmingham', 'B25 GB',	'johndoe@example.com','Facebook',TRUE, 15.75),
('GFID2','Personalized Bookmarks','David', 'Beckham',14, 'Kitch Lane', 'Liverpool', 'LV34 5TH',	'davidbeckham@example.com','X', FALSE, 0.00),
('GFID3','Classic Literature Set','Courtney', 'Cox',29, 'Wilmslow Road', 'Manchester', 'M56 3HT',	'courtneycox@example.com','Instagram',TRUE, 28.25),
('GFID4','Cozy Reading Blanket','Rachel', 'Green',56, 'Covent Garden', 'London', 'L3 5HD','rachelgreeen@example.com','Tiktok',TRUE, 12.90),
('GFID5','Book Nook Decor',	'Mike',' Hannigan',	66, 'Beech Gardens', 'Stafford', 'ST6 5HH',	'mikehannigan@example.com','Pinterest',FALSE, 0.00),
('GFID6','Authours signed edition','Victoria', 'Beckham',67, 'Leslie Groove', 'Croydon', 'CR0 678',	'victoriabeckham@example.com','Facebook', TRUE, 35.60),
('GFID7','Literary Tote Bag','Ross','Gellar',8, 'Pickvance Road', 'Leicester', 'LE2 7PP','rossgellar@gmail.example.com','X',FALSE, 0.00),
('GFID8','Mystery Book Bundle','Chandler', 'Bing',6,' Coventry Road', 'Coventry', 'C34 6SF',	'chandlerbing@example.com','Instagram', FALSE, 0.00),
('GFID9','Bookstore Merchandise','Sandra', 'Bucket',24, 'Beech Barr',' Aston',' B31 8SD','sandrabucket@example.com','Pinterest',TRUE, 14.30),
('GFID10','Reading Journal','Pandora', 'King',83, 'Hard Pick Road', 'Essex', 'L53DS','pandoraking@example.com','Tiktok',FALSE, 0.00),
('GFID11','SciFi Book Collection','Oliver', 'Twist',13, 'Standish Drive', 'Wigan', 'WN4 6GE','olivertwist@example.com','Facebook', TRUE, 11.60),
('GFID12','Poetry Anthology','Fredrick','Hans',34, 'Hard Lane', 'Birmingham', 'B2 7LI', 'fredrickhans@example.com','Instagram',TRUE ,2.85),
('GFID13','Bookish Candles','Muhammed', 'Ali',6, 'Milo Savannah Area', 'Walsall', 'WV1 5JK','muhammedali@example.com','X', FALSE, 0.00),
('GFID14','Historical Fiction Box','Ryan', 'Reynolds',	1, 'Cow Road', 'Aston', 'B36 6HR',	'ryanreynolds@example.com','Pinterest',TRUE, 16.50),
('GFID15','Non-Fiction Bestsellers','Barbie', 'Pink',659,'Mulvanney Road', 'Rainford', 'WA11 6HY', 'barbiepink@example.com','Tiktok',FALSE, 0.00),
('GFID16','Book Lovers Mug','Lucy', 'McCandy',11, 'Faraday Peaks', 'Knutsford', 'WV11 6TH','lucymccanday@example.com','Facebook',FALSE, 7.80),
('GFID17','Fantasy Novel Series', 'Hawa', 'Adam',101, 'Perry Barr Avenue', 'Keele', 'KL45 6SD',	'hawaadam@example.com',	'X', FALSE, 0.00),
('GFID18','Childrens Picture Books', 'Mary', 'Alan',3, 'Great Barr Road', 'Wolverhampton', 'WV11 4GR','mercedescard@example.com','Instagram',TRUE, 23.40);

##THIRD TABLE to have PK and FK.  Date is the new data type included in this table.  We have decided to create membership to expand the range of data and to promote loyalty for the S&JBookShop.  We have set date for expiry as the same as this usual for most loyalty membership types/
##NOT NULLS is for most data here due to helping company identify which rewards are popular and which customers are spending the most in the shop.
###NEED TO LINK CUSTOMER ID TABLE TO THE CUSTOMERS TABLE TO MAKE IT A FOREIGN KEY
CREATE TABLE Membership (
Membership_ID VARCHAR (100) PRIMARY KEY NOT NULL,
Customer_ID INT NOT NULL,
Start_Date DATE NOT NULL,
End_Date DATE NOT NULL,
Membership_type VARCHAR (200) NOT NULL,
Number_Points INT NOT NULL,
Number_awards INT,
Rewards_used INT NOT NULL
);
INSERT INTO Membership
VALUES
("MID1",23,"2023-08-12","2031-01-01","Standard Membership",120,	5,3),
("MID2",6,"2023-05-24",	"2031-01-01","Standard Membership",	75,	10,	8),
("MID3",25,	"2023-12-03","2031-01-01","Standard Membership",200,8,4),
("MID4",30,	"2023-02-15","2031-01-01","Senior Citizen Membership",50,	3,2),
("MID5",12,	"2023-11-20","2031-01-01","Standard Membership",90,	10,	10),
("MID6",4,"2023-09-08",	"2031-01-01","Student Membership",150,7,6),
("MID7",5,"2023-03-31",	"2031-01-01","Senior Citizen Membership",85,10, 10),
("MID8",2,"2023-05-17",	"2031-01-01","Standard Membership",	110,4,2),
("MID9",18,"2023-08-12","2031-01-01","Standard Membership", 160,9,8),
("MID10",11,"2023-05-24","2031-01-01","Senior Citizen Membership", 70,6,4),
("MID11",22,"2023-12-03","2031-01-01", "Senior Citizen Membership",130,	10,	8),
("MID12",24,"2023-02-15","2031-01-01","Standard Membership",80,2,1),
("MID13",28,"2023-11-20","2031-01-01","Student Membership",95,10,8),
("MID14",3,	"2023-09-08","2031-01-01","Student Membership",140, 10,	10),
("MID15",20,"2023-03-31","2031-01-01","Standard Membership",105,1,1),
("MID16",31,"2023-05-17","2031-01-01","Standard Membership",190,10,	11),
("MID17",27,"2023-08-12","2031-01-01","Student Membership",65,16,10),
("MID18",7,	"2023-05-24","2031-01-01","Senior Citizen Membership",170,10,10);

##FOURTH TABLE is publisher table.  PK identified and location broken down to city and country for normalisation purposes.  No FK in this table.
CREATE TABLE Publisher (
Publisher_ID Varchar (100) NOT NULL PRIMARY KEY,
Publishing_House Varchar (300) NOT NULL,
City Varchar (80) NOT NULL,
Country Varchar (80),
Contact Varchar (20)
);
INSERT INTO Publisher
VALUES
('PID1', 'Harper _and_Stone_Publishing', 'New York', 'USA', 7012345678),
('PID2', 'Serendipity_Press', 'London', 'UK', 7123456789),
('PID3', 'Bluebird_Books', 'Paris', 'France', 7234567890),
('PID4', 'Sunflower_Publications', 'Tokyo', 'Japan', 7345678901),
('PID5', 'Quill_and _Scroll_Publishing', 'Sydney', 'Australia', 7456789012),
('PID6', 'Moonlit_Publishing', 'Los Angeles', 'USA', 7567890123),
('PID7', 'Crimson_Crest_Books', 'Berlin', 'Germany', 7678901234),
('PID8', 'Starling_House', 'Rome', 'Italy', 7789012345),
('PID9', 'Riverbend_Publishing', 'Toronto', 'Canada', 7890123456),
('PID10', 'Aurora_Press', 'San Francisco', 'USA', 7912345687),
('PID11', 'Silver_Birch_Publications', 'New York' ,'USA', 7019876543),
('PID12', 'Pinnacle_Editions', 'London', 'UK', 7128765432);

##FIFTH TABLE GENRE TABLE. This table has one PK.  
##This table will allow us to see popular genre and predict future purchasing
CREATE TABLE Genre (
Genre_ID Varchar (50) NOT NULL PRIMARY KEY,
Genre_Name Varchar (200) NOT NULL,
Total_Genre_Sold Varchar (100) NOT NULL,
Total_Genre_Inventory Varchar (100) NOT NULL
);
INSERT INTO Genre
VALUES
('GID1','Mystery',21,41),
('GID2','Fantasy',22,42),
('GID3','Science Fiction',23,43),
('GID4','Romance',24,44),
('GID5','Thriller',25,45),
('GID6','Historical Fiction',26,46),
('GID7','Horror',27,47),
('GID8','Adventure',28,48),
('GID9','Non-Fiction',29,49),
('GID10','Biography',30,50),
('GID11','Self-Help',31,51),
('GID12','Comedy',32,52),
('GID13','Drama',33,53),
('GID14','Poetry',34,54),
('GID15','Crime Fiction',35,55);

##SIXTH TABLE is called the author table.  PK idenitfied
CREATE TABLE Author (
Author_ID char(5) NOT NULL PRIMARY KEY,
First_Name varchar(10) NOT NULL,
Last_Name varchar(10) NOT NULL,
Email_Address varchar(50),
Country varchar(20),
Phone_number varchar(12),
Publisher_ID char(5)
);
INSERT INTO Author
VALUES
('AID1','Samuel','Williams','samuel.williams@example.com','United States','447589214360','PID1'),
('AID2','Rachel','Phillips','rachel.phillips@example.com','Canada','447265437890','PID2'),
('AID3','Oliver','Jenkins','oliver.jenkins@example.com','Brazil','449812375064','PID3'),
('AID4','Lily','Coleman','lily.coleman@example.com','United Kingdom','446958132407','PID4'),
('AID5','Daniel ','Mitchell','daniel.mitchell@example.com','Australia','443487652190','PID5'),
('AID6','Stella','Adams','stella.adams@example.com','France','442390875164','PID6'),
('AID7','Isaac','Carter','isaac.carter@example.com','Germany','447614098235','PID7'),
('AID8','Grace','Turner','grace.turner@example.com','Japan','447201986735','PID8'),
('AID9','Benjamin','Hughes','benjamin.hughes@example.com','India','447324679810','PID9'),
('AID10','Zoe','Parker','zoe.parker@example.com','China','443769854120','PID10'),
('AID11','Ethan','Bennett','ethan.bennett@example.com','Italy','448149267035','PID11'),
('AID12','Audrey','Lewis','audrey.lewis@example.com','Mexico','447058397614','PID12'),
('AID13','Owen','Bennett','owen.bennett@example.com','Russia','447134982705','PID13'),
('AID14','Mia','Stewart','mia.stewart@example.com','Canada','447396708125','PID14'),
('AID15','Caleb','Wood','caleb.wood@example.com','Brazil','447265410983','PID15'),
('AID16','Scarlett','Green','scarlett.green@example.com','United States','447801694735','PID16'),
('AID17','Henry','Foster','henry.foster@example.com','United Kingdom','447987430562','PID17');

## ORDERS PK IDENTIFIED

create table orders(
order_id char(50)  primary key NOT NULL,
customer_id char(100),
order_date date
);

INSERT INTO orders
VALUES
('OID1','CID17', '2022-11-24'),
('OID2','CID29', '2023-04-15'),
('OID3','CID12', '2023-01-07'),
('OID4','CID4', '2023-03-28'),
('OID5','CID20', '2022-12-11'),
('OID6','CID8', '2023-07-05'),
('OID7','CID23', '2022-10-27'),
('OID8','CID10', '2023-08-19'),
('OID9','CID17', '2023-06-10'),
('OID10','CID5', '2023-02-14'),
('OID11','CID28', '2022-10-15'),
('OID12','CID14', '2023-05-31'),
('OID13','CID3', '2023-09-22'),
('OID14','CID22', '2022-10-05'),
('OID15','CID6', '2023-01-29'),
('OID16','CID30', '2023-04-02'),
('OID17','CID18', '2023-06-24'),
('OID18','CID7', '2022-12-03'),
('OID19','CID15', '2023-08-07'),
('OID20','CID1', '2023-03-17'),
('OID21','CID25', '2023-07-17'),
('OID22','CID9', '2023-10-02'),
('OID23','CID26', '2023-05-12'),
('OID24','CID13', '2023-09-03'),
('OID25','CID2', '2022-11-08'),
('OID26','CID12', '2023-10-10'),
('OID27','CID6', '2023-09-25'),
('OID28','CID25', '2023-08-14'),
('OID29','CID18', '2023-07-03'),
('OID30','CID4', '2023-06-22'),
('OID31','CID9', '2023-05-11'),
('OID32','CID27', '2023-04-05'),
('OID33','CID15', '2023-03-20'),
('OID34','CID8', '2023-02-08'),
('OID35','CID21', '2023-01-17'),
('OID36','CID2', '2022-12-04'),
('OID37','CID11', '2022-11-19'),
('OID38','CID28', '2022-10-27'),
('OID39','CID5', '2022-09-12'),
('OID40','CID22', '2022-08-03');

##BOOK Table. PK and Fk identified and linked to author table. Used the REFERENCE COMMAND.

create table book(
book_id char(8) NOT NULL PRIMARY KEY,
book_title varchar(45),
author_id char(8),
CONSTRAINT FK_author_id FOREIGN KEY (author_id)
REFERENCES author(author_id),
genre_id char(8),
price decimal(3,2),
publication_date date,
publication_id char(8),
language varchar(10),
ISBN varchar(20)
);

##Used the ALTER AND MODIFY COMMAND IN THIS QUERY TO MAKE CHANGES
ALTER TABLE book
MODIFY COLUMN price decimal(5,2);
insert into book(book_id, book_title, author_id,publication_date, genre_id,price, publication_id, language, ISBN)
Values
('BID1', 'The Crystal Key', 'AID3', '2019-05-12', 'GID4', 12.95, 'PID1', 'Spanish', '978-1234567890123'),
('BID2', 'Dark Horizon', 'AID3', '2020-08-28', 'GID5', 9.99, 'PID1', 'Italian', '978-9876543210987'),
('BID3', 'Forgotten Realms', 'AID2', '2018-11-15', 'GID4', 15.5, 'PID3', 'English', '978-5555555555555'),
('BID4', 'Eternal Shadows', 'AID1', '2017-04-09', 'GID2', 8.75, 'PID3', 'English', '978-8888888888888'),
('BID5', 'The Silver Serpent', 'AID6', '2022-02-22', 'GID3', 14.25, 'PID5', 'German', '978-9999999999999'),
('BID6', 'Whispers of Fate', 'AID4', '2019-05-12', 'GID6', 10.5, 'PID5', 'French', '978-1111111111111'),
('BID7', 'The Enchanted Quest', 'AID8', '2018-11-15', 'GID1', 11.99, 'PID4', 'French', '978-2222222222222'),
('BID8', 'Mystic Dreams', 'AID9', '2016-09-03', 'GID8', 16.75, 'PID4', 'Italian', '978-3333333333333'),
('BID9', 'Secrets Unveiled', 'AID7','2021-07-18', 'GID16', 13.2, 'PID9', 'French', '978-4444444444444'),
('BID10', 'The Lost Chronicles', 'AID7','2020-08-28', 'GID8', 9.5, 'PID9', 'Italian', '978-5555555555555'),
('BID11', 'The Celestial Blade', 'AID2','2017-04-09', 'GID3', 12.75, 'PID13', 'Italian', '978-6666666666666'),
('BID12', 'Riddles of Time', 'AID9', '2019-01-25', 'GID3',10.99 , 'PID13', 'Italian', '978-7777777777777'),
('BID13', 'Chronicles of Destiny', 'AID1', '2022-06-14', 'GID4', 13.2, 'PID12', 'French', '978-8888888888888'),
('BID14', 'Echoes of Magic', 'AID1', '2019-05-12', 'GID4', 9.25, 'PID2', 'English', '978-9999999999999'),
('BID15', 'The Cursed Scroll', 'AID17', '2018-11-15', 'GID5', 13.75, 'PID2', 'English', '978-1234567890123'),
('BID16', 'Realm of Secrets', 'AID8', '2016-09-03', 'GID5', 11.2, 'PID7', 'French', '978-9876543210987'),
('BID17', 'The Obsidian Amulet', 'AID8','2021-03-10', 'GID7',12.5, 'PID7', 'Italian', '978-1357924680246'),
('BID18', 'Shadows of the Past', 'AID5','2020-08-28', 'GID7', 15.80, 'PID8', 'English', '978-8642098765421'),
('BID19', 'The Enigma Stone', 'AID5','2017-04-09', 'GID15', 14.15, 'PID8', 'German', '978-2345678901234'),
('BID20', 'Echoes from Beyond', 'AID5','2022-02-22', 'GID6', 10.75, 'PID6', 'English', '978-8765432109876'),
('BID21', 'The Forgotten Runes', 'AID13','2018-11-15', 'GID6', 12.95, 'PID6', 'English', '978-3141592653589'),
('BID22', 'Quest for the Lost City', 'AID13','2019-01-25', 'GID4', 9.99, 'PID3', 'English', '978-2718281828459'),
('BID23', 'The Enchanted Whisper', 'AID12','2016-09-03', 'GID16', 15.50, 'PID2', 'French', '978-8202818287192'),
('BID24', 'Secrets of the Astral', 'AID11','2021-07-18', 'GID14', 8.75, 'PID6', 'English', '978-7777777777778'),
('BID25', 'The Eternal Quest', 'AID9','2020-08-28', 'GID13', 14.25, 'PID1', 'English', '978-7777777777779');

##Customer Table continued to use multiple data types and also identified PK.  No FK required for this table
create table customer(
customer_id char(10) NOT NULL PRIMARY KEY,
first_name varchar(15) NOT NULL,
last_name varchar(10) NOT NULL,
email_address varchar(50),
phone_number varchar(12),
address_number INT,
address_street varchar(100),
address_city varchar(50),
postal_code varchar(10) NOT NULL,
is_member boolean
);
insert into customer
values
('CID1','Emily','Smith','emily.smith@example.com','448754692310',23,'William Street','London',' E14 GB', FALSE),
('CID2','Jackson','Johnson','Jackson.Johnson@example.com','442456189307',45,'Oakwood Drive','Manchester','M16 GB', TRUE),
('CID3','Sophia','Brown','sophia.brown@example.com','447693125480',78,'Cedar Lane,','Glasgow','G2 GB', TRUE),
('CID4','Liam','Taylor','liam.taylor@example.com','445038691247',56,'Elm Avenue','Liverpool',' L8 GB', TRUE),
('CID5','Olivia','Davis','olivia.davis@example.com','442187549603',34,'Birch Roadol','Leeds','LS1 GB', TRUE),
('CID6','Benjamin','Wilson','benjamin.wilson@example.com','449360271485',67,'Maple Street','Bristol','BS1 GB', TRUE),
('CID7','Ava','Miller','ava.miller@example.com','444718936520',89,'Sycamore Avenue','Newcastle','NE1 GB', FALSE),
('CID8','Mason','Anderson','mason.anderson@example.com','446957240138',12,'Pine Road','Sheffield','S1 GB', FALSE),
('CID9','Harper','Jackson','harper.jackson@example.com','443801462975',43,'Redwood Lane','Nottingham','NG1 GB', TRUE),
('CID10','Ethan','Harris','ethan.harris@example.com','441297640853','32','Juniper Close','Cardiff','CF10 GB', FALSE),
('CID11','Mia','Thompson','mia.thompson@example.com','448263095471','98','Magnolia Way','Belfast','BT1 GB', TRUE),
('CID12','Noah','White','noah.white@example.com','443549702186','21','Hemlock Road','Edinburgh','EH1 GB', TRUE),
('CID13','Isabella','Martin','isabella.martin@example.com','443549702186','21','Hemlock Road','Edinburgh','EH1 GB', FALSE),
('CID14','Aiden','Lewis','aiden.lewis@example.com','441849627305','54','Oakwood Drive','Birmingham','B1 GB', FALSE),
('CID15','Abigail','Lee','abigail.lee@example.com','449573641820','31','Cedar Lane,','Coventry','CV1 GB', FALSE),
('CID16','Lucas','Walker','lucas.walker@example.com','446208149375','65','Elm Avenue','Norwich','NR1 GB', FALSE),
('CID17','Charlotte','Hall','charlotte.hall@example.com','449372058164','87','Birch Road','Leicester','LE1 GB', FALSE),
('CID18','Oliver','Young','oliver.young@example.com','444187562093','33','Maple Street','Oxford','OX1 GB', TRUE),
('CID19','Amelia','Turner','amelia.turner@example.com','445724819630','74','Sycamore Avenue','Cambridge','CB1 GB', FALSE),
('CID20','Elijah','King','elijah.king@example.com', '440983174625',22,'Pine Road','Plymouth',' PL1 GB', TRUE),
('CID21','Grace','Adams','grace.adams@example.com', '447862409513',46,'Pine Road','Plymouth',' PL1 GB', FALSE),
('CID22','Logan','Scott','logan.scott@example.com', '443067549182',59 ,'Juniper Close','Aberdeen','AB1 GB', TRUE),
('CID23','Sofia','Baker','sofia.baker@example.com', '441475290863',64 ,'Magnolia Way','York','YO1 GB', TRUE),
('CID24','Caleb','Green','caleb.green@example.com', '449853670142',55 ,'Hemlock Road','Hull', 'HU1 GBE', TRUE),
('CID25','Lily','Hill','lily.hill@example.com', '446214087395',90 ,'Willow Street','Newcastle', 'NE1 GB', TRUE),
('CID26','William','Cooper','william.cooper@example.com', '442937546180',25,'Oakwood Drive','Glasgow', 'G2 GB', FALSE),
('CID27','Zoe','Bennett','zoe.bennett@example.com', '440481752963',67,'Cedar Lane','Bristol', 'BS1 GB', FALSE),
('CID28','Michael','Nelson','michael.nelson@example.com', '447189240365',42,'Elm Avenue','Leeds', 'LS1 GB', TRUE),
('CID29','Avery','Carter','avery.carter@example.com', '445421067938',79,'Birch Road','Manchester', 'M16 GB', FALSE),
('CID30','Daniel','Mitchell','daniel.mitchell@example.com', '448365901247',14,'Maple Street','London', 'E14 GB', TRUE);

##ORDER DETAIL:
##Reference of primary key to foreign key of book table and order table.

create table order_detail(
order_detail_id char(8) Primary Key NOT NULL,
order_id char(10),
book_id char(8),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY(book_id) REFERENCES book(book_id)
);
insert into order_detail
Values
('ODID1','OID1','BID1'),
('ODID2','OID1','BID5'),
('ODID3','OID1','BID6'),
('ODID4','OID2','BID19'),
('ODID5','OID3','BID5'),
('ODID6','OID7','BID12'),
('ODID7','OID3','BID1'),
('ODID8','OID4','BID7'),
('ODID9','OID4','BID8'),
('ODID10','OID5','BID3'),
('ODID11','OID6','BID18'),
('ODID12','OID6','BID4'),
('ODID13','OID8','BID9'),
('ODID14','OID8','BID6'),
('ODID15','OID9','BID11'),
('ODID16','OID7','BID24'),
('ODID17','OID12','BID5'),
('ODID18','OID12','BID21'),
('ODID19','OID9','BID15'),
('ODID20','OID6','BID3'),
('ODID21','OID5','BID16'),
('ODID22','OID8','BID8'),
('ODID23','OID9','BID14'),
('ODID24','OID30','BID23'),
('ODID25','OID29','BID12'),
('ODID26','OID25','BID10'),
('ODID27','OID27','BID20'),
('ODID28','OID6','BID6'),
('ODID29','OID5','BID17'),
('ODID30','OID17','BID1'),
('ODID31','OID17','BID22'),
('ODID32','OID11','BID4'),
('ODID33','OID9','BID14'),
('ODID34','OID3','BID7'),
('ODID35','OID1','BID25'),
('ODID36','OID1','BID2'),
('ODID37','OID6','BID19'),
('ODID38','OID3','BID9'),
('ODID39','OID4','BID13'),
('ODID40','OID8','BID11');



















