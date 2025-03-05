/*
 * index ����
 * create index [index�̸�] on ���̺��̸�(�Ӽ��̸�)
 * pk�� uk�� �ڵ����� �ε��� ����
 */

drop table emp3;

create table emp3
as
select * from emp;

create index idx_emp3_sal
on emp3(sal);

/*
 * index ���� ��ȸ
 */
show index from emp3;

/* ������ - explain current statement �� */
select * from emp;
select * from emp where ename = 'ALLEN';
select * from emp3 where sal = 3000;

/*
 * index ����
 * - drop index [index�̸�]
 */
drop index idx_emp3_sal on emp3;

drop index idx_emp_test on emp;

create index idx_emp_test on emp(job, sal);

select * from emp where job='ANALYST' and sal = 3000; -- index O

select * from emp where job='ANALYST'; -- index O (�ε��� ���� ��, �� �տ� ��ġ�� ��)

select * from emp where sal = 3000; -- index X

drop index idx_emp_test on emp;

create index idx_emp_test on emp(sal, job);

select * from emp where sal = 3000 and job='ANALYST'; -- index O

select * from emp where job='ANALYST'; -- index X

select * from emp where sal = 3000; -- index O (�ε��� ���� ��, �� �տ� ��ġ�� ��)
