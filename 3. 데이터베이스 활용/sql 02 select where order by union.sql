/*
  ���� �� �ּ�
*/
-- �� �� �ּ�

/*
 * select : �˻� ��ɾ� (ã�ƶ� ��� �ǹ�)
 * select �ڿ��� ã�� ���� �Ӽ����� ��ġ
 * - �Ӽ����� ���� ���� ,(comma)�� ���� ����
 * - �Ӽ��� �ڸ��� * �� �� ���, ��� �Ӽ��� �ǹ���
 * - * ����� �ý��� ������ ���� ��ų �� �ֱ� ������ �ٶ������� ����
 * - �������� ���ؼ��� * ����� �ٶ������� ����
 * - ã�����ϴ� �Ӽ��� ������, �Ӽ����� ��� ����ϴ� ���� �ٶ���
 *
 * from : ã�� data�� �ִ� table ���� ��ɾ�
 * from�� �ڿ��� ã�� data�� �ִ� table�� ��ġ
 * - from ���� table���� ���� ���� ,(comma)�� ���� ����
 *
 * where : from �ڿ� ������ table ������, ���ϴ� ������ �����ϴ� ��ɾ�
 * - �������̶� ��
 * - ���������� ������ ���� �Ӽ�, ���� ������, ���� ���� data ������ ��ġ
 * - ��) where job = 'MANAGER'
 * - ����!!! ���ڿ��� ���� ����ǥ('')�� ������
 * - ����!!! ��ɾ�� ��ҹ��� ������ ����
 * - ����!!! ���� data�� ��ҹ��� ������ ����
 *
 * ���������� = > < >= <= <> != �� ���� �� �����ڰ� �� �� ����
 *
 * �������� like : ����� data �˻�
 * - like�� �԰� ���̴� % : ��� ���� (���� ���� ����, ���ڰ� ���� ��쵵 ����)
 * - like�� �԰� ���̴� _ : �� ����
 *
 * regexp : ���Խ� �˻�
 *
 * distinct : �ߺ� ���� ��ɾ�
 *
 * count() : ��ȸ ��� ������ �˷��ִ� �Լ�
 * - ��) select count(*) from emp; -> emp table�� ����� ��ü ������ �˷���
 * - null �� �ƴ� data�� �������� ��ȸ��
 *
 * select ������ ��Ģ ���� ��� ����
 *
 * dual : ������ ���� ���̺�
 *
 * select �Ӽ��� ����(alias) �ֱ�
 * - ��ȸ�� �Ӽ����� as �� ����Ͽ� �ٲ� �� ����
 * - ��) select sal as �޿� from emp;
 * - ��ȸ�� �Ӽ����� as ���̵� �ٲ� �� ����
 * - ��) select sal �޿� from emp;
 * - ��ȸ�� �Ӽ����� "" �� ����Ͽ� �ٲ� �� ����
 * - ��) select sal as "�� ��" from emp;
 *
 * ���̺� �̸��� ����(alias) �ֱ�
 * - select �Ӽ��� ȣ���� ��, ���̺��.�Ӽ��� ���� ǥ���� �� ����
 * - ��) select emp.ename �����̸� from emp;
 * - ���̺� �̸��� ���̺� �� �ڿ� ������ �� �� ����
 * - ��) select ename �����̸� from emp �������̺�;
 * - ���̺��� �������� select �Ӽ��� ȣ���� �� ����
 * - ��) select �������̺�.ename �����̸� from emp �������̺�;
 *
 * null : data ������ �ǹ� (0 �Ǵ� ������ �ƴ�)
 * - Ư�� ������ null�� data�� ã�� ��, �������� is null ���
 * - ��) where comm is null
 * - Ư�� ������ null�� �ƴ� data�� ã�� ��, �������� is not null ���
 * - ��) where comm is not null
 *
 * and�� or : �������� �߰��ϴ� ��ɾ�
 * - and : ���� ���ǰ� ���� ������ ��� �����ϴ� ����� ���� (������)
 * - or : or ���� ������ �����ϰų�, or ���� ������ �����ϴ� ��� ����� ���� (������)
 * - and �Ǵ� or�� ���ϴ� ����� ����ŭ �߰� ����
 *
 * between and : ���� �˻�
 * - ��) where sal >= 1100 and sal <= 2450;
 * - ��) where sal between 1100 and 2450;
 *
 * in : in �ڿ� ���� ()�ȿ� ���ԵǴ� data �˻�
 * - ��) where sal in (800, 1600, 2450);
 * not in : in �ڿ� ���� ()�ȿ� ���Ե��� �ʴ� data �˻�
 * - ��) where sal not in (800, 1600, 2450);
 *
 * order by : data�� ����
 * - order by �ڿ��� ���� �������� �����ϴ� �Ӽ��� ��
 * - order by �ڿ��� ���� �Ӽ��� ,(comma)�� �����Ͽ� ��� ����
 * - asc : ����(���� ���ں���), ����(���� �������), ����(���� ���ں���), null(�ǵڿ�)
 * - desc : ����(ū ���ں���), ����(���� ��������), ����(�ֱ� ���ں���), null(�Ǿտ�)
 * - asc �� �⺻ ����
 */

