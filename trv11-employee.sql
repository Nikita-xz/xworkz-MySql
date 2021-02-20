INSERT INTO trv11.mall values (1,'vena','bangalore','7898765432');
SELECT *FROM trv11.employee;
/*INSERT INTO trv11.corona_batch(name,id,address,status)VALUES(4,'ram','bangalore',FALSE);*/

ALTER TABLE trv11.employee
ADD COLUMN address1 varchar(100);

desc trv11.employee;

ALTER TABLE trv11.employee
DROP COLUMN address1;

ALTER TABLE trv11.employee
MODIFY column address varchar(100) not null ;

Rename table employee to feb_batch;

truncate table feb_batch;
DROP TABLE mall;

INSERT into mall(name,phone,address) values ('nikita','9087654329','bangalore');
select *from mall;

alter table trv11.mall
add column date_time timestamp DEFAULT current_timestamp;

insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values (7000,'Jhon','manager',7698,'2020-06-18',2500.00,NULL,50);
select *from emp;
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values(7002,'sham','manager',7698,'2020-06-18',2500.00,NULL,50),
(7004,'Ravi','clerk',7782,'2000-12-12',500.00,NULL,50);
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values(7369,'SMITH','CLERK',7902,'1993-06-13',800.00,0.00,20),
(7499,'ALLEN','SALESMAN',7698,'1998-08-15',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'1996-03-26',1250.00,500.00,30),
(7566,'JONES','MANAGER',7839,'1995-10-31',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1998-12-05',1250.00,1400.00,30),
(7698,'BLAKE','MANAGER',7839,'1992-06-11',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'1993-05-14',2450.00,NULL,10),
(7788,'SCOTT','ANALYST',7566,'1996-03-05',3000.00,NULL,20),(7839,'KING','PRESIDENT',NULL,'1990-06-09',5000.00,0.00,10),
(7844,'TURNER','SALESMAN',7698,'1995-06-04',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'1999-06-04',1100.00,NULL,20),
(7900,'JAMES','CLERK',7698,'2000-06-23',950.00,NULL,30),(7902,'FORD','ANALYST',7566,'1997-12-05',3000.00,NULL,20),
(7934,'MILLER','CLERK',7782,'2000-01-21',1300.00,NULL,10);
Select *from emp;

insert into dept(deptno,dname,location) values(10,'Accounting','New York'),(20,'Research','Dallas'),
(30,'Sales','Chicago'),(40,'Operations','Boston'),(50,'production','india'),(60,'marketing','bangalore'),
(70,'finance','mumbai');
select *from dept;

select * from emp where sal >1000;
select * from emp where sal >=1000 AND sal<3000;
select * from emp where sal !=3000;
select * from emp where sal <>3000;
select * from emp where deptno=10;
select * from emp where deptno IN(10,20,30);
select * from emp where ename like '_L%';
select * from emp where sal between 2000 AND 3000;
select ename,empno from emp;
select ename,comm from emp where comm is null;
select * from emp where mgr is NULL;
select * from emp where job ='salesman' and deptno=30;
select * from emp where job ='salesman' and deptno=30 and sal>1500;
select * from emp where ename like 's%' or ename like 'a%';
select * from emp where ename not like 's%';
select max(sal), min(sal), sum(sal), avg(sal), count(*) from emp;
select count(comm) from emp;
select count(*) from emp where deptno=30;
select sum(sal) from emp where deptno=30;
select count(*) from emp where job='CLERK' and deptno=20;
select sum(sal) from emp group by deptno;
select job,max(sal) from emp group by job;









