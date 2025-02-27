select deptno, max(sal), min(sal), sum(sal) from emp
group by deptno order by deptno;

select deptno, job, max(sal), min(sal), sum(sal), count(sal) from emp
group by deptno, job
having count(sal) >= 2
order by deptno;

select deptno, sum(sal) from emp
group by deptno having sum(sal) > 9000;
 -- group by�� ���� ������ ����� ����, �ٽ� �˻� ������ �߰��� �� having ���.

/*
 * group by
 * - group by �ڿ� ���� �Ӽ��� �������� ���̺� ���� data�� group���� ���� ��
 * - group by �ڿ� ���� �Ӽ��� ,(comma)�� �̿��Ͽ� ������ ������ ����
 * - ����!!! group by�� group �Լ��� �ݵ�� �Բ� ������ ��!
 * - �׷� �Լ� : max, min, sum, avg, count
 * - ����!!! order by�� group by �ڿ� ��
 * - ����!!! group by�� �ִ� select ���� �Ӽ�����
 *          �׷� �Լ��� ǥ���� �Ӽ��� group by �ڿ� ����� �Ӽ����� �� �� ����
 *
 * having
 * - group by�� �������� ����� ��ɾ�
 * - and �Ǵ� or�� ���� ������ �߰��� �� ����
 * - �Ϲ� select ������ where�� ���� ��Ȱ�� ��
 * - having �ڿ��� ���� �� ���� �Ӽ�, �� ������, ���� �� ���� data�� ��
 * - having �ڿ��� �׷� �Լ��� ǥ���� �Ӽ��� group by �ڿ� ����� �Ӽ����� �� �� ����
 */
select max(sal) from emp;
select min(sal) from emp;
select sum(sal) from emp;
select avg(sal) from emp;
select count(sal) from emp;

select deptno, max(sal) from emp group by deptno;
select deptno, min(sal) from emp group by deptno;
select deptno, sum(sal) from emp group by deptno;
select deptno, avg(sal) from emp group by deptno;
select deptno, count(sal) from emp group by deptno order by deptno;

--select deptno, count(sal) from emp order by deptno group by deptno;--error
--select ename, job, max(sal) from emp group by job;--error

select job, max(sal) from emp group by job;
select job, min(sal) from emp group by job;
select job, sum(sal) from emp group by job;
select job, avg(sal) from emp group by job;
select job, count(sal) from emp group by job;

select deptno, max(sal) from emp
group by deptno having deptno = 10;

select deptno, max(sal) from emp
group by deptno having max(sal) > 1000;

select deptno, max(sal) from emp
group by deptno having max(sal) > 1000 and deptno = 10; -- having�� and �Ǵ� or�� ���� ������ ���� ����

select deptno, max(sal) from emp
group by deptno having deptno = 10 or deptno = 20; -- having�� and �Ǵ� or�� ���� ������ ���� ����

select deptno, job, max(sal) from emp
group by deptno, job having deptno = 10;


/* QUIZ
1. ��� ����� �޿� �ְ��, ������, �Ѿ�, ���, ������� ���Ͻÿ�.

2. job ���� �޿� �ְ��, ������, �Ѿ�, ���, ������� ���Ͻÿ�. (group by job)

3. ��� ����� �޿� �ְ�װ� �������� ������ ���Ͻÿ�.

4. deptno ���� �޿� �ְ��, ������, �Ѿ�, ���, ������� ���Ͻÿ�. (group by deptno)
*/
select max(sal), min(sal), sum(sal), avg(sal), count(sal) from emp;

select job, max(sal), min(sal), sum(sal), avg(sal), count(sal) from emp
group by job;

select max(sal) - min(sal) from emp;

select deptno, max(sal), min(sal), sum(sal), avg(sal), count(sal) from emp
group by deptno;

/*
 * �׷� �Լ�
 * - �׷�(���� data�� �ִ� ��Ȳ)���� ����� �����ϴ� �Լ�
 * - count, sum, avg, max, min
 */
select count(sal) from emp;
select sum(sal) from emp;
select avg(sal) from emp;
select max(sal) from emp;
select min(sal) from emp;

/*
 * group by
 * - �׷��� �����ϴ� ��ɾ�
 * - group by �ڿ� ���� �Ӽ��� �������� table ���� group�� ����� ��
 * - group by �ڿ� ���� �Ӽ��� ,(comma)�� �̿��Ͽ� ���� ���� �Ӽ��� �� �� ����
 * - ����!!! group by�� group �Լ��� �ݵ�� �Բ� ������ ��!
 * - ����!!! order by�� group by �ڿ� ��
 * - ����!!! group by�� �ִ� select ���� �Ӽ�����
 *          �׷� �Լ��� ǥ���� �Ӽ��� group by �ڿ� ����� �Ӽ����� �� �� ����
 */
select deptno from emp;
select deptno from emp group by deptno;

select max(sal) from emp;
select deptno, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by deptno;
select job, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by job;

--select deptno, count(sal), sum(sal), avg(sal), max(sal), min(sal)
--from emp order by deptno group by deptno;--error
select deptno, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by deptno order by deptno;

--select deptno, job, count(sal), sum(sal), avg(sal), max(sal), min(sal)
--from emp group by deptno;--error
select deptno, job, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by deptno, job;

select substr(ename, 1, 1), count(*)
from emp
group by substr(ename, 1, 1)
order by substr(ename, 1, 1);

/*
 * having
 * - group by�� �������� ����� ��ɾ�
 * - �Ϲ� select ������ where�� ���� ��Ȱ�� ��
 * - having �ڿ��� ���� �� ���� �Ӽ�, �� ������, ���� �� ���� data�� ��
 * - having �ڿ��� �׷� �Լ��� ǥ���� �Ӽ��� group by �ڿ� ����� �Ӽ����� �� �� ����
 * - and �Ǵ� or�� ���� ������ �߰��� �� ����
 */
select deptno, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp where deptno = 10 group by deptno;

select deptno, job, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp where deptno = 10 group by deptno, job;

select deptno, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by deptno having deptno = 10;

select deptno, job, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by deptno, job having deptno = 10 and job = 'MANAGER';

select deptno, job, count(sal), sum(sal), avg(sal), max(sal), min(sal)
from emp group by deptno, job having deptno = 10 or job = 'MANAGER';

select deptno, max(sal) from emp
group by deptno having max(sal) > 1000;
