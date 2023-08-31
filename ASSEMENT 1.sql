create database company;

use company;

CREATE TABLE WORKER_1
(
 WORKER_ID INT PRIMARY KEY,
 FIRST_NAME VARCHAR(35),
 LAST_NAME VARCHAR(35),
 SALARY INT,
 JOINING_DATE DATETIME ,
 DEPARTMENT VARCHAR(35)
);

SELECT * FROM WORKER_1;

-- FIRST_NAME ASC
SELECT FIRST_NAME FROM WORKER_1 ORDER BY FIRST_NAME ASC;

-- DEPARTMENT DESC
SELECT DEPARTMENT FROM WORKER_1 ORDER BY DEPARTMENT DESC;

-- Workers with the first names “Vipul” and “Satish” 

SELECT * FROM WORKER_1 WHERE FIRST_NAME= "Vipul" OR FIRST_NAME= "Satish";


-- WORKERS WHOSE FIRST_NAME ENDS WITH "H"

SELECT * FROM WORKER_1 WHERE FIRST_NAME LIKE "%H";

--  Workers whose SALARY lies between 1.

SELECT * FROM WORKER_1 WHERE SALARY BETWEEN 75000 AND 200000;

--  to fetch duplicate records having matching data in some fields of a table. 

SELECT COUNT(WORKER_ID),DEPARTMENT
FROM WORKER_1
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID)> 1;

-- to show the top 6 records of a table. 
 
 SELECT * FROM WORKER_1 LIMIT 6;
 
 -- to fetch the departments that have less than five people in them.
 
 SELECT * from worker_1 limit 5;
 
 --  to show all departments along with the number of people in there. 
 
SELECT * FROM WORKER_1;

-- to print the name of employees having the highest salary in each department

SELECT MAX(SALARY) AS MAXIMUM FROM WORKER_1;







