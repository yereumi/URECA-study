/*
 * join
 * - �� �� �̻��� ���̺��� �����Ͽ�, data�� �����ϴ� select ���
 */
select * from emp; -- 14 row

select * from dept; -- 4 row

/*
 * cross join (Cartesian Product)
 * - �� �� �̻��� ���̺��� ��� ������ ����� ���� ��ȸ�ϴ� ��
 * ����!!! cross join (Cartesian Product) ���� ����
 */
select * from emp, dept; -- 56 row

/*
 * equi join
 * - ������ �������� �� �� �̻��� ���̺��� ��ȸ�ϴ� ��
 * - ���� �� ������ ����� join ��
 * - ���� ���� ����ϴ� join��
 */
select * from emp, dept where emp.deptno = dept.deptno;

/*
 * ��ȸ data�� ��ȣ���� �����ϱ� ����
 * ���̺��̸�.�Ӽ��̸� ���� ���� ����
 * - ���̺� ����(alias)�� ���ؼ��� �Ӽ��� ���� ����
 */
select emp.ename, emp.job, emp.deptno, dept.deptno, dept.dname, dept.loc
from emp, dept
where emp.deptno = dept.deptno;

select ����e.ename, ����e.job, ����e.deptno, ����d.deptno, ����d.dname, ����d.loc
from emp ����e, dept ����d
where ����e.deptno = ����d.deptno;

select e.ename, e.job, e.deptno, d.deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno;

/*
 * non - equi join
 * - ���� �� �����ڰ� �ƴ� �����ڸ� ���� join �ϴ� ���
 */
select * from emp;

select * from salgrade;

select e.ename, e.job, e.sal, s.grade
from emp e, salgrade s
where e.sal >= s.losal
and e.sal <= s.hisal
;

select e.ename, e.job, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

/*
 * �� �� �̻��� ���̺� join
 * - ���� ���̺��� �߽����� ���������� join�� ����
 */
select e.ename, e.job, d.dname, e.sal, s.grade
from emp e, dept d, salgrade s
where e.deptno = d.deptno
and e.sal between s.losal and s.hisal
;

 -- �����ȣ, �����, ����, �޿�, Ŀ�̼�, �μ���ȣ, �μ���, �޿����
select e.empno, e.ename, e.job, e.sal, e.comm, e.deptno, d.dname, s.grade
from emp e, dept d, salgrade s
where e.deptno = d.deptno
and e.sal between s.losal and s.hisal
order by deptno, job;

/*
 * self join
 * - ���̺� �ϳ����� �ٽ� �ڽ��� ���̺�� ������ �ϴ� ���
 */
select * from emp;

 -- self join
select e1.ename, e1.job, e1.sal, e1.mgr '�����ڻ��', e2.ename '�����ڸ�'
from emp e1, emp e2 -- e1�� ������, e2�� ������ ������� ��������.
where e1.mgr = e2.empno;

select e1.ename, e1.job, e1.sal, e1.mgr '�����ڻ��', e2.ename '�����ڸ�'
from emp e1 left outer join emp e2 -- e1�� ������, e2�� ������ ������� ��������.
on e1.mgr = e2.empno;

 -- �������� ����
select e1.empno "�����Ż��", e1.ename "�����Ż����", d1.dname "�����źμ�"
from emp e1, dept d1
where e1.deptno = d1.deptno;

 -- ������ ����
select e2.empno "�����ڻ��", e2.ename "�����ڻ����", d2.dname "����μ�"
from emp e2, dept d2
where e2.deptno = d2.deptno;

 -- ���� ����
select e1.empno "�����Ż��", e1.ename "�����Ż����", d1.dname "�����źμ�"
		, e2.empno "�����ڻ��", e2.ename "�����ڻ����", d2.dname "����μ�"
from emp e1, dept d1, emp e2, dept d2
where e1.deptno = d1.deptno
and e2.deptno = d2.deptno
and e1.mgr = e2.empno;

 -- ���� ����
select e1.empno "�����Ż��", e1.ename "�����Ż����", d1.dname "�����źμ�"
		, e2.empno "�����ڻ��", e2.ename "�����ڻ����", d2.dname "����μ�"
from emp e1 left outer join emp e2 on e1.mgr = e2.empno, dept d1, dept d2
where e1.deptno = d1.deptno
and e2.deptno = d2.deptno;

select e1.empno '����ڻ��', e1.ename '����ڸ�'
 		, d1.deptno '��źμ���ȣ', d1.dname '��źμ���'
        , e2.empno '�����ڻ��', e2.ename '�����ڸ�'
 		, d2.deptno '����μ���ȣ', d2.dname '����μ���'
from emp e1 left outer join emp e2 on e1.mgr = e2.empno
			left outer join dept d2 on e2.deptno = d2.deptno
, dept d1
where e1.deptno = d1.deptno;

select e1.ename "���� ���", e2.ename "������"
from emp e1, emp e2
where e1.mgr = e2.empno
order by e2.ename;

select e1.ename "���� ���", e1.job, d1.dname
     , e2.ename "������", e2.job, d2.dname
from emp e1, emp e2, dept d1, dept d2
where e1.mgr = e2.empno
and e1.deptno = d1.deptno
and e2.deptno = d2.deptno
order by e2.ename;

/*
 * inner join
 */
select * from emp, dept where emp.deptno = dept.deptno;

select * from emp inner join dept on emp.deptno = dept.deptno;

/*
 * left outer join
 * - ���ʿ� ��ġ�� ���̺��� ������ ��� ����϶�
 */
insert into customer
values ('apple', '1111', 'tiffany', '010', 'seoul', 9, 9000);

select * from customer c, product p
where c.cust_id = p.prod_no; -- ��ȸ �ȵǴ� ���� �翬�ϴ�.

select * from customer c left outer join product p
on c.cust_id = p.prod_no; -- ���� ���ο� ���� ����, left table�� ��� ���.

/*
 * right outer join
 * - �����ʿ� ��ġ�� ���̺��� ������ ��� ����϶�
 */
select * from customer c right outer join product p
on c.cust_id = p.prod_no; -- ���� ���ο� ���� ����, right table�� ��� ���.

/*
 * full outer join
 * - ���ʿ� ��ġ�� ���̺��� ������ ��� ����϶�
 * - MYSQL�� �������� ����. -> left outer join�� right outer join�� UNION���� ��� ���.
 */
select * from customer c full outer join product p
on c.cust_id = p.prod_no; -- ���� ���ο� ���� ����, ��� ���̺� row�� ���.

select * from customer c left outer join product p
on c.cust_id = p.prod_no
union
select * from customer c right outer join product p
on c.cust_id = p.prod_no; -- ���� ���ο� ���� ����, ��� ���̺� row�� ���.
