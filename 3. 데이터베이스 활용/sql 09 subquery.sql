/* main query - 기본 쿼리
   sub query (부속 질의) - 쿼리 내부의 또 다른 쿼리
   상관부속질의 - main query와 sub query가 상호 관계를 갖는 경우 */
select ename, job, deptno
, (select dname from dept where deptno = 10)
from emp where deptno = 10;

select e.ename, e.job, e.deptno
, (select d.dname from dept d where e.deptno = d.deptno)
from emp e;

/*
 * subquery
 * - query 내부에 또 query가 있는 경우
 */
select ename, job, deptno, (select dname from dept where deptno = emp.deptno)
from emp; -- select절 서브쿼리는 스칼라 서브쿼리.

select *
from emp e, (select * from dept) d
where e.deptno = d.deptno; -- from절 서브쿼리는 인라인 뷰.

select * from emp
where deptno = (select deptno from dept where dname = 'SALES'); -- where절 서브쿼리는 네스티드(중첩) 서브쿼리.

select e1.ename, e1.job
		, (select dname from dept d1 where d1.deptno = e1.deptno) "상신자부서명"
		, e2.ename, e2.job
        , (select dname from dept d2 where d2.deptno = e2.deptno) "결재자부서명"
from emp e1 left outer join emp e2 on e1.mgr = e2.empno;

select e1.ename, e1.job, d1.dname
from emp e1, (select deptno, dname from dept) d1
where e1.deptno = d1.deptno;

select e1.ename, e1.job, d1.dname "상신자부서"
		, mngr.ename, mngr.job, mngr.dname
from emp e1, dept d1
	, (select e2.empno, e2.ename, e2.job, d2.dname
		from emp e2 inner join dept d2 on e2.deptno = d2.deptno) mngr
where e1.deptno = d1.deptno
and e1.mgr = mngr.empno;

select * from emp
where deptno = (select deptno from dept where dname = 'SALES');

/*
 * 단일행 서브쿼리 : 서브쿼리 수행 결과가 하나의 행을 가져오는 것
 * 다중행 서브쿼리 : 서브쿼리 수행 결과가 둘 이상의 행을 가져오는 것
 * - 단일행 또는 다중행 여부에 따라 조회 방법이 달라짐
 */
select * from emp
where deptno = (select deptno from dept where dname = 'RESEARCH');

select * from emp
where deptno = (select deptno from dept); -- error

select * from emp
where deptno in (select deptno from dept);

/*
 * 상관부속질의에서 다중행 서브쿼리 표현들 : in, not in, exists, not exists, all, any(=some)
 */
select * from dept;

select distinct deptno from emp;

select * from dept d
where deptno in (select deptno from emp e where e.deptno = d.deptno);

select * from dept d
where deptno not in (select deptno from emp e where e.deptno = d.deptno);

select * from dept d
where exists (select * from emp e where e.deptno = d.deptno);

select * from dept d
where exists (select 1 from emp e where e.deptno = d.deptno);

select * from dept d
where not exists (select * from emp e where e.deptno = d.deptno);

select * from dept d
where not exists (select 1 from emp e where e.deptno = d.deptno);

select losal from salgrade;

select * from emp
where sal > all(select losal from salgrade);

select * from emp
where sal > any(select losal from salgrade);

select hisal from salgrade;

select * from emp
where sal < all(select hisal from salgrade);

select * from emp
where sal < any(select hisal from salgrade);

/*
 * 서브 쿼리를 이용한 테이블 복제 (내용 포함 복제)
 * 테스트 테이블 또는 백업 테이블 만들 때 용이하다.
 */
create table emp2
as select * from emp;

create table emp21
as select empno, ename, job, sal, deptno from emp;

create table emp_for_30
as select * from emp where deptno = 30;

create table emp22
as
select e.empno, e.ename, e.job, e.sal, e.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno;

/*
 * 서브 쿼리를 이용한 테이블 복제 (내용 불포함, 테이블 구조만 복제)
 */
create table emp3
as select * from emp where 1 = 2;

create table emp_empty as select * from emp where 1 = 2;

create table emp21
as select empno, ename, job, sal, deptno from emp where 1 = 2;

create table emp32
as select e.empno, e.ename, e.job, e.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno and 1 = 2;

drop table emp21;
drop table emp22;
drop table emp3;
drop table emp31;
drop table emp32;
drop table emp_empty;
drop table emp_for_30;

/*
 * 서브 쿼리를 이용한 update
 */
select deptno from dept where dname = 'OPERATIONS';

update emp2 set deptno = (select deptno from dept where dname = 'OPERATIONS')
where deptno = 10;

select @@sql_safe_updates;

SET SQL_SAFE_UPDATES = 0;

select @@sql_safe_updates;

update emp2 set deptno = (select deptno from dept where dname = 'OPERATIONS')
where deptno = 10;

/*
 * 서브 쿼리를 이용한 delete
 */
select deptno from dept where dname = 'SALES';

delete from emp2 where deptno = (select deptno from dept where dname = 'SALES');

select deptno from dept where dname in ('RESEARCH','OPERATIONS');

delete from emp2
where deptno in (select deptno from dept where dname in ('RESEARCH','OPERATIONS'));

SET SQL_SAFE_UPDATES = 1;

select @@sql_safe_updates;

drop table emp2;
