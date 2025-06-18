CREATE DATABASE PROJECT;
USE PROJECT;
create table products(
product_id integer primary key,
product_type_id integer references product_types(product_type_id),
name varchar(30) not null,
description varchar(50),
price decimal(5,2)
);
DROP TABLE PRODUCTS;
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (1, 1, 'Modern Science', 'A description of modern
science', 19.95);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (2, 1, 'Chemistry', 'Introduction to Chemistry', 30.00);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (3, 2, 'Supernova', 'A star explodes', 25.99);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (4, 2, 'Tank War', 'Action movie about a future war',
13.95);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (5, 2, 'Z Files', 'Series on mysterious activities',
49.99);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (6, 2, '2412: The Return', 'Aliens return', 14.95);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (7, 3, 'Space Force 9', 'Adventures of heroes', 13.49);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (8, 3, 'From Another Planet', 'Alien from another planet
lands on Earth', 12.99);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (9, 4, 'Classical Music', 'The best classical music',
10.99);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (10, 4, 'Pop 3', 'The best popular music', 15.99);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (11, 4, 'Creative Yell', 'Debut album', 14.99);
INSERT INTO products ( product_id, product_type_id, name, description,
price) VALUES (12, NULL, 'My Front Line', 'Their greatest hits',
13.49);
SELECT * FROM PRODUCTS;
create table product_types(
product_type_id integer primary key,
name varchar(10) not null
);
insert into product_types(product_type_id,name) values(1,'Book');
insert into product_types(product_type_id,name) values(2,'Video');
insert into product_types(product_type_id,name) values(3,'DVD');
insert into product_types(product_type_id,name) values(4,'CD');
insert into product_types(product_type_id,name) values(5,'Magazine');
SELECT * FROM product_types;
CREATE TABLE purchases (
 product_id INTEGER
 REFERENCES products(product_id),
 customer_id INTEGER
 REFERENCES customers(customer_id),
 quantity INTEGER NOT NULL,
 CONSTRAINT purchases_pk PRIMARY KEY (product_id, customer_id)
);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 1, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 1, 3);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 4, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 2, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 3, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 1, 2, 2);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 3, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 2, 4, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 3, 3, 1);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 4, 4, 6);
INSERT INTO purchases ( product_id, customer_id, quantity) VALUES ( 6, 2, 3);
SELECT * FROM purchases;
CREATE TABLE customer (
customer_id integer primary key,
first_name varchar(10) NOT NULL,
last_name varchar(10) NOT NULL,
dob DATE,
phone varchar(12)
);
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
1,'John','Brown','1965-01-01','800-555-1211');
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
2,'Cynthia','Green','1968-02-05','800-555-1212');
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
3,'Steve','White','1971-03-16','800-555-1213');
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
4,'Gail','Black',NULL,'800-555-1214');
Insert into customer (customer_id, first_name,last_name,dob,phone) values(
5,'Doreen','Blue','1970-05-20',NULL);
SELECT * FROM customer;
SELECT * FROM PRODUCTS;
SELECT * FROM purchases;
SELECT * FROM product_types;
-- GET THE COMMON DATA FROM BOTH THE PURCHASES AND PRODUCTS TABLE
SELECT PR.NAME,P.CUSTOMER_ID
FROM PURCHASES P INNER JOIN PRODUCTS PR 
ON P.PRODUCT_ID = PR.PRODUCT_ID;
-- GET THE ALL RECORDS FROM PURCHASES TABLE AND MATCHED RECORDS FROM CUSTOMERS TABLE
SELECT P.PRODUCT_ID,C.FIRST_NAME
FROM PURCHASES P LEFT JOIN CUSTOMER C 
ON P.CUSTOMER_ID = C.CUSTOMER_ID;
-- JOIN THE PRODUCTS AND PRODUCT_TYPE_ID TABLE GET THE NAMES FROM PRODUCT TYPE TABLE AND NAME FROM PRODUCTS TABLES ALSO
SELECT P.NAME,PT.NAME
FROM PRODUCTS P JOIN PRODUCT_TYPES PT
ON P.PRODUCT_TYPE_ID = PT.PRODUCT_TYPE_ID;
-- APPLY THE FULL OUTER JOIN TO THE CUSTOMER TABLE AND PURCHASE TABLE
SELECT C.FIRST_NAME,C.LAST_NAME,P.PRODUCT_ID
FROM CUSTOMER C LEFT JOIN PURCHASES P
ON C.CUSTOMER_ID=P.CUSTOMER_ID
UNION
SELECT C.FIRST_NAME,C.LAST_NAME,P.PRODUCT_ID
FROM CUSTOMER C RIGHT JOIN PURCHASES P
ON C.CUSTOMER_ID=P.CUSTOMER_ID;
-- APPLY THE RIGHT JOIN FOR PRODUCTS AND PRODUCT_TYPE_ID TABLE
SELECT P.NAME , PT.NAME
FROM PRODUCT_TYPES PT RIGHT JOIN PRODUCTS P 
ON P.PRODUCT_TYPE_ID = PT.PRODUCT_TYPE_ID;