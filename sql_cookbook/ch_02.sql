-- Chapter 2 sorting query results
-- 2.1 Returning query results in a specific ORDER
-- Lowest to highest or highest to lowest
-- here 3 represents the specific number representing the column we need to sort
SELECT ename,job,sal 
FROM emp
WHERE deptno = 10
ORDER BY 3 DESC;

-- Sorting by Multiple Fields
-- Sort values with 2 or more columns names
SELECT empno,deptno, sal,ename,job
FROM emp
ORDER BY deptno,sal DESC;

-- 2.3 SOrting by susbstrings
SELECT ename,job 
FROM emp
ORDER BY substr(job,length(job)-1);

-- SORTING Mixed alphebetical DATA 
CREATE VIEW V
AS
SELECT ename||' '||deptno AS data 
FROM emp;
SELECT * FROM V;
-- DROPING VIEW TABLE
--DROP VIEW V;
-- ORDER BY deptno*/

/*
SELECT data 

ORDER BY replace(data,
		replace(
		translate(data,'0123456789','##########'),'#',''),'') nums,
		replace(data,
		translate(data,'0123456789','##########'),'#','') chars
FROM V;
*/
	
		
