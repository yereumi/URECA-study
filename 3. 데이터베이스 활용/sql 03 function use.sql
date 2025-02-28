/*
 * dual
 * - ������ ���̺�ó�� ����� �� �ִ� ���̺�
 * - ������ ���� �Ǵ� ������ ���� ��ȸ � ���
 */
select * from dual; -- mysql 5.x �������� error

select 100 + 200 from dual;

select curdate() from dual;

/*
 * floor : ����
 * round : �ݿø�
 * ceil : �ø�
 * trunc : �Ҽ��� ���� �ڸ��� �ڸ���
 * mod : �� ���� ������ ���������� ����
 */
select ceil(0.1), ceil(-0.1) from dual;

select floor(0.9), floor(-0.9) from dual;

select round(0.444), round(0.444, 1), round(0.444, 2) from dual;

select round(444.123), round(444.123, -1), round(444.123, -2) from dual;

select round(0.555), round(0.555, 1), round(0.555, 2) from dual;

select round(555.123), round(555.123, -1), round(555.123, -2) from dual;

select deptno, avg(sal)
, round( avg(sal), 3 )
, round( avg(sal), 2 )
, round( avg(sal), 1 )
, round( avg(sal))
from emp group by deptno;

select deptno, avg(sal)
, round( avg(sal) )
, round( avg(sal), -1 )
, round( avg(sal), -2 )
from emp group by deptno;

select deptno, avg(sal)
, round( avg(sal) )
, round( avg(sal), -1 )
, round( avg(sal), -2 )
from emp group by deptno;

select truncate(0.123456789, 3) from dual;

select truncate(0.123456789, 5) from dual;

select truncate(0.123456789, 7) from dual;

select truncate(12345.6789, -3) from dual;

select mod(49, 5) from dual;

select pow(2, 5), power(5,2) from dual;

/*
 * ascii : ���ڸ� ���ڷ�
 * char : ���ڸ� ���ڷ�
 */
select ascii('A') from dual;
select ascii('��') from dual;

select char(65) from dual;
select cast(char(65) as char) from dual;

/*
 * concat : ���ڿ� ���̱�
 */
select concat('�ȳ�', '�ϼ���', '!') from dual;

select concat(ename, '���� ������ ', job, '�̰�, �޿��� �� ', sal, '���� �Դϴ�.')
from emp where deptno = 30;

/*
 * upper : ���ڿ��� �빮�ڷ� ����
 * lower : ���ڿ��� �ҹ��ڷ� ����
 */
select upper('nice to meet you') from dual;

select lower('NICE TO MEET YOU') from dual;

/*
 * left : ���ʿ��� �ڸ���
 * right : �����ʿ��� �ڸ���
 */
select left('NICE TO MEET YOU',2) from dual;
select right('NICE TO MEET YOU',2) from dual;
select right("C:/Users/User/aaa.txt", 3);

/*
 * lpad : ���� �ڸ��� ���߱�
 * rpad : ������ �ڸ��� ���߱�
 */
select lpad('hi', 10, '#') from dual;
select lpad('hello', 10, '#') from dual;
select rpad('hi', 10, '#') from dual;
select rpad('hello', 10, '#') from dual;

/*
 * trim : ���� ������ ���� �ڸ���
 * ltrim : ���� ���� �ڸ���
 * rtrim : ������ ���� �ڸ���
 */
select concat('[','   NICE TO MEET YOU   ',']') from dual;
select concat('[',trim('   NICE TO MEET YOU   '),']') from dual;
select concat('[',ltrim('   NICE TO MEET YOU   '),']') from dual;
select concat('[',rtrim('   NICE TO MEET YOU   '),']') from dual;

select trim('=' from '===HELLO===');

/*
 * replace : �ٲٱ�
 * reverse : ������
 */
select replace('NICE TO MEET YOU', 'EE', 'ii') from dual;
select replace('/NICE /TO /MEET /YOU', '/', '') from dual;
select replace('C:/Users/User/aaa.txt', 'C:/Users/User/', '');

select reverse('NICE TO MEET YOU') from dual;

/*
 * substr : ���ڿ� �ڸ���
 * substring : ���ڿ� �ڸ���
 */
select substr('nice to meet you', 2, 10) from dual;
select substr('�ѱ��Դϴ�', 2, 3) from dual; -- 2�������� 3�� �ڸ���.

select substring('nice to meet you', 2, 3) from dual;
select substring('�ѱ��Դϴ�', 2, 3) from dual;

/*
 * instr : ���ڿ� ��ġ ã��
 */
