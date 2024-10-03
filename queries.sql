-- table "empl" creation query
create table empl (
  `empno` int not null primary key,
  `ename` varchar(60) not null,
  `job` varchar(60) not null,
  `mgr` int null default null,
  `hiredate` date not null,
  `sal` decimal(11,2) not null,
  `comm` decimal(11,2) not null,
  `deptno` int not null
);

insert into empl (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) values 
(8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, null, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00,300.00 , 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, null, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, null, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, null, 10),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, null, 20),
(8839, 'AMIR', 'PRESIDENT', null, '1991-11-18', 5000.00, null, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

-- Write a query to display ENAME and SAL of employees whose salary is greater than or equal to 2200
SELECT ename, sal FROM empl WHERE sal >= 2200;

-- Write a query to display details of employees who are not getting a commission.
SELECT * FROM empl WHERE comm = 0;

-- Write a query to display employee name and salary of those employees who don’t have their salary in the range of 2500 to 4000.
SELECT ename, sal FROM empl WHERE sal NOT BETWEEN 2500 AND 4000;

-- Write a query to display the name, job title, and salary of employees who don’t have a manager.
SELECT ename, job, sal FROM empl WHERE mgr IS NULL;

-- Write a query to display the name of an employee whose name contains "A" as third alphabet? 
SELECT ename  FROM empl WHERE ename LIKE '__A%';

-- Write a query to display the name of an employee whose name contains "T" as last alphabet? 
SELECT ename FROM empl WHERE ename LIKE '%T';





 

 



 8698 SALESMAN 8698   8839 

1600.00
300.00 30
 1250.00
500.00
30
2985.00 NULL
20
8654

SALESMAN 8698 
1250.00
1400.00
30
8698

MANAGER 8839

2850.00 NULL
30
8882
SHIVANSH
MANAGER 8839

2450.00
NULL
10
8888

 8566

3000.00 NULL
20
8839

 NULL

5000.00
NULL
10
8844 
SALESMAN 8698

1500.00
0.00
30