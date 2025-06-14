-- What is SQL? -------> Structured Query Language
-- What is programming language we use to communicate with databaases
-- What is a Database?
-- The place where we can store our data is known as databse
-- What is Data?
-- The collection of continous or discrete values is known as data
-- What is RDBMS?
-- In RDBMS the data is stored in the form of rows and columns
-- Rows is also known as -----> records, index, tuples....etc
-- Columns is also known as attributes, variables....etc
-- We are storing the data in to database. These databases consist of different types of DB's languages
-- DDL - CREATE, ALTER, DROP, TRUNCATE - DATA DEFINATION LANGUAGE
-- DML - INSERT, UPDATE, DELETE -DATA MANUPULATION LANGUAGE
-- DQL - SELECT - DATA QUERY LANGUAGE
-- DCL - GRANT, REVOKE - DATA CONTROL LANGUAGE
-- TCL - COMMIT, ROLLBACK, SAVEPOINT - TRANSACTION CONTROL LANGUAGE

-- CREATE A DATABASE NAME GENAI
CREATE DATABASE GENAI;
-- USE THE DATABASE GENAI
USE GENAI;
-- WHAT IS A SCHEMAS
-- BLUEPRINT OF DATABASE IS KNOWN AS SCHEMAS
-- CREATE A TABLE CUSTOMERS WHERE IT IS HAVING ATTRIBUTES CUST_ID,F_NAME,L_NAME,COUNTRY,PH_NO
CREATE TABLE CUSTOMERS (CUST_ID VARCHAR(10), F_NAME VARCHAR(25),L_NAME VARCHAR(25),COUNTRY VARCHAR(25),PH_NO INT);
-- DROP THE DATABASE GENAI
DROP DATABASE GENAI;
-- RECREATE THE SAME DATABASE AND THE TABLES
CREATE DATABASE GENAI;
USE GENAI;
CREATE TABLE CUSTOMERS (CUST_ID INT, F_NAME VARCHAR(25),L_NAME VARCHAR(25),COUNTRY VARCHAR(25),PH_NO INT);
-- INSERT THE DATA INTO CUSTOMERS
-- DML - INSERT
INSERT INTO CUSTOMERS(CUST_ID , F_NAME ,L_NAME ,COUNTRY ,PH_NO ) VALUES ('1','HARSHITH','SAI','INDIA',970428131);
SELECT * FROM CUSTOMERS;
-- I WANT TO DELETE ALL THE DATA FROM TABLES OR CLEAR ALL THE DATA
TRUNCATE CUSTOMERS;
SELECT * FROM CUSTOMERS;
-- WHAT IS THE DIFFERENCE BETWEEN TRUNCATE AND DROP?
DELETE FROM CUSTOMERS WHERE CUST_ID='4';
-- ################################################################################################################ --
-- 11/06/2025
USE GENAI;
INSERT INTO CUSTOMERS(CUST_ID , F_NAME ,L_NAME ,COUNTRY ,PH_NO ) VALUES ('1','HARSHITH','SAI','INDIA',970428131),
('2','NIDHI','P','INDIA',123456789),
('3','PETE','P','INDIA',987654321),
('4','TONY','S','INDIA',543219876);
SELECT * FROM CUSTOMERS;
CREATE TABLE STUDENTS (S_ID INT, S_NAME VARCHAR(25),S_MARKS INT);
INSERT INTO STUDENTS VALUES (101,'ALEX',55),
(102,'STEVE',60),
(103,'TOKYO',70),
(104,'BILL',80),
(105,'TOM',90),
(106,'KUREV',56),
(107,'STARK',94),
(108,'MARK',78),
(109,'JOHN',88),
(110,'GILL',48);
SELECT * FROM STUDENTS;
-- PRINT THE FIRST ROW FROM THE STUDENTS TABLE
SELECT * FROM STUDENTS WHERE S_ID=101;
-- PRINT THE RECORDS OF STUDENTS WHERE MARKS ARE GREATER THAN 75
SELECT * FROM STUDENTS WHERE S_MARKS > 75;
-- THE DATA ABOUT JOHN
SELECT * FROM STUDENTS WHERE S_NAME = 'JOHN';
-- 1. RELATIONAL OPERATORS/ COMPARISTION OPERATORS ---> =,!=,<,>,<=,>=
SELECT * FROM STUDENTS WHERE S_MARKS != 75;
-- GET THE RECORDS OF THE STUDENTS WHOSE MARKS BETWEEN 60 AND 75
SELECT * FROM STUDENTS WHERE S_MARKS >= 60 AND S_MARKS <= 75;
-- GET THE RECORDS OF THE STUDENTS WHOSE MARKS BETWEEN 60 AND 75 USING BETWEEN
SELECT * FROM STUDENTS WHERE S_MARKS BETWEEN 60 AND 75;
-- GET THE RECORDS OF THE STUDENT WHOSE NAME STARTS WITH LETTER 'S'
-- LIKE OPERATOR USE % SYMBOL TO MATCH THE RECORD
SELECT * FROM STUDENTS WHERE S_NAME LIKE 'S%';
-- WHAT DO WE DO WHEN WE DONT KNOW THE FIRST 2 LETTERS AND WE KNOW NEXT LETTER STARTS WITH 'EV'
SELECT * FROM STUDENTS WHERE S_NAME LIKE '__EV%';
-- GET THE RECORDS OF THE STUDENTS WHOSE HAVING LETTER 'E'
SELECT * FROM STUDENTS WHERE S_NAME LIKE '%E%' ;
-- GET THE RECORS OF STUDENT ID 105 ,102 AND 107
SELECT * FROM STUDENTS WHERE S_ID = 105 OR S_ID = 102 OR S_ID = 107;
-- CHECK IT BY USING THE 'IN' OPERATOR
SELECT * FROM STUDENTS WHERE S_ID IN(102,105,106);
-- GET ALL THE RECORDS OF ALL THE STUDENTS EXCEPT FOR 102,103,107,108
SELECT * FROM STUDENTS WHERE S_ID  NOT IN(102,103,107,108);
-- WITH NOT EQUALS(!=) AND 'AND' OPERATOR
SELECT * FROM STUDENTS WHERE S_ID != 105 AND S_ID != 102 AND S_ID != 107;
DROP TABLE CUSTOMERS;
CREATE TABLE customer (
customer_id integer primary key,
first_name varchar(10) NOT NULL,
last_name varchar(10) NOT NULL,
dob DATE,
phone varchar(12)
);
-- DEFAULT DATE FORMAT --> YYYY-MM-DD
Insert into customer values(1,'John','Brown','1965-01-01','800-555-1211'),
(2,'Cynthia','Green','1968-02-05','800-555-1212'),
(3,'Steve','White','1971-03-16','800-555-1213'),
(4,'Gail','Black',NULL,'800-555-1214'),
(5,'Doreen','Blue','1970-05-20',NULL);
-- GET THE RECORDS OF A CUSTOMER LAST NAME STARTS WITH 'BL'
-- GET THE RECORDS OF A CUSTOMER WHOSE FIRST NAME AND LAST NAME CONTAINS 'ee'
-- GET THE RECORDS OF A CUSTOMER WHOSE PHONE NUMBER ENDS WITH 12
-- GET THE RECORDS OF A CUSTOMER WHO DONT HAVE DOB
-- MERGE THE FIRST AND LAST NAME TOGETHER AND PRINT IT AS A CUSTOMER FULL NAME