show tables; -- ���� ����ڰ� ���� ������ ��� table ��ȸ

select * from emp;

select ename from emp;

select empno, ename, job, sal, deptno from emp;

select empno, ename, job, sal, deptno from emp where job = 'MANAGER';

select empno, ename, job, sal, deptno from emp where job > 'MANAGER';

select empno, ename, job, sal, deptno from emp where job >= 'MANAGER';

select empno, ename, job, sal, deptno from emp where job < 'MANAGER';

select empno, ename, job, sal, deptno from emp where job <= 'MANAGER';

select empno, ename, job, sal, deptno from emp where job <> 'MANAGER';

select empno, ename, job, sal, deptno from emp where job != 'MANAGER';

select empno, ename, job, sal, deptno from emp where sal = 1500;

select empno, ename, job, sal, deptno from emp where sal > 1500;

select empno, ename, job, sal, deptno from emp where sal >= 1500;

select empno, ename, job, sal, deptno from emp where sal < 1500;

select empno, ename, job, sal, deptno from emp where sal <= 1500;

select empno, ename, job, sal, deptno from emp where sal <> 1500;

select empno, ename, job, sal, deptno from emp where sal != 1500;

select empno, ename, job, sal, deptno from emp where ename like 'A%';

select empno, ename, job, sal, deptno from emp where ename like '%S';

select empno, ename, job, sal, deptno from emp where ename like '%L%';

select empno, ename, job, sal, deptno from emp where ename like '_L%';

select empno, ename, job, sal, deptno from emp where ename like '__L%';

select empno, ename, job, sal, deptno from emp where ename like '___L%';

select empno, ename, job, sal, deptno from emp where ename like '__A__';

select * from emp where empno regexp '9'; -- empno�� 9�� �� ��� ���.

select * from emp where ename regexp '^[A]'; -- ename ù ���ڰ� A�� ���.

select * from emp where ename regexp '^[A-C]'; -- ename ù ���ڰ� A���� C�� ���.

select job from emp;

select distinct job from emp;

select count(*) from emp;

select count(job) from emp;

select count(distinct job) from emp;

select count(comm) from emp;

select 100 + 200 from dual;

select 100 - 200 from dual;

select 100 * 200 from dual;

select 100 / 200 from dual;

select 100 + 200;

select 100 - 200;

select 100 * 200;

select 100 / 200;

select empno, ename, job, sal, sal * 12
from emp;

select empno, ename, job, sal, sal * 12, comm, sal * 12 + comm
from emp;

select empno, ename, job, sal, sal * 12, ifnull(comm, 0), sal * 12 + ifnull(comm, 0)
from emp;

select sal * 12 as ���� from emp;

select sal * 12 ���� from emp;

select sal * 12 as "�� ��" from emp;

select empno, ename, job, sal, sal * 12 as ����
, ifnull(comm, 0) ������, sal * 12 + ifnull(comm, 0) "�� �� ��"
from emp;

