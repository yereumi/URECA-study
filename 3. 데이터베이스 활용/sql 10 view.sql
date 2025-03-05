/*
 * view ������ ���� �⺻ ���̺� �����
 */
drop table emp3;

create table emp3
as select * from emp;

select @@sql_safe_updates;

SET SQL_SAFE_UPDATES = 0;

select @@sql_safe_updates;

/*
 * create view
 * - ��� �������� ���̺��� �ƴ� ������ ���̺�
 * - ��� select������ ������� �ִ�.
 * - create view [���̸�] as [��������]
 * - ��� ���̺�ó�� select, insert, update, delete ����
 * - �信�� ����Ǵ� select, insert, update, delete��
 *   ����� �䰡 ��ǥ�ϴ� ���̺� �Ǵ� �䰡 ������� ���� ���̺��� �����
 * - join���� ������� ��� insert, delete �Ұ���
 */
drop view view_emp30;

create view view_emp30
as
select ename, job, sal, deptno
from emp3;

select * from view_emp30;

/*
 * create or replace view
 * - �䰡 ������ ����, ������ �����϶�
 */
create or replace view view_emp30
as
select * from emp3 where deptno = 30;

select * from view_emp30;

/*
 * �並 ����� insert�� ���� ���� ���̺� data�� �Էµ�
 */
insert into view_emp30
values(1111, '������', '���', null, CURDATE(), 100, 10000, 30);

select * from view_emp30;

insert into view_emp30
values(1112, '����', '���', null, CURDATE(), 500, 5000, 20);

select * from view_emp30;

select * from emp3;

/*
 * �並 ����� update�� �信�� ��ȸ ������ data�� update ����
 */
select @@sql_safe_updates;

set sql_safe_updates = 0;

select @@sql_safe_updates;

update view_emp30 set deptno = 10
where empno = 1112; -- error�� �ƴϳ�, data ���� �ȵ�.

select * from emp3;

update view_emp30 set ename = '������¯'
where empno = 1111;

select * from view_emp30;

select * from emp3;

set sql_safe_updates = 1;

select @@sql_safe_updates;

/*
 * with check option
 * - �並 ���� select���� where �������� �Ӽ��� update �Ұ�
 */
insert into view_emp30
values(1113, '������', '����', null, curdate(), 500, 5000, 30);

select * from view_emp30;

create or replace view view_emp30
as
select * from emp3
where deptno = 30 with check option;

select @@sql_safe_updates;

set sql_safe_updates = 0;

select @@sql_safe_updates;

update view_emp30 set deptno = 10
where ename = '������'; -- error

set sql_safe_updates = 1;

select @@sql_safe_updates;

/*
 * �並 ����� delete�� �信�� ��ȸ ������ data�� delete ����
 */
select * from view_emp30;

select * from emp3;

select @@sql_safe_updates;

set sql_safe_updates = 0;

select @@sql_safe_updates;

delete from view_emp30 where ename = '������'; -- error�� �ƴϳ�, data ���� �ȵ�.

delete from view_emp30 where ename = '������';

select * from emp3;

set sql_safe_updates = 1;

select @@sql_safe_updates;

/*
 * ������ ����Ͽ�, read only �並 ����� ���.
 * - �ش� �並 ���� insert / delete�� �Ұ����ϰ� ����
 */
select @@sql_safe_updates;

set sql_safe_updates = 0;

select @@sql_safe_updates;

update emp3 set deptno = 20
where job = '���';

create or replace view view_emp30
as
select e.empno, e.ename, e.job, e.mgr
	, e.hiredate, e.sal, e.comm, d.deptno
from emp3 e, dept d
where e.deptno = d.deptno
and e.deptno = 20;

select * from view_emp30;

insert into view_emp30
values(2111, '������', '����', null, curdate() , 500, 5000, 20); -- error

update view_emp30 set ename = '������' where empno = 7369;

delete from view_emp30 where empno = 7369; -- error

select * from emp3;

set sql_safe_updates = 1;

select @@sql_safe_updates;

/*
 * drop view
 * - drop view [���̸�]
 */
drop view view_emp30;

drop table emp3;