SELECT * FROM CUSTOMER WHERE last_name LIKE 'BL%';

SELECT * FROM CUSTOMER WHERE first_name LIKE '%ee%' OR last_name LIKE '%ee%' ;

SELECT * FROM CUSTOMER WHERE phone LIKE '%12';

SELECT * FROM CUSTOMER WHERE dob is null;

SELECT * FROM CUSTOMER ;

SELECT *,CONCAT(first_name,last_name) AS full_name from customer;

-- ################################################ 12/06/2025 ####################################################

-- ADD THE COLUMN CITY INTO STUDENT TABLE
ALTER TABLE STUDENTS ADD CITY VARCHAR(20);

SELECT * FROM STUDENTS;

-- BEFORE UPDATING THE NULL VALUES IN THE TABLE WE NEED TO DISABLE THE SECURITY SAFETY IN SQL
SET SQL_SAFE_UPDATES = 1;

-- UPDATE THE STUDENT TABLE CITY TO HYD
UPDATE STUDENTS SET CITY = 'VZA' ;
-- UPDATING THE STUDENT TABLE WHERE CITY IS VZA FOR SID 101
UPDATE STUDENTS SET CITY = 'VZA' WHERE S_ID ='101';

-- TCL - TRANSACTION CONTROL LANGUAGE --> ROLLBACK , COMMIT

