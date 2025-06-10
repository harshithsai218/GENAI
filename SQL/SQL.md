# 10/06/2025
```sql
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
```