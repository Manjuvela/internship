CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika','Arora',100000, '14-02-20 09.00.00','HR'),
(002,'Niharika','Verma',80000,'14-06-11 09.00.00','Admin'),
(003,'Vishal', 'Singhal',300000,'14-02-20 09.00.00', 'HR'),
(004, 'Amitabh' ,'Singa', 500000,'14-02-20 09.00.00','Admin'),
(005,'Vivek','Bhati',500000,'14-06-11 09.00.00','Admin'),
(006,'Vipul','Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish','Kumar',75000,'14-01-20 09.00.00','Account'),
(008,'Geetika', 'Chauhan',90000,'14-04-11 09.00.00', 'Admin');

/*QUESTIONS*/

/*  1  WRITE AN SQL QUERY TO FETCH "FIRST_NAME" FROM THE WORKER TABLE USING THE ALIAS NAME <WORKER_NAME>.*/
SELECT  FIRST_NAME AS WORKER_NAME FROM Worker;
SELECT UPPER(FIRST_NAME) FROM Worker;

/* 2  WRITE AN SQL QUERY TO FETCH UNIQUE VALUES OF DEPARTMENT FROM THE  Worker TABLE */
SELECT DISTINCT DEPARTMENT FROM Worker;

/* 3  WRITE AN SQL QUERY TO PRINT THE FIRST THREE CHARACTERS OF FIRST_NAME FROM THE Worker TABLE */
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ST THREE CHARACTERS OF FIRST_NAME FROM WorkerTABLE */
SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker;
SELECT UPPER(SUBSTRING(FIRST_NAME,1,3)) FROM Worker;

/* 4  WRITE AN SQL QUERY TO FETCH UNIQUE VALUES OF DEPARTMENT FROM THE  Worker TABLE AND PRINT ITS LENGTH */
SELECT DISTINCT LENGTH(DEPARTMENT) FROM Worker;

/* 5 WRITE AN SQL QUERY TO PRINT  ALL WORKER DETAILS FROM THE WORKER TABLE ORDER BY FIRST_NAME ASCENDING AND DEPARTMENT DESCENDING */
SELECT * FROM Worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

/* 6 WRITE AN SQL QUERY TO PRINT DETAILS OF WORKERS WITH DEPARTMENT NAME AS 'ADMIN' */
SELECT * FROM Worker 
WHERE DEPARTMENT LIKE 'Admin';
 
 /* 7  WRITE AN SQL QUERY TO PRINT DETAILS OF WORKERS WHOSE SALARY LIES BETWEEN 100000 AND 500000. */
 SELECT * FROM Worker WHERE SALARY BETWEEN 100000 AND 500000;
 
 /* 8 WRITE AN SQL QUERY TO FETCH WORKER NAMES WITH SALARIES >=500000 AND <=100000 */
 SELECT CONCAT(FIRST_NAME ,' ',LAST_NAME) AS WORKER_NAME, SALARY FROM Worker
 WHERE SALARY BETWEEN 500000 AND 100000;
 
 /* WRITE AN SQL QUERY TO SHOW ONLY EVEN ROWS FROM THE WORKER TABLE */
 SELECT * FROM Worker WHERE MOD (WORKER_ID,2) = 0;
 
 /* 10 WRITE AN SQL QUERY TO PRINT DETAILS OF WORKERS WHO JOINED IN FEB 2014 */
 SELECT * FROM Worker WHERE YEAR(JOINING_DATE)=2014 AND MONTH(JOINING_DATE)=2;