ALTER TABLE STUDENTS ADD SCHOOL VARCHAR(25);
SELECT * FROM STUDENTS;
-- START A TRANSACTION
-- DOUBT
START TRANSACTION;
UPDATE STUDENTS SET SCHOOL = 'BSRKV';
ROLLBACK;
SELECT * FROM STUDENTS;
START TRANSACTION;
-- DELETE THE RECORD OF RAJ FROM THE STUDENT TABLE 
DELETE FROM STUDENTS WHERE S_NAME='ALEX';
ROLLBACK;
SELECT * FROM STUDENTS;
ROLLBACK;
-- DOUBT
-- DELETE THE SCHOOL DATA FROM STUDENT TABLE
ALTER TABLE STUDENTS DROP CITY;
-- ADD THE MULTIPLE COLUMNS IN THE STUDENT TABLE
ALTER TABLE STUDENTS ADD (CITY VARCHAR(20),P_NO BIGINT);
-- HOW TO DROP MULTIPLE COLUMNS 
ALTER TABLE STUDENTS DROP CITY, DROP P_NO;
-- ALTER TABLE NAME STUDENTS INTO STUDENTS_INFO
RENAME TABLE STUDENTS TO STUDENTS_INTO;

SET SQL_SAFE_UPDATES = 1;
RENAME TABLE STUDENTS_INTO TO HELLO;
SELECT * FROM HELLO;
UPDATE HELLO SET S_ID = 101 WHERE S_NAME = 'STEVE' ;

-- HOW CAN WE DELETE THE RECORD FROM TABLE --> DELETE FROM TABLE_NAMR WHERE COL_NAME=VALUE;
-- NOTE :- WHEN WE USE TCL COMMANDS USE IMMEDIATELY AFTER DML COMMANDS UNDER START TRANSACTION
-- HOW CAN WE DROP THE COLUMN IN TABLE --> ALTER TABLE TABLE_NAME DROP COL_NAME

-- STRING FUNCTIONS IN MYSQL(STRING FUNCTIONS)
SELECT * FROM CUSTOMER;
-- CHANGE THE FIRST_NAME INTO LOWERCASE
SELECT FIRST_NAME,LCASE(FIRST_NAME) FROM CUSTOMER;
SELECT FIRST_NAME,UCASE(FIRST_NAME) FROM CUSTOMER;
-- CONCAT THE FIRST NAME AND LAST NAME AS THE FULL NAME
SELECT *,FIRST_NAME || LAST_NAME AS FULL_NAME FROM CUSTOMER;
SELECT * ,FIRST_NAME+LAST_NAME AS FULL_NAME FROM CUSTOMER;
Insert into customer values(6, 'THAD HAR','SAI','2004-03-04','123456789');
DELETE FROM CUSTOMER WHERE FIRST_NAME = 'THAD HAR';
-- SUBSTRING --> RANGE OF CHARACTERS FROM MAIN STRING IS KNOWN AS SUBSTRING
-- SLICING --> THE PROCESS OF GETTING THE RANGE OF CHARACTERS IS KNOWN AS SLICING

