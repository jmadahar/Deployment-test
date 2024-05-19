create database SJBookShop;

use SJBookShop;

CREATE TABLE publisher (
publisher_id char(10) NOT NULL PRIMARY KEY,
publishing_house Varchar (50) NOT NULL,
city Varchar (50) NOT NULL,
country Varchar (50),
contact Varchar (20)
);

CREATE TABLE genre (
genre_id char (10) NOT NULL PRIMARY KEY,
genre_name Varchar (200) NOT NULL,
total_genre_sold Varchar (100) NOT NULL,
total_genre_inventory Varchar (100) NOT NULL
);

create table author(
author_id char(10) NOT NULL PRIMARY KEY,
first_name varchar(10) NOT NULL,
last_name varchar(10) NOT NULL,
email_address varchar(50),
country varchar(20),
phone_number varchar(15),
publisher_id char(5),
CONSTRAINT FK_auth_publisher_id FOREIGN KEY(publisher_id)
REFERENCES publisher(publisher_id)
);

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

create table book(
book_id char(10) NOT NULL PRIMARY KEY,
book_title varchar(45),
author_id char(8),
CONSTRAINT FK_author_id FOREIGN KEY (author_id)
REFERENCES author(author_id),
publication_date date,
genre_id char(8),
CONSTRAINT FK_genre_id FOREIGN KEY(genre_id)
REFERENCES genre(genre_id),
price decimal(5,2),
publisher_id char(8),
CONSTRAINT FK_publisher_id FOREIGN KEY(publisher_id)
REFERENCES publisher(publisher_id),
language varchar(10),
ISBN varchar(20)
);

create table orders(
order_id char(10)  primary key NOT NULL,
customer_id char(10),
CONSTRAINT FK_orders_cust_id FOREIGN KEY(customer_id)
REFERENCES customer(customer_id),
order_date date
);

create table order_detail(
order_detail_id char(8) Primary Key NOT NULL,
order_id char(10),
book_id char(8),
quantity int,
genre_id char(10),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY(book_id) REFERENCES book(book_id),
FOREIGN KEY(genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE membership (
membership_id char (10) PRIMARY KEY NOT NULL,
customer_id char(10) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
membership_type VARCHAR (200) NOT NULL,
number_of_points INT NOT NULL,
number_of_awards INT,
rewards_used INT NOT NULL
);

CREATE TABLE media (
gift_iD char (100) Primary Key NOT NULL,
gift_name Varchar (500) NOT NULL,
first_name Varchar(50) NOT NULL,
last_name Varchar(50) NOT NULL,
address_number INT,
address_street Varchar(100),
address_city Varchar(100),
address_postcode Varchar(100) NOT NULL,
email_address Varchar(200) NOT NULL,
promoted_social_media Varchar (100) NOT NULL,
paid BOOLEAN NOT NULL default 0,
total_amount DECIMAL (10,2)
);

CREATE TABLE employees (
employee_id char(20) PRIMARY KEY NOT NULL,
first_name Varchar(50) NOT NULL,
last_name Varchar(50) NOT NULL,
address_number INT,
address_street Varchar(100),
address_city Varchar(100),
address_postcode Varchar(100) NOT NULL,
email_address Varchar(200) NOT NULL,
mobile_number Varchar(100) NOT NULL,
next_of_kin Varchar(50),
next_of_kin_number Varchar (100) NOT NULL,
abscence INT,
training_attended BOOLEAN  NOT NULL default 0);

ALTER TABLE Membership
ADD CONSTRAINT FK_MCustomerID
FOREIGN KEY (customer_ID) REFERENCES customer(customer_id);