select ename, job, sal, sal * 12 + ifnull(comm, 0) ���� from emp order by sal desc;
select ename, job, sal, sal * 12 + ifnull(comm, 0) AS ���� from emp order by sal desc;
select ename, job, sal, sal * 12 + ifnull(comm, 0) "�� ��" from emp order by sal desc;
select ename, job, sal, sal * 12 + ifnull(comm, 0) AS "�� ��" from emp order by sal desc;
select ename, job, sal, sal * 12 + ifnull(comm, 0) '�� ��' from emp order by sal desc;
select ename, job, sal, sal * 12 + ifnull(comm, 0) AS '�� ��' from emp order by sal desc;

select ename �����̸� from emp;

select emp.ename �����̸� from emp;

select ename �����̸� from emp �������̺�;

select �������̺�.ename �����̸� from emp �������̺�;

select ename, job, sal from emp;
select emp.ename, emp.job, emp.sal from emp;
select ename, job, sal from emp �������̺�;
select �������̺�.ename, �������̺�.job, �������̺�.sal from emp �������̺�;
select emp.ename, emp.job, emp.sal from emp �������̺�; /* error */

select * from emp where comm = null; -- error -- null�� ���� �����Ƿ� �񱳿��� �Ұ�.
select * from emp where comm != null; -- error

select * from emp where comm is null;
select * from emp where comm is not null;

select empno, ename, job, sal, comm from emp where comm is null;

select empno, ename, job, sal, comm from emp where comm is not null;

select concat('H','E', 'L', 'L', 'O') as �λ� from dual;

select concat('H', 'E', 'L', 'L', 'O') as �λ�;
select concat('H', concat('E', concat('L', concat('L', 'O')))) as �λ�; /* oracle */
select 'H' || 'E' || 'L' || 'L' || 'O' as �λ� from dual; /* oracle */

select * from emp where deptno = 30 and job = 'SALESMAN'
and comm is not null and HIREDATE <= '1981-09-01' and ename > 'S'; -- and ����

select * from emp where deptno = 30 or job = 'MANAGER' or sal <= 1600; -- or ����

select empno, ename, job, sal, deptno from emp where deptno = 30;

select empno, ename, job, sal, deptno from emp where job = 'MANAGER';

select empno, ename, job, sal, deptno from emp
where deptno = 30 and job = 'MANAGER';

select empno, ename, job, sal, deptno from emp
where deptno = 30 or job = 'MANAGER';

select empno, ename, job, sal, deptno from emp
where deptno = 30 and job = 'SALESMAN' and sal > 1500;

select empno, ename, job, sal, deptno from emp
where deptno = 30 or job = 'SALESMAN' or sal > 1500;

select ename, job, sal, deptno from emp where deptno = 30;
select ename, job, sal, deptno from emp where job = 'MANAGER';
select ename, job, sal, deptno from emp
where deptno = 30 and job = 'SALESMAN' and sal >= 1500;

select ename, job, sal, deptno from emp where deptno = 10;
select ename, job, sal, deptno from emp where job = 'MANAGER';
select ename, job, sal, deptno from emp
where deptno = 10 or job = 'MANAGER' or sal > 1000;

select empno, ename, job, sal, deptno from emp
where sal >= 1100 and sal <= 2450;

select empno, ename, job, sal, deptno from emp
where sal between 1100 and 2450;

select empno, ename, job, sal, deptno from emp
where ename >= 'ALLEN' and ename <= 'SCOTT';

select empno, ename, job, sal, deptno from emp
where ename between 'ALLEN' and 'SCOTT';

select * from emp where sal between 1100 and 2450 order by sal;
select * from emp where sal >= 1100 and sal <= 2450 order by sal;

select * from emp where ename between 'BLAKE' and 'KING' order by ename;
select * from emp where ename >= 'BLAKE' and ename <= 'KING' order by ename;

select empno, ename, job, sal, deptno from emp
where sal = 800 or sal = 1600 or sal = 2450;

select empno, ename, job, sal, deptno from emp
where sal in (800, 1600, 2450);

select empno, ename, job, sal, deptno from emp
where sal != 800 and sal != 1600 and sal != 2450;

select empno, ename, job, sal, deptno from emp
where sal not in (800, 1600, 2450);

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by sal;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by sal desc;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by ename;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by ename desc;

select empno, ename, job, hiredate, sal, deptno from emp
order by hiredate;

select empno, ename, job, hiredate, sal, deptno from emp
order by hiredate desc;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by comm;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by comm desc;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by deptno;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by deptno, sal;