SELECT FIRST_NAME,SUBSTR(FIRST_NAME,1,'1') FROM CUSTOMER;
RENAME TABLE HELLO TO STUDENTS;
-- #####################################
-- DOUBT
START TRANSACTION;
UPDATE STUDENTS SET SCHOOL = 'DPS';
ROLLBACK;
SELECT * FROM STUDENTS;
START TRANSACTION;
-- DELETE THE RECORD OF ALEX FROM THE STUDENT TABLE 
DELETE FROM STUDENTS WHERE S_NAME='STEVE';
ROLLBACK;
SELECT * FROM STUDENTS;
ROLLBACK;
-- DOUBT
-- #################################################################13/06/2025######################################################################
create table products(
product_id integer primary key,
product_type_id integer references product_types(product_type_id),
name varchar(30) not null,
description varchar(50),
price decimal(5,2)
);
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
USE GENAI;
-- AGGREGATES FUNCTIONS ( MIN ,MAX ,COUNT ,SUM , AVG)
-- CHECK THE DATA IN PRODUCTS
SELECT * FROM PRODUCTS;
-- GET THE MINIMUM PRICE FROM PRODUCTS TABLE
SELECT MIN(PRICE) AS MINIMUM_VALUE FROM PRODUCTS;
-- GET THE RECORDS OF PRODUCT TYPE ID MINIMUM PRICES
SELECT PRODUCT_TYPE_ID , MIN(PRICE) FROM PRODUCTS GROUP BY PRODUCT_TYPE_ID;
-- WE NEED TO USE GROUPBY FUNCTION WHEN WE ARE USING AGGREGATE FUNCTION 
-- GET THE RECORDS OF PRODUCT TYPE ID MINIMUM PRICES WITHOUT NULL VALUES
SELECT PRODUCT_TYPE_ID , MIN(PRICE) FROM PRODUCTS WHERE PRODUCT_TYPE_ID IS NOT NULL GROUP BY PRODUCT_TYPE_ID ;
-- GET THE MINIMUM PRICE OF PRODUCT IDS WHERE THE MINIMUM PRICE IS MORE THAN 12
SELECT PRODUCT_TYPE_ID , MIN(PRICE) FROM PRODUCTS WHERE PRODUCT_TYPE_ID IS NOT NULL GROUP BY PRODUCT_TYPE_ID HAVING MIN(PRICE) > 12 ;
-- GET THE ABOVE QUERY IN THE ASCENDING ORDER 
SELECT PRODUCT_TYPE_ID , MIN(PRICE) FROM PRODUCTS WHERE PRODUCT_TYPE_ID IS NOT NULL GROUP BY PRODUCT_TYPE_ID HAVING MIN(PRICE) > 12 ORDER BY MIN(PRICE) ASC LIMIT 1;
-- EXECUTION OF AGGREGATE FUNCTION --> SELECT AGGRE() FROM WHERE GROUPBY HAVING ORDERBY LIMIT
-- GET THE AVG PRICE OF A PRODUCT ALONG WITH THE PRODUCT TYPE ID HAVING AVG PRICE MORE THAN 20  AND PRINT THE PRODUCT TYPE ID EITH THE HIGHEST AVG PRICE
-- GET THE RECORD OF HIGHESET AVG PRICE IF A PRODUCT TYPE ID FROM PRODUCT TABLE
SELECT PRODUCT_TYPE_ID , AVG(PRICE) FROM PRODUCTS WHERE PRODUCT_TYPE_ID IS NOT NULL GROUP BY PRODUCT_TYPE_ID HAVING AVG(PRICE)>10 ORDER BY AVG(PRICE)DESC LIMIT 1;
--  GET THE RECORD OF MAXPRICE IF A PRODUCT TYPE ID FROM PRODUCT TABLE
SELECT PRODUCT_TYPE_ID , MAX(PRICE) FROM PRODUCTS WHERE PRODUCT_TYPE_ID IS NOT NULL GROUP BY PRODUCT_TYPE_ID HAVING MAX(PRICE) ORDER BY MAX(PRICE) DESC ;