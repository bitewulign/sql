-- Retrieving all rows and columns from a TABLE
-- Want to see all the data 
SELECT * FROM emp;
-- alternative way
SELECT empno,ename,job,sal,mgr,hiredate,comm,deptno
FROM emp;

-- 1.2 retrieving a subset of rows from a TABLE 
-- want to see only rows? 
SELECT * 
FROM emp
WHERE deptno = 10;

-- 1.3.Finding rows that satisfy multiple Conditions
-- Want to retrieve that satisfy multiple conditions
SELECT * 
FROM emp
WHERE deptno = 10
	OR comm is not NULL
	OR sal <= 2000 AND deptno = 20; 
-- Not working above 
-- use parenthesis to make it work
SELECT * 
FROM emp
WHERE (deptno = 10
	OR comm is not NULL
	OR sal <= 2000) 
	AND deptno = 20; 	
-- Retrieving a asubset of columns from a table 
-- Want to see specific columns?
SELECT ename,deptno,sal FROM emp;

-- 1.5 Providing meaningful names for columns
-- Would like to change the names of columns?
SELECT sal,comm FROM emp;
-- rename using AS
SELECT sal AS salary,comm AS commision FROM emp;
--1.6 Referencing an Aliased Columns in the WHERE Clause
SELECT sal AS salary,comm AS commision 
FROM emp
WHERE salary < 5000;
-- Above failed
SELECT * 
FROM (SELECT sal AS salary,comm AS commision 
FROM emp) x
WHERE salary < 5000;

-- Concatenating column VALUES
SELECT ename, job
FROM emp
WHERE deptno = 10;
-- CONCAT
SELECT CONCAT(ename, 'WORK AS A', job) as msg
FROM emp
WHERE deptno = 10;

--Using conditional logic in a select statement
-- CASE
SELECT ename, sal,
	CASE
		WHEN sal <= 2000 THEN 'Underpaid'
		WHEN sal >= 4000 THEN 'Overpaid'
		ELSE 'Ok'
	END AS status
FROM emp;

-- 1.9 Limiting the number of rows returned
-- LIMIT
SELECT * FROM emp LIMIT 10;

-- 1.10 Returning n Random records from a TABLE
SELECT ename,job 
FROM emp 
ORDER BY RANDOM() LIMIT 10;

-- 1.11 Finding null VALUES
-- NULL
SELECT * FROM emp
WHERE comm is NULL;

-- 1.12 Transforming NULLS to REAL VALUES
SELECT COALESCE(comm,0) FROM emp;
-- or
SELECT
	CASE
		WHEN comm is not NULL THEN comm 
		ELSE 0
	END AS null_2_real
FROM emp;

-- Searching for patterns
-- IN
SELECT ename,job,deptno
FROM emp
WHERE deptno IN (10,20);
-- LIKE and %
SELECT ename,job,deptno
FROM emp
WHERE deptno IN (10,20)
	AND (ename LIKE '%I%' or job LIKE '%ER');