-- partition by�� row�� ���̿� ��輱 �߱�
-- order by�� partition ���� row�� �� �����
-- over�� partition�� order�� ����� ������ ������� �Ѵٴ� �ǹ�
-- row_number�� �ܼ� row ��ȣ
select ename, job, sal, deptno
, row_number() over(partition by deptno order by sal desc) apply_over
from emp;

-- partition ������ ��ü ������ ���
select ename, job, sal, deptno
, row_number() over(order by sal desc) apply_over
from emp;

-- rank�� ���� : 1���� 2���̸� 2�� ���� �ٷ� 3�� ���
select ename, job, sal, deptno
, rank() over(partition by deptno order by sal desc) apply_over
from emp;

select ename, job, sal, deptno
, rank() over(order by sal desc) apply_over
from emp;

-- dense_rank�� ���� : 1���� 2���̾ 2�� ���
select ename, job, sal, deptno
, dense_rank() over(partition by deptno order by sal desc) apply_over
from emp;

select ename, job, sal, deptno
, dense_rank() over(order by sal desc) apply_over
from emp;

-- first_value : partition���� ���� ���� ������ ��
select ename, job, sal, deptno
, first_value(sal) over(partition by deptno order by sal desc) apply_over
from emp;

select ename, job, sal, deptno
, first_value(sal) over(order by sal desc) apply_over
from emp;

-- last_value : partition���� ���� ���߿� ������ ��
select ename, job, sal, deptno
, last_value(sal) over(partition by deptno order by sal desc
			ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) apply_over
from emp;

select ename, job, sal, deptno
, last_value(sal) over(order by sal desc
			ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) apply_over
from emp;

-- lag : ���� n��°�� ������ ��
select ename, job, sal, deptno
, lag(sal) over(order by sal desc)
from emp;

select ename, job, sal, deptno
, lag(sal, 3) over(order by sal desc)
from emp;

select deptno, sal
, lag(sal) over(partition by deptno order by sal desc) apply_over
from emp;

-- lead : ���� n��°�� ������ ��
select ename, job, sal, deptno
, lead(sal) over(order by sal desc) apply_over
from emp;

select ename, job, sal, deptno
, lead(sal,3) over(order by sal desc) apply_over
from emp;

select deptno, sal
, lead(sal,2) over(partition by deptno order by sal desc) apply_over
from emp;

-- ratio_to_report : ���� / oracle��
-- over()�� order by �Ұ�
select deptno, sal
, ratio_to_report(sal) over(partition by deptno)
from emp; -- �μ� �������� ���� ����

select deptno, sal
, ratio_to_report(sal) over()
from emp; -- ��ü������ ���� ����

-- percent_rank : partition���� ���� ���� ���� ���� 0, ���� ���߿� ���� ���� 1�� �Ͽ�, ���� �ƴ� ���� ������ ������� ���Ѵ�.
select deptno, sal
, percent_rank() over(partition by deptno order by sal desc) apply_over
from emp; -- �ݿ��� �� ������ ��ġ (���� ��� �����϶�)

-- cume_dist : partition ��ü �Ǽ��� ���� ��ġ�� 0 ~ 1 ������ ���� ������� ���Ѵ�.
select deptno, sal
, cume_dist() over(partition by deptno order by sal desc) apply_over
from emp; -- �ݿ��� �� ������ ��ġ (���� ��� �����϶�)

-- ntile : ��Ƽ�ǿ��� ��ü �Ǽ��� n���� ����� ����� ��ȸ�Ѵ�.
select deptno, sal
, ntile(10) over(order by sal desc) apply_over
from emp; -- �ݿ��� �� ������ ��ġ (���� ��� �����϶�)
