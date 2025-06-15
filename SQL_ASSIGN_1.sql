USE DBT;
create table student 
(id integer primary key, 
course varchar(10),
location varchar(10),
batch integer,
marks integer
);
insert into student values(1,'Mtech','Bangalore',1,70);
insert into student values(2,'Mtech','Bangalore',1,85);
insert into student values(3,'Mtech','Bangalore',1,71);
insert into student values(4,'Mtech','Bangalore',1,64);
insert into student values(5,'Mtech','Bangalore',2,55);
insert into student values(6,'Mtech','Bangalore',2,74);
insert into student values(7,'Mtech','Bangalore',2,84);
insert into student values(8,'Mtech','Bangalore',2,63);
insert into student values(9,'Mtech','Chennai',1,50);
insert into student values(10,'Mtech','Chennai',1,98);
insert into student values(11,'Mtech','Chennai',1,67);
insert into student values(12,'Mtech','Chennai',1,20);
insert into student values(13,'Dse','Bangalore',1,64);
insert into student values(14,'Dse','Bangalore',1,88);
insert into student values(15,'Dse','Bangalore',1,79);
insert into student values(16,'Dse','Bangalore',1,69);
insert into student values(17,'Dse','Chennai',1,80);
insert into student values(18,'Dse','Chennai',1,61);
insert into student values(19,'Dse','Chennai',1,39);
insert into student values(20,'Dse','Chennai',1,48);
insert into student values(21,'Dse','Chennai',1,96);
insert into student values(22,'Dse','Chennai',2,78);
insert into student values(23,'Dse','Chennai',2,69);
insert into student values(24,'Dse','Chennai',2,86);
insert into student values(25,'Dse','Chennai',2,93);
insert into student values(26,'Dse','Chennai',2,66);
insert into student values(27,'Dse','Chennai',1,80);
insert into student values(28,'Mtech','Bangalore',1,85);

SELECT * FROM STUDENT;
USE DBT;

-- 1. List the average marks of dse students
SELECT AVG(MARKS) AS AVG_MARKS FROM STUDENT WHERE COURSE = 'DSE';

-- 2. List the average marks of dse students for each location
SELECT LOCATION,AVG(MARKS) FROM STUDENT WHERE COURSE = 'DSE' GROUP BY LOCATION;

-- 3. list the average marks of students in bangalore for different courses
SELECT COURSE,AVG(MARKS) FROM STUDENT WHERE LOCATION = 'bangalore' GROUP BY COURSE;

-- 4. List the average marks of dse students for each location,batch
SELECT LOCATION,BATCH,AVG(MARKS) FROM STUDENT WHERE COURSE = 'DSE' GROUP BY LOCATION,BATCH;


-- 5. list the highest mark in each course, location wise
SELECT COURSE, LOCATION, MAX(MARKS) AS MAX_MARKS FROM STUDENT GROUP BY COURSE, LOCATION;


-- 6. list the highest mark in each course, location,batch wise
SELECT COURSE, LOCATION,BATCH,MAX(MARKS) AS MAX_MARKS FROM STUDENT GROUP BY COURSE, LOCATION,BATCH;

-- 7. List the highest mark in each location
SELECT LOCATION,MAX(MARKS) AS MAX_MARKS FROM STUDENT GROUP BY LOCATION;


-- 8. List students who have got more than 75 marks
SELECT * FROM STUDENT WHERE MARKS > 75 ;

-- 9 List the number of mtech student in Chennai
SELECT COUNT(COURSE) FROM STUDENT WHERE COURSE = 'MTECH' AND LOCATION = 'CHENNAI' ;

-- 10. List students who have got less than 40 in Chennai
SELECT * FROM STUDENT WHERE MARKS <40 AND LOCATION ='CHENNAI';

-- 11. List the top 3 performers in DSE and Mtech
SELECT * FROM STUDENT WHERE COURSE IN ('DSE','MTECH') ORDER BY MARKS DESC LIMIT 3;