select instr('nice to meet you', 'to') from dual;
select instr('�ѱ��Դϴ�', '����') from dual;

/*
 * length : ���ڿ��� ���� byte ���� ����
 * char_length : ���ڿ��� ���� ����
 */
select length('hello') from dual; -- byte ������ ����
select length('�ȳ�') from dual;

select char_length('hello') from dual; -- char ������ ����
select char_length('�ȳ�') from dual;

/* ���� �ð� �Լ� */
select NOW();
select SYSDATE();
select CURRENT_DATE();
select CURDATE();
select CURRENT_TIME();
select CURTIME();
select CURRENT_TIMESTAMP();
select LOCALTIME;
select LOCALTIME();

/*
 * DATE_ADD : ���� ���ϱ�
 * DATE_SUB : ���� ����
 * DATEDIFF : ���� ������ �ϼ�
 */
select date_add('2025-01-16', interval 15 day)
, date_add('2025-01-16', interval 5 month)
, date_add('2025-01-16', interval 1 year);

select date_add('2025-01-16', interval -15 day)
, date_add('2025-01-16', interval -5 month)
, date_add('2025-01-16', interval -1 year);

select date_sub('2025-01-16', interval 15 day)
, date_sub('2025-01-16', interval 5 month)
, date_sub('2025-01-16', interval 1 year);

select date_sub('2025-01-16', interval -15 day)
, date_sub('2025-01-16', interval -5 month)
, date_sub('2025-01-16', interval -1 year);

SELECT DATEDIFF('2024-07-11','2024-07-01');
SELECT DATEDIFF('2024-07-11','2024-07-31');

select date_add('2025-02-27 14:25:30', interval 1 hour);
select now(), date_add(now(), interval 1 hour);
select now(), date_add(now(), interval -1 hour);
select now(), date_add(now(), interval 1 minute);
select now(), date_add(now(), interval -1 minute);
select now(), date_add(now(), interval 1 second);
select now(), date_add(now(), interval -1 second);

select now(), date_add(now(), interval '1 2' DAY_HOUR);
select now(), date_add(now(), interval '-1 2' DAY_HOUR);
select now(), date_add(now(), interval '1 1:1:1' day_second);
select now(), date_add(now(), interval '-1 1:1:1' day_second);
select now(), date_add(now(), interval '1:1' minute_second);
select now(), date_add(now(), interval '-1:1' minute_second);

select DATE_ADD('2025-02-27 14:35:45.000003', interval '0.99' SECOND_MICROSECOND);
select DATE_ADD('2025-02-27 14:35:45.000003', interval '-0.000002' SECOND_MICROSECOND);

select ename, hiredate, date_format(hiredate, '%M-%D-%y') from emp;
select ename, hiredate, date_format(hiredate, '%m-%d-%Y') from emp;

select now(), date_format(now(), '%Y-%m-%d');
select now(), date_format(now(), '%Y-%m-%d %h:%i:%s');
select now(), date_format(now(), '%Y-%m-%d %p %h:%i:%s');
select now(), date_format(now(), '%Y-%m-%d %H:%i:%s');
select now(), date_format(now(), '%Y-%m-%d 24H %H:%i:%s');

insert into emp
values (9997, '��ȫö', '��ȸ��', null
			, date('99991231'), 2000, null, 40);

insert into emp
values (9998, '���Ϻ�Ʋ', '���డ', null
			, str_to_date('9999,12,31', '%Y,%m,%d'), 1000, 500, 40);

insert into emp
values (9999, '��Ʃ��', '���డ', null, '9999-12-31', 1500, null, 40);

/* ���� �Լ� */
select database();
select schema();
select version();
select user();

select * from emp where ename in ("SMITH", "ALLEN");
select found_rows(); -- select ���� ��� ����

/* null ���� �Լ� */
select ename, job, sal, comm, isnull(comm) from emp;

select ename, job, sal, comm, ifnull(sal, 800) from emp;

select ename, job, sal, coalesce(comm, 0) from emp;

select empno, ename, job, sal, sal * 12 as ����
, ifnull(comm, 0) ������, sal * 12 + ifnull(comm, 0) "�� �� ��"
from emp;

/* �ڹٿ����� = ���Կ�����, == �񱳿�����
   mysql������ := ���Կ�����, = �񱳿����� (where ename = 'SMITH')
   �������� ===> set @ �����̸� := ��*/
set @seq := 0;
select @seq;
select (@seq := @seq+1) '����', ename, job, sal, deptno from emp;