select empno, ename, job, hiredate, sal, comm, deptno from emp
order by deptno desc, sal;

/*
 * union
 * - �ϳ� �̻��� select ���� ��ġ�� ��ɾ�
 * - �������� ����
 * - �ٸ�, �ߺ� data�� ����
 * ����!!! ������ select���� ��� �Ӽ��� ������ �Ӽ� �ڸ��� Data Type�� ���ƾ� ��
 * ����!!! ������ select���� ���̺�� �Ӽ��� �޶� �ȴ�
 * 
 * union all
 * - �ϳ� �̻��� select ���� ��ġ�� ��ɾ�
 * - union�� ������ ���
 * - �ߺ� data ���Ű� ����
 * ����!!! ������ select���� ��� �Ӽ��� ������ �Ӽ� �ڸ��� Data Type�� ���ƾ� ��
 * ����!!! ������ select���� ���̺�� �Ӽ��� �޶� �ȴ�
 */
select empno, ename, job, hiredate, sal, comm, deptno from emp
where deptno = 30
union
select empno, ename, job, hiredate, sal, comm, deptno from emp
where job = 'MANAGER';

select empno, ename, job, hiredate, sal, comm, deptno from emp
where deptno = 30
union all
select empno, ename, job, hiredate, sal, comm, deptno from emp
where job = 'MANAGER';

select empno, ename, job, hiredate, sal, comm, deptno from emp
where deptno = 30
union -- union all
select empno, ename, job, hiredate, sal, comm from emp
where job = 'MANAGER';--error

select empno, ename, job, hiredate, sal, comm, deptno from emp
where deptno = 30
union -- union all
select empno, hiredate, sal, empno, job, comm, deptno from emp
where job = 'MANAGER';--error

select empno, ename from emp
union
select deptno, dname from dept;--���̺��̳� �Ӽ����� �޶�, select ������ data type�� ������ ok

/* QUIZ
1. emp���� ��� �̸�, �޿�, �Ի��� ���

2. emp���� ���� �ο� : deptno  -> �μ���ȣ

3. emp���� job�� �ߺ� �����ϰ� ���

4. emp���� �޿��� 1500 ������ ������ ���, �̸�, ����, �޿�, �μ���ȣ ���

5. emp���� �̸��� MARTIN�� ������ ������ ���

6. emp���� �޿��� 950 �Ǵ� 1250 �Ǵ� 2975 �� ������ ������ ���

7. emp���� �޿��� 950 �Ǵ� 1250 �Ǵ� 2975 �� �ƴ� ������ ������ ���

8. emp���� �̸��� S�� �P���� ������ ������ ���

9. emp���� mgr�� null�� ������ ������ ���

10. emp���� ��� ������ ���,�̸�,����,�Ի���,�μ���ȣ�� �Ի����� �ֱ� ������ ���

11. emp���� ��� ������ ���,�̸�,����,�Ի���,�μ���ȣ�� �Ի����� ������ ������ ���
*/

1.
select empno, ename, job, hiredate, sal, comm, deptno from emp;

2.
select empno, ename, job, hiredate, sal, comm, deptno �μ���ȣ from emp;

3.
select distinct job from emp;

4.
select empno, ename, job, hiredate, sal, comm, deptno from emp
where sal <= 1500;

5.
select empno, ename, job, hiredate, sal, comm, deptno from emp
where ename = 'MARTIN';

6.
select empno, ename, job, hiredate, sal, comm, deptno from emp
where sal in (950, 1250, 2975);
--where sal = 950 or sal = 1250 or sal = 2975;

7.
select empno, ename, job, hiredate, sal, comm, deptno from emp
where sal not in (950, 1250, 2975);
--where sal != 950 and sal != 1250 and sal != 2975;

8.
select empno, ename, job, hiredate, sal, comm, deptno from emp
where ename like '%S';

9.
select empno, ename, job, hiredate, sal, comm, deptno
from emp where mgr is null;

10.
select empno, ename, job, hiredate, sal, comm, deptno
from emp
order by hiredate desc;

11.
select empno, ename, job, hiredate, sal, comm, deptno
from emp
order by hiredate asc;
