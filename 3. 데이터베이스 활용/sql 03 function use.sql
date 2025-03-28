/*
 * dual
 * - 가상의 테이블처럼 사용할 수 있는 테이블
 * - 간단한 연산 또는 간단한 날자 조회 등에 사용
 */
select * from dual; -- mysql 5.x 버전에서 error

select 100 + 200 from dual;

select curdate() from dual;

/*
 * floor : 내림
 * round : 반올림
 * ceil : 올림
 * trunc : 소수점 이하 자릿수 자르기
 * mod : 두 수를 나누어 나머지만을 구함
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
 * ascii : 문자를 숫자로
 * char : 숫자를 문자로
 */
select ascii('A') from dual;
select ascii('가') from dual;

select char(65) from dual;
select cast(char(65) as char) from dual;

/*
 * concat : 문자열 붙이기
 */
select concat('안녕', '하세요', '!') from dual;

select concat(ename, '님의 직업은 ', job, '이고, 급여는 월 ', sal, '만원 입니다.')
from emp where deptno = 30;

/*
 * upper : 문자열을 대문자로 변경
 * lower : 문자열을 소문자로 변경
 */
select upper('nice to meet you') from dual;

select lower('NICE TO MEET YOU') from dual;

/*
 * left : 왼쪽에서 자르기
 * right : 오른쪽에서 자르기
 */
select left('NICE TO MEET YOU',2) from dual;
select right('NICE TO MEET YOU',2) from dual;
select right("C:/Users/User/aaa.txt", 3);

/*
 * lpad : 왼쪽 자릿수 맞추기
 * rpad : 오른쪽 자릿수 맞추기
 */
select lpad('hi', 10, '#') from dual;
select lpad('hello', 10, '#') from dual;
select rpad('hi', 10, '#') from dual;
select rpad('hello', 10, '#') from dual;

/*
 * trim : 왼쪽 오른쪽 공백 자르기
 * ltrim : 왼쪽 공백 자르기
 * rtrim : 오른쪽 공백 자르기
 */
select concat('[','   NICE TO MEET YOU   ',']') from dual;
select concat('[',trim('   NICE TO MEET YOU   '),']') from dual;
select concat('[',ltrim('   NICE TO MEET YOU   '),']') from dual;
select concat('[',rtrim('   NICE TO MEET YOU   '),']') from dual;

select trim('=' from '===HELLO===');

/*
 * replace : 바꾸기
 * reverse : 뒤집기
 */
select replace('NICE TO MEET YOU', 'EE', 'ii') from dual;
select replace('/NICE /TO /MEET /YOU', '/', '') from dual;
select replace('C:/Users/User/aaa.txt', 'C:/Users/User/', '');

select reverse('NICE TO MEET YOU') from dual;

/*
 * substr : 문자열 자르기
 * substring : 문자열 자르기
 */
select substr('nice to meet you', 2, 10) from dual;
select substr('한글입니다', 2, 3) from dual; -- 2번지부터 3개 자르기.

select substring('nice to meet you', 2, 3) from dual;
select substring('한글입니다', 2, 3) from dual;

/*
 * instr : 문자열 위치 찾기
 */
select instr('nice to meet you', 'to') from dual;
select instr('한글입니다', '글입') from dual;

/*
 * length : 문자열의 저장 byte 길이 구함
 * char_length : 문자열의 길이 구함
 */
select length('hello') from dual; -- byte 단위의 길이
select length('안녕') from dual;

select char_length('hello') from dual; -- char 단위의 길이
select char_length('안녕') from dual;

/* 날자 시간 함수 */
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
 * DATE_ADD : 날자 더하기
 * DATE_SUB : 날자 빼기
 * DATEDIFF : 날자 사이의 일수
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
values (9997, '노홍철', '사회자', null
			, date('99991231'), 2000, null, 40);

insert into emp
values (9998, '빠니보틀', '여행가', null
			, str_to_date('9999,12,31', '%Y,%m,%d'), 1000, 500, 40);

insert into emp
values (9999, '곽튜브', '여행가', null, '9999-12-31', 1500, null, 40);

/* 정보 함수 */
select database();
select schema();
select version();
select user();

select * from emp where ename in ("SMITH", "ALLEN");
select found_rows(); -- select 쿼리 결과 개수

/* null 관련 함수 */
select ename, job, sal, comm, isnull(comm) from emp;

select ename, job, sal, comm, ifnull(sal, 800) from emp;

select ename, job, sal, coalesce(comm, 0) from emp;

select empno, ename, job, sal, sal * 12 as 연봉
, ifnull(comm, 0) 성과급, sal * 12 + ifnull(comm, 0) "총 연 봉"
from emp;

/* 자바에서는 = 대입연산자, == 비교연산자
   mysql에서는 := 대입연산자, = 비교연산자 (where ename = 'SMITH')
   변수선언 ===> set @ 변수이름 := 값*/
set @seq := 0;
select @seq;
select (@seq := @seq+1) '순번', ename, job, sal, deptno from emp;
