/*
 * subquery
 * - query ���ο� �� query�� �ִ� ���
 */
select ename, job, deptno, (select dname from dept where deptno = emp.deptno)
from emp; -- select�� ���������� ��Į�� ��������.

select *
from emp e, (select * from dept) d
where e.deptno = d.deptno; -- from�� ���������� �ζ��� ��.

select * from emp
where deptno = (select deptno from dept where dname = 'SALES'); -- where�� ���������� �׽�Ƽ��(��ø) ��������.

select e1.ename, e1.job
		, (select dname from dept d1 where d1.deptno = e1.deptno) "����ںμ���"
		, e2.ename, e2.job
        , (select dname from dept d2 where d2.deptno = e2.deptno) "�����ںμ���"
from emp e1 left outer join emp e2 on e1.mgr = e2.empno;

select e1.ename, e1.job, d1.dname
from emp e1, (select deptno, dname from dept) d1
where e1.deptno = d1.deptno;

select e1.ename, e1.job, d1.dname "����ںμ�"
		, mngr.ename, mngr.job, mngr.dname
from emp e1, dept d1
	, (select e2.empno, e2.ename, e2.job, d2.dname
		from emp e2 inner join dept d2 on e2.deptno = d2.deptno) mngr
where e1.deptno = d1.deptno
and e1.mgr = mngr.empno;

select * from emp
where deptno = (select deptno from dept where dname = 'SALES');

/*
 * ������ �������� : �������� ���� ����� �ϳ��� ���� �������� ��
 * ������ �������� : �������� ���� ����� �� �̻��� ���� �������� ��
 * - ������ �Ǵ� ������ ���ο� ���� ��ȸ ����� �޶���
 */
select * from emp
where deptno = (select deptno from dept where dname = 'RESEARCH');

select * from emp
where deptno = (select deptno from dept); -- error

select * from emp
where deptno in (select deptno from dept);

/*
 * ����μ����ǿ��� ������ �������� ǥ���� : in, not in, exists, not exists, all, any(=some)
 */
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
 * ���� ������ �̿��� ���̺� ���� (���� ���� ����)
 * �׽�Ʈ ���̺� �Ǵ� ��� ���̺� ���� �� �����ϴ�.
 */
create table emp2
as select * from emp;

create table emp_for_30 as select * from emp where deptno = 30;

/*
 * ���� ������ �̿��� ���̺� ���� (���� ������, ���̺� ������ ����)
 */
create table emp3
as select * from emp where 1 = 2;

create table emp_empty as select * from emp where 1 = 2;

drop table emp3;

drop table emp_empty;

drop table emp_for_30;

/*
 * ���� ������ �̿��� update
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
 * ���� ������ �̿��� delete
 */
select deptno from dept where dname = 'SALES';

delete from emp2 where deptno = (select deptno from dept where dname = 'SALES');

select deptno from dept where dname in ('RESEARCH','OPERATIONS');

delete from emp2
where deptno in (select deptno from dept where dname in ('RESEARCH','OPERATIONS'));

SET SQL_SAFE_UPDATES = 1;

select @@sql_safe_updates;

drop table emp2;
