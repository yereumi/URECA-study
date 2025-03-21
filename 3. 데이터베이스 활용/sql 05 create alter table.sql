/*
 * create table : 테이블을 만드는 명령어
 * - create table 테이블이름 ( 속성이름 datatype(크기), 속성이름 datatype(크기) );
 */
create table customer
(
    -- 속성명 속성의datatype (data size)
    cust_id integer primary key
    -- primary key = not null + unique
    -- not null : data가 반드시 있어야 한다.
    -- unique : 현재 테이블의 unique 속성의 각 row에 있는 값은 유일해야 한다.(중복 X)
    , cust_nm varchar(30) -- 한글은 한글자가 3byte
    , join_date datetime
    , drop_yn char(1)
);

drop table customer;

create table customer
(
    cust_id varchar(30) primary key
    , cust_pwd varchar(30)
    , cust_name varchar(30)
    , cust_hphone varchar(13) -- 010-1234-5678
    , cust_post_code varchar(5)
    , cust_addr varchar(150)
    , cust_addr_detail varchar(150)
    , cust_grade integer
    , cust_mile integer
);

/*
 * desc : 테이블 구조를 보여달라는 명령어
 */
desc customer;

/*
 * alter table : 테이블 구조를 수정하라는 명령어
 * - add : 속성 추가
 * - modify : 속성 변경
 * - rename column [이전속성이름] to [새속성이름] : 속성 이름 변경
 * - drop column : 속성 삭제
 */
alter table customer
    -- add(cust_age numeric(3));
    -- modify cust_age decimal(5,2);
    -- rename column cust_mile to cust_mileage;
    drop column cust_age;

desc customer;

alter table customer add(cust_age numeric(3));

desc customer;

alter table customer modify cust_grade varchar(30);

desc customer;

alter table customer rename column cust_mile to cust_mileage;

desc customer;

alter table customer modify cust_grade integer;
alter table customer modify cust_mileage decimal(7, 0);

desc customer;

alter table customer drop column cust_age;

desc customer;

/*
 * drop table : 테이블 삭제
 * drop table [테이블이름]
 */
drop table customer
